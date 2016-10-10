package mx.accessibility
{
   import mx.core.mx_internal;
   import mx.containers.Panel;
   import mx.core.UIComponent;
   
   use namespace mx_internal;
   
   public class PanelAccImpl extends AccImpl
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function PanelAccImpl(param1:UIComponent)
      {
         super(param1);
         role = AccConst.ROLE_SYSTEM_GROUPING;
      }
      
      public static function enableAccessibility() : void
      {
         Panel.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         var _loc2_:UIComponent = Panel(param1).getTitleBar();
         _loc2_.accessibilityImplementation = new PanelAccImpl(param1);
      }
      
      override public function get_accState(param1:uint) : uint
      {
         var _loc2_:uint = getState(param1);
         return _loc2_;
      }
      
      override protected function getName(param1:uint) : String
      {
         return Panel(master).title;
      }
   }
}
