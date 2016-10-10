package com.enfluid.ltp.controller.licensing
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.controller.common.LoadRegistrationStatusCommand;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import flash.utils.setTimeout;
   
   public final class DetermineVersionCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var model:DataModel;
      
      private var viewModel:ViewModel;
      
      public function DetermineVersionCommand()
      {
         this.model = DataModel.instance;
         this.viewModel = ViewModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         new LoadRegistrationStatusCommand().execute();
         if(this.model.isDK)
         {
            addCommand(new ValidateDKLicenseCommand());
         }
         else
         {
            addCommand(new ValidateSharifyLicenseCommand());
         }
         addCommand(new VerifyPlatinumSubscriptionCommand(DataModel.instance.userEmail));
         super.execute();
      }
      
      override protected function done(param1:String = "success") : void
      {
         if(this.viewModel.showUpgradeToPlatinumPopup)
         {
            this.viewModel.hasSubscribeToPlatinumError = true;
         }
         this.viewModel.versionDetermined = true;
         this.viewModel.startupText = "Loading Projects...";
         §§push();
         §§push(super.done);
         §§push(500);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 + 4 + 79);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
   }
}
