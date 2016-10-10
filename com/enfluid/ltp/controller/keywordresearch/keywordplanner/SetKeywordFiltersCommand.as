package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class SetKeywordFiltersCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      public function SetKeywordFiltersCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount("Setting Keyword Filters");
         this.checkIfNeedsChanged();
      }
      
      private final function checkIfNeedsChanged() : void
      {
         if(scraper.hasTextOnPage("Avg. monthly searches ≥ 0") && scraper.hasTextOnPage("Suggested bid ≥ $0.00") && !scraper.hasTextOnPage("Competition: "))
         {
            done();
            return;
         }
         this.clickEditPencil();
         callDelayed(this.setFilters);
      }
      
      private final function cleanup() : void
      {
         var _loc1_:Boolean = clickSave();
         if(!_loc1_)
         {
            this.clickEditPencil();
         }
         callDelayed(done);
      }
      
      private final function clickEditPencil() : void
      {
         findAndClickEditPencilWithSectionTitle("Keyword filters");
      }
      
      private final function findAndDeselectCheckBox(param1:String) : void
      {
         var _loc2_:* = scraper.getElementByInnerText("label",param1,true);
         _loc2_.previousSibling.checked = false;
      }
      
      private final function setCheckboxes() : void
      {
         this.findAndDeselectCheckBox("High");
         this.findAndDeselectCheckBox("Medium");
         this.findAndDeselectCheckBox("Low");
      }
      
      private final function setFilters() : void
      {
         var _loc1_:* = scraper.getElementByInnerText("div","Average monthly searches",true);
         this.setSectionValues(_loc1_);
         var _loc2_:* = scraper.getElementByInnerText("div","Suggested bid",true);
         this.setSectionValues(_loc2_);
         this.setCheckboxes();
         callDelayed(this.cleanup);
      }
      
      private final function setSectionValues(param1:*) : void
      {
         §§push(param1.parentNode.children);
         §§push(2);
         if(_loc5_)
         {
            §§push(-((-(§§pop() + 45) - 1) * 71 - 1) - 28);
         }
         var _loc2_:* = §§pop()[§§pop()];
         §§push(_loc2_.children);
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() - 1) * 106 + 112 + 1);
         }
         var _loc3_:* = §§pop()[§§pop()];
         _loc3_.value = "ATLEAST";
         §§push(_loc2_.children);
         §§push(2);
         if(_loc5_)
         {
            §§push(-§§pop() - 1 - 48 - 55);
         }
         var _loc4_:* = §§pop()[§§pop()];
         _loc4_.value = "0";
      }
   }
}
