package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Values;
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
         var _loc3_:CompetitorUrlVO = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(--§§pop() - 61 + 1 - 1);
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 104 - 1 - 60 - 118 + 4);
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(-((§§pop() * 100 - 1) * 90) * 10);
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
         this.done();
      }
      
      override protected function done(param1:String = "success") : void
      {
         §§push(this.keyword.competitorAnalysisAverages);
         §§push(Util);
         §§push(this.keyword);
         §§push("keywordCompetitiveness");
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 119 + 39 - 39) * 17 - 1);
         }
         §§pop().keywordCompetitivenessAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
         super.done(param1);
      }
   }
}
