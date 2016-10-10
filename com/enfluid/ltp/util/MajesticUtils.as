package com.enfluid.ltp.util
{
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.effects.Rotate;
   import mx.binding.BindingManager;
   
   public final class MajesticUtils
   {
       
      
      public function MajesticUtils()
      {
         super();
      }
      
      public static function getMetricsEndPoint(param1:String, param2:KeywordVO, param3:Boolean = false) : String
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         §§push(0);
         if(_loc14_)
         {
            §§push(-(§§pop() + 1 + 1 - 103 + 1));
         }
         var _loc7_:uint = §§pop();
         var _loc8_:CompetitorUrlVO = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         _loc4_ = "?app_api_key=" + encodeURIComponent(Constants.MAJESTIC_API_KEY);
         _loc4_ = _loc4_ + ("&cmd=" + encodeURIComponent(param1));
         _loc4_ = _loc4_ + ("&Timeout=" + Constants.MAJESTIC_TIMEOUT);
         _loc4_ = _loc4_ + ("&datasource=" + encodeURIComponent(Constants.MAJESTIC_DATA_SOURCE));
         _loc4_ = _loc4_ + (!!param3?"&EnableResourceUnitFailover=1":"");
         _loc5_ = "items=" + param2.competitorURLs.length;
         §§push(0);
         if(_loc14_)
         {
            §§push(§§pop() * 64 + 1 - 1 + 59 + 1);
         }
         _loc7_ = §§pop();
         §§push(0);
         if(_loc13_)
         {
            §§push(§§pop() + 1 - 1 + 1 - 1);
         }
         for each(_loc8_ in param2.competitorURLs)
         {
            _loc9_ = _loc8_.url;
            _loc6_ = "item" + _loc7_++;
            _loc10_ = _loc6_ + "=" + encodeURIComponent(_loc9_);
            _loc5_ = _loc5_ + ("&" + _loc10_);
         }
         new SetUserEvent("User.Event.MajesticAPI",{
            "command":param1,
            "items":_loc7_
         }).execute();
         return "https://" + Constants.MAJESTIC_HOSTNAME + "/" + Constants.MAJESTIC_PATH + "/" + _loc4_ + "&" + _loc5_;
      }
      
      public static function getBulkMetricsEndPoint(param1:String, param2:Array, param3:Boolean = false) : *
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         §§push(0);
         if(_loc18_)
         {
            §§push(§§pop() - 1 - 1 + 1);
         }
         var _loc7_:uint = §§pop();
         var _loc8_:KeywordVO = null;
         var _loc9_:CompetitorUrlVO = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         _loc4_ = "?app_api_key=" + encodeURIComponent(Constants.MAJESTIC_API_KEY);
         _loc4_ = _loc4_ + ("&cmd=" + encodeURIComponent(param1));
         _loc4_ = _loc4_ + ("&Timeout=" + Constants.MAJESTIC_TIMEOUT);
         _loc4_ = _loc4_ + ("&datasource=" + encodeURIComponent(Constants.MAJESTIC_DATA_SOURCE));
         _loc4_ = _loc4_ + (!!param3?"&EnableResourceUnitFailover=1":"");
         _loc5_ = "items=%ITEMS%";
         §§push(0);
         if(_loc17_)
         {
            §§push(-(-§§pop() + 1 + 25 - 1) * 107);
         }
         _loc7_ = §§pop();
         §§push(0);
         if(_loc18_)
         {
            §§push(-(§§pop() * 77 - 1) - 1);
         }
         for each(_loc8_ in param2)
         {
            if(!_loc8_.isFromCache)
            {
               §§push(0);
               if(_loc17_)
               {
                  §§push((§§pop() - 1 + 48 + 1) * 94 - 1 - 7 + 1);
               }
               for each(_loc9_ in _loc8_.competitorURLs)
               {
                  _loc10_ = _loc9_.url;
                  _loc6_ = "item" + _loc7_++;
                  _loc11_ = _loc6_ + "=" + encodeURIComponent(_loc10_);
                  _loc5_ = _loc5_ + ("&" + _loc11_);
               }
            }
         }
         _loc5_ = _loc5_.split("%ITEMS%").join(_loc7_);
         new SetUserEvent("User.Event.MajesticAPI",{
            "command":param1,
            "items":_loc7_
         }).execute();
         §§push(_loc7_);
         §§push(0);
         if(_loc18_)
         {
            §§push((§§pop() + 96 - 1) * 63 - 1);
         }
         if(§§pop() > §§pop())
         {
            _loc12_ = "https://" + Constants.MAJESTIC_HOSTNAME + "/" + Constants.MAJESTIC_PATH + "/" + _loc4_ + "&" + _loc5_;
            return _loc12_;
         }
         return false;
      }
      
      public static function getMetricsEndPointByRaw(param1:String, param2:Array, param3:Boolean = false) : String
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         §§push(0);
         if(_loc13_)
         {
            §§push(-(--(§§pop() - 24) * 62 + 1 + 1));
         }
         var _loc7_:uint = §§pop();
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         _loc4_ = "?app_api_key=" + encodeURIComponent(Constants.MAJESTIC_API_KEY);
         _loc4_ = _loc4_ + ("&cmd=" + encodeURIComponent(param1));
         _loc4_ = _loc4_ + ("&Timeout=" + Constants.MAJESTIC_TIMEOUT);
         _loc4_ = _loc4_ + ("&datasource=" + encodeURIComponent(Constants.MAJESTIC_DATA_SOURCE));
         _loc4_ = _loc4_ + (!!param3?"&EnableResourceUnitFailover=1":"");
         _loc5_ = "items=" + param2.length;
         §§push(0);
         if(_loc14_)
         {
            §§push(-(§§pop() - 18 + 1));
         }
         _loc7_ = §§pop();
         §§push(0);
         if(_loc14_)
         {
            §§push(-(§§pop() * 115 * 59) - 39);
         }
         for each(_loc8_ in param2)
         {
            _loc9_ = _loc8_.url;
            _loc6_ = "item" + _loc7_++;
            _loc10_ = _loc6_ + "=" + encodeURIComponent(_loc9_);
            _loc5_ = _loc5_ + ("&" + _loc10_);
         }
         new SetUserEvent("User.Event.MajesticAPI",{
            "command":param1,
            "items":_loc7_
         }).execute();
         return "https://" + Constants.MAJESTIC_HOSTNAME + "/" + Constants.MAJESTIC_PATH + "/" + _loc4_ + "&" + _loc5_;
      }
   }
}
