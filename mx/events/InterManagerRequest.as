package mx.events
{
   import flash.events.Event;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class InterManagerRequest extends Event
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      public static const CURSOR_MANAGER_REQUEST:String = "cursorManagerRequest";
      
      public static const DRAG_MANAGER_REQUEST:String = "dragManagerRequest";
      
      public static const INIT_MANAGER_REQUEST:String = "initManagerRequest";
      
      public static const SYSTEM_MANAGER_REQUEST:String = "systemManagerRequest";
      
      public static const TOOLTIP_MANAGER_REQUEST:String = "tooltipManagerRequest";
       
      
      public var name:String;
      
      public var value:Object;
      
      public function InterManagerRequest(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = null, param5:Object = null)
      {
         super(param1,param2,param3);
         this.name = param4;
         this.value = param5;
      }
      
      override public function clone() : Event
      {
         var _loc1_:InterManagerRequest = new InterManagerRequest(type,bubbles,cancelable,this.name,this.value);
         return _loc1_;
      }
   }
}
