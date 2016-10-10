package spark.accessibility
{
   import mx.core.mx_internal;
   import spark.components.List;
   import mx.core.UIComponent;
   
   use namespace mx_internal;
   
   public class ListAccImpl extends ListBaseAccImpl
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function ListAccImpl(param1:UIComponent)
      {
         super(param1);
      }
      
      public static function enableAccessibility() : void
      {
         List.createAccessibilityImplementation = createAccessibilityImplementation;
      }
      
      mx_internal static function createAccessibilityImplementation(param1:UIComponent) : void
      {
         param1.accessibilityImplementation = new ListAccImpl(param1);
      }
   }
}
