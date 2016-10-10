package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.settings.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import com.enfluid.ltp.util.FileSystemOperations;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.util.BlowFishUtil;
   import com.enfluid.ltp.util.Logger;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass9;
   import mx.binding.BindingManager;
   
   use namespace mx_internal;
   
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
