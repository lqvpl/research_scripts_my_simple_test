package com.photon.controller
{
   import spark.layouts.VerticalLayout;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import flash.utils.setTimeout;
   import mx.core.FlexGlobals;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import com.hurlant.crypto.rsa.RSAKey;
   import com.hurlant.math.BigInteger;
   import mx.events.PropertyChangeEvent;
   
   public class PhotonComplexCommand extends PhotonCommand
   {
       
      
      protected var commandList:Array;
      
      private var currentlyExecutingCommand;
      
      protected var nonWaitingExecutingCommands:Array;
      
      private var executing:Boolean = false;
      
      private var _576076308totalCommands:int = 0;
      
      private var _636249251commandsCompleted:int = 0;
      
      public function PhotonComplexCommand()
      {
         this.commandList = [];
         this.nonWaitingExecutingCommands = [];
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:PhotonCommand = null;
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() - 93 - 104 - 1);
         }
         for each(_loc1_ in this.commandList)
         {
            if(_loc1_ is Array)
            {
               §§push(0);
               if(_loc9_)
               {
                  §§push(§§pop() - 1 + 57 - 1 - 111 - 1 - 108);
               }
               for each(_loc2_ in _loc1_)
               {
                  this.totalCommands++;
               }
            }
            else
            {
               this.totalCommands++;
            }
         }
         this.executing = true;
         this.executeNextCommand();
      }
      
      override public function cancel() : void
      {
         var _loc1_:PhotonCommand = null;
         this.stop();
         if(this.currentlyExecutingCommand)
         {
            if(this.currentlyExecutingCommand is Array)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() + 6 + 66 + 75 - 42);
               }
               for each(_loc1_ in this.currentlyExecutingCommand)
               {
                  _loc1_.cancel();
               }
            }
            else
            {
               this.currentlyExecutingCommand.cancel();
            }
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 1 - 60) - 66);
         }
         for each(_loc1_ in this.nonWaitingExecutingCommands)
         {
            _loc1_.cancel();
         }
         this.commandList = null;
         this.currentlyExecutingCommand = null;
         this.nonWaitingExecutingCommands = null;
         super.cancel();
      }
      
      private final function executeNextCommand() : void
      {
         var _loc1_:Object = null;
         var _loc2_:IPhotonCommand = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-§§pop() * 2 + 20));
         }
         var _loc3_:* = §§pop();
         if(!this.executing)
         {
            return;
         }
         this.currentlyExecutingCommand = this.commandList.shift();
         if(this.currentlyExecutingCommand)
         {
            if(this.currentlyExecutingCommand is Array)
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push(-§§pop() + 1 + 106);
               }
               for each(_loc2_ in this.currentlyExecutingCommand)
               {
                  _loc2_.execute();
               }
            }
            else if(!PhotonCommand(this.currentlyExecutingCommand).waitForCompletion)
            {
               this.nonWaitingExecutingCommands.push(this.currentlyExecutingCommand);
               this.currentlyExecutingCommand.execute();
               _loc3_ = int(PhotonCommand(this.currentlyExecutingCommand).waitForMilliseconds);
               if(!_loc3_)
               {
                  this.executeNextCommand();
               }
               else
               {
                  setTimeout(this.executeNextCommand,_loc3_);
               }
            }
            else
            {
               this.currentlyExecutingCommand.execute();
            }
         }
         else
         {
            this.checkForDone();
         }
      }
      
      private final function onCommandCompletion(param1:PhotonCommandCompletionEvent) : void
      {
         _loc2_.commandsCompleted = _loc3_;
         this.commandCompleted();
         if(this.currentlyExecutingCommand is Array)
         {
            FlexGlobals.topLevelApplication.callLater(this.manageParallelCommands,[param1]);
         }
         else
         {
            this.currentlyExecutingCommand = null;
            this.executeNextCommand();
         }
      }
      
      protected function get numIncompleteCommands() : int
      {
         return this.commandList.length + this.nonWaitingExecutingCommands.length + (!!this.currentlyExecutingCommand?1:0);
      }
      
      private final function onNonWaitingCommandCompletion(param1:PhotonCommandCompletionEvent) : void
      {
         var _loc3_:PhotonCommand = null;
         §§push(0);
         if(_loc6_)
         {
            §§push((-(§§pop() - 116 + 1 - 24) + 16) * 24);
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < this.nonWaitingExecutingCommands.length)
         {
            _loc3_ = this.nonWaitingExecutingCommands[_loc2_] as PhotonCommand;
            if(_loc3_ == param1.target)
            {
               §§push(this.nonWaitingExecutingCommands);
               §§push(_loc2_);
               §§push(1);
               if(_loc7_)
               {
                  §§push((§§pop() - 1) * 111 + 72 + 62 - 1 + 1);
               }
               §§pop().splice(§§pop(),§§pop());
               break;
            }
            _loc2_++;
         }
         this.commandsCompleted++;
         this.commandCompleted();
         this.checkForDone();
      }
      
      private final function checkForDone() : void
      {
         §§push(this.commandList.length);
         §§push(0);
         if(_loc1_)
         {
            §§push(-(§§pop() + 91 - 1) * 93);
         }
         if(§§pop() == §§pop() && §§pop() == §§pop())
         {
            done();
         }
      }
      
      private final function manageParallelCommands(param1:PhotonCommandCompletionEvent) : void
      {
         var _loc2_:int = this.currentlyExecutingCommand.length;
         while(true)
         {
            §§push(--_loc2_);
            §§push(-1);
            if(_loc4_)
            {
               §§push(-((§§pop() * 52 + 1 + 27) * 93 - 1));
            }
            if(§§pop() > §§pop())
            {
               if(this.currentlyExecutingCommand[_loc2_] == param1.currentTarget)
               {
                  §§push(this.currentlyExecutingCommand);
                  §§push(_loc2_);
                  §§push(1);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 47 - 38 - 1 - 42 - 1);
                  }
                  §§pop().splice(§§pop(),§§pop());
                  break;
               }
               continue;
            }
            break;
         }
         §§push(this.currentlyExecutingCommand.length);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(-(§§pop() + 57) - 71) - 1) - 115);
         }
         if(§§pop() == §§pop())
         {
            this.currentlyExecutingCommand = null;
            this.executeNextCommand();
         }
      }
      
      protected final function addCommand(param1:PhotonCommand, param2:Function = null, param3:Boolean = true, param4:int = 0) : void
      {
         if(!(param1 is IPhotonCommand))
         {
            throw new Error("The added command must implement IPhotonCommand");
         }
         if(param2 != null)
         {
            §§push(param1);
            §§push(PhotonCommandCompletionEvent.COMMAND_COMPLETION);
            §§push(param2);
            §§push(false);
            §§push(1);
            if(_loc5_)
            {
               §§push(-(-(§§pop() + 100) * 25) * 72 - 75);
            }
            §§pop().addEventListener(§§pop(),§§pop(),§§pop(),§§pop());
         }
         param1.waitForCompletion = param3;
         param1.waitForMilliseconds = param4;
         if(param3)
         {
            §§push(param1);
            §§push(PhotonCommandCompletionEvent.COMMAND_COMPLETION);
            §§push(this.onCommandCompletion);
            §§push(false);
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() * 71 * 88 * 80 - 97 - 1 + 1);
            }
            §§pop().addEventListener(§§pop(),§§pop(),§§pop(),§§pop());
         }
         else
         {
            §§push(param1);
            §§push(PhotonCommandCompletionEvent.COMMAND_COMPLETION);
            §§push(this.onNonWaitingCommandCompletion);
            §§push(false);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() - 1 + 1 + 1));
            }
            §§pop().addEventListener(§§pop(),§§pop(),§§pop(),§§pop());
         }
         this.commandList.push(param1);
      }
      
      protected final function addParallelCommands(param1:Array) : void
      {
         var _loc2_:PhotonCommand = null;
         §§push(0);
         if(_loc5_)
         {
            §§push((-§§pop() - 112) * 8 + 96 - 77 - 13);
         }
         for each(_loc2_ in param1)
         {
            if(!(_loc2_ is IPhotonCommand))
            {
               throw new Error("The added command must implement IPHotonCommand");
            }
            §§push(_loc2_);
            §§push(PhotonCommandCompletionEvent.COMMAND_COMPLETION);
            §§push(this.onCommandCompletion);
            §§push(false);
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() * 68 + 48 - 1 + 1 - 1 + 77);
            }
            §§pop().addEventListener(§§pop(),§§pop(),§§pop(),§§pop());
         }
         this.commandList.push(param1);
         param1 = [];
      }
      
      protected final function stop() : void
      {
         this.executing = false;
      }
      
      protected final function resume() : void
      {
         this.execute();
      }
      
      protected function commandCompleted() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get totalCommands() : int
      {
         return this._576076308totalCommands;
      }
      
      public function set totalCommands(param1:int) : void
      {
         var _loc2_:Object = this._576076308totalCommands;
         if(_loc2_ !== param1)
         {
            this._576076308totalCommands = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalCommands",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get commandsCompleted() : int
      {
         return this._636249251commandsCompleted;
      }
      
      public function set commandsCompleted(param1:int) : void
      {
         var _loc2_:Object = this._636249251commandsCompleted;
         if(_loc2_ !== param1)
         {
            this._636249251commandsCompleted = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"commandsCompleted",_loc2_,param1));
            }
         }
      }
   }
}
