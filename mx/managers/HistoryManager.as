package mx.managers
{
   import mx.core.mx_internal;
   import mx.core.Singleton;
   
   use namespace mx_internal;
   
   public class HistoryManager
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var implClassDependency:mx.managers.HistoryManagerImpl;
      
      private static var _impl:mx.managers.IHistoryManager;
       
      
      public function HistoryManager()
      {
         super();
      }
      
      private static function get impl() : mx.managers.IHistoryManager
      {
         if(!_impl)
         {
            _impl = IHistoryManager(Singleton.getInstance("mx.managers::IHistoryManager"));
         }
         return _impl;
      }
      
      public static function initialize(param1:ISystemManager) : void
      {
      }
      
      public static function register(param1:IHistoryManagerClient) : void
      {
         impl.register(param1);
      }
      
      public static function unregister(param1:IHistoryManagerClient) : void
      {
         impl.unregister(param1);
      }
      
      public static function save() : void
      {
         impl.save();
      }
   }
}
