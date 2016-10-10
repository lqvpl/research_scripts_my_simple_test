package spark.accessibility
{
   import mx.core.mx_internal;
   import spark.components.NumericStepper;
   import mx.core.UIComponent;
   import spark.events.SkinPartEvent;
   import flash.events.Event;
   import spark.components.TextInput;
   import flash.events.FocusEvent;
   import flash.accessibility.Accessibility;
   import mx.accessibility.AccConst;
   
   use namespace mx_internal;
   
   public class NumericStepperAccImpl extends SpinnerAccImpl
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function NumericStepperAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_TEXT;
         var _loc2_:TextInput = NumericStepper(param1).textDisplay;
         if(_loc2_)
         {
            _loc2_.addEventListener(Event.CHANGE,this.eventHandler);
            _loc2_.addEventListener(FocusEvent.FOCUS_IN,this.focusInHandler);
         }
      }
      
      public static function enableAccessibility() : void
      {
         NumericStepper.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         param1.accessibilityImplementation = new NumericStepperAccImpl(param1);
      }
      
      override protected function get eventsToHandle() : Array
      {
         return super.eventsToHandle.concat([SkinPartEvent.PART_ADDED,SkinPartEvent.PART_REMOVED]);
      }
      
      override protected function eventHandler(param1:Event) : void
      {
         var _loc2_:TextInput = null;
         switch(param1.type)
         {
            case SkinPartEvent.PART_ADDED:
               _loc2_ = NumericStepper(master).textDisplay;
               if(SkinPartEvent(param1).instance == _loc2_)
               {
                  _loc2_.addEventListener(Event.CHANGE,this.eventHandler);
                  _loc2_.addEventListener(FocusEvent.FOCUS_IN,this.focusInHandler);
               }
               break;
            case SkinPartEvent.PART_REMOVED:
               _loc2_ = NumericStepper(master).textDisplay;
               if(SkinPartEvent(param1).instance == _loc2_)
               {
                  _loc2_.removeEventListener(Event.CHANGE,this.eventHandler);
                  _loc2_.removeEventListener(FocusEvent.FOCUS_IN,this.focusInHandler);
               }
               break;
            default:
               super.eventHandler(param1);
         }
      }
      
      private function focusInHandler(param1:Event) : void
      {
         Accessibility.sendEvent(master,0,AccConst.EVENT_OBJECT_FOCUS);
      }
   }
}
