package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class SelectKeywordOptionsCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var seedKeyword:SeedKeywordVO;
      
      private var showRelatedKeywordsSwitch;
      
      private var showAdultIdeasSwitch;
      
      private var showKeywordsInMyAccountSwitch;
      
      private var showKeywordsInMyPlanSwitch;
      
      public function SelectKeywordOptionsCommand(param1:SeedKeywordVO)
      {
         super();
         this.seedKeyword = param1;
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount("Selecting Keyword Options");
         this.checkIfNeedsChanged();
      }
      
      private final function checkIfNeedsChanged() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = scraper.hasTextOnPage("Show adult ideas");
         var _loc3_:Boolean = scraper.hasTextOnPage("Only show closely related ideas");
         if(_loc2_ && !model.selectedProject.includeAdultAreas)
         {
            _loc1_ = true;
         }
         else if(!_loc2_ && model.selectedProject.includeAdultAreas)
         {
            _loc1_ = true;
         }
         if(_loc3_ && !this.seedKeyword.isRelatedKeywordsOnly)
         {
            _loc1_ = true;
         }
         else if(!_loc3_ && this.seedKeyword.isRelatedKeywordsOnly)
         {
            _loc1_ = true;
         }
         if(scraper.hasTextOnPage("Hide keywords in my account"))
         {
            _loc1_ = true;
         }
         if(scraper.hasTextOnPage("Hide keywords in my plan"))
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            this.clickKeywordOptionsEditPencil();
            callDelayed(this.findSwitches);
            return;
         }
         done();
      }
      
      private final function cleanup() : void
      {
         var _loc1_:Boolean = clickSave();
         if(!_loc1_)
         {
            this.clickKeywordOptionsEditPencil();
         }
         callDelayed(done);
      }
      
      private final function clickKeywordOptionsEditPencil() : void
      {
         findAndClickEditPencilWithSectionTitle("Keyword options");
      }
      
      private final function findSwitches() : void
      {
         this.showRelatedKeywordsSwitch = this.getSwitchDiv("Only show ideas closely related to my search terms");
         this.showAdultIdeasSwitch = this.getSwitchDiv("Show adult ideas");
         this.showKeywordsInMyAccountSwitch = this.getSwitchDiv("Show keywords in my account");
         this.showKeywordsInMyPlanSwitch = this.getSwitchDiv("Show keywords in my plan");
         if(!this.showAdultIdeasSwitch || !this.showKeywordsInMyAccountSwitch || !this.showKeywordsInMyPlanSwitch || !this.showRelatedKeywordsSwitch)
         {
            callDelayed(this.findSwitches);
         }
         else
         {
            callDelayed(this.setShowAdultIdeas);
         }
      }
      
      private final function getSwitchDiv(param1:String) : *
      {
         var _loc2_:* = scraper.getElementByInnerText("div",param1,true);
         §§push(_loc2_.parentElement.firstChild.children);
         §§push(1);
         if(_loc5_)
         {
            §§push(§§pop() + 101 - 100 - 53 - 98);
         }
         var _loc3_:* = §§pop()[§§pop()];
         if(!_loc3_)
         {
            _loc2_ = scraper.getElementByInnerText("div",param1,true,true);
            §§push(_loc2_.parentElement.firstChild.children);
            §§push(1);
            if(_loc4_)
            {
               §§push(-(§§pop() - 1 - 1) + 1);
            }
            _loc3_ = §§pop()[§§pop()];
         }
         return _loc3_;
      }
      
      private final function isSwitchOn(param1:*) : Boolean
      {
         §§push(param1.className.indexOf(" "));
         §§push(0);
         if(_loc3_)
         {
            §§push(----§§pop() + 43 + 89 + 1);
         }
         if(§§pop() >= §§pop())
         {
            return true;
         }
         return false;
      }
      
      private final function setShowAdultIdeas() : void
      {
         var _loc1_:Boolean = this.isSwitchOn(this.showAdultIdeasSwitch);
         if(_loc1_ != model.selectedProject.includeAdultAreas)
         {
            scraper.click(this.showAdultIdeasSwitch);
         }
         callDelayed(this.setShowKeywordsInMyAccount);
      }
      
      private final function setShowKeywordsInMyAccount() : void
      {
         if(!this.isSwitchOn(this.showKeywordsInMyAccountSwitch))
         {
            scraper.click(this.showKeywordsInMyAccountSwitch);
         }
         callDelayed(this.setShowKeywordsInMyPlan);
      }
      
      private final function setShowKeywordsInMyPlan() : void
      {
         if(!this.isSwitchOn(this.showKeywordsInMyPlanSwitch))
         {
            scraper.click(this.showKeywordsInMyPlanSwitch);
         }
         callDelayed(this.setShowRelatedKeywords);
      }
      
      private final function setShowRelatedKeywords() : void
      {
         var _loc1_:Boolean = this.isSwitchOn(this.showRelatedKeywordsSwitch);
         if(_loc1_ != this.seedKeyword.isRelatedKeywordsOnly)
         {
            scraper.click(this.showRelatedKeywordsSwitch);
         }
         callDelayed(this.cleanup);
      }
   }
}
