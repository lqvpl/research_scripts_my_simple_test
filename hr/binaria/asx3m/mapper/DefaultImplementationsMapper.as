package hr.binaria.asx3m.mapper
{
   import spark.effects.easing.Sine;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import assets.TextAssets;
   import spark.components.Image;
   import system.serializers.§eden:release§.debug;
   import system.serializers.eden.config;
   import system.Strings;
   import system.serializers.eden.strings;
   import system.hosts.PlatformID;
   import system.Version;
   import system.data.Map;
   import com.enfluid.ltp.view.components.CustomRect;
   import spark.components.Group;
   import spark.primitives.Path;
   import system.data.maps.HashMap;
   
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
