package spark.accessibility
{
   import mx.core.mx_internal;
   import spark.components.supportClasses.ButtonBarBase;
   import mx.core.UIComponent;
   import mx.accessibility.AccConst;
   import spark.components.supportClasses.ListBase;
   import flash.events.Event;
   import flash.accessibility.Accessibility;
   
   use namespace mx_internal;
   
   public class ButtonBarBaseAccImpl extends ListBaseAccImpl
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function ButtonBarBaseAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_TOOLBAR;
      }
      
      public static function enableAccessibility() : void
      {
         ButtonBarBase.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         param1.accessibilityImplementation = new ButtonBarBaseAccImpl(param1);
      }
      
      override public function get_accRole(param1:uint) : uint
      {
         return param1 == 0?uint(role):uint(AccConst.ROLE_SYSTEM_PUSHBUTTON);
      }
      
      override public function get_accState(param1:uint) : uint
      {
         var _loc3_:int = 0;
         var _loc2_:uint = getState(param1);
         if(param1 > 0)
         {
            _loc3_ = param1 - 1;
            if(ListBase(master).isItemIndexSelected(_loc3_))
            {
               _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_PRESSED;
            }
            if(_loc3_ == ListBase(master).caretIndex)
            {
               _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_FOCUSED;
            }
         }
         return _loc2_;
      }
      
      override public function get_accDefaultAction(param1:uint) : String
      {
         if(param1 == 0)
         {
            return null;
         }
         return "Press";
      }
      
      override protected function eventHandler(param1:Event) : void
      {
         var _loc2_:int = 0;
         $eventHandler(param1);
         switch(param1.type)
         {
            case "change":
               _loc2_ = ButtonBarBase(master).selectedIndex;
               Accessibility.sendEvent(master,_loc2_ + 1,AccConst.EVENT_OBJECT_STATECHANGE,true);
               break;
            default:
               super.eventHandler(param1);
         }
      }
   }
}
