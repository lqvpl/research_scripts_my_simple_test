package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import mx.collections.ArrayCollection;
   
   public final class SelectSearchNetworkCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      public function SelectSearchNetworkCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount("Setting Search Network");
         this.checkIfNeedsChanged();
      }
      
      private final function checkIfNeedsChanged() : void
      {
         if(model.selectedProject.searchNetwork == "Google" && scraper.hasTextOnPage("Google and search partners"))
         {
            this.clickEditPencil();
            callDelayed(this.selectGoogleCommand);
         }
         else if(model.selectedProject.searchNetwork == "Google and search partners" && !scraper.hasTextOnPage("Google and search partners"))
         {
            this.clickEditPencil();
            callDelayed(this.selectGoogleAndSearchPartnersCommand);
         }
         else
         {
            done();
            return;
         }
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
         §§push();
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() * 107 * 75 + 1) * 109 - 24 + 1);
         }
         §§pop().findAndClickEditPencilUnderTargetingSection(§§pop());
      }
      
      private final function selectGoogleAndSearchPartnersCommand() : void
      {
         var _loc1_:* = scraper.getElementById("gwt-debug-network-editor-google-and-partners-input");
         _loc1_.checked = true;
         callDelayed(this.cleanup);
      }
      
      private final function selectGoogleCommand() : void
      {
         var _loc1_:* = scraper.getElementById("gwt-debug-network-editor-google-input");
         _loc1_.checked = true;
         callDelayed(this.cleanup);
      }
   }
}
