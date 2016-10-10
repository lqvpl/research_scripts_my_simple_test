package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.FetchGoogleSearchResultsCommand;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.model.constants.RankCheckConstants;
   import com.enfluid.ltp.util.Util;
   import flash.utils.setTimeout;
   import mx.collections.ArrayCollection;
   
   public final class CheckGoogleRankCommand extends FetchGoogleSearchResultsCommand
   {
       
      
      private var rankCheckItem:RankCheckItemVO;
      
      public function CheckGoogleRankCommand(param1:RankCheckItemVO)
      {
         super();
         this.rankCheckItem = param1;
         keywordString = param1.searchTerm.replace(/ /g,"+");
         country = model.selectedCountry;
         language = model.selectedLanguage;
         results = new ArrayCollection();
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 29 + 29) * 0 - 51 + 1);
         }
         §§pop().start = §§pop();
      }
      
      override protected function done(param1:String = "success") : void
      {
         var _loc4_:CompetitorUrlVO = null;
         if(isCancelled)
         {
            new SaveRankItemsCommand().execute();
            return;
         }
         var _loc2_:String = this.rankCheckItem.domain;
         §§push(0);
         if(_loc5_)
         {
            §§push(-(--(-§§pop() + 70) * 114) - 1);
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < results.length)
         {
            if(_loc3_ >= Constants.MAX_RANKS_TO_CHECK)
            {
               this.rankCheckItem.googleRank = RankCheckConstants.OVER_250;
               super.done(param1);
               return;
            }
            _loc4_ = results[_loc3_];
            if(Util.isRankCheckMatch(_loc2_,_loc4_.url))
            {
               §§push(this.rankCheckItem);
               §§push();
               §§push(_loc3_);
               §§push(1);
               if(_loc6_)
               {
                  §§push((§§pop() * 9 + 48) * 116 * 103 - 1);
               }
               §§pop().googleRank = §§pop().String(§§pop() + §§pop());
               this.rankCheckItem.googlePage = _loc4_.url;
               super.done(param1);
               return;
            }
            _loc3_++;
         }
         start = results.length;
         setTimeout(execute,this.getAvgDelay());
      }
      
      private final function getAvgDelay() : int
      {
         §§push(Math);
         §§push(1);
         if(_loc1_)
         {
            §§push(--§§pop() * 118 * 103);
         }
         §§push(Math);
         §§push(Math.random() * model.avgDelayBetweenGoogleRequests);
         §§push(1000);
         if(_loc2_)
         {
            §§push((--§§pop() + 37 + 1 + 1 - 111) * 43);
         }
         §§push(§§pop().round(§§pop() * §§pop()));
         §§push(model.avgDelayBetweenGoogleRequests);
         §§push(500);
         if(_loc1_)
         {
            §§push(-(§§pop() * 71 + 71 + 1));
         }
         return §§pop().max(§§pop(),§§pop() + §§pop() * §§pop());
      }
   }
}
