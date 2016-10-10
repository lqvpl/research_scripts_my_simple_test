package com.enfluid.ltp.controller.licensing
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.core.IFlexDisplayObject;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.dk.license.LicenceAppID;
   import com.enfluid.ltp.model.constants.Constants;
   import com.dk.license.LicenseCall;
   import mx.controls.Alert;
   import it.sharify.SharifyStatus;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchGoogleTitleCompetitionCommand;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchBingTitleCompetitionCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.graphics.SolidColor;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   
   public final class ActivateDKLicenseCommand extends Command implements IPhotonCommand
   {
       
      
      private var licenseKey:String;
      
      private var email:String;
      
      public function ActivateDKLicenseCommand(param1:String, param2:String)
      {
         this.licenseKey = param2;
         this.email = param1;
         super();
      }
      
      public function execute() : void
      {
         model.userEmail = this.email;
         this.licenseKey = KeywordUtil.stripBeginningAndEndingSpaces(this.licenseKey);
         LicenceAppID.APP_ID = Constants.DK_APPLICATION_ID;
         new LicenseCall(this.onActivateLicense).activate(this.licenseKey);
      }
      
      public final function onActivateLicense(param1:String) : void
      {
         var data:Object = null;
         var result:String = param1;
         Alert.okLabel = "OK";
         §§push(Alert);
         §§push(130);
         if(_loc5_)
         {
            §§push(-(-(§§pop() + 15) * 93));
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc4_)
         {
            §§push(-((§§pop() + 30) * 47 * 83) - 1);
         }
         §§pop().buttonHeight = §§pop();
         try
         {
            if(result == LicenseCall.OFFLINE_OR_SERVER_DOWN)
            {
               model.licenseStatus = SharifyStatus.STATUS_SERVER_UNAVAILABLE;
               Alert.show("The license server could not be reached.  Please check your interet connection and try again.","Server Unavailable");
               return;
            }
            data = JSON.parse(result);
            if(data.success == "true" && data.overusage == "false")
            {
               model.isDK = true;
               new SaveRegistrationStatusCommand().execute();
               new ValidateDKLicenseCommand().execute();
               viewModel.showLicensePopup = false;
            }
            else if(data.overusage == "true")
            {
               model.licenseStatus = SharifyStatus.STATUS_ERROR_ALREADY_REGISTERED;
            }
            else if(data.success == "false")
            {
               model.licenseStatus = SharifyStatus.STATUS_ERROR_KEY_NOT_FOUND;
            }
         }
         catch(err:Error)
         {
            model.licenseStatus = SharifyStatus.STATUS_SERVER_UNAVAILABLE;
            Alert.show("There was an error reaching the license server.  Please check your interet connection and try again.","Server Unavailable");
            Logger.log("ERROR PARSING LICENSE JSON: " + result);
         }
         done();
      }
   }
}
