package hr.binaria.asx3m.converters.basic
{
   import hr.binaria.asx3m.converters.ISingleValueConverter;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import flash.utils.Dictionary;
   import spark.components.Button;
   import spark.primitives.Rect;
   
   public class AbstractSingleValueConverter implements ISingleValueConverter
   {
       
      
      public function AbstractSingleValueConverter()
      {
         super();
      }
      
      public function canConvert(param1:Class) : Boolean
      {
         return false;
      }
      
      public function toString(param1:Object) : String
      {
         return param1 == null?null:param1.toString();
      }
      
      public function fromString(param1:String) : Object
      {
         return null;
      }
   }
}
