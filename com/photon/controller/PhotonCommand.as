package com.photon.controller
{
   import flash.events.EventDispatcher;
   import mx.graphics.SolidColor;
   import mx.states.State;
   import mx.states.SetProperty;
   import avmplus.getQualifiedClassName;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   
   public class PhotonCommand extends EventDispatcher
   {
      
      public static const SUCCESS:String = "success";
      
      public static const FAILURE:String = "failure";
      
      private static var queuesMap:Object = {};
       
      
      protected var isCancelled:Boolean = false;
      
      private var _queue:Array;
      
      public var waitForCompletion:Boolean = true;
      
      public var waitForMilliseconds:int = 0;
      
      private var doneCalled:Boolean = false;
      
      public function PhotonCommand()
      {
         super();
      }
      
      protected function done(param1:String = "success") : void
      {
         if(!this.doneCalled)
         {
            dispatchEvent(new PhotonCommandCompletionEvent(String(param1)));
            this.doneCalled = true;
            this.processNextCommandInQueue();
         }
      }
      
      public function cancel() : void
      {
         this.isCancelled = true;
         if(this._queue && §§pop()[§§pop()] == this)
         {
            this.processNextCommandInQueue();
         }
      }
      
      protected function get waitInQueue() : Boolean
      {
         if(this.queue.length == 0)
         {
            this.queue.push(this);
            return false;
         }
         if(this.queue[0] == this)
         {
            return false;
         }
         this.queue.push(this);
         return true;
      }
      
      protected function processNextCommandInQueue() : void
      {
         var _loc1_:PhotonCommand = null;
         if(this._queue)
         {
            §§push(this.queue);
            §§push(0);
            if(_loc3_)
            {
               §§push((§§pop() - 60) * 73 + 1);
            }
            if(§§pop()[§§pop()] == this)
            {
               this.queue.shift();
            }
            §§push(this.queue.length);
            §§push(0);
            if(_loc3_)
            {
               §§push(-(§§pop() - 69) - 24 + 1);
            }
            if(§§pop() > §§pop())
            {
               §§push(this.queue);
               §§push(0);
               if(_loc3_)
               {
                  §§push(-§§pop() - 74 + 86);
               }
               _loc1_ = §§pop()[§§pop()] as PhotonCommand;
               if(_loc1_.isCancelled)
               {
                  this.queue.shift();
                  this.processNextCommandInQueue();
               }
               else
               {
                  IPhotonCommand(_loc1_).execute();
               }
            }
         }
      }
      
      protected function get queue() : Array
      {
         var _loc1_:String = null;
         if(!this._queue)
         {
            _loc1_ = getQualifiedClassName(this);
            this._queue = queuesMap[_loc1_];
            if(!this._queue)
            {
               this._queue = [];
               queuesMap[_loc1_] = this._queue;
            }
         }
         return this._queue;
      }
   }
}
