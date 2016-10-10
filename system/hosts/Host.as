package system.hosts
{
   import flash.system.Capabilities;
   import system.Version;
   
   public final class Host
   {
       
      
      private var _version:Version;
      
      private var _id:system.hosts.HostID;
      
      public function Host(param1:system.hosts.HostID, param2:Version)
      {
         super();
         _id = param1;
         _version = param2;
      }
      
      public final function isDebug() : Boolean
      {
         return Capabilities.isDebugger;
      }
      
      public function get version() : Version
      {
         return _version;
      }
      
      public function get id() : system.hosts.HostID
      {
         return _id;
      }
      
      public final function toString() : String
      {
         §§push(id.toString() + " ");
         §§push(version);
         §§push(4);
         if(_loc2_)
         {
            §§push(-§§pop() - 39 + 10 + 1 - 96);
         }
         return §§pop() + §§pop().toString(§§pop());
      }
   }
}
