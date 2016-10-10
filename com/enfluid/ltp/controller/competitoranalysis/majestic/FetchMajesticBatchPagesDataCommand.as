package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import mx.collections.XMLListCollection;
   import spark.primitives.RectangularDropShadow;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.util.MajesticUtils;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   
   public final class FetchMajesticBatchPagesDataCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var keywordsBatch:Array;
      
      private var service:HTTPService;
      
      private var failoverLoops:int = 0;
      
      public function FetchMajesticBatchPagesDataCommand(param1:Array)
      {
         this.keywordsBatch = param1;
         this.service = new HTTPService();
         super();
      }
      
      public function execute() : void
      {
         this.forceDataFromMajestic();
      }
      
      public final function forceDataFromMajestic(param1:Boolean = false) : void
      {
         var _loc2_:* = MajesticUtils.getBulkMetricsEndPoint("GetIndexItemInfo",this.keywordsBatch,param1);
         if(_loc2_)
         {
            this.service.url = _loc2_;
            this.service.method = "GET";
            this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
            this.service.send().addResponder(this);
         }
         else
         {
            this.done(FAILURE);
         }
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
            Logger.log("Error Getting Majestic Data 1");
            Logger.log(err.message);
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
         var _loc5_:CompetitorUrlVO = null;
         var _loc6_:Object = null;
         if(param1.Code != "OK")
         {
            §§push(this.failoverLoops);
            §§push(3);
            if(_loc11_)
            {
               §§push((-(§§pop() - 38 + 49 - 1) + 64 - 1) * 60);
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
         if(_loc12_)
         {
            §§push(-(§§pop() - 53) * 105 - 45 + 15);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(-§§pop() + 1 + 1 - 76);
         }
         for each(_loc4_ in this.keywordsBatch)
         {
            if(!_loc4_.isFromCache)
            {
               §§push(0);
               if(_loc12_)
               {
                  §§push(§§pop() + 33 - 52 - 1);
               }
               for each(_loc5_ in _loc4_.competitorURLs)
               {
                  _loc6_ = _loc2_[_loc3_];
                  if(_loc6_)
                  {
                     _loc5_.trust_flow = _loc6_.TrustFlow;
                     _loc5_.citation_flow = _loc6_.CitationFlow;
                     _loc5_.referring_domains = _loc6_.RefDomains;
                     _loc5_.referring_ips = _loc6_.RefIPs;
                     _loc5_.external_backlinks = _loc6_.ExtBackLinks;
                     _loc5_.internal_links = _loc6_.OutLinksInternal;
                     _loc5_.siteAge = _loc6_.site_age;
                     §§push(_loc5_);
                     §§push(Math);
                     §§push(_loc6_.TrustFlow / _loc6_.CitationFlow);
                     §§push(100);
                     if(_loc12_)
                     {
                        §§push(--(--(§§pop() * 56) - 1) * 32);
                     }
                     §§pop().spam_score = §§pop().round(§§pop() * §§pop());
                     _loc5_.outbound_links = _loc6_.OutlinksExternal;
                     _loc5_.referring_edu_gov = _loc6_.RefDomainsEDU + _loc6_.RefDomainsGOV;
                     _loc5_.external_edu_gov = _loc6_.ExtBackLinksEDU + _loc6_.ExtBackLinksGOV;
                     _loc5_.ref_domains_edu = _loc6_.RefDomainsEDU;
                     _loc5_.ext_backlinks_edu = _loc6_.ExtBackLinksEDU;
                     _loc5_.ref_domains_gov = _loc6_.RefDomainsGOV;
                     _loc5_.ext_backlinks_gov = _loc6_.ExtBackLinksGOV;
                     _loc5_.outlinks_external = _loc6_.OutLinksExternal;
                     _loc5_.outlinks_internal = _loc6_.OutLinksInternal;
                     _loc5_.topical_trust_topic_0 = _loc6_.TopicalTrustFlow_Topic_0;
                     _loc5_.topical_trust_value_0 = _loc6_.TopicalTrustFlow_Value_0;
                     _loc5_.topical_trust_topic_1 = _loc6_.TopicalTrustFlow_Topic_1;
                     _loc5_.topical_trust_value_1 = _loc6_.TopicalTrustFlow_Value_1;
                     _loc5_.topical_trust_topic_2 = _loc6_.TopicalTrustFlow_Topic_2;
                     _loc5_.topical_trust_value_3 = _loc6_.TopicalTrustFlow_Value_2;
                     _loc5_.save();
                     _loc3_++;
                  }
               }
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
