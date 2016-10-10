package hr.binaria.asx3m.mapper
{
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.majestic.target;
   import com.enfluid.ltp.view.components.majestic.CompetitorMajesticAnalysisHeaderComponent;
   import mx.binding.Binding;
   import mx.controls.HTML;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SetDefaultConfigurationCommand;
   import system.data.Map;
   import spark.primitives.Path;
   import flash.utils.ByteArray;
   import system.data.maps.HashMap;
   
   use namespace mx_internal;
   
   public final class DefaultImplementationsMapper extends MapperWrapper
   {
       
      
      private var implToType:Map;
      
      private var typeToImpl:Map;
      
      public function DefaultImplementationsMapper(param1:IMapper)
      {
         typeToImpl = new HashMap();
         implToType = new HashMap();
         super(param1);
      }
      
      public final function addDefaultImplementation(param1:Class, param2:Class) : void
      {
         typeToImpl.put(param2,param1);
         implToType.put(param1,param2);
      }
      
      override public function serializedClass(param1:Class) : String
      {
         var _loc2_:Class = implToType.get(param1) as Class;
         return _loc2_ == null?super.serializedClass(param1):super.serializedClass(_loc2_);
      }
      
      override public function defaultImplementationOf(param1:Class) : Class
      {
         if(typeToImpl.containsKey(param1))
         {
            return typeToImpl.get(param1) as Class;
         }
         return super.defaultImplementationOf(param1);
      }
   }
}
