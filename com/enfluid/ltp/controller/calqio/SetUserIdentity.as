package com.enfluid.ltp.controller.calqio
{
   import com.photon.controller.IPhotonCommand;
   import flash.net.SharedObject;
   import flash.utils.setTimeout;
   
   public final class SetUserIdentity extends CalqCommand implements IPhotonCommand
   {
       
      
      private var userDataSO:SharedObject;
      
      private var withKnowEmail:Boolean;
      
      public function SetUserIdentity(param1:Boolean = false)
      {
         this.withKnowEmail = param1;
         this.userDataSO = SharedObject.getLocal("userDataCalq");
         super();
      }
      
      public function execute() : void
      {
         var licenseActivated:Boolean = false;
         var trialActivated:Boolean = false;
         if(this.withKnowEmail)
         {
            if(this.userDataSO.data.userEmail != undefined && String(this.userDataSO.data.userEmail).length)
            {
               calq.identify(this.userDataSO.data.userEmail);
               return;
            }
         }
         if(!(!model.userEmail.length && model.isTrial && this.userDataSO.data.trialActivated == undefined))
         {
            licenseActivated = this.userDataSO.data.licenseActivated != undefined?Boolean(this.userDataSO.data.licenseActivated):false;
            trialActivated = this.userDataSO.data.trialActivated != undefined?Boolean(this.userDataSO.data.trialActivated):false;
            if(trialActivated && !model.userEmail.length && !licenseActivated)
            {
               new SetUserEvent("UserEvent.UsingTrail",{"daysRemaining":model.trialDaysRemaining}).execute();
            }
            if(model.userEmail.length && model.userEmail != "null" && !licenseActivated && trialActivated)
            {
               this.userDataSO.data.licenseActivated = true;
               this.userDataSO.flush();
               calq.identify(model.userEmail);
               §§push();
               §§push(function():void
               {
                  calq.profile({
                     "isPlatinum":model.isPlatinum,
                     "licenseActivated":true
                  });
                  new SetUserEvent("UserEvent.LicenseActivated").execute();
               });
               §§push(1000);
               if(_loc2_)
               {
                  §§push(-(-(§§pop() - 1 + 1) - 1) + 77 + 1);
               }
               §§pop().setTimeout(§§pop(),§§pop());
            }
            if(model.userEmail.length && model.userEmail != "null" && !trialActivated && !licenseActivated)
            {
               calq.identify(model.userEmail);
               §§push();
               §§push(function():void
               {
                  calq.profile({"isPlatinum":model.isPlatinum});
               });
               §§push(1000);
               if(_loc2_)
               {
                  §§push(-§§pop() - 48 - 62 - 1);
               }
               §§pop().setTimeout(§§pop(),§§pop());
            }
         }
      }
   }
}
