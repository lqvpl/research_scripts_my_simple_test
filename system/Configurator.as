package system
{
   import mx.graphics.SolidColor;
   import spark.components.Scroller;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import system.data.Iterator;
   
   public class Configurator implements Serializable
   {
       
      
      protected var _config:Object;
      
      public function Configurator(param1:Object)
      {
         super();
         _config = {};
         load(param1);
      }
      
      public final function load(param1:Object) : void
      {
         var _loc2_:* = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() + 107) * 98 + 1 + 73) * 5);
         }
         for(_loc2_ in param1)
         {
            _config[_loc2_] = param1[_loc2_];
         }
      }
      
      public final function toString() : String
      {
         return toSource();
      }
      
      public function toSource(param1:int = 0) : String
      {
         config.serializer.prettyIndent = param1;
         return config.serializer.serialize(_config);
      }
   }
}
