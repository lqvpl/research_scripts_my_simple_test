package com.enfluid.ltp.controller.keywordresearch
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.photon.controller.PhotonCommand;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchSiteAgeCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.CalcAllMajesticCompetitorAverage;
   import com.enfluid.ltp.controller.competitoranalysis.CalcAllCompetitorAnalysisAverages;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchPageRankCommand;
   
   public final class SaveGlobalSearchesToServerCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var keywords:Array;
      
      private var service:HTTPService;
      
      public function SaveGlobalSearchesToServerCommand(param1:Array)
      {
         this.keywords = [];
         this.service = new HTTPService();
         this.keywords = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc3_:KeywordVO = null;
         var _loc5_:Object = null;
         var _loc1_:Object = {};
         var _loc2_:Array = [];
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 1 + 1 + 15 - 62 - 1) * 12);
         }
         for each(_loc3_ in this.keywords)
         {
            §§push(_loc3_.globalSearches);
            §§push(0);
            if(_loc8_)
            {
               §§push(--(§§pop() - 1));
            }
            if(§§pop() >= §§pop())
            {
               _loc5_ = {};
               _loc5_.keyword = _loc3_.keyword;
               _loc5_.searches = _loc3_.globalSearches;
               _loc2_.push(_loc5_);
            }
         }
         §§push(_loc2_.length);
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() - 68 - 1) * 38 - 105);
         }
         if(§§pop() == §§pop())
         {
            done(FAILURE);
            return;
         }
         _loc1_.keywords = _loc2_;
         var _loc4_:String = JSON.stringify(_loc1_);
         this.service.url = Constants.CACHE_API_URL + "keyword/global-search";
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         this.service.send(_loc4_).addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         done();
      }
      
      public final function fault(param1:Object) : void
      {
         done(FAILURE);
      }
   }
}
