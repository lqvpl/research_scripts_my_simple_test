package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.Util;
   
   public final class CalcAllCompetitorAnalysisAverages extends Command implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      public function CalcAllCompetitorAnalysisAverages(param1:KeywordVO)
      {
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         if(!this.keyword)
         {
            done();
            return;
         }
         if(this.keyword.competitorURLs)
         {
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("keywordCompetitiveness");
            §§push(1);
            if(_loc2_)
            {
               §§push((§§pop() - 1 + 96) * 11 * 5);
            }
            §§pop().keywordCompetitivenessAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("pageAuthority");
            §§push(1);
            if(_loc1_)
            {
               §§push((§§pop() + 94 - 54 + 1 - 83) * 110);
            }
            §§pop().pageAuthorityAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("seomozLinks");
            §§push(0);
            if(_loc1_)
            {
               §§push((§§pop() - 28 + 1) * 78 + 52);
            }
            §§pop().pageLinksAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("juiceLinks");
            §§push(0);
            if(_loc2_)
            {
               §§push(--(§§pop() * 1 + 1));
            }
            §§pop().juiceLinksAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("domainAuthority");
            §§push(1);
            if(_loc1_)
            {
               §§push(§§pop() - 1 - 1 + 1 - 64 - 96 - 1 - 1);
            }
            §§pop().domainAuthorityAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("mozRank");
            §§push(1);
            if(_loc1_)
            {
               §§push((-§§pop() - 1) * 116);
            }
            §§pop().mozRankAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("pageRank");
            §§push(1);
            if(_loc2_)
            {
               §§push(-(--((§§pop() - 1) * 45) + 1));
            }
            §§pop().pageRankAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("siteAge");
            §§push(1);
            if(_loc2_)
            {
               §§push(-(-(§§pop() - 1) + 1) - 70);
            }
            §§pop().siteAgeAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
         }
         done();
      }
   }
}
