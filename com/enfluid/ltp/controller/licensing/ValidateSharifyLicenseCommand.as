package com.enfluid.ltp.controller.licensing
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.dataandfilters.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import flash.net.SharedObject;
   import it.sharify.ISharify;
   import it.sharify.SharifyFactory;
   import spark.components.CheckBox;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import it.sharify.SharifyStatus;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   import spark.components.BorderContainer;
   import mx.graphics.SolidColorStroke;
   import com.enfluid.ltp.view.GenerateKeywordsCallout;
   import it.sharify.event.SharifyResponseEvent;
   import spark.components.gridClasses.GridLayer;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.KeywordUtil;
   
   use namespace mx_internal;
   
   public final class ValidateSharifyLicenseCommand extends Command implements IPhotonCommand
   {
       
      
      private var userDataSO:SharedObject;
      
      private var email:String;
      
      private var licenseKey:String;
      
      private var licenseStatus:String;
      
      private var sa:ISharify;
      
      public function ValidateSharifyLicenseCommand(param1:String = null, param2:String = null)
      {
         super();
         this.userDataSO = SharedObject.getLocal("userDataCalq");
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
            §§push(--(-(§§pop() - 1) + 94) - 68);
         }
         §§pop().trialDaysRemaining = §§pop();
         viewModel.showLicensePopup = true;
         model.allowUserIn = true;
         model.licenseStatus = SharifyStatus.STATUS_SERVER_UNAVAILABLE;
         Alert.okLabel = "OK";
         §§push(Alert);
         §§push(130);
         if(_loc2_)
         {
            §§push(-((§§pop() + 80) * 97 * 118 + 1 + 44 + 1));
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc1_)
         {
            §§push(-((§§pop() - 37 + 106) * 67 * 32));
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
            model.isPlatinum = false;
         }
      }
      
      private final function onSharifyResponse(param1:SharifyResponseEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         this.sa.removeEventListener(SharifyResponseEvent.SHARIFY_RESPONSE,this.onSharifyResponse);
         model.isTrial = true;
         model.licenseStatus = param1.status;
         if(SharifyStatus.STATUS_REGISTERED === _loc5_)
         {
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 1 + 104 - 65 - 109 - 1) * 52 + 1);
            }
         }
         else if(SharifyStatus.STATUS_REGISTRATION_SUCCESS === _loc5_)
         {
            §§push(1);
            if(_loc6_)
            {
               §§push(§§pop() - 96 + 109 + 1 + 1 - 1);
            }
         }
         else if(SharifyStatus.STATUS_TRIAL === _loc5_)
         {
            §§push(2);
            if(_loc6_)
            {
               §§push(-(§§pop() + 49 + 1 + 7 + 1));
            }
         }
         else if(SharifyStatus.STATUS_TRIAL_TIMED_OUT === _loc5_)
         {
            §§push(3);
            if(_loc6_)
            {
               §§push(-(-(§§pop() + 1) - 91 + 1 + 28) - 1);
            }
         }
         else if(SharifyStatus.STATUS_SERVER_UNAVAILABLE === _loc5_)
         {
            §§push(4);
            if(_loc7_)
            {
               §§push(-(§§pop() - 1 + 1 + 1) - 31);
            }
         }
         else if(SharifyStatus.STATUS_ERROR_KEY_NOT_FOUND === _loc5_)
         {
            §§push(5);
            if(_loc7_)
            {
               §§push((§§pop() * 109 + 1 + 1 + 1) * 105 * 64);
            }
         }
         else if(SharifyStatus.STATUS_ERROR_ALREADY_REGISTERED === _loc5_)
         {
            §§push(6);
            if(_loc6_)
            {
               §§push(-(--(§§pop() - 1 + 116) + 81));
            }
         }
         else if(SharifyStatus.STATUS_ERROR_REGISTRATION_REVOKED === _loc5_)
         {
            §§push(7);
            if(_loc6_)
            {
               §§push(-(§§pop() + 1 + 1 - 39));
            }
         }
         else
         {
            §§push(8);
            if(_loc6_)
            {
               §§push(§§pop() + 79 + 71 - 7 + 1 - 1 + 1);
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
               _loc2_ = param1.data.split(",");
               §§push(_loc2_);
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() * 50 - 75 - 118);
               }
               _loc3_ = §§pop()[§§pop()];
               §§push(_loc2_);
               §§push(1);
               if(_loc7_)
               {
                  §§push(§§pop() - 39 - 1 + 85 - 35 - 1);
               }
               _loc4_ = §§pop()[§§pop()];
               this.setVersion(_loc3_);
               if(_loc4_ && _loc4_ != null)
               {
                  model.userEmail = _loc4_;
                  new SaveRegistrationStatusCommand().execute();
               }
               break;
            case 2:
               model.isTrial = true;
               model.trialDaysRemaining = int(param1.data);
               model.isSharifyRegistered = false;
               model.allowUserIn = true;
               viewModel.showLicensePopup = this.userDataSO.data.activateInternalTrial != undefined && this.userDataSO.data.activateInternalTrial?false:true;
               break;
            case 3:
               model.isTrial = true;
               §§push(model);
               §§push(0);
               if(_loc7_)
               {
                  §§push((§§pop() + 1 - 1 - 1 - 1 + 102) * 50);
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
               viewModel.showLicensePopup = true;
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
         if(model.isTrial)
         {
            model.isPlatinum = true;
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
            if(_loc3_)
            {
               §§push(-§§pop() + 74 + 1 - 1 + 101 + 1);
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
