package io.calq
{
   import com.enfluid.ltp.view.components.Link;
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   import io.calq.util.GUID;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import mx.binding.Binding;
   import flash.net.SharedObject;
   import io.calq.analytics.ApiDispatcher;
   import com.enfluid.ltp.model.vo.SRTRequestDataVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.controller.services.Services;
   import io.calq.util.Util;
   import io.calq.analytics.ActionApiCall;
   import flash.events.Event;
   import flash.net.URLLoader;
   import mx.states.State;
   import mx.states.SetProperty;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import io.calq.analytics.TransferApiCall;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.amazonkc.GetAmazonKCCommand;
   import io.calq.analytics.ProfileApiCall;
   import flash.utils.ByteArray;
   import flash.system.Capabilities;
   import io.calq.util.Device;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   
   use namespace mx_internal;
   
   public final class CalqClient
   {
      
      private static var singleton:io.calq.CalqClient;
       
      
      protected var _actor:String;
      
      protected var _isAnon:Boolean;
      
      protected var _hasTracked:Boolean;
      
      protected var _globalProperties:Object;
      
      protected var _writeKey:String;
      
      protected var _storage:SharedObject;
      
      protected var _dispatcher:ApiDispatcher;
      
      public function CalqClient(param1:String, param2:Object = null)
      {
         super();
         if(param1 == null || §§pop() < §§pop())
         {
            throw new Error("A valid writeKey must be speficied when creating CalqClient instances.");
         }
         _writeKey = param1;
         _actor = io.calq.CalqClient.generateAnonymousId();
         _isAnon = true;
         _hasTracked = false;
         _globalProperties = {};
         _storage = openStorage(_writeKey);
         _dispatcher = new ApiDispatcher();
         if(param2 == null || param2.ignoreState !== true)
         {
            loadState();
         }
         populateDeviceProperties();
         if(io.calq.CalqClient.singleton == null)
         {
            io.calq.CalqClient.singleton = this;
         }
         else
         {
            trace("[CalqClient] Warning: Mutliple CalqClient instances have been created.");
         }
      }
      
      public static function getInstance() : io.calq.CalqClient
      {
         if(io.calq.CalqClient.singleton == null)
         {
            throw new Error("Cant use getInstance() before a CalqClient has been created");
         }
         return io.calq.CalqClient.singleton;
      }
      
      private static function generateAnonymousId() : String
      {
         return new GUID().toString();
      }
      
      public final function loadState() : void
      {
         if(_storage != null)
         {
            if(_storage.data.actor != null)
            {
               _actor = _storage.data.actor || _actor;
               _isAnon = _storage.data.isAnon || _isAnon;
               _hasTracked = _storage.data.hasTracked || _hasTracked;
               _globalProperties = _storage.data.globalProperties || _globalProperties;
            }
         }
      }
      
      protected final function saveState() : void
      {
         if(_storage != null)
         {
            _storage.data.actor = _actor;
            _storage.data.isAnon = _isAnon;
            _storage.data.hasTracked = _hasTracked;
            _storage.data.globalProperties = _globalProperties;
            _storage.flush();
         }
      }
      
      private final function openStorage(param1:String) : SharedObject
      {
         var _loc2_:SharedObject = null;
         try
         {
            _loc2_ = SharedObject.getLocal("calq/" + param1,"/");
         }
         catch(e:Error)
         {
            trace("[CalqClient] Unable to open local storage. State will not persist!");
            var _loc4_:* = null;
            return _loc4_;
         }
         return _loc2_;
      }
      
      public final function track(param1:String, param2:Object = null) : void
      {
         if(param1 == null || §§pop() == §§pop())
         {
            trace("[CalqClient] An empty action was given to track(...)");
            return;
         }
         if(param2 == null)
         {
            param2 = {};
         }
         var _loc3_:Object = Util.extend({},_globalProperties,param2);
         _dispatcher.enqueue(new ActionApiCall(_actor,param1,param2,_writeKey));
         if(!_hasTracked)
         {
            _hasTracked = true;
            saveState();
         }
      }
      
      public final function trackSale(param1:String, param2:Object, param3:String, param4:Number) : void
      {
         if(param3 == null || §§pop() != §§pop())
         {
            trace("[CalqClient] When calling trackSale the \'currency\' parameter must be a 3 letter currency code (fictional or otherwise).");
            return;
         }
         var _loc5_:Object = Util.extend({},param2);
         _loc5_["$sale_currency"] = param3;
         _loc5_["$sale_value"] = param4;
         track(param1,param2);
      }
      
      public final function setGlobalProperty(param1:String, param2:*) : void
      {
         if(param1 == null || §§pop() == §§pop())
         {
            trace("[CalqClient] \'name\' parameter can not be null or empty when calling setGlobalProperty.");
            return;
         }
         if(param2 == null)
         {
            delete _globalProperties[param1];
         }
         else
         {
            _globalProperties[param1] = param2;
         }
         saveState();
      }
      
      public final function identify(param1:String) : void
      {
         var _loc2_:* = null;
         if(param1 != _actor)
         {
            if(!_isAnon)
            {
               trace("[CalqClient] identify(...) has already been called for this client.");
               return;
            }
            _loc2_ = _actor;
            _actor = param1;
            if(_hasTracked)
            {
               _dispatcher.enqueue(new TransferApiCall(_loc2_,_actor,_writeKey));
            }
            _isAnon = false;
            _hasTracked = false;
            saveState();
         }
      }
      
      public final function profile(param1:Object) : void
      {
         if(param1 == null)
         {
            trace("[CalqClient] You must pass some properties when calling profile(...)");
            return;
         }
         if(_isAnon)
         {
            trace("A client must be identified (call identify) before calling profile.");
            return;
         }
         _dispatcher.enqueue(new ProfileApiCall(_actor,param1,_writeKey));
      }
      
      public final function clear() : void
      {
         _actor = io.calq.CalqClient.generateAnonymousId();
         _hasTracked = false;
         _isAnon = true;
         _globalProperties = {};
         saveState();
      }
      
      protected final function populateDeviceProperties() : void
      {
         setGlobalProperty("$device_resolution",Capabilities.screenResolutionX.toString() + "x" + Capabilities.screenResolutionY.toString());
         setGlobalProperty("$device_os",Device.osShort);
         setGlobalProperty("$device_mobile",Device.isAndroid || Device.isIOS);
         setGlobalProperty("$device_agent",Capabilities.os + ", " + Capabilities.version);
      }
      
      public function get actor() : String
      {
         return _actor;
      }
   }
}
