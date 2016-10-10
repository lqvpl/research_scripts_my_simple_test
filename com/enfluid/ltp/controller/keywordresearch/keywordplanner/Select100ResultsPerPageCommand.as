package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class Select100ResultsPerPageCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      public function Select100ResultsPerPageCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount("Adjusting results per page");
         var _loc1_:* = scraper.getElementByInnerText("span","100",true);
         if(_loc1_)
         {
            done();
            return;
         }
         this.clickArrowButton();
      }
      
      private final function click100Keywords() : void
      {
         var _loc1_:* = scraper.getElementByInnerText("span","100",true);
         if(_loc1_)
         {
            scraper.click(_loc1_);
            callDelayed(done);
         }
         else
         {
            §§push();
            §§push(this.execute);
            §§push(1000);
            if(_loc2_)
            {
               §§push(§§pop() - 51 + 47 + 34 - 40 - 1);
            }
            §§pop().callDelayed(§§pop(),§§pop());
         }
      }
      
      private final function clickArrowButton() : void
      {
         var _loc1_:* = scraper.getElementsByClassName("aw-native-select-box-wrapper");
         var _loc2_:Array = this.findAllArrowButtonUnderSectionWithText("Keyword (by relevance)",_loc1_);
         §§push(_loc2_.length);
         §§push(0);
         if(_loc4_)
         {
            §§push(-((§§pop() + 1) * 38 - 1));
         }
         if(§§pop() > §§pop())
         {
            §§push(scraper);
            §§push(_loc2_);
            §§push(0);
            if(_loc4_)
            {
               §§push(§§pop() - 111 - 107 + 1 - 1 - 1 + 23 - 96);
            }
            §§push(§§pop()[§§pop()].children);
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() - 1 - 44 + 27 + 1 - 1 - 1));
            }
            §§pop().fireMouseDown(§§pop()[§§pop()]);
            callDelayed(this.click100Keywords);
         }
         else
         {
            done();
         }
      }
      
      private final function findAllArrowButtonUnderSectionWithText(param1:String, param2:*) : Array
      {
         var _loc4_:* = undefined;
         var _loc3_:Array = [];
         §§push(0);
         if(_loc8_)
         {
            §§push((-§§pop() - 69 + 1) * 64);
         }
         for each(_loc4_ in param2)
         {
            try
            {
               §§push(_loc4_.parentNode.parentNode.parentNode.parentNode.innerText.indexOf(param1));
               §§push(0);
               if(_loc8_)
               {
                  §§push(-§§pop() + 21 - 1);
               }
               if(§§pop() >= §§pop())
               {
                  _loc3_.push(_loc4_);
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return _loc3_;
      }
   }
}
