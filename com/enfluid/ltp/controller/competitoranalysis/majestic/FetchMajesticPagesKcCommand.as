package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.rpc.http.HTTPService;
   import spark.components.Label;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.Logger;
   
   public final class FetchMajesticPagesKcCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var keyword:KeywordVO;
      
      private var service:HTTPService;
      
      public function FetchMajesticPagesKcCommand(param1:KeywordVO)
      {
         this.service = new HTTPService();
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc3_:CompetitorUrlVO = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(waitInQueue)
         {
            return;
         }
         var _loc1_:* = Constants.CACHE_API_URL + "pages/majestic/newkc";
         var _loc2_:Object = {};
         _loc2_["pages"] = [];
         §§push(0);
         if(_loc8_)
         {
            §§push(---(-(§§pop() - 1) + 40) * 16);
         }
         for each(_loc3_ in this.keyword.competitorURLs)
         {
            _loc5_ = {};
            _loc5_.trust_flow = _loc3_.trust_flow;
            _loc5_.citation_flow = _loc3_.citation_flow;
            _loc5_.url = _loc3_.url;
            _loc5_.title = _loc3_.title;
            _loc5_.keyword = this.keyword.keyword;
            _loc5_.domain_citationflow = _loc3_.domain_citation;
            _loc5_.domain_trustflow = _loc3_.domain_trust;
            _loc5_.domain_referring_domains = _loc3_.referring_domains;
            _loc2_["pages"].push(_loc5_);
         }
         _loc4_ = JSON.stringify(_loc2_);
         this.service.url = _loc1_;
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         this.service.send(_loc4_).addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         var result:Object = null;
         var data:Object = param1;
         try
         {
            result = JSON.parse(data.result);
            this.parseData(result);
            return;
         }
         catch(err:Error)
         {
            Logger.log("Error Getting Majestic Data");
            Logger.log(err.message);
            done(FAILURE);
            return;
         }
      }
      
      public final function fault(param1:Object) : void
      {
         this.done(FAILURE);
      }
      
      private final function parseData(param1:Object) : void
      {
         var _loc5_:CompetitorUrlVO = null;
         var _loc6_:Object = null;
         §§push(param1.status_code);
         §§push(200);
         if(_loc10_)
         {
            §§push(-(§§pop() - 1 + 1 - 1));
         }
         if(§§pop() != §§pop())
         {
            if(param1.Code != "OK")
            {
               Logger.log("Error Getting Majestic Data: Status CODE: " + param1.status_code);
               this.done(FAILURE);
               return;
            }
         }
         var _loc2_:Object = param1.pages;
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() * 43) - 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() + 59 + 1 + 1 - 29 + 60);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() - 1 + 49));
         }
         for each(_loc5_ in this.keyword.competitorURLs)
         {
            _loc6_ = _loc2_[_loc3_];
            _loc5_.majestic_kc = _loc6_.majestic_kc;
            _loc5_.title_targeting = _loc6_.title_targeting;
            _loc5_.url_targeting = _loc6_.url_targeting;
            _loc5_.page_base_kc = _loc6_.page_base_kc;
            _loc5_.domain_base_kc = _loc6_.domain_base_kc;
            _loc5_.save();
            _loc4_ = int(_loc4_ + int(_loc6_.majestic_kc));
            _loc3_++;
         }
         this.keyword.avgKC = Math.round(_loc4_ / _loc3_);
         this.keyword.save();
         this.done();
      }
      
      override protected function done(param1:String = "success") : void
      {
         super.done(param1);
      }
   }
}
