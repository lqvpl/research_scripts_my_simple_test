package spark.accessibility
{
   import mx.accessibility.AccImpl;
   import mx.core.mx_internal;
   import spark.components.supportClasses.TextBase;
   import mx.core.UIComponent;
   import mx.accessibility.AccConst;
   import flash.events.Event;
   import flash.accessibility.Accessibility;
   
   use namespace mx_internal;
   
   public class TextBaseAccImpl extends AccImpl
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function TextBaseAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_STATICTEXT;
      }
      
      public static function enableAccessibility() : void
      {
         TextBase.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         param1.accessibilityImplementation = new TextBaseAccImpl(param1);
      }
      
      override protected function get eventsToHandle() : Array
      {
         return super.eventsToHandle.concat(["updateComplete"]);
      }
      
      override public function get_accState(param1:uint) : uint
      {
         var _loc2_:uint = getState(param1);
         _loc2_ = _loc2_ & ~AccConst.STATE_SYSTEM_FOCUSABLE;
         _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_READONLY;
         return _loc2_;
      }
      
      override protected function getName(param1:uint) : String
      {
         var _loc2_:String = TextBase(master).text;
         return _loc2_ != null && _loc2_ != ""?_loc2_:"";
      }
      
      override protected function eventHandler(param1:Event) : void
      {
         $eventHandler(param1);
         switch(param1.type)
         {
            case "updateComplete":
               Accessibility.sendEvent(master,0,AccConst.EVENT_OBJECT_NAMECHANGE);
               Accessibility.updateProperties();
         }
      }
   }
}
