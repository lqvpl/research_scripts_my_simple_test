package com.enfluid.ltp.controller.filesystem
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.errors.IOError;
   import com.enfluid.ltp.view.components.FormattedSelfAdjustingLabel;
   import mx.binding.BindingManager;
   import flash.filesystem.FileMode;
   import mx.controls.Alert;
   
   public final class SaveStringToDiskCommand extends Command implements IPhotonCommand
   {
       
      
      private var _utfString:String;
      
      private var _fileLocation:String;
      
      public function SaveStringToDiskCommand(param1:String, param2:String)
      {
         this._utfString = param1;
         this._fileLocation = param2;
         super();
      }
      
      public function execute() : void
      {
         var file:File = new File(this._fileLocation);
         var fs:FileStream = new FileStream();
         try
         {
            fs.open(file,FileMode.WRITE);
            fs.writeUTFBytes(this._utfString);
            fs.close();
         }
         catch(ioe:IOError)
         {
            Alert.okLabel = "OK";
            §§push(Alert);
            §§push(130);
            if(_loc4_)
            {
               §§push(§§pop() * 111 + 48 + 1);
            }
            §§pop().buttonWidth = §§pop();
            §§push(Alert);
            §§push(30);
            if(_loc3_)
            {
               §§push((§§pop() + 1 - 1) * 15 * 72);
            }
            §§pop().buttonHeight = §§pop();
            Alert.show("ISSUE SAVING PREFERENCE FILE " + ioe.message);
         }
         fs = null;
         file = null;
         done();
      }
   }
}
