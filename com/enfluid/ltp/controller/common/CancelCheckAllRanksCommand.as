package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import system.numeric.Mathematics;
   
   public final class CancelCheckAllRanksCommand extends Command implements IPhotonCommand
   {
       
      
      public function CancelCheckAllRanksCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         model.isCheckingRanks = false;
         model.currentCheckAllRanksCommand.cancel();
      }
   }
}
