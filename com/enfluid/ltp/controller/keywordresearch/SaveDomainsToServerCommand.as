package com.enfluid.ltp.controller.keywordresearch
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.vo.DomainMajesticVO;
   import com.enfluid.ltp.util.Util;
   
   public final class SaveDomainsToServerCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var rawDomains:Object;
      
      private var service:HTTPService;
      
      public function SaveDomainsToServerCommand(param1:Object)
      {
         this.service = new HTTPService();
         this.rawDomains = param1;
         this.service = new HTTPService();
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:Object = {};
         _loc1_["domains"] = this.getDomainsList();
         var _loc2_:String = JSON.stringify(_loc1_);
         this.service.url = Constants.CACHE_API_URL + "domain";
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         this.service.send(_loc2_).addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         super.done();
      }
      
      public final function fault(param1:Object) : void
      {
         super.done(FAILURE);
      }
      
      private final function getDomainsList() : Array
      {
         var _loc3_:Object = null;
         var _loc4_:DomainMajesticVO = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() - 1 - 37 + 1 - 1);
         }
         for each(_loc3_ in this.rawDomains)
         {
            if(!Util.isInArray(_loc3_.RootDomain,_loc2_))
            {
               _loc4_ = new DomainMajesticVO();
               _loc4_.url = _loc3_.RootDomain;
               _loc4_.citationflow = _loc3_.CitationFlow;
               _loc4_.trustflow = _loc3_.TrustFlow;
               _loc4_.ext_backlinks = _loc3_.ExtxBackLinks;
               _loc4_.indexed_urls = _loc3_.IndexedURLs;
               _loc4_.ref_domains = _loc3_.RefDomains;
               _loc2_.push(_loc4_.url);
               _loc1_.push(_loc4_);
            }
         }
         return _loc1_;
      }
      
      override protected function done(param1:String = "success") : void
      {
         super.done(param1);
      }
   }
}
