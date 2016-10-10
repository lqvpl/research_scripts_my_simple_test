package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.Util;
   
   public final class CalcAllMajesticCompetitorAverage extends Command implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      public function CalcAllMajesticCompetitorAverage(param1:KeywordVO)
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
            §§push("majestic_kc");
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-(§§pop() + 54 + 1) - 1) - 66);
            }
            §§pop().majestic_kc = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("trust_flow");
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-(§§pop() - 69) + 1 - 25) - 1);
            }
            §§pop().trust_flow = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("citation_flow");
            §§push(0);
            if(_loc1_)
            {
               §§push((-(§§pop() + 1) + 1) * 88 + 25 + 1 + 96);
            }
            §§pop().citation_flow = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("referring_domains");
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-(§§pop() * 36) + 24));
            }
            §§pop().referring_domains = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("referring_ips");
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-§§pop() - 114));
            }
            §§pop().referring_ips = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("external_backlinks");
            §§push(0);
            if(_loc2_)
            {
               §§push(--(-§§pop() + 48 - 99) - 1);
            }
            §§pop().external_backlinks = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("referring_edu_gov");
            §§push(0);
            if(_loc2_)
            {
               §§push(-(§§pop() + 47) * 19 + 3 - 46);
            }
            §§pop().referring_edu_gov = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("external_edu_gov");
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-(§§pop() + 58) * 22) + 33 + 3);
            }
            §§pop().external_edu_gov = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("spam_score");
            §§push(0);
            if(_loc2_)
            {
               §§push((--§§pop() - 47 + 1) * 78 - 1);
            }
            §§pop().spam_score = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("indexed_urls");
            §§push(0);
            if(_loc1_)
            {
               §§push(-(§§pop() * 117 + 1 + 102) + 1);
            }
            §§pop().indexed_urls = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("outbound_links");
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-(§§pop() + 1 + 107) + 60) + 1 - 1);
            }
            §§pop().outbound_links = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("internal_links");
            §§push(0);
            if(_loc2_)
            {
               §§push(((§§pop() + 60 - 102) * 107 - 104) * 72);
            }
            §§pop().internal_links = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("domain_citation");
            §§push(0);
            if(_loc1_)
            {
               §§push(-(§§pop() - 1) * 76 - 26 - 115 + 1 + 1);
            }
            §§pop().domain_citation = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("domain_trust");
            §§push(0);
            if(_loc2_)
            {
               §§push(-§§pop() + 108 - 1);
            }
            §§pop().domain_trust = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("siteAge");
            §§push(1);
            if(_loc1_)
            {
               §§push(§§pop() * 32 - 80 + 117 + 1 - 1 - 1 + 78);
            }
            §§pop().siteAgeAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
         }
         done();
      }
   }
}
