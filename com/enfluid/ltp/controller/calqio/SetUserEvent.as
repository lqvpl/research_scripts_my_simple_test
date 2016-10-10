package com.enfluid.ltp.controller.calqio
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   
   public final class SetUserEvent extends CalqCommand implements IPhotonCommand
   {
       
      
      private var eventType:String;
      
      private var eventProperties;
      
      private var data:DataModel;
      
      public function SetUserEvent(param1:String, param2:* = null)
      {
         this.data = DataModel.instance;
         this.eventType = param1;
         this.eventProperties = param2 || {};
         if(this.data && param1 != "UserEvent.StartApp")
         {
            this.eventProperties["isPlatinum"] = this.data.isPlatinum;
            this.eventProperties["isTrial"] = this.data.isTrial;
         }
         super();
      }
      
      public function execute() : void
      {
         calq.track(this.eventType,this.eventProperties);
      }
   }
}
