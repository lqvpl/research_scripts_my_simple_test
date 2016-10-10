package mx.core
{
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import mx.utils.Platform;
   import flash.system.Capabilities;
   import mx.managers.SystemManager;
   
   use namespace mx_internal;
   
   public class RuntimeDPIProvider
   {
      
      mx_internal static const IPAD_MAX_EXTENT:int = 1024;
      
      mx_internal static const IPAD_RETINA_MAX_EXTENT:int = 2048;
       
      
      public function RuntimeDPIProvider()
      {
         super();
      }
      
      mx_internal static function classifyDPI(param1:Number) : Number
      {
         if(param1 <= 140)
         {
            return DPIClassification.DPI_120;
         }
         if(param1 <= 200)
         {
            return DPIClassification.DPI_160;
         }
         if(param1 <= 280)
         {
            return DPIClassification.DPI_240;
         }
         if(param1 <= 400)
         {
            return DPIClassification.DPI_320;
         }
         if(param1 <= 560)
         {
            return DPIClassification.DPI_480;
         }
         return DPIClassification.DPI_640;
      }
      
      public function get runtimeDPI() : Number
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:Stage = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:Boolean = Platform.isIOS;
         var _loc2_:Number = Capabilities.screenDPI;
         if(_loc1_)
         {
            _loc3_ = SystemManager.getSWFRoot(this);
            if(_loc3_ != null)
            {
               _loc4_ = _loc3_.stage;
               if(_loc4_ != null)
               {
                  _loc5_ = _loc4_.fullScreenWidth;
                  _loc6_ = _loc4_.fullScreenHeight;
                  if(_loc5_ == IPAD_RETINA_MAX_EXTENT || _loc6_ == IPAD_RETINA_MAX_EXTENT)
                  {
                     return DPIClassification.DPI_320;
                  }
                  if(_loc5_ == IPAD_MAX_EXTENT || _loc6_ == IPAD_MAX_EXTENT)
                  {
                     return DPIClassification.DPI_160;
                  }
               }
            }
         }
         return classifyDPI(_loc2_);
      }
   }
}
