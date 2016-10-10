package it.sharify.event
{
   import flash.events.Event;
   import mx.events.FlexEvent;
   import flash.display.Sprite;
   import mx.binding.utils.ChangeWatcher;
   import flash.utils.ByteArray;
   
   public final class SharifyResponseEvent extends Event
   {
      
      public static const SHARIFY_RESPONSE:String = "sharifyResponse";
       
      
      public var data:String;
      
      public var status:int;
      
      public function SharifyResponseEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      override public function clone() : Event
      {
         var _loc1_:SharifyResponseEvent = new SharifyResponseEvent(type,bubbles,cancelable);
         _loc1_.status = status;
         _loc1_.data = data;
         return _loc1_;
      }
   }
}
