package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.utils.setTimeout;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.ViewModel;
   
   public final class LoadProjectsCommand extends Command implements IPhotonCommand
   {
       
      
      public function LoadProjectsCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         §§push();
         §§push(this.doExecute);
         §§push(250);
         if(_loc1_)
         {
            §§push((§§pop() + 1 - 83 - 70) * 10 * 103);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function doExecute() : void
      {
         model.projects = new ArrayCollection();
         viewModel.isLoadingProjects = true;
         §§push();
         §§push(this.load);
         §§push(100);
         if(_loc1_)
         {
            §§push(§§pop() + 91 + 1 + 1 + 51 + 22);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function load() : void
      {
         var _loc3_:Object = null;
         var _loc1_:ProjectVO = new ProjectVO();
         var _loc2_:ArrayCollection = new ArrayCollection(_loc1_.findBySQLWithoutParams("SELECT * FROM ProjectVOs;"));
         model.projects = _loc2_;
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 66 - 101 + 59);
         }
         for each(_loc3_ in _loc2_)
         {
            model.projectTitle[_loc3_.id] = _loc3_.title;
         }
         §§push(_loc2_.length);
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() * 92 - 1));
         }
         if(§§pop() == §§pop())
         {
            §§push();
            §§push(this.showCreateProjectCallout);
            §§push(3000);
            if(_loc7_)
            {
               §§push(§§pop() - 1 - 1 + 71 - 1 + 26 - 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
         viewModel.isLoadingProjects = false;
         done();
      }
      
      private final function showCreateProjectCallout() : void
      {
         ViewModel.instance.isProjectEditMode = false;
         ViewModel.instance.showCreateProjectCallout = true;
      }
   }
}
