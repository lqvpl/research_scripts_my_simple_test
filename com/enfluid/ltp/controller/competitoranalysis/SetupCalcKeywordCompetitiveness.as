package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.keywordresearch.SaveAvgKCToServer;
   import com.enfluid.ltp.util.Util;
   
   public final class SetupCalcKeywordCompetitiveness extends Command implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      public function SetupCalcKeywordCompetitiveness(param1:KeywordVO)
      {
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1 - 1) + 18 - 1);
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() - 1 - 1 - 85) * 96 - 1);
         }
         var _loc2_:* = §§pop();
         var _loc3_:CompetitorUrlVO = null;
         if(!this.keyword.isFromCache)
         {
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() * 119 + 35) * 16 + 1);
            }
            _loc1_ = §§pop();
            §§push(0);
            if(_loc7_)
            {
               §§push(((§§pop() + 25) * 11 + 102 + 1) * 17 - 22 + 106);
            }
            _loc2_ = §§pop();
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() - 1 + 1) - 37 + 33);
            }
            for each(_loc3_ in this.keyword.competitorURLs)
            {
               if(_loc3_.keywordCompetitiveness == Values.ERROR)
               {
                  this.keyword.avgKC = Values.ERROR;
                  this.done();
                  return;
               }
               new CalcKeywordCompetitiveness(_loc3_,this.keyword).execute();
               _loc2_++;
               _loc1_ = int(_loc1_ + int(_loc3_.keywordCompetitiveness));
               _loc3_.keyword = this.keyword;
               _loc3_.save();
            }
            this.keyword.avgKC = Math.round(_loc1_ / _loc2_);
            this.keyword.save();
            new SaveAvgKCToServer(this.keyword).execute();
         }
         this.done();
      }
      
      override protected function done(param1:String = "success") : void
      {
         §§push(this.keyword.competitorAnalysisAverages);
         §§push(Util);
         §§push(this.keyword);
         §§push("keywordCompetitiveness");
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() + 111) * 37 + 1 - 106 - 69));
         }
         §§pop().keywordCompetitivenessAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
         super.done(param1);
      }
   }
}
