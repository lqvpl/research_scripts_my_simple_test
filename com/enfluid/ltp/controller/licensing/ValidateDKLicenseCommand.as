package com.enfluid.ltp.controller.licensing
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.dk.license.LicenceAppID;
   import com.enfluid.ltp.model.constants.Constants;
   import com.dk.license.LicenseCall;
   import mx.controls.Alert;
   import it.sharify.SharifyStatus;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   import spark.components.Scroller;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteOwnKeywordsCommand;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteSeedKeywordCommand;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import flash.filesystem.File;
   import com.enfluid.ltp.model.vo.RTDomain;
   import com.enfluid.ltp.model.vo.RTKeyword;
   import com.enfluid.ltp.model.vo.RTRank;
   import flash.utils.setTimeout;
   
   public final class ValidateDKLicenseCommand extends Command implements IPhotonCommand
   {
      
      private static const SEVEN_DAYS:Number = 6.048E8;
      
      private static const ONE_DAY:Number = 8.64E7;
       
      
      public function ValidateDKLicenseCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         LicenceAppID.APP_ID = Constants.DK_APPLICATION_ID;
         new LicenseCall(this.onFetchLicense).fetchLicense();
      }
      
      public final function forceRegistration() : void
      {
         model.isSharifyRegistered = true;
         §§push(model);
         §§push(0);
         if(_loc1_)
         {
            §§push(-§§pop() - 68 + 1 - 101 + 1 - 1 - 51);
         }
         §§pop().trialDaysRemaining = §§pop();
         viewModel.showLicensePopup = false;
         model.allowUserIn = true;
         done();
      }
      
      public final function onFetchLicense(param1:String) : void
      {
         var data:Object = null;
         var plans:Array = null;
         var result:String = param1;
         Alert.okLabel = "OK";
         §§push(Alert);
         §§push(130);
         if(_loc5_)
         {
            §§push(-((§§pop() - 1) * 67 + 20 - 15) + 1 + 1);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc4_)
         {
            §§push(-(§§pop() + 78) - 1);
         }
         §§pop().buttonHeight = §§pop();
         try
         {
            if(result == LicenseCall.OFFLINE_OR_SERVER_DOWN)
            {
               model.licenseStatus = SharifyStatus.STATUS_SERVER_UNAVAILABLE;
               Alert.show("The Digital Kickstart license server could not be reached.  Please check your interet connection and try again.","Server Unavailable");
               return;
            }
            if(result == LicenseCall.NO_LICENSE_KEY_PRESENT)
            {
               this.forceRegistration();
               return;
            }
            data = JSON.parse(result);
            plans = data.plans;
            if(this.hasPro(plans))
            {
               model.licenseStatus = SharifyStatus.STATUS_REGISTERED;
               model.isPlatinum = true;
               model.isTrial = false;
               model.isSharifyRegistered = true;
               viewModel.showLicensePopup = false;
               model.allowUserIn = true;
               if(this.hasPlatinum(plans))
               {
                  model.isPlatinum = true;
               }
            }
            else
            {
               model.licenseStatus = SharifyStatus.STATUS_ERROR_REGISTRATION_REVOKED;
               model.isSharifyRegistered = true;
               viewModel.showLicensePopup = true;
               §§push(model);
               §§push(0);
               if(_loc5_)
               {
                  §§push((§§pop() + 46) * 65 + 20 + 1 - 1);
               }
               §§pop().trialDaysRemaining = §§pop();
               model.allowUserIn = true;
            }
         }
         catch(err:Error)
         {
            model.licenseStatus = SharifyStatus.STATUS_SERVER_UNAVAILABLE;
            Alert.show("There was an error reaching the Digital Kickstart license server.  Please check your interet connection and try again.","Server Unavailable");
            Logger.log("ERROR PARSING LICENSE JSON: " + result);
         }
         new SaveRegistrationStatusCommand().execute();
         done();
      }
      
      private final function hasPlatinum(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-§§pop() - 35));
         }
         for each(_loc2_ in param1)
         {
            §§push(_loc2_.indexOf("platinum"));
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() + 112 + 107 - 1 + 1);
            }
            if(§§pop() >= §§pop())
            {
               return true;
            }
         }
         return true;
      }
      
      private final function hasPro(param1:Array) : Boolean
      {
         var _loc2_:String = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() + 1 + 28) * 47 + 56) + 1);
         }
         for each(_loc2_ in param1)
         {
            §§push(_loc2_.indexOf("pro"));
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 1) * 56 + 1);
            }
            if(§§pop() >= §§pop())
            {
               return true;
            }
         }
         return false;
      }
   }
}
