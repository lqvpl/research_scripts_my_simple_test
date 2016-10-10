package hr.binaria.asx3m.converters.basic
{
   import mx.graphics.SolidColor;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   
   public final class BooleanConverter extends AbstractSingleValueConverter
   {
       
      
      public function BooleanConverter()
      {
         super();
      }
      
      override public function canConvert(param1:Class) : Boolean
      {
         return new param1() is Boolean;
      }
      
      override public function fromString(param1:String) : Object
      {
         return new Boolean(param1 == "true"?true:false);
      }
   }
}
