package hr.binaria.asx3m.mapper
{
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import mx.binding.Binding;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import com.enfluid.ltp.view.components.Tick;
   import system.data.sets.HashSet;
   import spark.primitives.Rect;
   import spark.components.TextArea;
   import mx.binding.BindingManager;
   
   use namespace mx_internal;
   
   public final class ImmutableTypesMapper extends MapperWrapper
   {
       
      
      private var immutableTypes:HashSet;
      
      public function ImmutableTypesMapper(param1:IMapper)
      {
         super(param1);
         immutableTypes = new HashSet();
      }
      
      public final function addImmutableType(param1:Class) : void
      {
         immutableTypes.add(param1);
      }
      
      override public function isImmutableValueType(param1:Class) : Boolean
      {
         if(immutableTypes.contains(param1))
         {
            return true;
         }
         return super.isImmutableValueType(param1);
      }
   }
}
