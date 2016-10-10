package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   
   public final class FetchCompetitorUrls extends FetchGoogleSearchResultsCommand implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      public function FetchCompetitorUrls(param1:KeywordVO, param2:CountryVO, param3:LanguageVO)
      {
         this.keyword = param1;
         this.results = param1.competitorURLs;
         this.keywordString = param1.strippedKeyword;
         this.country = param2;
         this.language = param3;
         super();
      }
      
      override protected function done(param1:String = "success") : void
      {
         var _loc2_:CompetitorUrlVO = null;
         while(true)
         {
            §§push(results.length);
            §§push(10);
            if(_loc6_)
            {
               §§push(-((-(§§pop() + 1) + 50) * 72 + 83) * 103);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            results.removeItemAt(results.length - 1);
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1 + 29 - 83) - 118 - 61);
         }
         for each(_loc2_ in results)
         {
            _loc2_.keyword = this.keyword;
         }
         super.done(param1);
      }
   }
}
