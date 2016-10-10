package com.dk.license
{
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import spark.effects.AddAction;
   import flash.filesystem.File;
   import mx.graphics.SolidColor;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.FindKeywordsButtonSkin;
   import flash.utils.setTimeout;
   import spark.primitives.Rect;
   import flash.net.SharedObject;
   import com.enfluid.ltp.model.constants.Values;
   import hr.binaria.asx3m.mapper.IMapper;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.events.FlexEvent;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SetDefaultConfigurationCommand;
   import flash.filesystem.FileStream;
   import flash.utils.ByteArray;
   import flash.filesystem.FileMode;
   import com.hurlant.util.Memory;
   
   public final class LicenseUtil
   {
      
      public static const DELIMITER:String = "##PR8GNFIZ72##";
      
      private static var instance:com.dk.license.LicenseUtil;
      
      private static const ENCRYPTION_KEY:String = "9DMEU3332JD";
      
      private static const USER:String = "USER";
      
      private static const TEMP:String = "TEMP";
      
      private static const APP_STORAGE:String = "APP_STORAGE";
      
      private static const SHARED_OBJECT:String = "SHARED_OBJECT";
      
      private static const USER_DIR_NAME:String = File.userDirectory.name;
       
      
      private var _guid:String;
      
      private var _licenceKey:String;
      
      private var _regString:String;
      
      private var fileUserDir:File;
      
      private var fileTempDir:File;
      
      private var fileAppStorageDir:File;
      
      private var sharedObjectID:String;
      
      public function LicenseUtil(param1:SingletonBlocker)
      {
         super();
         if(!LicenceAppID.APP_ID)
         {
            throw new Error("You must set LicenseAppID.APP_ID before initing LicenseUtil.");
         }
         this.initFiles();
      }
      
      public static function getInstance() : com.dk.license.LicenseUtil
      {
         if(instance == null)
         {
            instance = new com.dk.license.LicenseUtil(new SingletonBlocker());
         }
         return instance;
      }
      
      public function get guid() : String
      {
         if(!this._regString)
         {
            this.loadRegString();
         }
         return this._guid;
      }
      
      public function get appCode() : String
      {
         if(this.licenceKey)
         {
            return this.licenceKey.substr(0,this.licenceKey.indexOf("-")).toLocaleLowerCase();
         }
         throw new Error("License key is not set");
      }
      
      public function get licenceKey() : String
      {
         if(!this._regString)
         {
            this.loadRegString();
         }
         if(this._licenceKey == "null")
         {
            return null;
         }
         return this._licenceKey;
      }
      
      public function set licenceKey(param1:String) : void
      {
         if(param1 == "null")
         {
            param1 = null;
         }
         if(!this._regString)
         {
            this.loadRegString();
         }
         this._licenceKey = param1;
         this.saveRegString();
      }
      
      private final function createRegString() : void
      {
         this._regString = this._guid + DELIMITER + this._licenceKey;
      }
      
      private final function loadRegString() : void
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc1_:Array = this.getAllRegStrings();
         var _loc2_:Object = {};
         var _loc3_:Array = [];
         §§push(0);
         if(_loc9_)
         {
            §§push(--(§§pop() - 1 + 1 + 1) - 1 - 37);
         }
         for each(_loc4_ in _loc1_)
         {
            if(_loc4_ != null)
            {
               if(!_loc2_[_loc4_])
               {
                  §§push(_loc2_);
                  §§push(_loc4_);
                  §§push(1);
                  if(_loc8_)
                  {
                     §§push(--§§pop() + 98);
                  }
                  §§pop()[§§pop()] = §§pop();
                  _loc3_.push(_loc4_);
               }
               else
               {
                  §§push(_loc2_);
                  §§push(_loc4_);
                  §§push(int(_loc2_[_loc4_]));
                  §§push(1);
                  if(_loc8_)
                  {
                     §§push(((§§pop() - 25 - 1 - 1 - 10) * 2 - 70) * 42);
                  }
                  §§pop()[§§pop()] = §§pop() + §§pop();
               }
            }
         }
         §§push(_loc3_.length);
         §§push(1);
         if(_loc8_)
         {
            §§push(§§pop() - 1 - 1 + 106);
         }
         if(§§pop() > §§pop())
         {
            §§push(0);
            if(_loc9_)
            {
               §§push(-((§§pop() - 1 + 49) * 100) + 104 - 111 - 59);
            }
            for each(_loc4_ in _loc3_)
            {
               if(!_loc5_)
               {
                  _loc5_ = _loc4_;
               }
               else if(_loc2_[_loc4_] > _loc2_[_loc5_])
               {
                  _loc5_ = _loc4_;
               }
            }
            this._regString = _loc5_;
            this.parseRegString();
            this.saveRegString();
         }
         else
         {
            §§push(this);
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push((-(§§pop() + 117) - 71 - 1 + 85) * 107 - 1);
            }
            §§pop()._regString = §§pop()[§§pop()];
            this.parseRegString();
         }
         if(!this._guid || this._guid == "null")
         {
            this._guid = this.createGUID();
            this.saveRegString();
         }
      }
      
      private final function parseRegString() : void
      {
         var _loc1_:Array = null;
         if(this._regString)
         {
            _loc1_ = this._regString.split(DELIMITER);
            §§push(this);
            §§push(_loc1_);
            §§push(0);
            if(_loc2_)
            {
               §§push((-§§pop() * 50 + 32 + 101) * 93);
            }
            §§pop()._guid = §§pop()[§§pop()];
            §§push(_loc1_);
            §§push(1);
            if(_loc3_)
            {
               §§push(-(-§§pop() - 1));
            }
            if(§§pop()[§§pop()])
            {
               §§push(this);
               §§push(_loc1_);
               §§push(1);
               if(_loc2_)
               {
                  §§push(-(§§pop() - 36 - 113 + 1) * 3 - 44 + 1);
               }
               §§pop().licenceKey = §§pop()[§§pop()];
            }
         }
      }
      
      private final function createGUID() : String
      {
         return UID.createUID();
      }
      
      private final function saveRegString() : void
      {
         var _loc1_:SharedObject = null;
         this.createRegString();
         try
         {
            this.writeFile(this.fileUserDir,this.pack(this._regString,USER));
         }
         catch(err:Error)
         {
         }
         try
         {
            this.writeFile(this.fileTempDir,this.pack(this._regString,TEMP));
         }
         catch(err:Error)
         {
         }
         try
         {
            this.writeFile(this.fileAppStorageDir,this.pack(this._regString,APP_STORAGE));
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc1_ = SharedObject.getLocal(this.sharedObjectID);
            _loc1_.data[this.sharedObjectID] = this.pack(this._regString,SHARED_OBJECT);
            return;
         }
         catch(err:Error)
         {
            return;
         }
      }
      
      private final function getAllRegStrings() : Array
      {
         var _loc2_:SharedObject = null;
         var _loc1_:Array = [];
         try
         {
            _loc1_.push(this.unPack(this.readFile(this.fileUserDir),USER));
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc1_.push(this.unPack(this.readFile(this.fileTempDir),TEMP));
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc1_.push(this.unPack(this.readFile(this.fileAppStorageDir),APP_STORAGE));
         }
         catch(err:Error)
         {
         }
         try
         {
            _loc2_ = SharedObject.getLocal(this.sharedObjectID);
            _loc1_.push(this.unPack(_loc2_.data[this.sharedObjectID],SHARED_OBJECT));
         }
         catch(err:Error)
         {
         }
         return _loc1_;
      }
      
      private final function initFiles() : void
      {
         this.fileUserDir = File.userDirectory.resolvePath(this.calcFileName(USER));
         this.fileAppStorageDir = File.applicationStorageDirectory.resolvePath(this.calcFileName(APP_STORAGE));
         var _loc1_:File = File.createTempFile();
         this.fileTempDir = _loc1_.parent.resolvePath(this.calcFileName(TEMP));
         _loc1_.deleteFileAsync();
         _loc1_ = null;
         this.sharedObjectID = this.calcFileName(SHARED_OBJECT);
      }
      
      private final function getLocationKey(param1:String) : String
      {
         return ENCRYPTION_KEY + USER_DIR_NAME + param1;
      }
      
      private final function calcFileName(param1:String) : String
      {
         var _loc2_:String = BlowFishUtil.encrypt(LicenceAppID.APP_ID,this.getLocationKey(param1));
         _loc2_ = "dk" + this.removeNonAlphaNumericChars(_loc2_);
         return _loc2_;
      }
      
      private final function removeNonAlphaNumericChars(param1:String) : String
      {
         var _loc2_:* = "";
         §§push(0);
         if(_loc5_)
         {
            §§push((-(§§pop() - 60) + 24 - 1) * 53);
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < param1.length)
         {
            if(!this.isValidChar(param1.charAt(_loc3_)))
            {
               _loc2_ = _loc2_ + "";
            }
            else
            {
               _loc2_ = _loc2_ + param1.charAt(_loc3_);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private final function isValidChar(param1:String) : Boolean
      {
         if(param1 == ".")
         {
            return false;
         }
         if(param1 == " " || "A" <= param1 && param1 <= "Z")
         {
            return true;
         }
         if("a" <= param1 && param1 <= "z")
         {
            return true;
         }
         if(int(param1))
         {
            return true;
         }
         if("-")
         {
            return true;
         }
         return false;
      }
      
      private final function readFile(param1:File) : String
      {
         var _loc3_:FileStream = null;
         var _loc4_:String = null;
         var _loc2_:ByteArray = new ByteArray();
         if(param1.exists)
         {
            _loc3_ = new FileStream();
            _loc3_.open(param1,FileMode.READ);
            _loc3_.readBytes(_loc2_);
            _loc3_.close();
            _loc4_ = _loc2_.readUTFBytes(_loc2_.length);
            return _loc4_;
         }
         return "";
      }
      
      private final function writeFile(param1:File, param2:String) : void
      {
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTFBytes(param2);
         var _loc4_:FileStream = new FileStream();
         _loc4_.open(param1,FileMode.WRITE);
         _loc4_.writeBytes(_loc3_);
         _loc4_.close();
      }
      
      private final function pack(param1:String, param2:String) : String
      {
         return BlowFishUtil.encrypt(param1,this.getLocationKey(param2));
      }
      
      private final function unPack(param1:String, param2:String) : String
      {
         return BlowFishUtil.decrypt(param1,this.getLocationKey(param2));
      }
   }
}

class SingletonBlocker
{
    
   
   function SingletonBlocker()
   {
      super();
   }
}
