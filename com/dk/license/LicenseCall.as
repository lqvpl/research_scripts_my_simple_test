package com.dk.license
{
   import mx.rpc.IResponder;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.target;
   import com.enfluid.ltp.view.components.SelfAdjustingLabel;
   import mx.binding.Binding;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.util.Util;
   import spark.components.HGroup;
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.math.bi_internal;
   import com.hurlant.util.Memory;
   
   use namespace mx_internal;
   use namespace bi_internal;
   
   public final class LicenseCall implements IResponder
   {
      
      public static const OFFLINE_OR_SERVER_DOWN:String = "offlineOrServerDown";
      
      public static const NO_LICENSE_KEY_PRESENT:String = "No License Key Present";
      
      private static const ONE_HOUR_TEN_MINUTES_IN_SECONDS:int = 4200.0;
       
      
      private var callback:Function;
      
      private var service:HTTPService;
      
      private var util:com.dk.license.LicenseUtil;
      
      private var isActivate:Boolean;
      
      private var _faultObject:Object;
      
      public function LicenseCall(param1:Function)
      {
         this.service = new HTTPService();
         this.util = com.dk.license.LicenseUtil.getInstance();
         super();
         this.callback = param1;
      }
      
      public function get faultObject() : Object
      {
         return this._faultObject;
      }
      
      public final function fetchLicense() : void
      {
         if(!this.util.licenceKey)
         {
            this.callback.apply(null,[NO_LICENSE_KEY_PRESENT]);
            return;
         }
         this.isActivate = false;
         this.makeCall();
      }
      
      public final function activate(param1:String) : void
      {
         this.isActivate = true;
         this.util.licenceKey = param1;
         this.makeCall();
      }
      
      public function result(param1:Object) : void
      {
         var result:Object = null;
         var timestamp:Number = NaN;
         var currrentTimestamp:Number = NaN;
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() + 1 - 1) * 71);
         }
         var /*UnknownSlot*/:* = §§pop();
         var encryptedJson:String = null;
         var key:String = null;
         var decryptedJson:String = null;
         var data:Object = param1;
         try
         {
            result = JSON.parse(data.result);
            timestamp = Number(result.timestamp);
            §§push(_loc2_);
            §§push(new Date().time);
            §§push(1000);
            if(_loc4_)
            {
               §§push((§§pop() + 74 - 79) * 107 * 11 + 1 - 1 - 6);
            }
            var /*UnknownSlot*/:* = Number(§§pop() / §§pop());
            var elapsedSeconds:int = currrentTimestamp - timestamp;
            if(elapsedSeconds > ONE_HOUR_TEN_MINUTES_IN_SECONDS)
            {
               return;
            }
            encryptedJson = result.data;
            key = LicenseConstants.SECRET_KEY + timestamp;
            decryptedJson = CryptoUtil.decrypt(encryptedJson,key);
            if(this.isActivate)
            {
               §§push(data.result.indexOf("Invalid"));
               §§push(0);
               if(_loc5_)
               {
                  §§push(-(§§pop() - 1) + 103 - 21);
               }
               if(§§pop() >= §§pop() || §§pop() >= §§pop() || §§pop() >= §§pop())
               {
                  this.util.licenceKey = null;
               }
            }
            this.callback.apply(null,[decryptedJson]);
            return;
         }
         catch(err:Error)
         {
            if(isActivate)
            {
               util.licenceKey = null;
            }
            callback.apply(null,[data.result]);
            return;
         }
      }
      
      public function fault(param1:Object) : void
      {
         this._faultObject = param1;
         this.callback.apply(null,[OFFLINE_OR_SERVER_DOWN]);
         trace("fault");
      }
      
      private final function makeCall() : void
      {
         this._faultObject = null;
         this.service.method = "POST";
         this.service.resultFormat = "text";
         this.service.url = LicenseConstants.SERVER + "/license";
         if(this.isActivate)
         {
            this.service.url = this.service.url + "/activate";
         }
         var _loc1_:Object = {};
         _loc1_.guid = this.util.guid;
         _loc1_.license = this.util.licenceKey;
         var _loc2_:String = JSON.stringify(_loc1_);
         §§push(Math);
         §§push(new Date().time);
         §§push(1000);
         if(_loc7_)
         {
            §§push(-(-(§§pop() * 114) + 110) - 1);
         }
         var _loc3_:Number = §§pop().round(§§pop() / §§pop());
         var _loc4_:String = LicenseConstants.SECRET_KEY + _loc3_;
         var _loc5_:String = CryptoUtil.encrypt(_loc2_,_loc4_);
         var _loc6_:Object = {};
         _loc6_.timestamp = _loc3_;
         _loc6_.data = _loc5_;
         _loc6_.code = this.util.appCode;
         this.service.send(_loc6_).addResponder(this);
      }
   }
}
