package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.controls.Alert;
   
   public final class SelectLanguageCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var languageLink;
      
      private var languageTextInput;
      
      public function SelectLanguageCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount("Selecting Language");
         this.checkIfNeedsChanged();
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
            §§push(1);
            if(_loc9_)
            {
               §§push((§§pop() - 1 + 1 - 48 - 1) * 34 + 0 - 27);
            }
            _loc2_ = §§pop()[§§pop()];
            _loc3_ = String(_loc2_.innerText).split(", ");
            _loc4_ = false;
            §§push(0);
            if(_loc9_)
            {
               §§push((-§§pop() + 84 + 82 - 100 - 1) * 100);
            }
            for each(_loc5_ in _loc3_)
            {
               _loc5_ = _loc5_.replace("\n","").replace("\n","");
               if(_loc5_ != model.selectedProject.language.name)
               {
                  _loc4_ = true;
               }
            }
            if(!_loc4_)
            {
               done();
               return;
            }
         }
         catch(err:Error)
         {
         }
         this.clickLanguageEditPencil();
         callDelayed(this.ensurePopupLoaded);
      }
      
      private final function checkMouseOverWorked() : void
      {
         §§push(this.languageLink.className.indexOf(" "));
         §§push(0);
         if(_loc1_)
         {
            §§push(--((§§pop() + 1 - 3 - 1) * 112));
         }
         if(§§pop() >= §§pop())
         {
            callDelayed(this.pressEnter);
         }
         else
         {
            callDelayed(this.mouseOverLanguage);
         }
      }
      
      private final function cleanup() : void
      {
         var _loc1_:Boolean = clickSave();
         if(!_loc1_)
         {
            §§push();
            §§push(1);
            if(_loc3_)
            {
               §§push((§§pop() + 1 - 1 + 1 + 1 - 1 + 1) * 104);
            }
            §§pop().findAndClickEditPencilUnderTargetingSection(§§pop());
         }
         callDelayed(done);
      }
      
      private final function clickLanguageEditPencil() : void
      {
         §§push();
         §§push(1);
         if(_loc1_)
         {
            §§push(-§§pop() + 48 + 1 + 27 - 62);
         }
         §§pop().findAndClickEditPencilUnderTargetingSection(§§pop());
      }
      
      private final function ensurePopupLoaded() : void
      {
         this.languageTextInput = scraper.getElementById("gwt-debug-language-pill-input-box");
         if(this.languageTextInput)
         {
            callDelayed(this.removeAllLanguages);
         }
         else
         {
            callDelayed(this.ensurePopupLoaded);
         }
      }
      
      private final function mouseOverLanguage() : void
      {
         this.languageLink = scraper.getElementByInnerText("div",model.selectedProject.language.name,true,true);
         if(this.languageLink)
         {
            scraper.fireMouseOver(this.languageLink);
            callDelayed(this.checkMouseOverWorked);
         }
         else
         {
            Alert.okLabel = "OK";
            §§push(Alert);
            §§push(130);
            if(_loc2_)
            {
               §§push(-(§§pop() + 3) - 97);
            }
            §§pop().buttonWidth = §§pop();
            §§push(Alert);
            §§push(30);
            if(_loc2_)
            {
               §§push((§§pop() - 1) * 83 + 65 + 1 - 1 + 32 + 1);
            }
            §§pop().buttonHeight = §§pop();
            Alert.show("We could not find the language you selected on the Google Keyword Planner.  Please contact support.");
         }
      }
      
      private final function pressEnter() : void
      {
         scraper.pressEnter(this.languageTextInput);
         callDelayed(this.cleanup);
      }
      
      private final function removeAllLanguages() : void
      {
         var _loc1_:* = scraper.getElementById("gwt-debug-popup-pill-remove-button");
         if(_loc1_)
         {
            scraper.click(_loc1_);
            callDelayed(this.removeAllLanguages);
         }
         else
         {
            callDelayed(this.mouseOverLanguage);
         }
      }
   }
}
