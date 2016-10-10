package mx.messaging.channels
{
   import mx.messaging.Channel;
   import mx.core.mx_internal;
   import flash.utils.Timer;
   import mx.resources.IResourceManager;
   import mx.messaging.ChannelSet;
   import mx.messaging.MessageAgent;
   import mx.messaging.Consumer;
   import mx.messaging.messages.IMessage;
   import mx.messaging.ConsumerMessageDispatcher;
   import mx.messaging.messages.CommandMessage;
   import mx.logging.Log;
   import mx.messaging.events.ChannelFaultEvent;
   import mx.messaging.MessageResponder;
   import flash.events.Event;
   import mx.resources.ResourceManager;
   import flash.events.TimerEvent;
   
   use namespace mx_internal;
   
   public class PollingChannel extends Channel
   {
      
      protected static const POLLING_ENABLED:String = "polling-enabled";
      
      protected static const POLLING_INTERVAL_MILLIS:String = "polling-interval-millis";
      
      protected static const POLLING_INTERVAL_LEGACY:String = "polling-interval-seconds";
      
      protected static const PIGGYBACKING_ENABLED:String = "piggybacking-enabled";
      
      protected static const LOGIN_AFTER_DISCONNECT:String = "login-after-disconnect";
      
      private static const DEFAULT_POLLING_INTERVAL:int = 3000;
       
      
      mx_internal var _pollingInterval:int;
      
      mx_internal var _shouldPoll:Boolean;
      
      private var _pollingRef:int = -1;
      
      mx_internal var pollOutstanding:Boolean;
      
      mx_internal var _timer:Timer;
      
      private var resourceManager:IResourceManager;
      
      protected var _loginAfterDisconnect:Boolean;
      
      private var _piggybackingEnabled:Boolean;
      
      private var _pollingEnabled:Boolean;
      
      public function PollingChannel(param1:String = null, param2:String = null)
      {
         this.resourceManager = ResourceManager.getInstance();
         super(param1,param2);
         this._pollingEnabled = true;
         this._shouldPoll = false;
         if(this.timerRequired())
         {
            this._pollingInterval = DEFAULT_POLLING_INTERVAL;
            this._timer = new Timer(this._pollingInterval,1);
            this._timer.addEventListener(TimerEvent.TIMER,this.internalPoll);
         }
      }
      
      override protected function setConnected(param1:Boolean) : void
      {
         var _loc2_:ChannelSet = null;
         var _loc3_:MessageAgent = null;
         if(connected != param1)
         {
            if(param1)
            {
               for each(_loc2_ in channelSets)
               {
                  for each(_loc3_ in _loc2_.messageAgents)
                  {
                     if(_loc3_ is Consumer && (_loc3_ as Consumer).subscribed)
                     {
                        this.enablePolling();
                     }
                  }
               }
            }
            super.setConnected(param1);
         }
      }
      
      mx_internal function get loginAfterDisconnect() : Boolean
      {
         return this._loginAfterDisconnect;
      }
      
      protected function get internalPiggybackingEnabled() : Boolean
      {
         return this._piggybackingEnabled;
      }
      
      protected function set internalPiggybackingEnabled(param1:Boolean) : void
      {
         this._piggybackingEnabled = param1;
      }
      
      protected function get internalPollingEnabled() : Boolean
      {
         return this._pollingEnabled;
      }
      
      protected function set internalPollingEnabled(param1:Boolean) : void
      {
         this._pollingEnabled = param1;
         if(!param1 && (this.timerRunning || !this.timerRunning && this._pollingInterval == 0))
         {
            this.stopPolling();
         }
         else if(param1 && this._shouldPoll && !this.timerRunning)
         {
            this.startPolling();
         }
      }
      
      mx_internal function get internalPollingInterval() : Number
      {
         return this._timer == null?Number(0):Number(this._pollingInterval);
      }
      
      mx_internal function set internalPollingInterval(param1:Number) : void
      {
         var _loc2_:String = null;
         if(param1 == 0)
         {
            this._pollingInterval = param1;
            if(this._timer != null)
            {
               this._timer.stop();
            }
            if(this._shouldPoll)
            {
               this.startPolling();
            }
         }
         else if(param1 > 0)
         {
            if(this._timer != null)
            {
               this._timer.delay = this._pollingInterval = param1;
               if(!this.timerRunning && this._shouldPoll)
               {
                  this.startPolling();
               }
            }
         }
         else
         {
            _loc2_ = this.resourceManager.getString("messaging","pollingIntervalNonPositive");
            throw new ArgumentError(_loc2_);
         }
      }
      
      override mx_internal function get realtime() : Boolean
      {
         return this._pollingEnabled;
      }
      
      mx_internal function get timerRunning() : Boolean
      {
         return this._timer != null && this._timer.running;
      }
      
      override public function send(param1:MessageAgent, param2:IMessage) : void
      {
         var consumerDispatcher:ConsumerMessageDispatcher = null;
         var msg:CommandMessage = null;
         var agent:MessageAgent = param1;
         var message:IMessage = param2;
         var piggyback:Boolean = false;
         if(!this.pollOutstanding && this._piggybackingEnabled && !(message is CommandMessage))
         {
            if(this._shouldPoll)
            {
               piggyback = true;
            }
            else
            {
               consumerDispatcher = ConsumerMessageDispatcher.getInstance();
               if(consumerDispatcher.isChannelUsedForSubscriptions(this))
               {
                  piggyback = true;
               }
            }
         }
         if(piggyback)
         {
            this.internalPoll();
         }
         super.send(agent,message);
         if(piggyback)
         {
            msg = new CommandMessage();
            msg.operation = CommandMessage.POLL_OPERATION;
            if(Log.isDebug())
            {
               _log.debug("\'{0}\' channel sending poll message\n{1}\n",id,msg.toString());
            }
            try
            {
               internalSend(new PollCommandMessageResponder(null,msg,this,_log));
               return;
            }
            catch(e:Error)
            {
               stopPolling();
               throw e;
            }
         }
      }
      
      override protected function connectFailed(param1:ChannelFaultEvent) : void
      {
         this.stopPolling();
         super.connectFailed(param1);
      }
      
      override protected final function getMessageResponder(param1:MessageAgent, param2:IMessage) : MessageResponder
      {
         if(param2 is CommandMessage && (param2 as CommandMessage).operation == CommandMessage.POLL_OPERATION)
         {
            return new PollCommandMessageResponder(param1,param2,this,_log);
         }
         return this.getDefaultMessageResponder(param1,param2);
      }
      
      override protected function internalDisconnect(param1:Boolean = false) : void
      {
         this.stopPolling();
         super.internalDisconnect(param1);
      }
      
      public function enablePolling() : void
      {
         this._pollingRef++;
         if(this._pollingRef == 0)
         {
            this.startPolling();
         }
      }
      
      public function disablePolling() : void
      {
         this._pollingRef--;
         if(this._pollingRef < 0)
         {
            this.stopPolling();
         }
      }
      
      public function poll() : void
      {
         this.internalPoll();
      }
      
      mx_internal function pollFailed(param1:Boolean = false) : void
      {
         this.internalDisconnect(param1);
      }
      
      mx_internal function stopPolling() : void
      {
         if(Log.isInfo())
         {
            _log.info("\'{0}\' channel polling stopped.",id);
         }
         if(this._timer != null)
         {
            this._timer.stop();
         }
         this._pollingRef = -1;
         this._shouldPoll = false;
         this.pollOutstanding = false;
      }
      
      protected function applyPollingSettings(param1:XML) : void
      {
         if(param1.properties.length() == 0)
         {
            return;
         }
         var _loc2_:XML = param1.properties[0];
         if(_loc2_[POLLING_ENABLED].length() != 0)
         {
            this.internalPollingEnabled = _loc2_[POLLING_ENABLED].toString() == TRUE;
         }
         if(_loc2_[POLLING_INTERVAL_MILLIS].length() != 0)
         {
            this.internalPollingInterval = parseInt(_loc2_[POLLING_INTERVAL_MILLIS].toString());
         }
         else if(_loc2_[POLLING_INTERVAL_LEGACY].length() != 0)
         {
            this.internalPollingInterval = parseInt(_loc2_[POLLING_INTERVAL_LEGACY].toString()) * 1000;
         }
         if(_loc2_[PIGGYBACKING_ENABLED].length() != 0)
         {
            this.internalPiggybackingEnabled = _loc2_[PIGGYBACKING_ENABLED].toString() == TRUE;
         }
         if(_loc2_[LOGIN_AFTER_DISCONNECT].length() != 0)
         {
            this._loginAfterDisconnect = _loc2_[LOGIN_AFTER_DISCONNECT].toString() == TRUE;
         }
      }
      
      protected function getDefaultMessageResponder(param1:MessageAgent, param2:IMessage) : MessageResponder
      {
         return super.getMessageResponder(param1,param2);
      }
      
      protected function internalPoll(param1:Event = null) : void
      {
         var poll:CommandMessage = null;
         var event:Event = param1;
         if(!this.pollOutstanding)
         {
            if(Log.isInfo())
            {
               _log.info("\'{0}\' channel requesting queued messages.",id);
            }
            if(this.timerRunning)
            {
               this._timer.stop();
            }
            poll = new CommandMessage();
            poll.operation = CommandMessage.POLL_OPERATION;
            if(Log.isDebug())
            {
               _log.debug("\'{0}\' channel sending poll message\n{1}\n",id,poll.toString());
            }
            try
            {
               internalSend(new PollCommandMessageResponder(null,poll,this,_log));
               this.pollOutstanding = true;
            }
            catch(e:Error)
            {
               stopPolling();
               throw e;
            }
         }
         else if(Log.isInfo())
         {
            _log.info("\'{0}\' channel waiting for poll response.",id);
         }
      }
      
      protected function startPolling() : void
      {
         if(this._pollingEnabled)
         {
            if(Log.isInfo())
            {
               _log.info("\'{0}\' channel polling started.",id);
            }
            this._shouldPoll = true;
            this.poll();
         }
      }
      
      protected function timerRequired() : Boolean
      {
         return true;
      }
   }
}

