package hr.binaria.asx3m.converters.basic
{
   import flash.events.MouseEvent;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import com.enfluid.ltp.model.constants.Constants;
   
   public final class NumberConverter extends AbstractSingleValueConverter
   {
       
      
      public function NumberConverter()
      {
         super();
      }
      
      override public function fromString(param1:String) : Object
      {
         return !!isNaN(Number(param1))?null:new Number(param1);
      }
      
      override public function canConvert(param1:Class) : Boolean
      {
         return new param1() is Number;
      }
      
      override public function toString(param1:Object) : String
      {
         return param1 == null || isNaN(Number(param1))?null:param1.toString();
      }
   }
}
