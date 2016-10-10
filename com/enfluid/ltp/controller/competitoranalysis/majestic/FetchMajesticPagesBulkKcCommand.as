package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.view.components.Link;
   import com.enfluid.ltp.controller.keywordresearch.SaveTopTenToServerCommand;
   import com.enfluid.ltp.controller.keywordresearch.SaveAvgKCToServer;
   
   public final class FetchMajesticPagesBulkKcCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var keywordsBatch:Array;
      
      private var service:HTTPService;
      
      public function FetchMajesticPagesBulkKcCommand(param1:Array)
      {
         this.service = new HTTPService();
         this.keywordsBatch = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc3_:KeywordVO = null;
         var _loc5_:CompetitorUrlVO = null;
         var _loc6_:Object = null;
         if(waitInQueue)
         {
            return;
         }
         var _loc1_:* = Constants.CACHE_API_URL + "pages/majestic/newkc";
         var _loc2_:Object = {};
         _loc2_["pages"] = [];
         §§push(0);
         if(_loc12_)
         {
            §§push(-((-(§§pop() + 17) - 43) * 33 - 108 - 1));
         }
         for each(_loc3_ in this.keywordsBatch)
         {
            if(!_loc3_.isFromCache)
            {
               §§push(0);
               if(_loc12_)
               {
                  §§push(-(§§pop() * 77) - 1);
               }
               for each(_loc5_ in _loc3_.competitorURLs)
               {
                  _loc6_ = {};
                  _loc6_.trust_flow = _loc5_.trust_flow;
                  _loc6_.citation_flow = _loc5_.citation_flow;
                  _loc6_.url = _loc5_.url;
                  _loc6_.title = _loc5_.title;
                  _loc6_.keyword = _loc3_.keyword;
                  _loc6_.domain_citationflow = _loc5_.domain_citation;
                  _loc6_.domain_trustflow = _loc5_.domain_trust;
                  _loc6_.domain_referring_domains = _loc5_.referring_domains;
                  _loc2_["pages"].push(_loc6_);
               }
            }
         }
         if(!_loc2_["pages"].length)
         {
            this.done();
            return;
         }
         var _loc4_:String = JSON.stringify(_loc2_);
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
            Logger.log("Error Getting Majestic Data2");
            Logger.log(err.message);
            done();
            return;
         }
      }
      
      public final function fault(param1:Object) : void
      {
         this.done();
      }
      
      private final function parseData(param1:Object) : void
      {
         var _loc4_:KeywordVO = null;
         §§push(0);
         if(_loc13_)
         {
            §§push(-(-§§pop() + 55) + 1 - 1 - 1 + 16);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc13_)
         {
            §§push(((§§pop() + 94) * 9 + 52) * 16 - 1);
         }
         var _loc6_:* = §§pop();
         var _loc7_:CompetitorUrlVO = null;
         var _loc8_:Object = null;
         §§push(param1.status_code);
         §§push(200);
         if(_loc13_)
         {
            §§push(-(§§pop() * 1 * 20 - 61));
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
         if(_loc14_)
         {
            §§push(-(§§pop() * 116) + 1 + 85);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc13_)
         {
            §§push(-((-§§pop() * 102 - 74) * 0));
         }
         for each(_loc4_ in this.keywordsBatch)
         {
            if(!_loc4_.isFromCache)
            {
               §§push(0);
               if(_loc14_)
               {
                  §§push((§§pop() - 83) * 100 + 1);
               }
               _loc5_ = §§pop();
               §§push(0);
               if(_loc14_)
               {
                  §§push(-(§§pop() - 52 - 1 - 1) * 71);
               }
               _loc6_ = §§pop();
               §§push(0);
               if(_loc14_)
               {
                  §§push(§§pop() * 42 - 15 - 103);
               }
               for each(_loc7_ in _loc4_.competitorURLs)
               {
                  _loc8_ = _loc2_[_loc3_];
                  _loc7_.majestic_kc = _loc8_.majestic_kc;
                  _loc7_.title_targeting = _loc8_.title_targeting;
                  _loc7_.url_targeting = _loc8_.url_targeting;
                  _loc7_.page_base_kc = _loc8_.page_base_kc;
                  _loc7_.domain_base_kc = _loc8_.domain_base_kc;
                  _loc7_.save();
                  _loc5_ = int(_loc5_ + int(_loc8_.majestic_kc));
                  _loc6_++;
                  _loc3_++;
               }
               _loc4_.avgKC = Math.round(_loc5_ / _loc6_);
               _loc4_.save();
               new SaveTopTenToServerCommand(_loc4_).execute();
               new SaveAvgKCToServer(_loc4_,"majestic").execute();
            }
         }
         this.done();
      }
      
      override protected function done(param1:String = "success") : void
      {
         super.done(param1);
      }
   }
}
