package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.util.BlowFishUtil;
   import com.enfluid.ltp.util.Util;
   import flash.filesystem.File;
   import com.enfluid.ltp.controller.filesystem.SaveStringToDiskCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   
   public final class SaveGoogleCredentialsCommand extends Command implements IPhotonCommand
   {
       
      
      public function SaveGoogleCredentialsCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:XML = <credentials/>;
         _loc1_.@userName = DataModel.instance.gUserName;
         _loc1_.@password = DataModel.instance.gPassword;
         _loc1_.@autoLogin = DataModel.instance.autoLoginGoogle;
         var _loc2_:String = BlowFishUtil.encrypt(_loc1_.toXMLString(),Util.getUserKey());
         var _loc3_:File = File.applicationStorageDirectory;
         new SaveStringToDiskCommand(_loc2_,Util.getRegistrationStatusFolder().nativePath + "/" + Constants.GOOGLE_CREDENTIALS_FILE_NAME).execute();
      }
   }
}
