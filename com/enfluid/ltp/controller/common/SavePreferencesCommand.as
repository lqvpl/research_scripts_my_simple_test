package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import mx.core.mx_internal;
   import com.enfluid.ltp.controller.filesystem.SaveXMLToDiskCommand;
   import hr.binaria.asx3m.Asx3mer;
   import flash.filesystem.File;
   
   use namespace mx_internal;
   
   public final class SavePreferencesCommand extends Command implements IPhotonCommand
   {
       
      
      public function SavePreferencesCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         if(model.preferences)
         {
            new SaveXMLToDiskCommand(Asx3mer.instance.toXML(model.preferences),File.applicationStorageDirectory.nativePath + "/preferences.xml").execute();
         }
         done();
      }
   }
}
