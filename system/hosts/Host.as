package system.hosts
{
   import spark.layouts.VerticalLayout;
   import mx.binding.BindingManager;
   import flash.system.Capabilities;
   import com.enfluid.ltp.view.components.Link;
   import system.Version;
   import spark.effects.AddAction;
   
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
            §§push(§§pop() * 17 - 21 + 94 + 1);
         }
         return §§pop() + §§pop().toString(§§pop());
      }
   }
}
