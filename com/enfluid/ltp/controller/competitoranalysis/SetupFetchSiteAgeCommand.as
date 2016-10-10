package com.enfluid.ltp.controller.competitoranalysis
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.Util;
   
   public final class SetupFetchSiteAgeCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      private var saveOnDone:Boolean;
      
      public function SetupFetchSiteAgeCommand(param1:KeywordVO, param2:Boolean = false)
      {
         this.keyword = param1;
         this.saveOnDone = param2;
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:CompetitorUrlVO = null;
         if(waitInQueue)
         {
            return;
         }
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() + 100 - 111 - 43 - 1 - 1) * 102);
         }
         for each(_loc1_ in this.keyword.competitorURLs)
         {
            addCommand(new FetchSiteAgeCommand(_loc1_));
         }
         super.execute();
      }
      
      override protected function done(param1:String = "success") : void
      {
         var _loc2_:CompetitorUrlVO = null;
         §§push(this.keyword.competitorAnalysisAverages);
         §§push(Util);
         §§push(this.keyword);
         §§push("siteAge");
         §§push(1);
         if(_loc5_)
         {
            §§push(-(§§pop() + 105 + 119) + 1 - 1 - 83);
         }
         §§pop().siteAgeAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
         if(this.saveOnDone)
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() + 1 + 1 + 1);
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
