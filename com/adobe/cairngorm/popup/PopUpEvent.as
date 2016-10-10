package com.adobe.cairngorm.popup
{
   import flash.events.Event;
   import mx.core.IFlexDisplayObject;
   
   public final class PopUpEvent extends Event
   {
      
      public static const OPENING:String = "opening";
      
      public static const OPENED:String = "opened";
      
      public static const CLOSING:String = "closing";
      
      public static const CLOSED:String = "closed";
       
      
      private var suspendCallback:Function;
      
      private var resumeCallback:Function;
      
      private var _popup:IFlexDisplayObject;
      
      public function PopUpEvent(param1:String, param2:IFlexDisplayObject, param3:Function, param4:Function)
      {
         super(param1);
         this._popup = param2;
         this.suspendCallback = param3;
         this.resumeCallback = param4;
      }
      
      public function get popup() : IFlexDisplayObject
      {
         return this._popup;
      }
      
      public final function suspendClosure() : void
      {
         if(this.suspendCallback != null)
         {
            this.suspendCallback();
         }
      }
      
      public final function resumeClosure() : void
      {
         if(this.resumeCallback != null)
         {
            this.resumeCallback();
         }
      }
      
      override public function clone() : Event
      {
         return new PopUpEvent(type,this._popup,this.suspendCallback,this.resumeCallback);
      }
   }
}
