package spark.accessibility
{
   import mx.core.mx_internal;
   import spark.components.CheckBox;
   import mx.core.UIComponent;
   import spark.components.supportClasses.ToggleButtonBase;
   import mx.accessibility.AccConst;
   
   use namespace mx_internal;
   
   public class CheckBoxAccImpl extends ButtonBaseAccImpl
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function CheckBoxAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_CHECKBUTTON;
      }
      
      public static function enableAccessibility() : void
      {
         CheckBox.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         param1.accessibilityImplementation = new CheckBoxAccImpl(param1);
      }
      
      override public function get_accState(param1:uint) : uint
      {
         var _loc2_:uint = getState(param1);
         if(ToggleButtonBase(master).selected)
         {
            _loc2_ = _loc2_ | AccConst.STATE_SYSTEM_CHECKED;
         }
         return _loc2_;
      }
      
      override public function get_accDefaultAction(param1:uint) : String
      {
         return !!ToggleButtonBase(master).selected?"UnCheck":"Check";
      }
   }
}
