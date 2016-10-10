package com.enfluid.ltp.controller.keywordresearch.domainavailability.godaddy
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import spark.primitives.Rect;
   import com.enfluid.ltp.view.components.Link;
   import mx.controls.HTML;
   import com.enfluid.ltp.util.KeywordUtil;
   import mx.controls.Spacer;
   import mx.binding.BindingManager;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.util.WebGhost;
   import flash.utils.setTimeout;
   import spark.components.Label;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   import mx.graphics.RadialGradient;
   import system.errors.ConcurrencyError;
   import mx.effects.Sequence;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.CompetitorAnalysisListItemRenderer;
   import mx.states.State;
   import mx.binding.Binding;
   
   use namespace mx_internal;
   
   public final class Fetch500GoDaddyDomains extends Command implements IPhotonCommand
   {
       
      
      public var domainsToCheck:Array;
      
      private var availableDomains:Array;
      
      private var captchaPresent:Boolean = false;
      
      private var domainsMap:Object;
      
      private var html:HTML;
      
      private var resultWaitCount:int = 0;
      
      public function Fetch500GoDaddyDomains(param1:Array)
      {
         this.availableDomains = [];
         this.domainsMap = {};
         this.domainsToCheck = param1;
         super();
      }
      
      private function get document() : *
      {
         return viewModel.goDaddyHTML.htmlLoader.window.document;
      }
      
      private function get goButton() : Object
      {
         return this.document.getElementById("bulkSearchBtn");
      }
      
      private function get isResultsContainerVisible() : Boolean
      {
         var _loc1_:Object = this.document.getElementById("ctl00_headerContent_ctl00_ctl00_previous_domains");
         if(!_loc1_)
         {
            return false;
         }
         var _loc2_:String = _loc1_.style.cssText;
         _loc2_ = KeywordUtil.stripSpaces(_loc2_);
         if(_loc2_.indexOf("display:none") != -1)
         {
            return false;
         }
         return true;
      }
      
      private function get orderSummaryArea() : Object
      {
         var _loc2_:Object = null;
         var _loc1_:Object = this.document.getElementsByTagName("tbody");
         for each(_loc2_ in _loc1_)
         {
            try
            {
               if(_loc2_.innerText.indexOf("Order Summary") != -1)
               {
                  return _loc2_;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return null;
      }
      
      private function get removeAllLink() : Object
      {
         return this.document.getElementById("bulkRemoveAll");
      }
      
      private function get resultArea() : Object
      {
         var _loc2_:Object = null;
         var _loc1_:Object = this.document.getElementsByTagName("tbody");
         for each(_loc2_ in _loc1_)
         {
            try
            {
               if(_loc2_.innerText.indexOf("Unavailable Domain Names") != -1 || _loc2_.innerText.indexOf("Selected Domain Names") != -1)
               {
                  return _loc2_;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return null;
      }
      
      private function get textArea() : Object
      {
         return this.document.getElementById("bulkSearchArea");
      }
      
      private function get window() : Object
      {
         return viewModel.goDaddyHTML.htmlLoader.window;
      }
      
      public function execute() : void
      {
         if(isCancelled)
         {
            return;
         }
         ProgressBarUtil.incrementCurrentCount();
         this.html = viewModel.goDaddyHTML;
         this.loadGoDaddy();
      }
      
      public final function clickGoBtn() : void
      {
         WebGhost.fireClick(this.goButton,this.window);
         WebGhost.fireMouseUp(this.goButton,this.window);
      }
      
      public final function doFreshLoadCleanup() : void
      {
         this.cleanup();
         §§push();
         §§push(this.checkGoDaddyLoaded);
         §§push(3000);
         if(_loc1_)
         {
            §§push(-(-((§§pop() - 1) * 49) + 1 + 1));
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function checkDomainsLoaded() : void
      {
         if(this.checkForCaptcha())
         {
            §§push();
            §§push(this.checkDomainsLoaded);
            §§push(1000);
            if(_loc3_)
            {
               §§push(§§pop() - 1 - 1 + 92);
            }
            §§pop().setTimeout(§§pop(),§§pop());
            return;
         }
         if(this.isResultsContainerVisible && this.resultArea)
         {
            §§push();
            §§push(this.scrapeDomains);
            §§push(500);
            if(_loc3_)
            {
               §§push(§§pop() - 1 + 1 - 1 - 1 + 86 + 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
         else if(this.orderSummaryArea)
         {
            §§push(this.orderSummaryArea.innerText.indexOf("See all "));
            §§push(-1);
            if(_loc4_)
            {
               §§push(§§pop() * 63 - 2 - 25);
            }
            if(§§pop() != §§pop())
            {
               this.window.pps.seeAll();
            }
            §§push();
            §§push(this.scrapeDomainsFromAlternatePage);
            §§push(2000);
            if(_loc4_)
            {
               §§push(-((§§pop() - 1) * 88) + 62);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
         else
         {
            this.resultWaitCount++;
            §§push(this.resultWaitCount);
            §§push(20);
            if(_loc3_)
            {
               §§push(§§pop() - 90 - 111 - 1 + 1 - 1);
            }
            if(§§pop() <= §§pop())
            {
               §§push();
               §§push(this.checkDomainsLoaded);
               §§push(3000);
               if(_loc3_)
               {
                  §§push(§§pop() + 92 + 76 + 115 + 1);
               }
               §§pop().setTimeout(§§pop(),§§pop());
            }
            else
            {
               this.html.location = "about:blank";
               §§push();
               §§push(this.reloadPage);
               §§push(2000);
               if(_loc4_)
               {
                  §§push(-§§pop() + 1 - 99);
               }
               §§pop().setTimeout(§§pop(),§§pop());
               this.cleanup();
            }
         }
      }
      
      private final function checkForCaptcha() : Boolean
      {
         if(this.document.body && §§pop() != §§pop())
         {
            §§push(this);
            §§push(0);
            if(_loc1_)
            {
               §§push(--(§§pop() * 88 + 1));
            }
            §§pop().resultWaitCount = §§pop();
            this.captchaPresent = true;
            viewModel.showDomainCaptcha = true;
            return true;
         }
         if(this.captchaPresent)
         {
            viewModel.showDomainCaptcha = false;
            this.captchaPresent = false;
         }
         return false;
      }
      
      private final function checkGoDaddyLoaded() : void
      {
         if(this.textArea)
         {
            if(this.isResultsContainerVisible)
            {
               this.cleanup();
               §§push();
               §§push(this.checkGoDaddyLoaded);
               §§push(3000);
               if(_loc2_)
               {
                  §§push(§§pop() * 44 + 99 - 117);
               }
               §§pop().setTimeout(§§pop(),§§pop());
            }
            else
            {
               §§push();
               §§push(this.checkThatLanguageIsEnglish);
               §§push(500);
               if(_loc1_)
               {
                  §§push(-(§§pop() + 1) + 73 - 1 - 38 + 54);
               }
               §§pop().setTimeout(§§pop(),§§pop());
            }
         }
         else
         {
            §§push();
            §§push(this.checkGoDaddyLoaded);
            §§push(1000);
            if(_loc2_)
            {
               §§push(-(§§pop() + 51 - 1) + 1 - 1 - 79 - 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
      }
      
      private final function checkIfResultsPresentOnReload() : void
      {
         if(this.textArea)
         {
            if(this.isResultsContainerVisible)
            {
               §§push();
               §§push(this.scrapeDomains);
               §§push(1000);
               if(_loc2_)
               {
                  §§push(((§§pop() - 1 - 80) * 55 - 108) * 100);
               }
               §§pop().setTimeout(§§pop(),§§pop());
            }
            else
            {
               §§push(this);
               §§push(0);
               if(_loc1_)
               {
                  §§push((§§pop() + 1) * 79 + 111 - 1 + 64 + 1 + 1);
               }
               §§pop().resultWaitCount = §§pop();
               §§push();
               §§push(this.execute);
               §§push(1000);
               if(_loc1_)
               {
                  §§push(§§pop() * 44 + 1 + 1 - 1);
               }
               §§pop().setTimeout(§§pop(),§§pop());
            }
         }
         else
         {
            §§push();
            §§push(this.checkIfResultsPresentOnReload);
            §§push(2000);
            if(_loc1_)
            {
               §§push(-((§§pop() - 1) * 116) - 8);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
      }
      
      private final function checkThatLanguageIsEnglish() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         §§push(this.document.body.outerHTML.indexOf("Sign In"));
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() + 29 + 1) * 90 + 29 - 8) * 56 + 21);
         }
         if(§§pop() >= §§pop())
         {
            this.submitDomains();
         }
         else
         {
            _loc1_ = this.document.getElementsByTagName("a");
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() * 115 - 1) + 1);
            }
            for each(_loc2_ in _loc1_)
            {
               try
               {
                  if(_loc2_.innerText == "English")
                  {
                     WebGhost.fireClick(_loc2_,this.window);
                     break;
                  }
               }
               catch(err:Error)
               {
                  continue;
               }
            }
            §§push();
            §§push(this.checkGoDaddyLoaded);
            §§push(1000);
            if(_loc6_)
            {
               §§push(-(§§pop() - 1) + 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
      }
      
      private final function cleanup() : void
      {
         var _loc1_:HTTPService = null;
         try
         {
            §§push(this.document.body.innerHTML.indexOf("Remove All"));
            §§push(-1);
            if(_loc3_)
            {
               §§push(§§pop() * 55 - 1 - 1 - 1 + 38);
            }
            if(§§pop() != §§pop())
            {
               _loc1_ = new HTTPService();
               _loc1_.url = "http://www.godaddy.com/domains/actions/json/removedomainsfrompending.aspx?TargetDivID=x&RemoveAll=true";
               _loc1_.send();
               §§push();
               §§push(this.refreshPage);
               §§push(1000);
               if(_loc4_)
               {
                  §§push(§§pop() + 1 - 82 - 61);
               }
               §§pop().setTimeout(§§pop(),§§pop());
            }
            else
            {
               viewModel.goDaddyHTML.location = Constants.GODADDY_BULK_TOOL_URL;
            }
            return;
         }
         catch(err:Error)
         {
            return;
         }
      }
      
      private final function loadGoDaddy() : void
      {
         if(this.html && this.html.location != Constants.GODADDY_BULK_TOOL_URL)
         {
            §§push();
            §§push(this.checkGoDaddyLoaded);
            §§push(3000);
            if(_loc2_)
            {
               §§push(-§§pop() + 46 - 1 + 26 + 1 + 116);
            }
            §§pop().setTimeout(§§pop(),§§pop());
            this.html.location = Constants.GODADDY_BULK_TOOL_URL;
         }
         else
         {
            §§push();
            §§push(this.checkGoDaddyLoaded);
            §§push(500);
            if(_loc1_)
            {
               §§push(-((§§pop() - 1) * 88) + 1 + 8);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
      }
      
      private final function processDomains() : void
      {
         var _loc3_:DomainsVO = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         §§push(0);
         if(_loc12_)
         {
            §§push((§§pop() + 116 + 45) * 73 * 97);
         }
         var _loc7_:* = §§pop();
         var _loc1_:* = this.availableDomains.join(",").toLocaleLowerCase();
         _loc1_ = "," + _loc1_ + ",";
         var _loc2_:Number = new Date().time;
         §§push(0);
         if(_loc12_)
         {
            §§push(§§pop() - 1 - 102 + 1 + 22 - 1);
         }
         for each(_loc3_ in this.domainsToCheck)
         {
            if(_loc3_.isHyphenated)
            {
               _loc4_ = _loc3_.getMissingDataExtentions(model.selectedKeywordCollection.project.domainsHyphenatedExtensions.selectedGoDaddyExtensions);
            }
            else
            {
               _loc4_ = _loc3_.getMissingDataExtentions(model.selectedKeywordCollection.project.domainsExactMatchExtensions.selectedGoDaddyExtensions);
            }
            §§push(0);
            if(_loc13_)
            {
               §§push((-(-§§pop() - 1) - 1 - 1 - 1) * 109);
            }
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc3_.domainWithoutExtension + "." + _loc5_;
               §§push(_loc1_.indexOf("," + _loc6_.toLowerCase() + ","));
               §§push(-1);
               if(_loc13_)
               {
                  §§push(-((§§pop() - 68) * 52));
               }
               _loc7_ = int(§§pop() == §§pop()?int(DomainStatuses.UNAVAILABLE):int(DomainStatuses.AVAILABLE));
               _loc3_[_loc5_.replace(".","")] = _loc7_;
            }
            _loc3_.save();
         }
         model.numDomainsFetched = model.numDomainsFetched + this.domainsToCheck.length;
         this.cleanup();
         done();
      }
      
      private final function refreshPage() : void
      {
         this.html.htmlLoader.reload();
      }
      
      private final function reloadPage() : void
      {
         this.html.location = Constants.GODADDY_BULK_TOOL_URL;
         §§push();
         §§push(this.checkIfResultsPresentOnReload);
         §§push(5000);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 75 + 72) * 2);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function scrapeDomains() : void
      {
         var _loc2_:Object = null;
         var _loc1_:Object = this.resultArea.getElementsByTagName("input");
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() * 85 - 106) * 33 - 1) * 10);
         }
         for each(_loc2_ in _loc1_)
         {
            try
            {
               if(_loc2_.type == "checkbox")
               {
                  this.availableDomains.push(_loc2_.value);
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         this.processDomains();
      }
      
      private final function scrapeDomainsFromAlternatePage() : void
      {
         var _loc2_:Object = null;
         var _loc1_:Object = this.document.getElementsByTagName("span");
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 6) * 95 * 104 - 1 - 1);
         }
         for each(_loc2_ in _loc1_)
         {
            try
            {
               if(_loc2_.title && §§pop() != §§pop())
               {
                  this.availableDomains.push(_loc2_.title);
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         this.processDomains();
      }
      
      private final function submitDomains() : void
      {
         var _loc2_:DomainsVO = null;
         var _loc3_:DomainExtensionOptions = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc1_:String = "";
         §§push(0);
         if(_loc11_)
         {
            §§push((§§pop() - 74 - 1) * 113 + 63 + 1 - 1);
         }
         for each(_loc2_ in this.domainsToCheck)
         {
            _loc3_ = !!_loc2_.isHyphenated?model.selectedKeywordCollection.project.domainsHyphenatedExtensions:model.selectedKeywordCollection.project.domainsExactMatchExtensions;
            _loc4_ = _loc2_.getMissingDataExtentions(_loc3_.selectedGoDaddyExtensions);
            §§push(0);
            if(_loc12_)
            {
               §§push((§§pop() - 44) * 12 * 85);
            }
            for each(_loc5_ in _loc4_)
            {
               _loc6_ = _loc2_.domainWithoutExtension + "." + _loc5_;
               this.domainsMap[_loc6_] = _loc2_;
               _loc1_ = _loc1_ + (_loc6_ + "\n");
            }
         }
         WebGhost.fireClick(this.textArea,this.window);
         WebGhost.enterTextAndPressEnter(_loc1_.toLocaleLowerCase(),this.textArea,this.window);
         §§push();
         §§push(this.clickGoBtn);
         §§push(500);
         if(_loc11_)
         {
            §§push(-§§pop() * 91 + 82);
         }
         §§pop().setTimeout(§§pop(),§§pop());
         §§push();
         §§push(this.checkDomainsLoaded);
         §§push(3000);
         if(_loc12_)
         {
            §§push((-§§pop() - 1 - 1) * 5 - 102 + 1);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
   }
}
