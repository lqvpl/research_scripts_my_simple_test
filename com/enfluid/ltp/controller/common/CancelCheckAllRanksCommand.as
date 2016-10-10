package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.view.CreateProjectCallout;
   import flash.utils.setTimeout;
   import com.hurlant.math.BigInteger;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.binding.BindingManager;
   
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
