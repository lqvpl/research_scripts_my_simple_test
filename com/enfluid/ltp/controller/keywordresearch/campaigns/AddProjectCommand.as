package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.ProjectVO;
   
   public final class AddProjectCommand extends Command implements IPhotonCommand
   {
       
      
      private var project:ProjectVO;
      
      public function AddProjectCommand(param1:ProjectVO)
      {
         super();
         this.project = param1;
      }
      
      public function execute() : void
      {
         new CopyDefaultProjectConfigurationCommand(this.project).execute();
         model.projects.addItem(this.project);
         if(this.project.country.amazonSite)
         {
            this.project.amazonKCEnabled = true;
         }
         else
         {
            this.project.amazonKCEnabled = false;
         }
         this.project.save();
         new SelectProjectCommand(this.project).execute();
         viewModel.showCreateProjectCallout = false;
         viewModel.showGenerateKeywordsCallout = true;
         model.projectTitle[this.project.id] = this.project.title;
         done();
      }
   }
}
