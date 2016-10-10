package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import spark.components.ComboBox;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.controls.Alert;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.majestic.target;
   import com.enfluid.ltp.view.components.majestic.CompetitorMajesticAnalysisFooterComponent;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import system.data.maps.HashMap;
   
   use namespace mx_internal;
   
   public final class AddSeedKeywordsCommand extends Command implements IPhotonCommand
   {
       
      
      private var enteredSeedKeywords:String = "";
      
      public function AddSeedKeywordsCommand(param1:String = null)
      {
         this.enteredSeedKeywords = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc4_:String = null;
         var _loc5_:SeedKeywordVO = null;
         if(!this.enteredSeedKeywords)
         {
            done();
            return;
         }
         var _loc1_:RegExp = /\n+/g;
         var _loc2_:RegExp = /,+/g;
         var _loc3_:Array = this.enteredSeedKeywords.replace(_loc1_,",").split(_loc2_);
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 7) + 1);
         }
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_)
            {
               if(model.selectedProject.pendingSeedKeywords.length < Constants.MAX_SEED_KEYWORDS)
               {
                  _loc5_ = new SeedKeywordVO(model.selectedProject);
                  _loc5_.keyword = _loc4_;
                  model.selectedProject.pendingSeedKeywords.addItem(_loc5_);
                  _loc5_.save();
                  continue;
               }
               Alert.okLabel = "OK";
               §§push(Alert);
               §§push(130);
               if(_loc9_)
               {
                  §§push((-§§pop() + 117) * 79 - 64 - 1 - 1 - 38);
               }
               §§pop().buttonWidth = §§pop();
               §§push(Alert);
               §§push(30);
               if(_loc9_)
               {
                  §§push(-((-§§pop() + 1 + 1) * 56 - 1));
               }
               §§pop().buttonHeight = §§pop();
               Alert.show("You can run up to " + Constants.MAX_SEED_KEYWORDS + " seed keywords at a time.  Some of your seed keywords were not added.");
               break;
            }
         }
         done();
      }
   }
}
