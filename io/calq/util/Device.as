package io.calq.util
{
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass2;
   import mx.binding.BindingManager;
   import flash.system.Capabilities;
   
   public final class Device
   {
      
      protected static var _systemChecked:Boolean = false;
      
      protected static var _isIOS:Boolean = false;
      
      protected static var _isAndroid:Boolean = false;
      
      protected static var _isIphone:Boolean = false;
      
      protected static var _isIpod:Boolean = false;
      
      protected static var _isIpad:Boolean = false;
      
      protected static var _osShort:String;
      
      protected static var _deviceGeneration:int = 0;
       
      
      public function Device()
      {
         super();
      }
      
      public static function get isAndroid() : Boolean
      {
         _systemCheck();
         return _isAndroid;
      }
      
      public static function get isIpod() : Boolean
      {
         _systemCheck();
         return _isIpod;
      }
      
      public static function get isIpad() : Boolean
      {
         _systemCheck();
         return _isIpad;
      }
      
      public static function get isIphone() : Boolean
      {
         _systemCheck();
         return _isIphone;
      }
      
      public static function get deviceGeneration() : int
      {
         _systemCheck();
         return _deviceGeneration;
      }
      
      public static function get isIOS() : Boolean
      {
         _systemCheck();
         return _isIOS;
      }
      
      public static function get isDesktop() : Boolean
      {
         return !_isIOS && !_isAndroid;
      }
      
      public static function get osShort() : String
      {
         _systemCheck();
         return _osShort;
      }
      
      protected static function _systemCheck() : void
      {
         if(_systemChecked)
         {
            return;
         }
         _systemChecked = true;
         var _loc1_:String = Capabilities.os;
         var _loc3_:RegExp = /(iPod|iPad|iPhone)([0-9]+)/;
         var _loc2_:Object = _loc1_.match(_loc3_);
         if(_loc2_ != null && _loc2_["2"] != undefined)
         {
            _isIOS = true;
            _isIphone = _loc2_["1"] == "iPhone";
            _isIpad = _loc2_["1"] == "iPad";
            _isIpod = _loc2_["1"] == "iPod";
            _deviceGeneration = int(_loc2_["2"]);
         }
         §§push(Capabilities.os.indexOf("Linux"));
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() * 105 + 5 + 71) * 42);
         }
         _isAndroid = Boolean(§§pop() >= §§pop() || §§pop() >= §§pop());
         if(_isIOS)
         {
            _osShort = "iOS";
         }
         else if(_isAndroid)
         {
            _osShort = "Android";
         }
         else
         {
            _osShort = Capabilities.os;
         }
      }
   }
}
