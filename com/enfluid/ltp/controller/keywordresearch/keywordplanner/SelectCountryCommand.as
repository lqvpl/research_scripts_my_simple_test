package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   
   public final class SelectCountryCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var country:String;
      
      private var countryTextInput;
      
      private var fetchGlobalSearchVolume:Boolean;
      
      public function SelectCountryCommand(param1:Boolean, param2:String = null)
      {
         super();
         this.fetchGlobalSearchVolume = param1;
         this.country = param2;
      }
      
      public function execute() : void
      {
         if(!this.country)
         {
            this.country = model.selectedProject.country.name;
         }
         this.checkIfNeedsChanged();
      }
      
      private final function addCountry() : void
      {
         this.countryTextInput = scraper.getElementById("gwt-debug-geo-search-box");
         if(!this.countryTextInput)
         {
            callDelayed(this.execute);
            return;
         }
         this.countryTextInput.focus();
         scraper.insertText(this.country,this.countryTextInput);
         callDelayed(this.pressEnter);
      }
      
      private final function checkForBigCountryPopup() : void
      {
         var _loc1_:* = scraper.getElementByInnerText("span","Done",true);
         if(_loc1_)
         {
            scraper.click(_loc1_);
         }
         callDelayed(this.closePopup);
      }
      
      private final function checkIfNeedsChanged() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:Array = null;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         try
         {
            _loc1_ = findTargetingDiv();
            §§push(_loc1_.children);
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() - 1 - 99 - 1 - 1 - 73 + 1 + 94);
            }
            _loc2_ = §§pop()[§§pop()];
            _loc3_ = String(_loc2_.innerText).split(", ");
            _loc4_ = false;
            §§push(0);
            if(_loc8_)
            {
               §§push(-(-§§pop() + 1 - 63) - 67);
            }
            for each(_loc5_ in _loc3_)
            {
               _loc5_ = _loc5_.replace("\n","").replace("\n","");
               if(_loc5_ != this.country)
               {
                  _loc4_ = true;
               }
            }
            if(!_loc4_ && !this.fetchGlobalSearchVolume)
            {
               done();
               return;
            }
         }
         catch(err:Error)
         {
         }
         this.clickCountryEditPencil();
         callDelayed(this.clickCountryRemoveAll);
      }
      
      private final function clickCountryEditPencil() : void
      {
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 100 * 117));
         }
         §§pop().findAndClickEditPencilUnderTargetingSection(§§pop());
      }
      
      private final function clickCountryRemoveAll() : void
      {
         var _loc1_:* = scraper.getElementByInnerText("a","Remove all",true);
         if(_loc1_)
         {
            scraper.click(_loc1_);
            if(this.fetchGlobalSearchVolume)
            {
               callDelayed(this.closePopup);
            }
            else
            {
               callDelayed(this.addCountry);
            }
         }
         else
         {
            callDelayed(this.clickCountryRemoveAll);
         }
      }
      
      private final function clickTextInput() : void
      {
         this.countryTextInput.focus();
      }
      
      private final function closePopup() : void
      {
         var _loc1_:Boolean = clickSave();
         if(!_loc1_)
         {
            this.clickCountryEditPencil();
         }
         callDelayed(done);
      }
      
      private final function pressEnter() : void
      {
         scraper.pressEnter(this.countryTextInput);
         callDelayed(this.selectResult);
      }
      
      private final function selectResult() : void
      {
         var _loc1_:* = scraper.getElementByInnerText("a",this.country,true);
         if(_loc1_)
         {
            scraper.click(_loc1_);
            callDelayed(this.checkForBigCountryPopup);
         }
         else
         {
            callDelayed(this.addCountry);
         }
      }
   }
}
