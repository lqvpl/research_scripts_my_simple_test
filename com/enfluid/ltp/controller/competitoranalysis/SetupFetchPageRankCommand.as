package com.enfluid.ltp.controller.competitoranalysis
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SetDefaultConfigurationCommand;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import flash.events.Event;
   import com.enfluid.ltp.util.Util;
   
   public final class SetupFetchPageRankCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      private var saveOnDone:Boolean;
      
      public function SetupFetchPageRankCommand(param1:KeywordVO, param2:Boolean = false)
      {
         this.keyword = param1;
         this.saveOnDone = param2;
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:CompetitorUrlVO = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-§§pop() - 1 + 1 + 1));
         }
         for each(_loc1_ in this.keyword.competitorURLs)
         {
            addCommand(new FetchPageRankCommand(_loc1_));
         }
         super.execute();
      }
      
      override protected function done(param1:String = "success") : void
      {
         var _loc2_:CompetitorUrlVO = null;
         §§push(this.keyword.competitorAnalysisAverages);
         §§push(Util);
         §§push(this.keyword);
         §§push("pageRank");
         §§push(1);
         if(_loc5_)
         {
            §§push((§§pop() + 1 + 54) * 9 * 28 + 33 + 35);
         }
         §§pop().pageRankAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
         if(this.saveOnDone)
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(-§§pop() * 106 + 1);
            }
            for each(_loc2_ in this.keyword.competitorURLs)
            {
               _loc2_.save();
            }
         }
         super.done(param1);
      }
   }
}
