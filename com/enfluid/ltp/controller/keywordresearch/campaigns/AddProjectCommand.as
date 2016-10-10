package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import system.numeric.Mathematics;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import spark.effects.Rotate;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   
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
         this.project.save();
         new SelectProjectCommand(this.project).execute();
         viewModel.showCreateProjectCallout = false;
         viewModel.showGenerateKeywordsCallout = true;
         done();
      }
   }
}
