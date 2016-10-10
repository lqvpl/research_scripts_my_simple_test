package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.util.MajesticUtils;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.controller.keywordresearch.SaveDomainsToServerCommand;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.DeferredInstanceFromFunction;
   import mx.rpc.Responder;
   import com.enfluid.ltp.model.constants.Values;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   
   public final class FetchMajesticDomainDataCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var keyword:KeywordVO;
      
      private var service:HTTPService;
      
      private var backupService:HTTPService;
      
      private var domains:Object;
      
      private var failedDomains:Array;
      
      private var failoverLoops:int = 0;
      
      public function FetchMajesticDomainDataCommand(param1:KeywordVO)
      {
         this.failedDomains = [];
         super();
         this.keyword = param1;
         this.service = new HTTPService();
         this.backupService = new HTTPService();
      }
      
      public function execute() : void
      {
         var _loc1_:String = MajesticUtils.getMetricsEndPoint("GetRefDomainInfo",this.keyword);
         this.service.url = _loc1_;
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
         var _loc3_:CompetitorUrlVO = null;
         var _loc4_:Object = null;
         §§push(param1.status_code);
         §§push(200);
         if(_loc7_)
         {
            §§push(-(§§pop() - 15 + 1 - 1));
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
         this.domains = param1.DataTables.DomainsInfo.Data;
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() - 14) - 1);
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(((§§pop() + 31) * 66 * 79 + 24) * 77 - 1);
         }
         for each(_loc3_ in this.keyword.competitorURLs)
         {
            _loc4_ = this.domains[_loc2_];
            §§push(_loc4_.IndexedURLs);
            §§push(-1);
            if(_loc8_)
            {
               §§push(--(§§pop() + 43 - 1));
            }
            if(§§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop())
            {
               this.failedDomains.push({"url":_loc4_.RootDomain});
               _loc2_++;
            }
            else
            {
               §§push(_loc3_);
               §§push(_loc4_.IndexedURLs);
               §§push(0);
               if(_loc7_)
               {
                  §§push(-(§§pop() + 1 + 15) + 118 + 1);
               }
               if(§§pop() < §§pop())
               {
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(§§pop() + 58 + 36 + 81);
                  }
               }
               else
               {
                  §§push(int(_loc4_.IndexedURLs));
               }
               §§pop().indexed_urls = §§pop();
               _loc3_.domain_citation = _loc4_.CitationFlow;
               _loc3_.domain_trust = _loc4_.TrustFlow;
               _loc3_.domain_url = _loc4_.RootDomain;
               _loc3_.save();
               _loc2_++;
            }
         }
         if(this.failedDomains.length)
         {
            this.getFailedDomains();
         }
         else
         {
            new SaveDomainsToServerCommand(this.domains).execute();
            this.done();
         }
      }
      
      private final function getFailedDomains(param1:Boolean = false) : void
      {
         var _loc2_:String = MajesticUtils.getMetricsEndPointByRaw("GetIndexItemInfo",this.failedDomains,param1);
         this.backupService.url = _loc2_;
         this.backupService.method = "GET";
         this.backupService.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.backupService.send().addResponder(new Responder(this.missingDomainsDone,this.missingDomainsFail));
      }
      
      private final function missingDomainsDone(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:CompetitorUrlVO = null;
         var _loc2_:Object = JSON.parse(param1.result);
         if(param1.Code != "OK")
         {
            §§push(this.failoverLoops);
            §§push(3);
            if(_loc11_)
            {
               §§push((§§pop() - 1 - 1) * 44 - 18 - 107 - 100);
            }
            if(§§pop() < §§pop())
            {
               if(param1.Code == "InsufficientIndexItemInfoUnits")
               {
                  Logger.log("Majestic: Run out of limit");
                  this.failoverLoops++;
                  this.getFailedDomains(true);
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
         var _loc3_:Object = _loc2_.DataTables.Results.Data;
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() * 8 * 80) - 80 + 1 - 20);
         }
         for each(_loc4_ in _loc3_)
         {
            §§push(0);
            if(_loc10_)
            {
               §§push((-§§pop() - 1) * 31);
            }
            for each(_loc5_ in this.keyword.competitorURLs)
            {
               §§push(_loc5_.url.indexOf(_loc4_.Item));
               §§push(-1);
               if(_loc10_)
               {
                  §§push(-(-(§§pop() + 74) - 1 - 1));
               }
               if(§§pop() != §§pop())
               {
                  §§push(_loc5_);
                  §§push(_loc4_.IndexedURLs);
                  §§push(0);
                  if(_loc11_)
                  {
                     §§push(§§pop() - 50 + 1 - 14 + 57 - 1 - 10);
                  }
                  §§pop().indexed_urls = §§pop() < §§pop()?int(Values.CACHE_NULL_VALUE):int(_loc4_.IndexedURLs);
                  §§push(_loc5_);
                  §§push(_loc4_.CitationFlow);
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push((§§pop() - 84) * 92 + 52 - 1 - 111 - 1);
                  }
                  §§pop().domain_citation = §§pop() < §§pop()?int(Values.CACHE_NULL_VALUE):int(_loc4_.CitationFlow);
                  §§push(_loc5_);
                  §§push(_loc4_.TrustFlow);
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(-(§§pop() + 46) + 1 + 17 + 1);
                  }
                  §§pop().domain_trust = §§pop() < §§pop()?int(Values.CACHE_NULL_VALUE):int(_loc4_.TrustFlow);
                  _loc5_.save();
               }
            }
         }
         new SaveDomainsToServerCommand(this.domains).execute();
         this.done();
      }
      
      private final function missingDomainsFail(param1:Object) : void
      {
         this.done(FAILURE);
      }
      
      override protected function done(param1:String = "success") : void
      {
         super.done(param1);
      }
   }
}
