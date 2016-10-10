package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.util.FileSystemOperations;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.util.BlowFishUtil;
   import com.enfluid.ltp.util.Logger;
   import com.hurlant.crypto.hash.MAC;
   
   public final class LoadGoogleCredentialsCommand extends Command implements IPhotonCommand
   {
       
      
      public function LoadGoogleCredentialsCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var encrypted:String = null;
         var decrypted:String = null;
         var xml:XML = null;
         try
         {
            encrypted = FileSystemOperations.instance.read(Constants.GOOGLE_CREDENTIALS_FILE_NAME,Util.getRegistrationStatusFolder());
            decrypted = BlowFishUtil.decrypt(encrypted,Util.getUserKey());
            xml = new XML(decrypted);
            model.gUserName = xml.@userName;
            model.gPassword = xml.@password;
            model.autoLoginGoogle = xml.@autoLogin == "true";
         }
         catch(err:Error)
         {
            Logger.log(err.message);
         }
         done();
      }
   }
}
