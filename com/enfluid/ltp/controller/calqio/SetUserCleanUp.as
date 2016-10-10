package com.enfluid.ltp.controller.calqio
{
   import com.photon.controller.IPhotonCommand;
   
   public final class SetUserCleanUp extends CalqCommand implements IPhotonCommand
   {
       
      
      public function SetUserCleanUp()
      {
         super();
      }
      
      public function execute() : void
      {
         new SetUserEvent("UserEvent.CloseApp").execute();
      }
   }
}
