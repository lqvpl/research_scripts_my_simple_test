package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.controls.Alert;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import com.enfluid.ltp.view.KeywordPlannerSection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import mx.events.CloseEvent;
   import hr.binaria.asx3m.mapper.ClassAliasingMapper;
   import hr.binaria.asx3m.mapper.DefaultImplementationsMapper;
   
   use namespace mx_internal;
   
   public final class DeleteOwnKeywordsCommand extends Command implements IPhotonCommand
   {
       
      
      public function DeleteOwnKeywordsCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         Alert.yesLabel = "Yes, Delete";
         Alert.noLabel = "Cancel";
         §§push(Alert);
         §§push(130);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 111) - 1 + 1 + 0 - 1));
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc2_)
         {
            §§push(-((§§pop() - 113) * 96) - 1 + 1);
         }
         §§pop().buttonHeight = §§pop();
         var _loc1_:String = "Are you sure you want to delete your Own keywords?  Keywords marked as Favorites will not be deleted.  Do you want to proceed?\n";
         §§push(Alert);
         §§push(_loc1_);
         §§push("Confirm Delete");
         §§push(3);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) + 63) * 25 * 97 + 25);
         }
         §§pop().show(§§pop(),§§pop(),§§pop(),null,this.confirmDeleteHandler);
      }
      
      public final function confirmDeleteHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            model.selectedProject.ownKeywords.deleteAllKeywords();
            model.selectedProject.ownKeywords.removeDeletedKeywords();
            model.selectedProject.keywords.removeDeletedKeywords();
            model.allTrashKeywords.removeDeletedKeywords();
         }
         param1.stopImmediatePropagation();
         done();
      }
   }
}
