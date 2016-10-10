package com.enfluid.ltp.controller.keywordresearch.amazonkc
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.util.Scraper;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Values;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass4;
   import com.enfluid.ltp.util.MajesticUtils;
   import spark.components.VGroup;
   import com.enfluid.ltp.model.vo.AmazonResultVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import system.data.collections.ArrayCollection;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import mx.binding.Binding;
   
   use namespace mx_internal;
   
   public final class SubmitAndScrapeAmazonResults extends Command implements IPhotonCommand, IResponder
   {
      
      private static var lastFetchTime:Number;
       
      
      private var scraper:Scraper;
      
      private var service:HTTPService;
      
      private var keyword:KeywordVO;
      
      private var useCommaAsSeparator:Boolean = false;
      
      private var countryCode:String;
      
      public function SubmitAndScrapeAmazonResults(param1:KeywordVO)
      {
         this.scraper = new Scraper();
         this.service = new HTTPService();
         this.keyword = new KeywordVO();
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         this.keyword.amazonKC = Values.CURRENTLY_FETCHING;
         if(model.isFetchingMissingAmazonKC)
         {
            §§push(new Date().time - lastFetchTime);
            §§push(10000);
            if(_loc4_)
            {
               §§push(-(§§pop() + 1 + 33));
            }
            if(§§pop() < §§pop())
            {
               §§push();
               §§push(this.execute);
               §§push(1000);
               if(_loc4_)
               {
                  §§push(---((§§pop() - 1 + 1 + 1) * 20));
               }
               §§pop().setTimeout(§§pop(),§§pop());
               return;
            }
         }
         lastFetchTime = new Date().time;
         var _loc1_:CountryVO = ProjectVO(this.keyword.project).country;
         this.countryCode = _loc1_.code;
         this.useCommaAsSeparator = this.calcUseCommaAsSeparator(_loc1_.code);
         var _loc2_:String = _loc1_.amazonSite;
         if(!_loc2_)
         {
            done(FAILURE);
            return;
         }
         this.service.url = "https://" + _loc2_ + "/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=" + this.keyword.keyword.split(" ").join("+");
         this.service.resultFormat = "text";
         this.service.send().addResponder(this);
         this.keyword.amazonResults = [];
      }
      
      public final function result(param1:Object) : void
      {
         this.scraper.setHtmlContent(param1.result,this.scrapeHTML);
      }
      
      public final function fault(param1:Object) : void
      {
         this.keyword.amazonKC = Values.ERROR;
         done(FAILURE);
      }
      
      private final function calcUseCommaAsSeparator(param1:String) : Boolean
      {
         if(param1 == "fr" || param1 == "de" || param1 == "it" || param1 == "es" || param1 == "nl" || param1 == "br")
         {
            return true;
         }
         return false;
      }
      
      private final function scrapeHTML() : void
      {
         var _loc3_:String = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:AmazonResultVO = null;
         var _loc9_:* = undefined;
         var _loc10_:String = null;
         §§push(0);
         if(_loc27_)
         {
            §§push(--((§§pop() - 77 + 68) * 103) + 83 + 95);
         }
         var _loc11_:* = §§pop();
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         var _loc14_:* = undefined;
         var _loc15_:* = undefined;
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc20_:Array = null;
         var _loc21_:String = null;
         var _loc1_:* = this.scraper.getElementById("noResultsTitle");
         if(_loc1_)
         {
            this.calcAvgAmazonReviews();
            return;
         }
         var _loc2_:* = this.scraper.getElementsByClassName("s-result-item");
         var _loc4_:* = this.scraper.getElementById("s-result-count");
         if(_loc4_ && §§pop() > §§pop())
         {
            _loc7_ = _loc4_.getElementsByClassName("a-text-bold");
            §§push(_loc7_.length);
            §§push(0);
            if(_loc27_)
            {
               §§push((§§pop() - 69 + 1 + 1 - 118) * 81 - 74);
            }
            if(§§pop() > §§pop())
            {
               §§push(_loc7_);
               §§push(0);
               if(_loc27_)
               {
                  §§push(§§pop() - 1 - 102 - 100);
               }
               _loc3_ = §§pop()[§§pop()].innerText;
            }
         }
         §§push(1);
         if(_loc27_)
         {
            §§push(((-§§pop() * 51 + 66) * 107 + 91) * 78);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc28_)
         {
            §§push((-§§pop() * 50 + 70 - 1) * 17);
         }
         for each(_loc6_ in _loc2_)
         {
            if(!(_loc6_ is int || _loc6_ is Function))
            {
               §§push(_loc6_.outerHTML.indexOf("sponsored-header-"));
               §§push(0);
               if(_loc27_)
               {
                  §§push(§§pop() + 1 - 11 - 81);
               }
               if(§§pop() <= §§pop())
               {
                  §§push(_loc6_.outerHTML.indexOf("s-item-placeholder"));
                  §§push(0);
                  if(_loc28_)
                  {
                     §§push(-(§§pop() + 1 - 7));
                  }
                  if(§§pop() <= §§pop())
                  {
                     §§push(_loc6_.outerHTML.indexOf("acs-carousel-header"));
                     §§push(0);
                     if(_loc28_)
                     {
                        §§push((-(§§pop() * 84) * 119 * 108 + 1 - 1) * 98);
                     }
                     if(§§pop() <= §§pop())
                     {
                        _loc8_ = new AmazonResultVO();
                        §§push(_loc6_.getElementsByClassName("s-access-title"));
                        §§push(0);
                        if(_loc28_)
                        {
                           §§push(--(§§pop() + 1));
                        }
                        _loc9_ = §§pop()[§§pop()];
                        _loc8_.title = _loc9_.innerText;
                        §§push(_loc8_);
                        §§push(_loc6_.getElementsByClassName("s-access-detail-page"));
                        §§push(0);
                        if(_loc27_)
                        {
                           §§push(-(§§pop() + 37 + 1 + 100 - 83) * 80 * 48);
                        }
                        §§pop().url = §§pop()[§§pop()].href;
                        §§push(_loc8_);
                        §§push(_loc6_.getElementsByClassName("s-access-image"));
                        §§push(0);
                        if(_loc28_)
                        {
                           §§push(-(-§§pop() - 1));
                        }
                        §§pop().thumbnailUrl = §§pop()[§§pop()].src;
                        try
                        {
                           §§push(_loc8_);
                           §§push();
                           §§push(KeywordUtil);
                           §§push(_loc6_.getElementsByClassName("s-price"));
                           §§push(0);
                           if(_loc28_)
                           {
                              §§push(-(§§pop() - 118 - 107) - 1);
                           }
                           §§pop().price = §§pop().Number(§§pop().removeNonNumericChars(§§pop()[§§pop()].innerText,this.useCommaAsSeparator));
                        }
                        catch(err:Error)
                        {
                        }
                        if(_loc3_)
                        {
                           _loc8_.category = _loc3_;
                        }
                        else
                        {
                           _loc16_ = _loc6_.getElementsByClassName("a-text-bold");
                           §§push(0);
                           if(_loc27_)
                           {
                              §§push(((§§pop() + 1) * 50 - 1) * 35 - 1 + 113 - 48);
                           }
                           for each(_loc17_ in _loc16_)
                           {
                              try
                              {
                                 _loc18_ = _loc17_.innerText;
                                 if(_loc18_.charAt(_loc18_.length - 1) == ":")
                                 {
                                    §§push(_loc8_);
                                    §§push(_loc18_);
                                    §§push(0);
                                    if(_loc27_)
                                    {
                                       §§push(-((§§pop() - 16) * 66 + 97 - 1 - 1) + 1);
                                    }
                                    §§pop().category = §§pop().substr(§§pop(),_loc18_.length - 1);
                                    break;
                                 }
                              }
                              catch(err:Error)
                              {
                                 continue;
                              }
                           }
                        }
                        _loc10_ = _loc8_.url;
                        §§push(_loc10_.indexOf("dp/"));
                        §§push(3);
                        if(_loc27_)
                        {
                           §§push(-((§§pop() * 5 + 1) * 103 - 95 - 13));
                        }
                        _loc11_ = int(§§pop() + §§pop());
                        _loc10_ = _loc10_.substring(_loc11_);
                        §§push(_loc10_);
                        §§push(0);
                        if(_loc28_)
                        {
                           §§push(-(§§pop() - 1 + 1) - 80 + 119 - 1);
                        }
                        _loc10_ = §§pop().substr(§§pop(),_loc10_.indexOf("/"));
                        _loc8_.asin = _loc10_;
                        try
                        {
                           §§push(_loc6_.getElementsByClassName("a-icon-star"));
                           §§push(0);
                           if(_loc27_)
                           {
                              §§push(-((§§pop() + 52 + 1) * 82) + 1);
                           }
                           _loc19_ = §§pop()[§§pop()].innerText.replace(",",".");
                           _loc20_ = _loc19_.split(" ");
                           if(this.countryCode == "cn")
                           {
                              _loc19_ = KeywordUtil.removeNonNumericChars(_loc19_);
                           }
                           else
                           {
                              if(this.countryCode == "jp")
                              {
                                 §§push(_loc20_[_loc20_.length - 1]);
                              }
                              else
                              {
                                 §§push(_loc20_);
                                 §§push(0);
                                 if(_loc27_)
                                 {
                                    §§push(-§§pop() + 95 + 27 + 92 + 1);
                                 }
                                 §§push(§§pop()[§§pop()]);
                              }
                              _loc19_ = §§pop();
                           }
                           _loc8_.starRating = Number(_loc19_);
                        }
                        catch(err:Error)
                        {
                        }
                        _loc12_ = _loc6_.getElementsByTagName("a");
                        §§push(0);
                        if(_loc27_)
                        {
                           §§push(§§pop() - 1 - 1 - 1);
                        }
                        for each(_loc13_ in _loc12_)
                        {
                           try
                           {
                              §§push(_loc13_.href.indexOf("#customerReviews"));
                              §§push(0);
                              if(_loc28_)
                              {
                                 §§push((§§pop() - 17 + 1 + 1 - 60) * 28 + 26);
                              }
                              if(§§pop() > §§pop())
                              {
                                 _loc21_ = _loc13_.innerText;
                                 _loc8_.numReviews = int(KeywordUtil.removeNonNumericChars(_loc21_,this.useCommaAsSeparator));
                                 break;
                              }
                           }
                           catch(err:Error)
                           {
                              continue;
                           }
                        }
                        _loc14_ = _loc9_.parentElement.parentElement;
                        if(this.countryCode == "jp" || this.countryCode == "cn")
                        {
                           _loc14_ = _loc14_.parentElement;
                        }
                        _loc15_ = _loc14_.getElementsByClassName("a-row");
                        §§push(_loc15_.length);
                        §§push(0);
                        if(_loc28_)
                        {
                           §§push(-(§§pop() * 6) - 38 - 56);
                        }
                        if(§§pop() > §§pop())
                        {
                           _loc8_.seller = _loc15_[_loc15_.length - 1].lastChild.innerText;
                        }
                        _loc8_.rank = _loc5_++;
                        this.keyword.amazonResults.push(_loc8_);
                     }
                  }
               }
            }
         }
         this.calcAvgAmazonReviews();
      }
      
      private final function calcAvgAmazonReviews() : void
      {
         var _loc3_:AmazonResultVO = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() * 104 - 1 - 93 - 1) * 77 + 99);
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-§§pop() - 73) - 1 - 87);
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push((-(§§pop() * 51 + 54) + 1 + 112 + 1) * 64);
         }
         for each(_loc3_ in this.keyword.amazonResults)
         {
            _loc2_ = int(_loc2_ + _loc3_.numReviews);
            _loc1_++;
            §§push(_loc1_);
            §§push(10);
            if(_loc6_)
            {
               §§push(-(§§pop() - 81) * 11 - 5);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
         }
         §§push(_loc1_);
         §§push(1);
         if(_loc6_)
         {
            §§push(-(--§§pop() - 46 + 63) + 7);
         }
         if(§§pop() > §§pop())
         {
            this.keyword.amazonKC = _loc2_ / _loc1_;
         }
         else
         {
            §§push(this.keyword);
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() - 118 - 1 - 1 + 31 - 1);
            }
            §§pop().amazonKC = §§pop();
         }
         this.keyword.save();
         if(model.preferences.hasAvgAmazonReviewsStoredInAmazonKCProperty == false)
         {
            model.preferences.hasAvgAmazonReviewsStoredInAmazonKCProperty = true;
            new SavePreferencesCommand().execute();
         }
         done();
      }
   }
}
