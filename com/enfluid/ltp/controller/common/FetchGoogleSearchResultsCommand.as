package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import flash.utils.ByteArray;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.constants.RankCheckConstants;
   import spark.components.CheckBox;
   import mx.binding.BindingManager;
   import flash.filesystem.File;
   import com.enfluid.ltp.model.vo.RTDomain;
   import com.enfluid.ltp.model.vo.RTKeyword;
   import com.enfluid.ltp.model.vo.RTRank;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import spark.components.Group;
   
   public class FetchGoogleSearchResultsCommand extends FetchGoogleCommand implements IPhotonCommand, IResponder
   {
       
      
      protected var keywordString:String;
      
      protected var results:ArrayCollection;
      
      protected var start:int = 0;
      
      protected var country:CountryVO;
      
      protected var language:LanguageVO;
      
      public function FetchGoogleSearchResultsCommand()
      {
         super();
      }
      
      override public function execute() : void
      {
         if(waitInQueue)
         {
            return;
         }
         super.execute();
      }
      
      override protected function calcCaptchaUrl() : String
      {
         return "https://www.google." + this.country.domainExtension;
      }
      
      override protected function calcUrl() : String
      {
         return "https://www.google." + this.country.domainExtension + "/search?pws=0&q=" + encodeURI(this.keywordString.replace(/ /g,"+")) + "&start=" + this.start + "&hl=" + this.language.code;
      }
      
      override protected function captchaImageUrl() : String
      {
         return "https://www.google." + this.country.domainExtension;
      }
      
      override protected function parseResult() : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         §§push(0);
         if(_loc11_)
         {
            §§push(-((§§pop() + 1 - 1 + 1) * 32 - 12) + 1);
         }
         var _loc5_:* = §§pop();
         var _loc6_:CompetitorUrlVO = null;
         if(isCancelled)
         {
            return;
         }
         model.mostRecentGoogleSearchResult = scraper.body.outerHTML;
         var _loc1_:Object = scraper.getElementsByTagName("a");
         §§push(1);
         if(_loc10_)
         {
            §§push((§§pop() * 5 + 10 - 1 - 9) * 16 + 114);
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(-(§§pop() - 19) + 103);
         }
         for each(_loc3_ in _loc1_)
         {
            try
            {
               _loc4_ = _loc3_.href;
               _loc5_ = int(_loc4_.indexOf("/url?q="));
               §§push(_loc5_);
               §§push(-1);
               if(_loc10_)
               {
                  §§push(§§pop() - 31 + 1 + 1 - 1 + 1 - 4 + 11);
               }
               if(§§pop() == §§pop())
               {
                  _loc5_ = int(_loc4_.indexOf("&url="));
               }
               §§push(_loc5_);
               §§push(0);
               if(_loc10_)
               {
                  §§push(§§pop() - 1 - 1 + 70 + 1 + 1 - 119);
               }
               if(§§pop() >= §§pop())
               {
                  if(_loc3_.parentNode.tagName.toLowerCase() == "h3" || _loc3_.parentNode.tagName.toLowerCase() == "p" || §§pop() != §§pop())
                  {
                     §§push(_loc3_.parentNode.parentNode.innerText.indexOf("Disclaimer"));
                     §§push(-1);
                     if(_loc11_)
                     {
                        §§push(-(§§pop() + 59) + 39 + 1);
                     }
                     if(§§pop() != §§pop() && §§pop() != §§pop() && §§pop() != §§pop())
                     {
                        continue;
                     }
                     §§push(_loc4_);
                     §§push(_loc5_);
                     §§push(7);
                     if(_loc10_)
                     {
                        §§push(-(-(§§pop() * 41) - 29 + 1 - 115));
                     }
                     _loc4_ = §§pop().substr(§§pop() + §§pop());
                     _loc5_ = int(_loc4_.indexOf("&"));
                     §§push(_loc4_);
                     §§push(0);
                     if(_loc10_)
                     {
                        §§push(§§pop() + 89 - 1 - 85 + 10);
                     }
                     _loc4_ = §§pop().substr(§§pop(),_loc5_);
                     _loc4_ = unescape(_loc4_);
                     _loc6_ = new CompetitorUrlVO();
                     _loc6_.url = _loc4_;
                     _loc6_.title = _loc3_.innerText;
                     _loc6_.boldedTitle = _loc3_.innerHTML;
                     if(!_loc6_.title)
                     {
                        continue;
                     }
                     if(!this.hasCiteUnderneath(_loc3_) && !this.hasGreenUnderneath(_loc3_))
                     {
                        continue;
                     }
                     _loc6_.rankOnPage = _loc2_;
                     _loc2_++;
                     this.results.addItem(_loc6_);
                  }
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         done();
      }
      
      private final function hasCiteUnderneath(param1:Object) : Boolean
      {
         var _loc2_:Object = param1.parentNode.parentNode.parentNode.parentNode.getElementsByTagName("cite");
         if(!_loc2_ || §§pop() == §§pop())
         {
            return false;
         }
         return true;
      }
      
      private final function hasGreenUnderneath(param1:Object) : Boolean
      {
         §§push(param1.parentNode.nextSibling.innerHTML.indexOf("color=\"green\""));
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 80) + 117 - 100 - 92 - 73);
         }
         if(§§pop() >= §§pop())
         {
            return true;
         }
         return false;
      }
   }
}
