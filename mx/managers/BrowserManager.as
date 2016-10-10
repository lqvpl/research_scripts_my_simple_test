package mx.managers
{
   import mx.core.mx_internal;
   import mx.core.Singleton;
   
   use namespace mx_internal;
   
   public class BrowserManager
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var implClassDependency:mx.managers.BrowserManagerImpl;
      
      private static var instance:mx.managers.IBrowserManager;
       
      
      public function BrowserManager()
      {
         super();
      }
      
      public static function getInstance() : mx.managers.IBrowserManager
      {
         if(!instance)
         {
            instance = IBrowserManager(Singleton.getInstance("mx.managers::IBrowserManager"));
         }
         return instance;
      }
   }
}
