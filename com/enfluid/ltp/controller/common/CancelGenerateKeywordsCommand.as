package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import spark.components.DataGroup;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.constants.Constants;
   import spark.components.Image;
   
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
