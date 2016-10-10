package mx.rpc
{
   import flash.events.EventDispatcher;
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import flash.events.Event;
   import mx.rpc.events.AbstractEvent;
   import mx.netmon.NetworkMonitor;
   import mx.rpc.events.ResultEvent;
   import mx.rpc.events.FaultEvent;
   import mx.messaging.events.MessageEvent;
   import mx.messaging.events.MessageFaultEvent;
   import mx.messaging.messages.AsyncMessage;
   import mx.messaging.messages.IMessage;
   import mx.messaging.errors.MessagingError;
   import mx.rpc.events.InvokeEvent;
   import flash.utils.getQualifiedClassName;
   import mx.utils.ObjectProxy;
   import mx.logging.ILogger;
   import mx.resources.ResourceManager;
   import mx.logging.Log;
   
   use namespace mx_internal;
   
   public class AbstractInvoker extends EventDispatcher
   {
      
      mx_internal static const BINDING_RESULT:String = "resultForBinding";
       
      
      private var resourceManager:IResourceManager;
      
      private var _keepLastResult:Boolean = true;
      
      private var _keepLastResultSet:Boolean = false;
      
      public var operationManager:Function;
      
      public var resultType:Class;
      
      public var resultElementType:Class;
      
      mx_internal var activeCalls:mx.rpc.ActiveCalls;
      
      mx_internal var _responseHeaders:Array;
      
      mx_internal var _result:Object;
      
      mx_internal var _makeObjectsBindable:Boolean;
      
      private var _asyncRequest:mx.rpc.AsyncRequest;
      
      private var _log:ILogger;
      
      public function AbstractInvoker()
      {
         this.resourceManager = ResourceManager.getInstance();
         super();
         this._log = Log.getLogger("mx.rpc.AbstractInvoker");
         this.activeCalls = new mx.rpc.ActiveCalls();
      }
      
      public function get keepLastResult() : Boolean
      {
         return this._keepLastResult;
      }
      
      public function set keepLastResult(param1:Boolean) : void
      {
         this._keepLastResult = param1;
         this._keepLastResultSet = true;
      }
      
      mx_internal function setKeepLastResultIfNotSet(param1:Boolean) : void
      {
         if(!this._keepLastResultSet)
         {
            this._keepLastResult = param1;
         }
      }
      
      [Bindable("resultForBinding")]
      public function get lastResult() : Object
      {
         return this._result;
      }
      
      public function get makeObjectsBindable() : Boolean
      {
         return this._makeObjectsBindable;
      }
      
      public function set makeObjectsBindable(param1:Boolean) : void
      {
         this._makeObjectsBindable = param1;
      }
      
      public function cancel(param1:String = null) : AsyncToken
      {
         if(param1 != null)
         {
            return this.activeCalls.removeCall(param1);
         }
         return this.activeCalls.cancelLast();
      }
      
      public function clearResult(param1:Boolean = true) : void
      {
         if(param1)
         {
            this.setResult(null);
         }
         else
         {
            this._result = null;
         }
      }
      
      public function setResult(param1:Object) : void
      {
         this._result = param1;
         dispatchEvent(new Event(BINDING_RESULT));
      }
      
      mx_internal function dispatchRpcEvent(param1:AbstractEvent) : void
      {
         param1.callTokenResponders();
         if(!param1.isDefaultPrevented())
         {
            dispatchEvent(param1);
         }
      }
      
      mx_internal function monitorRpcEvent(param1:AbstractEvent) : void
      {
         if(NetworkMonitor.isMonitoring())
         {
            if(param1 is ResultEvent)
            {
               NetworkMonitor.monitorResult(param1.message,ResultEvent(param1).result);
            }
            else if(param1 is FaultEvent)
            {
               NetworkMonitor.monitorFault(param1.message,FaultEvent(param1).fault);
            }
         }
      }
      
      mx_internal function resultHandler(param1:MessageEvent) : void
      {
         var _loc3_:ResultEvent = null;
         var _loc2_:AsyncToken = this.preHandle(param1);
         if(_loc2_ == null)
         {
            return;
         }
         if(this.processResult(param1.message,_loc2_))
         {
            dispatchEvent(new Event(BINDING_RESULT));
            _loc3_ = ResultEvent.createEvent(this._result,_loc2_,param1.message);
            _loc3_.headers = this._responseHeaders;
            this.dispatchRpcEvent(_loc3_);
            if(!this._keepLastResult)
            {
               this._result = null;
            }
         }
      }
      
      mx_internal function faultHandler(param1:MessageFaultEvent) : void
      {
         var _loc4_:Fault = null;
         var _loc5_:FaultEvent = null;
         var _loc2_:MessageEvent = MessageEvent.createEvent(MessageEvent.MESSAGE,param1.message);
         var _loc3_:AsyncToken = this.preHandle(_loc2_);
         if(_loc3_ == null && AsyncMessage(param1.message).correlationId != null && AsyncMessage(param1.message).correlationId != "" && param1.faultCode != "Client.Authentication")
         {
            return;
         }
         if(this.processFault(param1.message,_loc3_))
         {
            _loc4_ = new Fault(param1.faultCode,param1.faultString,param1.faultDetail);
            _loc4_.content = param1.message.body;
            _loc4_.rootCause = param1.rootCause;
            _loc5_ = FaultEvent.createEvent(_loc4_,_loc3_,param1.message);
            _loc5_.headers = this._responseHeaders;
            this.dispatchRpcEvent(_loc5_);
         }
      }
      
      mx_internal function getNetmonId() : String
      {
         return null;
      }
      
      mx_internal function invoke(param1:IMessage, param2:AsyncToken = null) : AsyncToken
      {
         var fault:Fault = null;
         var errorText:String = null;
         var message:IMessage = param1;
         var token:AsyncToken = param2;
         if(token == null)
         {
            token = new AsyncToken(message);
         }
         else
         {
            token.setMessage(message);
         }
         this.activeCalls.addCall(message.messageId,token);
         try
         {
            this.asyncRequest.invoke(message,new Responder(this.resultHandler,this.faultHandler));
            this.dispatchRpcEvent(InvokeEvent.createEvent(token,message));
         }
         catch(e:MessagingError)
         {
            _log.warn(e.toString());
            errorText = resourceManager.getString("rpc","cannotConnectToDestination",[asyncRequest.destination]);
            fault = new Fault("InvokeFailed",e.toString(),errorText);
            new AsyncDispatcher(dispatchRpcEvent,[FaultEvent.createEvent(fault,token,message)],10);
         }
         catch(e2:Error)
         {
            _log.warn(e2.toString());
            fault = new Fault("InvokeFailed",e2.message);
            new AsyncDispatcher(dispatchRpcEvent,[FaultEvent.createEvent(fault,token,message)],10);
         }
         return token;
      }
      
      mx_internal function preHandle(param1:MessageEvent) : AsyncToken
      {
         return this.activeCalls.removeCall(AsyncMessage(param1.message).correlationId);
      }
      
      mx_internal function processFault(param1:IMessage, param2:AsyncToken) : Boolean
      {
         return true;
      }
      
      mx_internal function processResult(param1:IMessage, param2:AsyncToken) : Boolean
      {
         var _loc3_:Object = param1.body;
         if(this.makeObjectsBindable && _loc3_ != null && getQualifiedClassName(_loc3_) == "Object")
         {
            this._result = new ObjectProxy(_loc3_);
         }
         else
         {
            this._result = _loc3_;
         }
         return true;
      }
      
      mx_internal function get asyncRequest() : mx.rpc.AsyncRequest
      {
         if(this._asyncRequest == null)
         {
            this._asyncRequest = new mx.rpc.AsyncRequest();
         }
         return this._asyncRequest;
      }
      
      mx_internal function set asyncRequest(param1:mx.rpc.AsyncRequest) : void
      {
         this._asyncRequest = param1;
      }
   }
}
