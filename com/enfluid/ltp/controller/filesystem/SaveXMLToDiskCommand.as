package com.enfluid.ltp.controller.filesystem
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.errors.IOError;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import flash.filesystem.FileMode;
   import mx.controls.Alert;
   
   public final class SaveXMLToDiskCommand extends Command implements IPhotonCommand
   {
       
      
      private var _xml:XML;
      
      private var _fileLocation:String;
      
      private var _fileName:String;
      
      public function SaveXMLToDiskCommand(param1:XML, param2:String)
      {
         super();
         this._xml = param1;
         this._fileLocation = param2;
      }
      
      public function execute() : void
      {
         var file:File = new File(this._fileLocation);
         var fs:FileStream = new FileStream();
         try
         {
            fs.open(file,FileMode.WRITE);
            fs.writeUTFBytes(this._xml);
            fs.close();
         }
         catch(ioe:IOError)
         {
            Alert.okLabel = "OK";
            §§push(Alert);
            §§push(130);
            if(_loc4_)
            {
               §§push(-(§§pop() * 91) + 116);
            }
            §§pop().buttonWidth = §§pop();
            §§push(Alert);
            §§push(30);
            if(_loc3_)
            {
               §§push(-(-§§pop() * 13 + 85) + 72);
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
