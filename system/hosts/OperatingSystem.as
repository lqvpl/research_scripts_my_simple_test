package system.hosts
{
   import mx.states.Transition;
   import mx.binding.BindingManager;
   import system.Version;
   
   public final class OperatingSystem
   {
       
      
      private var _version:Version;
      
      private var _platform:system.hosts.PlatformID;
      
      private var _signature:String;
      
      public function OperatingSystem(param1:system.hosts.PlatformID, param2:Version, param3:String = "")
      {
         super();
         _platform = param1;
         _version = param2;
         _signature = param3;
      }
      
      public function get version() : Version
      {
         return _version;
      }
      
      public function get platform() : system.hosts.PlatformID
      {
         return _platform;
      }
      
      public final function toString() : String
      {
         return platform.toString();
      }
      
      public function get signature() : String
      {
         return _signature;
      }
   }
}
