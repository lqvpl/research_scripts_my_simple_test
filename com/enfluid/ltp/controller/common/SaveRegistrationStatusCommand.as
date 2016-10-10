package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.util.BlowFishUtil;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.controller.filesystem.SaveStringToDiskCommand;
   import com.enfluid.ltp.model.constants.Constants;
   
   public final class SaveRegistrationStatusCommand extends Command implements IPhotonCommand
   {
       
      
      public function SaveRegistrationStatusCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:XML = <status/>;
         _loc1_.@isSharifyRegistered = model.isSharifyRegistered;
         _loc1_.@isPlatinum = model.isPlatinum;
         _loc1_.@userEmail = model.userEmail;
         _loc1_.@skipSharify = model.skipSharify;
         _loc1_.@skipCBank = model.skipCBank;
         _loc1_.@srtAccountCreated = model.srtAccountCreated;
         _loc1_.@srtLastDateChecked = model.srtLastDateChecked;
         _loc1_.@isDK = model.isDK;
         var _loc2_:String = BlowFishUtil.encrypt(_loc1_.toXMLString(),Util.getUserKey());
         new SaveStringToDiskCommand(_loc2_,Util.getRegistrationStatusFolder().nativePath + "/" + Constants.REG_FILE_NAME).execute();
      }
   }
}
