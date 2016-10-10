package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.MajesticUtils;
   import mx.rpc.http.HTTPService;
   import flash.filesystem.File;
   import mx.controls.Alert;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.FileSystemOperations;
   import com.enfluid.ltp.util.BlowFishUtil;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import mx.binding.BindingManager;
   import spark.primitives.RectangularDropShadow;
   
   public final class LoadRegistrationStatusCommand extends Command implements IPhotonCommand
   {
       
      
      public function LoadRegistrationStatusCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var encrypted:String = null;
         var decrypted:String = null;
         var xml:XML = null;
         ViewModel.instance.startupText = "Checking Registration...";
         var file:File = Util.getRegistrationStatusFolder().resolvePath(Constants.REG_FILE_NAME);
         if(!file.exists)
         {
            model.isFirstTimeUser = true;
         }
         try
         {
            encrypted = FileSystemOperations.instance.read(Constants.REG_FILE_NAME,Util.getRegistrationStatusFolder());
            decrypted = BlowFishUtil.decrypt(encrypted,Util.getUserKey());
            xml = new XML(decrypted);
            model.isSharifyRegistered = xml.@isSharifyRegistered == "true";
            model.userEmail = xml.@userEmail;
            model.skipSharify = xml.@skipSharify == "true";
            model.skipCBank = xml.@skipCBank == "true";
            model.srtAccountCreated = xml.@srtAccountCreated == "true";
            model.srtLastDateChecked = xml.@srtLastDateChecked;
            model.isDK = xml.@isDK == "true";
         }
         catch(err:Error)
         {
            Logger.log(err.message);
         }
         done();
      }
      
      private final function doExecute() : void
      {
      }
   }
}
