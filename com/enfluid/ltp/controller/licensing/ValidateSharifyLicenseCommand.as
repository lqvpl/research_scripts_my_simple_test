package com.enfluid.ltp.controller.licensing
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import it.sharify.ISharify;
   import it.sharify.SharifyFactory;
   import mx.states.Transition;
   import flash.events.Event;
   import it.sharify.SharifyStatus;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   import flash.utils.setTimeout;
   import it.sharify.event.SharifyResponseEvent;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import com.enfluid.ltp.util.Logger;
   import spark.components.Button;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.KeywordUtil;
   
   public final class ValidateSharifyLicenseCommand extends Command implements IPhotonCommand
   {
       
      
      private var email:String;
      
      private var licenseKey:String;
      
      private var licenseStatus:String;
      
      private var sa:ISharify;
      
      public function ValidateSharifyLicenseCommand(param1:String = null, param2:String = null)
      {
         super();
         this.email = KeywordUtil.stripSpaces(param1);
         this.licenseKey = KeywordUtil.stripSpaces(param2);
      }
      
      public function execute() : void
      {
         var _loc1_:SharifyFactory = new SharifyFactory();
         _loc1_.addEventListener(Event.COMPLETE,this.onSharifyFactoryReady);
      }
      
      private final function checkLocalParameters() : void
      {
         §§push(model);
         §§push(0);
         if(_loc1_)
         {
            §§push(--((§§pop() + 1 - 103) * 0 - 1));
         }
         §§pop().trialDaysRemaining = §§pop();
         viewModel.showLicensePopup = false;
         model.allowUserIn = true;
         model.licenseStatus = SharifyStatus.STATUS_SERVER_UNAVAILABLE;
         Alert.okLabel = "OK";
         §§push(Alert);
         §§push(130);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 34 + 39 - 32));
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() - 52 + 79 + 11);
         }
         §§pop().buttonHeight = §§pop();
         Alert.show("The Long Tail Pro license server could not be reached.  Please check your interet connection and try again.","Server Unavailable");
         this.cleanup();
      }
      
      private final function cleanup() : void
      {
         new SaveRegistrationStatusCommand().execute();
         done();
      }
      
      private final function onSharifyFactoryReady(param1:Event) : void
      {
         this.sa = (param1.target as SharifyFactory).getInstance();
         this.registerOrCheckStatus();
      }
      
      private final function setVersion(param1:String) : void
      {
         if(param1 == "platinum")
         {
            model.isPlatinum = true;
            new SaveRegistrationStatusCommand().execute();
            viewModel.showUpgradeToPlatinumPopup = false;
            viewModel.hasSubscribeToPlatinumError = false;
         }
         else
         {
            model.isPlatinum = true;
         }
      }
      
      private final function onSharifyResponse(param1:SharifyResponseEvent) : void
      {
         this.sa.removeEventListener(SharifyResponseEvent.SHARIFY_RESPONSE,this.onSharifyResponse);
         model.isTrial = true;
         model.licenseStatus = param1.status;
         if(SharifyStatus.STATUS_REGISTERED === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(((§§pop() + 114 - 1 + 23 - 108) * 103 - 1) * 26);
            }
         }
         else if(SharifyStatus.STATUS_REGISTRATION_SUCCESS === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(-§§pop() - 14 + 1 - 1);
            }
         }
         else if(SharifyStatus.STATUS_TRIAL === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(-(§§pop() + 20 - 1 - 85 + 78 - 18 - 1));
            }
         }
         else if(SharifyStatus.STATUS_TRIAL_TIMED_OUT === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(-(-§§pop() + 1) + 1 - 32 + 1);
            }
         }
         else if(SharifyStatus.STATUS_SERVER_UNAVAILABLE === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(-§§pop() + 90 + 1 + 75 - 115);
            }
         }
         else if(SharifyStatus.STATUS_ERROR_KEY_NOT_FOUND === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(-(-§§pop() + 64 + 112 + 1 - 78 - 1));
            }
         }
         else if(SharifyStatus.STATUS_ERROR_ALREADY_REGISTERED === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(--§§pop() - 1 - 1 + 1 + 61);
            }
         }
         else if(SharifyStatus.STATUS_ERROR_REGISTRATION_REVOKED === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(--(-(§§pop() + 1) - 1) - 1);
            }
         }
         else
         {
            §§push(8);
            if(_loc4_)
            {
               §§push(§§pop() + 85 + 1 - 1 - 1 + 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               model.isTrial = false;
               model.isSharifyRegistered = true;
               viewModel.showLicensePopup = false;
               model.allowUserIn = true;
               this.setVersion(param1.data);
               break;
            case 1:
               model.userEmail = this.email;
               model.isTrial = false;
               viewModel.showLicensePopup = false;
               model.allowUserIn = true;
               this.setVersion(param1.data);
               break;
            case 2:
               model.isTrial = true;
               model.trialDaysRemaining = int(param1.data);
               viewModel.showLicensePopup = true;
               model.isSharifyRegistered = false;
               model.allowUserIn = true;
               break;
            case 3:
               model.isTrial = true;
               §§push(model);
               §§push(0);
               if(_loc3_)
               {
                  §§push((-(§§pop() - 41 + 37) - 59 + 87) * 41);
               }
               §§pop().trialDaysRemaining = §§pop();
               model.isSharifyRegistered = false;
               viewModel.showLicensePopup = true;
               break;
            case 4:
               this.checkLocalParameters();
               break;
            case 5:
               model.isSharifyRegistered = false;
               break;
            case 6:
               model.isTrial = false;
               model.isSharifyRegistered = false;
               viewModel.showLicensePopup = true;
               break;
            case 7:
               model.isSharifyRegistered = false;
               viewModel.showLicensePopup = true;
               break;
            default:
               Logger.log("default");
               model.licenseStatus = SharifyStatus.STATUS_ERROR_KEY_NOT_FOUND;
               model.isSharifyRegistered = false;
               viewModel.showLicensePopup = true;
         }
         this.cleanup();
      }
      
      private final function registerOrCheckStatus() : void
      {
         var e:SharifyResponseEvent = null;
         this.sa.addEventListener(SharifyResponseEvent.SHARIFY_RESPONSE,this.onSharifyResponse);
         try
         {
            this.sa.init(Constants.APPLICATION_ID,"license.longtailpro.com",false);
            this.sa.tls = false;
         }
         catch(err:Error)
         {
            Logger.log("ERROR INITING SHARIFY!!!!!!");
            Logger.log(err.message);
            Logger.saveToDesktop();
            e = new SharifyResponseEvent(SharifyResponseEvent.SHARIFY_RESPONSE);
            §§push();
            §§push(onSharifyResponse);
            §§push(2000);
            if(_loc4_)
            {
               §§push(-(--§§pop() - 1 + 1 - 1 - 1));
            }
            §§pop().setTimeout(§§pop(),§§pop(),[e]);
         }
         if(this.email && this.licenseKey)
         {
            this.sa.register(this.email,this.licenseKey);
         }
         else
         {
            this.sa.checkLicenseStatus();
         }
      }
   }
}
