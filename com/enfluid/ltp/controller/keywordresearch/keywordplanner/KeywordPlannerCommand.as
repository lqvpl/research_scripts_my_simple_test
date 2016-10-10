package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.enfluid.ltp.controller.common.Command;
   import com.enfluid.ltp.util.Scraper;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   
   public class KeywordPlannerCommand extends Command
   {
       
      
      protected var scraper:Scraper;
      
      public function KeywordPlannerCommand()
      {
         this.scraper = new Scraper();
         super();
         this.scraper.htmlLoader = viewModel.keywordPlannerHTML.htmlLoader;
      }
      
      protected function get isLoading() : Boolean
      {
         var _loc1_:* = undefined;
         var _loc2_:String = null;
         try
         {
            _loc1_ = this.scraper.getElementById("initialLoading");
            _loc2_ = _loc1_.style.cssText;
            if(_loc2_.indexOf("display: none") >= 0)
            {
               return false;
            }
            return true;
         }
         catch(err:Error)
         {
         }
         return false;
      }
      
      protected function get isLoginPage() : Boolean
      {
         if(this.scraper.htmlLoader.location.indexOf("accounts.google.com") >= 0)
         {
            return true;
         }
         return false;
      }
      
      protected function get isOnStartPage() : Boolean
      {
         return this.scraper.hasTextOnPage("Plan your next search campaign") || this.scraper.hasTextOnPage("Find new keywords");
      }
      
      public final function findAndClickEditPencil(param1:String) : void
      {
         var _loc2_:* = this.scraper.getVisibleElementWithID("div",param1);
         var _loc3_:* = _loc2_.firstChild;
         this.scraper.click(_loc3_);
      }
      
      public final function findAndClickEditPencilUnderTargetingSection(param1:int) : void
      {
         var _loc2_:* = this.findTargetingDiv();
         var _loc3_:* = _loc2_.children[param1];
         §§push(_loc3_.children);
         §§push(2);
         if(_loc6_)
         {
            §§push((-§§pop() - 27) * 67 - 60 - 97 + 1 - 2);
         }
         var _loc4_:* = §§pop()[§§pop()].lastChild.firstChild;
         this.scraper.click(_loc4_);
      }
      
      public final function findAndClickEditPencilWithSectionTitle(param1:String) : void
      {
         var _loc2_:* = this.scraper.getElementByInnerText("div",param1,true);
         var _loc3_:* = _loc2_.parentElement.previousSibling.previousSibling;
         this.scraper.click(_loc3_);
      }
      
      public final function openKeywordIdeasSearchPane() : void
      {
         var _loc1_:* = this.scraper.getElementByInnerText("div","Search for new keyword and ad group ideas",true);
         if(!_loc1_)
         {
            _loc1_ = this.scraper.getElementByInnerText("div","Search for new keywords using a phrase, website or category",true);
         }
         this.scraper.click(_loc1_);
      }
      
      public final function openOwnKeywordsSearchPane() : void
      {
         var _loc1_:* = this.scraper.getElementByInnerText("div","Get search volume for a list of keywords or group them into ad groups",true);
         if(!_loc1_)
         {
            _loc1_ = this.scraper.getElementByInnerText("div","Get search volume data and trends",true);
         }
         this.scraper.click(_loc1_);
      }
      
      protected final function callDelayed(param1:Function, param2:int = 100) : void
      {
         setTimeout(param1,param2);
      }
      
      protected final function callDoneAfterFinishedLoading() : void
      {
         if(this.isLoading)
         {
            §§push();
            §§push(this.callDoneAfterFinishedLoading);
            §§push(500);
            if(_loc2_)
            {
               §§push(-(§§pop() - 60 - 1) - 1 + 1 + 14 + 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
         else
         {
            §§push();
            §§push(done);
            §§push(500);
            if(_loc1_)
            {
               §§push(-(-§§pop() * 3) * 114 - 1 + 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
      }
      
      protected final function findTargetingDiv() : *
      {
         var _loc1_:* = this.scraper.getElementByInnerText("div","Targeting  ",true);
         if(!_loc1_)
         {
            _loc1_ = this.scraper.getElementByInnerText("div"," Targeting ",true);
         }
         var _loc2_:* = _loc1_.nextSibling.nextSibling;
         if(!_loc2_)
         {
            _loc2_ = _loc1_.nextSibling;
         }
         return _loc2_;
      }
      
      protected final function clickSave() : Boolean
      {
         var _loc1_:* = this.scraper.getVisibleElementWithInnerText("div","Save");
         if(_loc1_)
         {
            this.scraper.click(_loc1_);
            return true;
         }
         return false;
      }
   }
}
