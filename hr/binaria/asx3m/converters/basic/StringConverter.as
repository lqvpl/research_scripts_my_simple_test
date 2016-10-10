package hr.binaria.asx3m.converters.basic
{
   import mx.states.Transition;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import mx.binding.Binding;
   import mx.collections.IList;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   
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
