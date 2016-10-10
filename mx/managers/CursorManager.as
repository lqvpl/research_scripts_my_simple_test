package mx.managers
{
   import mx.core.mx_internal;
   import mx.core.Singleton;
   
   use namespace mx_internal;
   
   public class CursorManager
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      public static const NO_CURSOR:int = 0;
      
      private static var implClassDependency:mx.managers.CursorManagerImpl;
      
      private static var _impl:mx.managers.ICursorManager;
       
      
      public function CursorManager()
      {
         super();
      }
      
      private static function get impl() : mx.managers.ICursorManager
      {
         if(!_impl)
         {
            _impl = ICursorManager(Singleton.getInstance("mx.managers::ICursorManager"));
         }
         return _impl;
      }
      
      public static function getInstance() : mx.managers.ICursorManager
      {
         return impl;
      }
      
      public static function get currentCursorID() : int
      {
         return impl.currentCursorID;
      }
      
      public static function set currentCursorID(param1:int) : void
      {
         impl.currentCursorID = param1;
      }
      
      public static function get currentCursorXOffset() : Number
      {
         return impl.currentCursorXOffset;
      }
      
      public static function set currentCursorXOffset(param1:Number) : void
      {
         impl.currentCursorXOffset = param1;
      }
      
      public static function get currentCursorYOffset() : Number
      {
         return impl.currentCursorYOffset;
      }
      
      public static function set currentCursorYOffset(param1:Number) : void
      {
         impl.currentCursorYOffset = param1;
      }
      
      public static function showCursor() : void
      {
         impl.showCursor();
      }
      
      public static function hideCursor() : void
      {
         impl.hideCursor();
      }
      
      public static function setCursor(param1:Class, param2:int = 2, param3:Number = 0, param4:Number = 0) : int
      {
         return impl.setCursor(param1,param2,param3,param4);
      }
      
      public static function removeCursor(param1:int) : void
      {
         impl.removeCursor(param1);
      }
      
      public static function removeAllCursors() : void
      {
         impl.removeAllCursors();
      }
      
      public static function setBusyCursor() : void
      {
         impl.setBusyCursor();
      }
      
      public static function removeBusyCursor() : void
      {
         impl.removeBusyCursor();
      }
      
      mx_internal static function registerToUseBusyCursor(param1:Object) : void
      {
         impl.registerToUseBusyCursor(param1);
      }
      
      mx_internal static function unRegisterToUseBusyCursor(param1:Object) : void
      {
         impl.unRegisterToUseBusyCursor(param1);
      }
   }
}
