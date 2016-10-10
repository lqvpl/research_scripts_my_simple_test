package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import spark.primitives.Rect;
   
   public final class UpdateProjectCommand extends Command implements IPhotonCommand
   {
       
      
      public function UpdateProjectCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         viewModel.showCreateProjectCallout = false;
         viewModel.isProjectEditMode = false;
         model.selectedProject.save();
         done();
      }
   }
}
