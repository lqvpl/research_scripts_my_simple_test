package system.reflection
{
   import system.Configurator;
   import spark.primitives.Rect;
   import flash.events.Event;
   
   public final class ReflectionConfigurator extends Configurator
   {
       
      
      public function ReflectionConfigurator(param1:Object)
      {
         super(param1);
      }
      
      public function get normalizePath() : Boolean
      {
         return _config.normalizePath;
      }
      
      public function set normalizePath(param1:Boolean) : void
      {
         _config.normalizePath = param1;
      }
   }
}
