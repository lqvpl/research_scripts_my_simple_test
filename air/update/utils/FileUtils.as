package air.update.utils
{
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.filesystem.FileMode;
   import flash.utils.ByteArray;
   import air.update.logging.Logger;
   
   public final class FileUtils
   {
      
      private static var logger:Logger = Logger.getLogger("air.update.utils.FileUtils");
       
      
      public function FileUtils()
      {
         super();
      }
      
      public static function readUTFBytesFromFile(param1:File) : String
      {
         var _loc2_:FileStream = new FileStream();
         _loc2_.open(param1,FileMode.READ);
         var _loc3_:String = _loc2_.readUTFBytes(_loc2_.bytesAvailable);
         _loc2_.close();
         return _loc3_;
      }
      
      public static function readByteArrayFromFile(param1:File) : ByteArray
      {
         var _loc2_:FileStream = new FileStream();
         _loc2_.open(param1,FileMode.READ);
         var _loc3_:ByteArray = new ByteArray();
         _loc2_.readBytes(_loc3_,0,param1.size);
         _loc2_.close();
         return _loc3_;
      }
      
      public static function deleteFile(param1:File) : void
      {
         var file:File = param1;
         if(!file.exists)
         {
            return;
         }
         if(file.isDirectory)
         {
            return;
         }
         try
         {
            file.deleteFile();
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      public static function getStorageStateFile() : File
      {
         return File.applicationStorageDirectory.resolvePath(Constants.UPDATER_FOLDER + "/" + Constants.STATE_FILE);
      }
      
      public static function getDocumentsStateFile() : File
      {
         return new File(File.applicationStorageDirectory.nativePath + "/../../" + VersionUtils.getApplicationID() + "_" + Constants.STATE_FILE);
      }
      
      public static function getLocalDescriptorFile() : File
      {
         return File.applicationStorageDirectory.resolvePath(Constants.UPDATER_FOLDER + "/" + Constants.DESCRIPTOR_LOCAL_FILE);
      }
      
      public static function readXMLFromFile(param1:File) : XML
      {
         return new XML(readByteArrayFromFile(param1).toString());
      }
      
      public static function getFilenameFromURL(param1:String) : String
      {
         var _loc2_:int = param1.lastIndexOf("/");
         if(_loc2_ == -1)
         {
            logger.finest("Cannot get filename from \"" + param1 + "\"");
            return "";
         }
         return param1.substr(_loc2_ + 1);
      }
      
      public static function saveXMLToFile(param1:XML, param2:File) : void
      {
         var _loc3_:FileStream = new FileStream();
         _loc3_.open(param2,FileMode.WRITE);
         _loc3_.writeUTFBytes(param1.toXMLString());
         _loc3_.close();
      }
      
      public static function deleteFolder(param1:File) : void
      {
         var file:File = param1;
         if(!file.exists)
         {
            return;
         }
         if(!file.isDirectory)
         {
            return;
         }
         try
         {
            file.deleteDirectory(false);
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      public static function getLocalUpdateFile() : File
      {
         return File.applicationStorageDirectory.resolvePath(Constants.UPDATER_FOLDER + "/" + Constants.UPDATE_LOCAL_FILE);
      }
   }
}
