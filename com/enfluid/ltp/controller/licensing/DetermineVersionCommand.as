package com.enfluid.ltp.controller.licensing
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.controller.common.LoadRegistrationStatusCommand;
   import com.dk.license.LicenceAppID;
   import com.enfluid.ltp.model.constants.Constants;
   import com.dk.license.LicenseUtil;
   import com.enfluid.ltp.controller.calqio.SetUserIdentity;
   import com.photon.controller.PhotonCommandCompletionEvent;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   
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
         var _loc1_:String = null;
         new LoadRegistrationStatusCommand().execute();
         if(this.model.isDK)
         {
            LicenceAppID.APP_ID = Constants.DK_APPLICATION_ID;
            _loc1_ = LicenseUtil.getInstance().licenceKey;
            addCommand(new ValidateSharifyLicenseCommand(this.model.userEmail,_loc1_),this.onDoneRegisteringDKLicenseOnSharify);
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
         new SetUserIdentity().execute();
         §§push();
         §§push(super.done);
         §§push(500);
         if(_loc3_)
         {
            §§push(§§pop() + 114 - 59 + 1 - 1 + 1 + 1);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function onDoneRegisteringDKLicenseOnSharify(param1:PhotonCommandCompletionEvent) : void
      {
         if(this.model.isSharifyRegistered)
         {
            this.model.isDK = false;
            new SaveRegistrationStatusCommand().execute();
         }
      }
   }
}
