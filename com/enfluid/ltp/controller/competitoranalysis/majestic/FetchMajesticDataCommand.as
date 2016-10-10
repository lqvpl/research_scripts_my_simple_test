package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.util.MajesticUtils;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.util.Logger;
   import com.hurlant.util.Memory;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import mx.controls.HRule;
   
   public final class FetchMajesticDataCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var service:HTTPService;
      
      private var keyword:KeywordVO;
      
      private var cacheService:HTTPService;
      
      private var failoverLoops:int = 0;
      
      public function FetchMajesticDataCommand(param1:KeywordVO)
      {
         this.service = new HTTPService();
         this.cacheService = new HTTPService();
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         if(waitInQueue)
         {
            return;
         }
         this.forceDataFromMajestic();
      }
      
      public final function forceDataFromMajestic(param1:Boolean = false) : void
      {
         var _loc2_:String = MajesticUtils.getMetricsEndPoint("GetIndexItemInfo",this.keyword,param1);
         this.service.url = _loc2_;
         this.service.method = "GET";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.send().addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         var result:Object = null;
         var data:Object = param1;
         if(isCancelled)
         {
            return;
         }
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
         var _loc4_:CompetitorUrlVO = null;
         var _loc5_:Object = null;
         if(param1.Code != "OK")
         {
            §§push(this.failoverLoops);
            §§push(3);
            if(_loc9_)
            {
               §§push(-(§§pop() - 1 - 11));
            }
            if(§§pop() < §§pop())
            {
               if(param1.Code == "InsufficientIndexItemInfoUnits")
               {
                  Logger.log("Majestic: Run out of limit");
                  this.failoverLoops++;
                  this.forceDataFromMajestic(true);
               }
               else
               {
                  Logger.log("Error Getting Majestic Data: Status CODE: " + param1.Code);
                  Logger.log("Error Getting Majestic Data: Status CODE: " + param1.ErrorMessage);
                  this.done(FAILURE);
                  return;
               }
            }
            else
            {
               Logger.log("TO MANY FAILS QUIT THE LOOP: Status CODE: " + param1.Code);
               this.done(FAILURE);
               return;
            }
         }
         var _loc2_:Object = param1.DataTables.Results.Data;
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 40 + 82 + 3 - 83) + 27);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() - 36 - 1 - 54 - 17 - 44 - 75);
         }
         for each(_loc4_ in this.keyword.competitorURLs)
         {
            _loc5_ = _loc2_[_loc3_];
            _loc4_.trust_flow = _loc5_.TrustFlow;
            _loc4_.citation_flow = _loc5_.CitationFlow;
            _loc4_.referring_domains = _loc5_.RefDomains;
            _loc4_.referring_ips = _loc5_.RefIPs;
            _loc4_.external_backlinks = _loc5_.ExtBackLinks;
            _loc4_.internal_links = _loc5_.OutLinksInternal;
            §§push(_loc4_);
            §§push(Math);
            §§push(_loc5_.TrustFlow / _loc5_.CitationFlow);
            §§push(100);
            if(_loc9_)
            {
               §§push(§§pop() - 66 + 1 + 1);
            }
            §§pop().spam_score = §§pop().round(§§pop() * §§pop());
            _loc4_.outbound_links = _loc5_.OutlinksExternal;
            _loc4_.referring_edu_gov = _loc5_.RefDomainsEDU + _loc5_.RefDomainsGOV;
            _loc4_.external_edu_gov = _loc5_.ExtBackLinksEDU + _loc5_.ExtBackLinksGOV;
            _loc4_.ref_domains_edu = _loc5_.RefDomainsEDU;
            _loc4_.ext_backlinks_edu = _loc5_.ExtBackLinksEDU;
            _loc4_.ref_domains_gov = _loc5_.RefDomainsGOV;
            _loc4_.ext_backlinks_gov = _loc5_.ExtBackLinksGOV;
            _loc4_.outlinks_external = _loc5_.OutLinksExternal;
            _loc4_.outlinks_internal = _loc5_.OutLinksInternal;
            _loc4_.topical_trust_topic_0 = _loc5_.TopicalTrustFlow_Topic_0;
            _loc4_.topical_trust_value_0 = _loc5_.TopicalTrustFlow_Value_0;
            _loc4_.topical_trust_topic_1 = _loc5_.TopicalTrustFlow_Topic_1;
            _loc4_.topical_trust_value_1 = _loc5_.TopicalTrustFlow_Value_1;
            _loc4_.topical_trust_topic_2 = _loc5_.TopicalTrustFlow_Topic_2;
            _loc4_.topical_trust_value_3 = _loc5_.TopicalTrustFlow_Value_2;
            _loc4_.save();
            _loc3_++;
         }
         this.done();
      }
      
      override protected function done(param1:String = "success") : void
      {
         super.done(param1);
      }
   }
}
