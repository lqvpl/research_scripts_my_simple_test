package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.MajesticUtils;
   import mx.rpc.http.HTTPService;
   import mx.rpc.Responder;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.dataandfilters.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import mx.events.FlexEvent;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   
   use namespace mx_internal;
   
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
      
      override protected function calcUrl(param1:Boolean) : String
      {
         var _loc2_:String = !!param1?"https://":"http://";
         _loc2_ = _loc2_ + ("www.google." + this.country.domainExtension + "/search?pws=0&q=" + encodeURI(this.keywordString.replace(/ /g,"+")) + "&hl=" + this.language.code + "&ie=UTF-8&gbv=1");
         if(this.start)
         {
            _loc2_ = _loc2_ + ("&start=" + this.start);
         }
         return _loc2_;
      }
      
      override protected function calcCaptchaUrl() : String
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
            §§push(§§pop() + 60 + 1 + 113 - 74);
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
            §§push(-(§§pop() + 22 - 1));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() - 1 - 103 - 88);
         }
         for each(_loc3_ in _loc1_)
         {
            try
            {
               _loc4_ = _loc3_.href;
               _loc5_ = int(_loc4_.indexOf("/url?q="));
               §§push(_loc5_);
               §§push(-1);
               if(_loc11_)
               {
                  §§push(-(§§pop() - 1) - 1 - 86);
               }
               if(§§pop() == §§pop())
               {
                  _loc5_ = int(_loc4_.indexOf("&url="));
               }
               §§push(_loc5_);
               §§push(0);
               if(_loc11_)
               {
                  §§push(-(-((§§pop() - 1 + 1) * 101) + 1));
               }
               if(§§pop() >= §§pop())
               {
                  if(_loc3_.parentNode.tagName.toLowerCase() == "h3" || _loc3_.parentNode.tagName.toLowerCase() == "p" || §§pop() != §§pop())
                  {
                     §§push(_loc3_.parentNode.parentNode.innerText.indexOf("Disclaimer"));
                     §§push(-1);
                     if(_loc10_)
                     {
                        §§push((§§pop() - 51) * 47 + 1);
                     }
                     if(§§pop() != §§pop() && §§pop() != §§pop() && §§pop() != §§pop())
                     {
                        continue;
                     }
                     §§push(_loc4_);
                     §§push(_loc5_);
                     §§push(7);
                     if(_loc11_)
                     {
                        §§push(§§pop() * 8 * 20 - 66 + 39 - 87 - 1 + 1);
                     }
                     _loc4_ = §§pop().substr(§§pop() + §§pop());
                     _loc5_ = int(_loc4_.indexOf("&"));
                     §§push(_loc4_);
                     §§push(0);
                     if(_loc11_)
                     {
                        §§push((-((-(§§pop() * 20) - 1) * 79) - 84) * 71);
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
         if(_loc2_)
         {
            §§push(-(§§pop() * 59 * 0 * 31) + 40 - 1 + 1);
         }
         if(§§pop() >= §§pop())
         {
            return true;
         }
         return false;
      }
   }
}
