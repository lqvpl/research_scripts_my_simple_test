package com.enfluid.ltp.controller.keywordresearch.domainavailability
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.hurlant.crypto.symmetric.ICipher;
   import flash.utils.ByteArray;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.IVMode;
   import com.hurlant.crypto.symmetric.SimpleIVMode;
   import com.hurlant.crypto.symmetric.AESKey;
   import com.hurlant.crypto.symmetric.BlowFishKey;
   import com.hurlant.crypto.symmetric.DESKey;
   import com.hurlant.crypto.symmetric.TripleDESKey;
   import com.hurlant.crypto.symmetric.XTeaKey;
   import com.hurlant.crypto.prng.ARC4;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.uniregistry.SetupCheckDomainsOnUniregistryCommand;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.domize.SetupCheckDomainsOnDomizeCommand;
   
   public final class SetupCheckDomainsCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var model:DataModel;
      
      private var viewModel:ViewModel;
      
      public function SetupCheckDomainsCommand()
      {
         this.model = DataModel.instance;
         this.viewModel = ViewModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         §§push(this.viewModel);
         §§push(0);
         if(_loc1_)
         {
            §§push(--(§§pop() * 0 - 90 + 79 + 22 - 1));
         }
         §§pop().domainCommandsCompleted = §§pop();
         addParallelCommands([new SetupCheckDomainsOnUniregistryCommand(),new SetupCheckDomainsOnDomizeCommand()]);
         super.execute();
      }
   }
}
