package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import hr.binaria.asx3m.core.MapBackedDataHolder;
   import mx.graphics.GradientEntry;
   import mx.states.Transition;
   import com.enfluid.ltp.model.constants.Constants;
   
   public final class CancelGenerateKeywordsCommand extends Command implements IPhotonCommand
   {
       
      
      public function CancelGenerateKeywordsCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         viewModel.headerState = Constants.HEADER_STATE_NORMAL;
         model.currentGenerateKeywordsCommand.cancel();
      }
   }
}
