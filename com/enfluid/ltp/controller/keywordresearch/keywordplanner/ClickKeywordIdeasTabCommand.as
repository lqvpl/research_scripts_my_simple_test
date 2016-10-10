package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class ClickKeywordIdeasTabCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      public function ClickKeywordIdeasTabCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount("Selecting Keyword Ideas Tab");
         this.clickTab();
      }
      
      private final function clickTab() : void
      {
         if(scraper.pendingLoad)
         {
            callDelayed(this.clickTab);
            return;
         }
         var _loc1_:* = scraper.getElementByInnerText("div","Keyword ideas",true);
         if(_loc1_)
         {
            scraper.click(_loc1_);
            §§push();
            §§push(callDoneAfterFinishedLoading);
            §§push(1000);
            if(_loc2_)
            {
               §§push(-(§§pop() + 1 - 114) + 116 + 64 - 18 - 1);
            }
            §§pop().callDelayed(§§pop(),§§pop());
         }
         else
         {
            callDelayed(this.clickTab);
         }
      }
   }
}
