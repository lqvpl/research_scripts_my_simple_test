package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.util.MajesticUtils;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.controller.keywordresearch.SaveDomainsToServerCommand;
   import mx.rpc.Responder;
   import com.enfluid.ltp.model.constants.Values;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.MinimalFlatButtonSkin;
   import mx.binding.BindingManager;
   
   public final class FetchMajesticDomainsBulkKcCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var keywordsBatch:Array;
      
      private var service:HTTPService;
      
      private var failedDomains:Array;
      
      private var domains:Object;
      
      private var backupService:HTTPService;
      
      private var failoverLoops:int = 0;
      
      public function FetchMajesticDomainsBulkKcCommand(param1:Array)
      {
         this.failedDomains = [];
         this.keywordsBatch = param1;
         this.service = new HTTPService();
         this.backupService = new HTTPService();
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:* = MajesticUtils.getBulkMetricsEndPoint("GetRefDomainInfo",this.keywordsBatch);
         if(_loc1_)
         {
            this.service.url = _loc1_;
            this.service.method = "GET";
            this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
            this.service.send().addResponder(this);
         }
         else
         {
            this.done();
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
            Logger.log("Error Getting Majestic Data1");
            Logger.log(err.message);
            done();
            return;
         }
      }
      
      private final function parseData(param1:Object) : void
      {
         var _loc4_:KeywordVO = null;
         var _loc5_:CompetitorUrlVO = null;
         var _loc6_:Object = null;
         var _loc2_:Object = param1.DataTables.DomainsInfo.Data;
         §§push(0);
         if(_loc12_)
         {
            §§push((-(§§pop() + 44) + 72) * 112);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push((§§pop() + 78 + 1) * 40);
         }
         for each(_loc4_ in this.keywordsBatch)
         {
            §§push(0);
            if(_loc12_)
            {
               §§push(-(§§pop() * 13 + 1));
            }
            for each(_loc5_ in _loc4_.competitorURLs)
            {
               _loc6_ = _loc2_[_loc3_];
               §§push(_loc6_.IndexedURLs);
               §§push(-1);
               if(_loc12_)
               {
                  §§push(-((§§pop() - 114) * 36) - 81);
               }
               if(§§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop())
               {
                  this.failedDomains.push({"url":_loc6_.RootDomain});
                  _loc3_++;
               }
               else
               {
                  _loc5_.indexed_urls = _loc6_.IndexedURLs;
                  _loc5_.domain_citation = _loc6_.CitationFlow;
                  _loc5_.domain_trust = _loc6_.TrustFlow;
                  _loc5_.save();
                  _loc3_++;
               }
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
         var _loc5_:KeywordVO = null;
         var _loc6_:CompetitorUrlVO = null;
         var _loc2_:Object = JSON.parse(param1.result);
         if(param1.Code != "OK")
         {
            §§push(this.failoverLoops);
            §§push(3);
            if(_loc13_)
            {
               §§push((§§pop() + 19 - 116 + 1) * 106 - 1 + 1 - 91);
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
         if(_loc13_)
         {
            §§push(-(§§pop() - 1 + 1) - 73 - 106);
         }
         for each(_loc4_ in _loc3_)
         {
            §§push(0);
            if(_loc14_)
            {
               §§push(-(§§pop() + 1 - 41 + 9) * 46);
            }
            for each(_loc5_ in this.keywordsBatch)
            {
               §§push(0);
               if(_loc13_)
               {
                  §§push(-((§§pop() - 1) * 70 + 15 + 1) - 107);
               }
               for each(_loc6_ in _loc5_.competitorURLs)
               {
                  §§push(_loc6_.url.indexOf(_loc4_.Item));
                  §§push(-1);
                  if(_loc13_)
                  {
                     §§push(§§pop() - 17 - 1 + 1);
                  }
                  if(§§pop() != §§pop())
                  {
                     §§push(_loc6_);
                     §§push(_loc4_.IndexedURLs);
                     §§push(0);
                     if(_loc14_)
                     {
                        §§push(-((§§pop() + 8) * 76) - 1 - 113);
                     }
                     §§pop().indexed_urls = §§pop() < §§pop()?int(Values.CACHE_NULL_VALUE):int(_loc4_.IndexedURLs);
                     §§push(_loc6_);
                     §§push(_loc4_.CitationFlow);
                     §§push(0);
                     if(_loc14_)
                     {
                        §§push(-(§§pop() + 1 + 119 - 1 + 1 + 1));
                     }
                     §§pop().domain_citation = §§pop() < §§pop()?int(Values.CACHE_NULL_VALUE):int(_loc4_.CitationFlow);
                     §§push(_loc6_);
                     §§push(_loc4_.TrustFlow);
                     §§push(0);
                     if(_loc13_)
                     {
                        §§push((§§pop() - 20 - 1 + 86) * 89);
                     }
                     §§pop().domain_trust = §§pop() < §§pop()?int(Values.CACHE_NULL_VALUE):int(_loc4_.TrustFlow);
                     _loc6_.save();
                  }
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
      
      public final function fault(param1:Object) : void
      {
         this.done();
      }
      
      override protected function done(param1:String = "success") : void
      {
         super.done(param1);
      }
   }
}
