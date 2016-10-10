package hr.binaria.asx3m.converters.basic
{
   import spark.components.Label;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   
   public final class StringConverter extends AbstractSingleValueConverter
   {
       
      
      public function StringConverter()
      {
         super();
      }
      
      override public function canConvert(param1:Class) : Boolean
      {
         return new param1() is String;
      }
      
      override public function fromString(param1:String) : Object
      {
         return new String(param1);
      }
   }
}
