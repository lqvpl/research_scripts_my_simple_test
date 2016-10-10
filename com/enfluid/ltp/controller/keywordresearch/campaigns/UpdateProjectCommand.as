package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.ViewModel;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import mx.collections.ArrayCollection;
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
         model.projectTitle[model.selectedProject.id] = model.selectedProject.title;
         done();
      }
   }
}
