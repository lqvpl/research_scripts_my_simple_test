package com.enfluid.ltp.util
{
   import com.enfluid.ltp.model.DataModel;
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.currentKeywords;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import flash.events.Event;
   import flash.filesystem.FileMode;
   import mx.controls.Alert;
   import mx.graphics.RadialGradient;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import system.data.collections.formatter;
   
   public final class FileSystemOperations
   {
      
      private static var _instance:com.enfluid.ltp.util.FileSystemOperations;
      
      private static var model:DataModel = DataModel.instance;
       
      
      private var _overWrite:Boolean = false;
      
      private var csvData:String;
      
      private var file:File;
      
      private var fileText:String;
      
      private var fileStream:FileStream;
      
      private var referenceXML:XML;
      
      public function FileSystemOperations()
      {
         super();
      }
      
      public static function get instance() : com.enfluid.ltp.util.FileSystemOperations
      {
         if(_instance == null)
         {
            _instance = new com.enfluid.ltp.util.FileSystemOperations();
         }
         return _instance;
      }
      
      public final function read(param1:String, param2:File) : String
      {
         var _loc3_:String = null;
         this.file = param2.resolvePath(param1);
         if(this.file)
         {
            this.fileStream = new FileStream();
            this.fileStream.open(this.file,FileMode.READ);
            _loc3_ = this.fileStream.readUTFBytes(this.fileStream.bytesAvailable);
            this.fileStream.close();
         }
         return _loc3_;
      }
      
      public final function readXML(param1:String, param2:File) : XML
      {
         var _loc3_:XML = null;
         this.file = param2.resolvePath(param1);
         if(this.file)
         {
            this.fileStream = new FileStream();
            this.fileStream.open(this.file,FileMode.READ);
            _loc3_ = XML(this.fileStream.readUTFBytes(this.fileStream.bytesAvailable));
            this.fileStream.close();
         }
         return _loc3_;
      }
      
      public final function write(param1:String, param2:File, param3:Boolean = false) : void
      {
         var text:String = param1;
         var file:File = param2;
         var includeByteOrderMark:Boolean = param3;
         try
         {
            this.fileStream = new FileStream();
            this.fileStream.open(file,FileMode.WRITE);
            if(includeByteOrderMark)
            {
               §§push(this.fileStream);
               §§push(239);
               if(_loc7_)
               {
                  §§push((§§pop() - 1 + 39 + 1) * 117 + 44 + 1 + 1);
               }
               §§pop().writeByte(§§pop());
               §§push(this.fileStream);
               §§push(187);
               if(_loc6_)
               {
                  §§push(((§§pop() * 52 + 115 + 1) * 58 + 1 + 1) * 61);
               }
               §§pop().writeByte(§§pop());
               §§push(this.fileStream);
               §§push(191);
               if(_loc7_)
               {
                  §§push((§§pop() + 58 + 1 + 1 + 16) * 67 - 1);
               }
               §§pop().writeByte(§§pop());
            }
            this.fileStream.writeUTFBytes(text);
            this.fileStream.close();
            return;
         }
         catch(error:Error)
         {
            Alert.okLabel = "OK";
            §§push(Alert);
            §§push(130);
            if(_loc7_)
            {
               §§push((§§pop() * 43 - 1 - 78) * 83);
            }
            §§pop().buttonWidth = §§pop();
            §§push(Alert);
            §§push(30);
            if(_loc6_)
            {
               §§push(--§§pop() + 107);
            }
            §§pop().buttonHeight = §§pop();
            Alert.show("Make sure file is not currenly open or write protected","Saving Failed");
            return;
         }
      }
      
      public final function writeFileInUserSelectedLocation(param1:String, param2:String, param3:Boolean = false) : void
      {
         var _loc4_:File = null;
         this.fileText = param1;
         try
         {
            if(param3)
            {
               _loc4_ = new File(model.preferences.lastSelectedExportDirectory);
            }
         }
         catch(error:Error)
         {
         }
         if(!_loc4_ || !_loc4_.exists)
         {
            _loc4_ = File.desktopDirectory;
         }
         _loc4_ = _loc4_.resolvePath(param2);
         _loc4_.addEventListener(Event.SELECT,this.onSelectLocation);
         _loc4_.browseForSave("Please select a location");
      }
      
      private final function onSelectLocation(param1:Event) : void
      {
         var _loc2_:File = param1.target as File;
         try
         {
            if(model.preferences.lastSelectedExportDirectory != _loc2_.parent.nativePath)
            {
               model.preferences.lastSelectedExportDirectory = _loc2_.parent.nativePath;
               new SavePreferencesCommand().execute();
            }
         }
         catch(error:Error)
         {
         }
         this.write(this.fileText,_loc2_,true);
      }
   }
}
