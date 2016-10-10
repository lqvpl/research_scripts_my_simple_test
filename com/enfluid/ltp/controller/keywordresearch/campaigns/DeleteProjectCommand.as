package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.controls.Alert;
   import mx.graphics.SolidColor;
   import mx.events.CloseEvent;
   import mx.controls.HRule;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import flash.html.HTMLLoader;
   
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
            §§push((-§§pop() + 79) * 47);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc1_)
         {
            §§push(-(§§pop() - 1 + 84 - 1 - 3) + 1);
         }
         §§pop().buttonHeight = §§pop();
         this.showChoice();
      }
      
      private final function showChoice() : void
      {
         §§push(Alert);
         §§push(130);
         if(_loc1_)
         {
            §§push(§§pop() - 78 + 47 + 28);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc1_)
         {
            §§push(-(§§pop() + 7 + 1 + 108) * 114 + 1 + 1);
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
               §§push((§§pop() - 104 - 1 + 1) * 44 - 1);
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
            §§push(§§pop() + 55 + 16 + 1 - 14 + 113);
         }
         var _loc2_:* = §§pop();
         this.project.keywords.deleteAllKeywords(true);
         model.allTrashKeywords.removeDeletedKeywords();
         §§push(0);
         if(_loc5_)
         {
            §§push((-(§§pop() + 1 - 1 - 1) - 1) * 80);
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
         if(_loc5_)
         {
            §§push(§§pop() + 1 - 1 - 1 + 1);
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