import mx.messaging.MessageResponder;
import mx.logging.ILogger;
import mx.resources.IResourceManager;
import mx.messaging.messages.IMessage;
import mx.messaging.channels.PollingChannel;
import mx.messaging.messages.MessagePerformanceUtils;
import mx.messaging.messages.ErrorMessage;
import mx.events.PropertyChangeEvent;
import mx.logging.Log;
import mx.messaging.messages.CommandMessage;
import mx.core.mx_internal;
import mx.messaging.events.MessageEvent;
import mx.messaging.messages.AcknowledgeMessage;
import mx.messaging.events.ChannelFaultEvent;
import mx.messaging.MessageAgent;
import mx.resources.ResourceManager;

use namespace mx_internal;

class PollCommandMessageResponder extends MessageResponder
{
    
   
   private var _log:ILogger;
   
   private var resourceManager:IResourceManager;
   
   private var suppressHandlers:Boolean;
   
   function PollCommandMessageResponder(param1:MessageAgent, param2:IMessage, param3:PollingChannel, param4:ILogger)
   {
      this.resourceManager = ResourceManager.getInstance();
      super(param1,param2,param3);
      this._log = param4;
      param3.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE,this.channelPropertyChangeHandler);
   }
   
   override protected function resultHandler(param1:IMessage) : void
   {
      var messageList:Array = null;
      var message:IMessage = null;
      var mpiutil:MessagePerformanceUtils = null;
      var errMsg:ErrorMessage = null;
      var msg:IMessage = param1;
      var pollingChannel:PollingChannel = channel as PollingChannel;
      channel.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE,this.channelPropertyChangeHandler);
      if(this.suppressHandlers)
      {
         if(Log.isDebug())
         {
            this._log.debug("\'{0}\' channel ignoring response for poll request preceeding most recent disconnect.\n",channel.id);
         }
         this.doPoll();
         return;
      }
      if(msg is CommandMessage)
      {
         pollingChannel.pollOutstanding = false;
         if(msg.headers[CommandMessage.NO_OP_POLL_HEADER] == true)
         {
            return;
         }
         if(msg.body != null)
         {
            messageList = msg.body as Array;
            for each(message in messageList)
            {
               if(Log.isDebug())
               {
                  this._log.debug("\'{0}\' channel got message\n{1}\n",channel.id,message.toString());
                  if(channel.mpiEnabled)
                  {
                     try
                     {
                        mpiutil = new MessagePerformanceUtils(message);
                        this._log.debug(mpiutil.prettyPrint());
                     }
                     catch(e:Error)
                     {
                        _log.debug("Could not get message performance information for: " + msg.toString());
                     }
                  }
               }
               channel.dispatchEvent(MessageEvent.createEvent(MessageEvent.MESSAGE,message));
            }
         }
      }
      else if(msg is AcknowledgeMessage)
      {
         pollingChannel.pollOutstanding = false;
      }
      else
      {
         errMsg = new ErrorMessage();
         errMsg.faultDetail = this.resourceManager.getString("messaging","receivedNull");
         status(errMsg);
         return;
      }
      if(msg.headers[CommandMessage.POLL_WAIT_HEADER] != null)
      {
         this.doPoll(msg.headers[CommandMessage.POLL_WAIT_HEADER]);
      }
      else
      {
         this.doPoll();
      }
   }
   
   override protected function statusHandler(param1:IMessage) : void
   {
      channel.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE,this.channelPropertyChangeHandler);
      if(this.suppressHandlers)
      {
         if(Log.isDebug())
         {
            this._log.debug("\'{0}\' channel ignoring response for poll request preceeding most recent disconnect.\n",channel.id);
         }
         return;
      }
      var _loc2_:PollingChannel = PollingChannel(channel);
      _loc2_.stopPolling();
      var _loc3_:ErrorMessage = param1 as ErrorMessage;
      var _loc4_:String = _loc3_ != null?_loc3_.faultDetail:"";
      var _loc5_:ChannelFaultEvent = ChannelFaultEvent.createEvent(_loc2_,false,"Channel.Polling.Error","error",_loc4_);
      _loc5_.rootCause = param1;
      _loc2_.dispatchEvent(_loc5_);
      if(_loc3_ != null && _loc3_.faultCode == "Server.PollNotSupported")
      {
         _loc2_.pollFailed(true);
      }
      else
      {
         _loc2_.pollFailed(false);
      }
   }
   
   private function channelPropertyChangeHandler(param1:PropertyChangeEvent) : void
   {
      if(param1.property == "connected" && !param1.newValue)
      {
         this.suppressHandlers = true;
      }
   }
   
   private function doPoll(param1:int = 0) : void
   {
      var _loc2_:PollingChannel = PollingChannel(channel);
      if(_loc2_.connected && _loc2_._shouldPoll)
      {
         if(param1 == 0)
         {
            if(_loc2_.internalPollingInterval == 0)
            {
               _loc2_.poll();
            }
            else if(!_loc2_.timerRunning)
            {
               _loc2_._timer.delay = _loc2_._pollingInterval;
               _loc2_._timer.start();
            }
         }
         else
         {
            _loc2_._timer.delay = param1;
            _loc2_._timer.start();
         }
      }
   }
}
