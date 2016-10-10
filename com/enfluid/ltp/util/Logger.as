package com.enfluid.ltp.util
{
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.system.System;
   import com.enfluid.ltp.model.DataModel;
   import mx.graphics.SolidColorStroke;
   import flash.filesystem.FileMode;
   import mx.controls.Alert;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.binding.Binding;
   import assets.TextAssets;
   import spark.components.Label;
   import mx.binding.BindingManager;
   
   public final class Logger
   {
      
      private static var file:File;
      
      private static var fileStream:FileStream;
      
      private static var myLog:String = "";
       
      
      public function Logger()
      {
         super();
      }
      
      public static function copyLogToClipBoard() : void
      {
         System.setClipboard(myLog);
      }
      
      public static function log(param1:String) : void
      {
         param1 = new Date().toLocaleString() + "  --   " + param1;
         myLog = myLog + (param1 + "\n");
         DataModel.instance.logText = myLog;
      }
      
      public static function saveToDesktop() : void
      {
         var _loc1_:String = myLog;
         file = File.desktopDirectory.resolvePath("ltp-log.txt");
         if(!fileStream)
         {
            fileStream = new FileStream();
         }
         fileStream.open(file,FileMode.WRITE);
         _loc1_ = _loc1_.replace(/\n/g,File.lineEnding);
         fileStream.writeUTFBytes(_loc1_);
         fileStream.close();
         Alert.okLabel = "OK";
         §§push(Alert);
         §§push(130);
         if(_loc2_)
         {
            §§push((-((§§pop() + 96) * 44) + 25) * 68 + 65);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc2_)
         {
            §§push(--(§§pop() + 36 - 17) + 66 - 27 - 1);
         }
         §§pop().buttonHeight = §§pop();
         Alert.show("The log as been saved to your desktop in a file named ltp-log.txt");
      }
      
      public static function getLog() : String
      {
         return myLog;
      }
   }
}
