package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class ClickGetIdeasCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var isUsersOwnKeywords:Boolean;
      
      public function ClickGetIdeasCommand(param1:Boolean)
      {
         this.isUsersOwnKeywords = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:* = undefined;
         ProgressBarUtil.incrementCurrentCount("Retreiving Results");
         if(this.isUsersOwnKeywords)
         {
            _loc1_ = scraper.getElementByInnerText("span","Get search volume",true);
         }
         else
         {
            _loc1_ = scraper.getElementByInnerText("span","Get ideas",true);
         }
         scraper.click(_loc1_);
         callDelayed(done);
      }
   }
}
