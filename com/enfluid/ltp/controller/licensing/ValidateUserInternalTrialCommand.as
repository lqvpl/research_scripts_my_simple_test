package com.enfluid.ltp.controller.licensing
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import hr.binaria.asx3m.mapper.IMapper;
   import flash.net.SharedObject;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.controller.calqio.SetUserIdentity;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.CheckBox;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   
   public final class ValidateUserInternalTrialCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var email:String;
      
      private var userDataSO:SharedObject;
      
      private var service:HTTPService;
      
      public function ValidateUserInternalTrialCommand(param1:String)
      {
         this.userDataSO = SharedObject.getLocal("userDataCalq");
         this.service = new HTTPService();
         this.email = param1;
         super();
      }
      
      public function execute() : void
      {
         this.userDataSO.data.activateInternalTrial = true;
         this.userDataSO.data.trialActivated = true;
         this.userDataSO.data.userEmail = this.email;
         this.userDataSO.data.licenseActivated = false;
         this.userDataSO.flush();
         new SetUserIdentity(true).execute();
         new SetUserEvent("UserEvent.TrialActivatedWithEmail").execute();
         this.saveUserToInfusionSoft();
      }
      
      private final function saveUserToInfusionSoft() : void
      {
         this.service.url = "http://www.longtailpro.com/api/add-user-email";
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         this.service.send(JSON.stringify({"email":this.email})).addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         done();
      }
      
      public final function fault(param1:Object) : void
      {
         done(FAILURE);
      }
   }
}
