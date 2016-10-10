package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.binding.Binding;
   import mx.collections.IList;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.controls.Alert;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   import hr.binaria.asx3m.annotations.Annotation;
   import hr.binaria.asx3m.annotations.Annotated;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.view.dataandfilters.SuggestedBidSection;
   
   public final class DeleteProjectCommand extends Command implements IPhotonCommand
   {
       
      
      private var project:ProjectVO;
      
      public function DeleteProjectCommand(param1:ProjectVO)
      {
         this.project = param1;
         super();
      }
      
      public function execute() : void
      {
         Alert.yesLabel = "Yes, Delete";
         Alert.noLabel = "Cancel";
         §§push(Alert);
         §§push(130);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1 - 38 - 53) + 102 - 57);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc2_)
         {
            §§push(-§§pop() - 96 + 12 - 118 - 1 + 62);
         }
         §§pop().buttonHeight = §§pop();
         this.showChoice();
      }
      
      private final function showChoice() : void
      {
         §§push(Alert);
         §§push(130);
         if(_loc2_)
         {
            §§push(§§pop() * 88 - 1 + 113);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc1_)
         {
            §§push((-(§§pop() - 34 - 1) - 113) * 75);
         }
         §§pop().buttonHeight = §§pop();
         if(this.project)
         {
            Alert.yesLabel = "Yes, Delete";
            Alert.noLabel = "No";
            §§push(Alert);
            §§push("Are you sure you want to delete project \"" + this.project.title + "\"?\n\nAll Keywords, including Favorites, will be permanently deleted");
            §§push("Delete Project");
            §§push(3);
            if(_loc1_)
            {
               §§push((§§pop() - 1) * 34 + 1 + 26 - 1 - 98);
            }
            §§pop().show(§§pop(),§§pop(),§§pop(),null,this.choiceHandler);
         }
         else
         {
            Alert.okLabel = "OK";
            Alert.show("Please select a project to delete ");
         }
      }
      
      private final function choiceHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            new SetUserEvent("UserEvent.Project.Delete").execute();
            this.deleteProject();
         }
         done();
      }
      
      private final function deleteProject() : void
      {
         var _loc1_:SeedKeywordVO = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 60 - 13 + 1 - 99 - 110);
         }
         var _loc2_:* = §§pop();
         this.project.keywords.deleteAllKeywords(true);
         model.allTrashKeywords.removeDeletedKeywords();
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 25 + 37 + 2 + 30 - 106 - 1 + 1);
         }
         for each(_loc1_ in this.project.seedKeywords)
         {
            _loc1_.deleteMe();
         }
         this.project.deleteMe();
         _loc2_ = int(DataModel.instance.projects.getItemIndex(this.project));
         model.projects.removeItemAt(_loc2_);
         model.selectedProject = null;
         §§push(model.projects.length);
         §§push(0);
         if(_loc6_)
         {
            §§push((-(-(§§pop() - 1) * 72 + 79) + 7) * 37);
         }
         if(§§pop() == §§pop())
         {
            viewModel.isProjectEditMode = false;
            viewModel.showCreateProjectCallout = true;
            return;
         }
         new SelectNextProjectCommand(_loc2_).execute();
      }
   }
}
