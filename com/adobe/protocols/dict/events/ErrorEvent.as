package com.adobe.protocols.dict.events
{
   import flash.events.Event;
   
   public final class ErrorEvent extends Event
   {
      
      public static const ERROR:String = "error";
       
      
      private var _code:uint;
      
      private var _message:String;
      
      public function ErrorEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         var _loc1_:ErrorEvent = new ErrorEvent(type,bubbles,cancelable);
         _loc1_.message = this._message;
         _loc1_.code = this._code;
         return _loc1_;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function set code(param1:uint) : void
      {
         this._code = param1;
      }
      
      public function get code() : uint
      {
         return this._code;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
   }
}
