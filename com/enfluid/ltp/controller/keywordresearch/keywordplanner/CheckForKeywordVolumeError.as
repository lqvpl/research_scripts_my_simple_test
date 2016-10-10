package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import mx.controls.Alert;
   
   public final class CheckForKeywordVolumeError extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var div_id:String = "initialLoading";
      
      private var error_strings:Vector.<String>;
      
      public function CheckForKeywordVolumeError()
      {
         this.error_strings = new Vector.<String>();
         this.initErrorStrings();
         super();
      }
      
      public function execute() : void
      {
         this.findErrorPanelAndClickToOpen();
      }
      
      private final function findErrorPanelAndClickToOpen() : void
      {
         var _loc1_:* = scraper.getElementByInnerText("div","We found an error that you may want to fix. Click to see it.",true);
         try
         {
            scraper.click(_loc1_);
         }
         catch(e:Error)
         {
         }
         callDelayed(this.scrapeErrorMessages);
      }
      
      private final function initErrorStrings() : void
      {
         this.error_strings.push("The keyword phrase contains too many words.");
         this.error_strings.push("The keyword contains too many characters.");
      }
      
      private final function scrapeErrorMessages() : void
      {
         var _loc3_:* = undefined;
         var _loc1_:* = scraper.getInnermostElementContainingText("div","On row ");
         var _loc2_:String = "";
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() + 43) - 68);
         }
         for each(_loc3_ in _loc1_)
         {
            try
            {
               if(_loc3_.innerText != "" && _loc3_.innerText != null && _loc3_.innerText != undefined)
               {
                  _loc2_ = _loc2_ + (_loc3_.innerText + "\n");
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         if(_loc2_ != "")
         {
            Alert.okLabel = "OK";
            §§push(Alert);
            §§push(130);
            if(_loc7_)
            {
               §§push(-(§§pop() * 15) - 1 - 1);
            }
            §§pop().buttonWidth = §§pop();
            §§push(Alert);
            §§push(30);
            if(_loc7_)
            {
               §§push(§§pop() + 33 - 27 - 69 + 69);
            }
            §§pop().buttonHeight = §§pop();
            Alert.show("Keyword Issues\n" + _loc2_);
         }
         done();
      }
   }
}
