package com.enfluid.ltp.controller.services
{
   import com.photon.util.PhotonSingleton;
   import mx.rpc.http.HTTPService;
   
   public final class Services extends PhotonSingleton
   {
       
      
      public var srtService:HTTPService;
      
      public function Services()
      {
         this.srtService = new HTTPService();
         super();
      }
      
      public static function init() : void
      {
         instance.srtService.method = "POST";
         instance.srtService.url = "https://www.serpranktracker.com/tracker/webservice";
      }
      
      public static function get instance() : Services
      {
         return Services(getInstanceOf(Services));
      }
   }
}
