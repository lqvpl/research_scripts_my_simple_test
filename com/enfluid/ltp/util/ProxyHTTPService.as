package com.enfluid.ltp.util
{
   import flash.net.Socket;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import com.enfluid.ltp.model.vo.ProxyHTTPResponseVO;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import mx.rpc.IResponder;
   import mx.binding.Binding;
   import mx.collections.IList;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.view.settings.SettingsDebugSection;
   import com.adobe.cairngorm.observer.Observe;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.OutputProgressEvent;
   import mx.core.DeferredInstanceFromFunction;
   import spark.components.DataGroup;
   import flash.display.LoaderInfo;
   import flash.display.BitmapData;
   import com.enfluid.ltp.view.renderers.CalculatableValueGroup;
   import flash.display.Loader;
   import com.photon.controller.PhotonCommand;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import spark.effects.easing.IEaser;
   import spark.effects.easing.EaseInOutBase;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import spark.effects.RemoveAction;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.constants.HTTPHeaders;
   import spark.components.Label;
   import com.enfluid.ltp.view.CreateProjectCallout;
   import flash.utils.setTimeout;
   
   public final class ProxyHTTPService extends Socket
   {
      
      private static var currentProxyMap:Object = {};
      
      private static var currentProxyIndex:int;
       
      
      public var response:ProxyHTTPResponseVO;
      
      public var reuseProxy:Boolean = false;
      
      public var url:String;
      
      private var proxy:ProxyVO;
      
      private var responder:IResponder;
      
      private var proxyResponse:ProxyHTTPResponseVO;
      
      private var currentUrl:String;
      
      public function ProxyHTTPService(param1:ProxyVO = null)
      {
         if(!param1)
         {
            this.proxy = ProxyVO.getNext();
         }
         else
         {
            this.proxy = param1;
         }
         super();
      }
      
      public final function send(param1:IResponder = null) : void
      {
         this.responder = param1;
         this.addEventListeners();
         this.doConnect();
      }
      
      public final function fetchCaptchaImage() : void
      {
         this.url = this.proxy.captchaImageUrl;
         if(connected)
         {
            this.sendRequest();
         }
         else
         {
            this.addEventListeners();
            this.doConnect();
         }
      }
      
      public final function addEventListeners() : void
      {
         this.addEventListener(Event.CLOSE,this.onClose);
         this.addEventListener(Event.CONNECT,this.onConnect);
         this.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.addEventListener(ProgressEvent.SOCKET_DATA,this.onSocketData);
         this.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         this.addEventListener(OutputProgressEvent.OUTPUT_PROGRESS,this.onOutputProgress);
      }
      
      public final function removeEventListeners() : void
      {
         this.removeEventListener(Event.CLOSE,this.onClose);
         this.removeEventListener(Event.CONNECT,this.onConnect);
         this.removeEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         this.removeEventListener(ProgressEvent.SOCKET_DATA,this.onSocketData);
         this.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         this.removeEventListener(OutputProgressEvent.OUTPUT_PROGRESS,this.onOutputProgress);
      }
      
      private final function doConnect() : void
      {
         connect(this.proxy.host,this.proxy.port);
      }
      
      private final function onClose(param1:Event) : void
      {
         this.removeEventListeners();
      }
      
      private final function loaderComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = LoaderInfo(param1.target);
         _loc2_.removeEventListener(Event.COMPLETE,this.loaderComplete);
         var _loc3_:BitmapData = new BitmapData(_loc2_.width,_loc2_.height,false);
         _loc3_.draw(_loc2_.loader);
         this.proxy.captchaBitmapData = _loc3_;
      }
      
      private final function handleResponse() : void
      {
         var _loc1_:Loader = null;
         this.setCookies();
         §§push(this.proxyResponse.statusCode);
         §§push(200);
         if(_loc4_)
         {
            §§push(-(-§§pop() + 1) - 1);
         }
         if(§§pop() == §§pop())
         {
            §§push(this.proxy);
            §§push(0);
            if(_loc4_)
            {
               §§push(-(-(§§pop() * 59 * 99 - 14) - 4 - 1));
            }
            §§pop().lastFailureTime = §§pop();
            §§push(this.proxy);
            §§push(0);
            if(_loc4_)
            {
               §§push(-((§§pop() + 1) * 91 + 1 + 1) - 6 + 1);
            }
            §§pop().numRecentFailures = §§pop();
            if(this.proxyResponse.isImage)
            {
               _loc1_ = new Loader();
               _loc1_.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loaderComplete);
               _loc1_.loadBytes(this.proxyResponse.contentBytes);
            }
            else if(this.responder)
            {
               this.responder.result(this.proxyResponse);
            }
         }
         else
         {
            §§push(this.proxyResponse.statusCode);
            §§push(302);
            if(_loc5_)
            {
               §§push(§§pop() - 36 + 67 - 18);
            }
            if(§§pop() == §§pop())
            {
               if(!connected)
               {
                  this.doConnect();
               }
               else
               {
                  this.sendRequest();
               }
            }
            else
            {
               §§push(this.proxyResponse.statusCode);
               §§push(503);
               if(_loc5_)
               {
                  §§push(--§§pop() + 73 - 110 + 1 - 1);
               }
               if(§§pop() == §§pop())
               {
                  if(this.responder)
                  {
                     this.responder.fault(this.proxyResponse);
                  }
               }
               else
               {
                  this.proxy.lastFailureTime = new Date().time;
                  this.proxy.numRecentFailures++;
               }
            }
         }
      }
      
      private final function setCookies() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 1 + 1 - 1 + 1 + 63 + 113);
         }
         for each(_loc1_ in this.proxyResponse.cookies)
         {
            §§push(_loc1_);
            §§push(0);
            if(_loc5_)
            {
               §§push((-(§§pop() + 1 - 1) - 107 + 119 + 1) * 105);
            }
            _loc2_ = §§pop().substring(§§pop(),_loc1_.indexOf("="));
            this.proxy.cookiesMap[_loc2_] = _loc1_;
         }
      }
      
      private final function onConnect(param1:Event) : void
      {
         this.sendRequest();
      }
      
      private final function sendRequest() : void
      {
         if(this.proxyResponse && §§pop() == §§pop())
         {
            this.currentUrl = this.proxyResponse.redirectLocation;
         }
         else
         {
            this.currentUrl = this.url;
         }
         this.proxyResponse = null;
         var _loc1_:* = "";
         _loc1_ = _loc1_ + ("GET " + this.currentUrl + " HTTP/1.1\n");
         _loc1_ = _loc1_ + "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\n";
         _loc1_ = _loc1_ + "Accept-Encoding: gzip, deflate\n";
         _loc1_ = _loc1_ + "Accept-Language: en-US,en;q=0.5\n";
         _loc1_ = _loc1_ + "Connection: keep-alive\n";
         var _loc2_:String = this.proxy.cookies;
         if(_loc2_)
         {
            _loc1_ = _loc1_ + ("Cookies: " + this.proxy.cookies + "\n");
         }
         _loc1_ = _loc1_ + "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:41.0) Gecko/20100101 Firefox/41.0\n";
         _loc1_ = _loc1_ + "\n";
         this.writeUTFBytes(_loc1_);
         this.flush();
      }
      
      private final function onIOError(param1:IOErrorEvent) : void
      {
      }
      
      private final function getLastTwoChars(param1:String) : String
      {
         §§push(param1.length);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 110 - 1) * 78 * 37 * 99 * 61 + 37);
         }
         if(§§pop() > §§pop())
         {
            §§push(param1);
            §§push(param1.length);
            §§push(2);
            if(_loc2_)
            {
               §§push(-(§§pop() - 1 + 105 + 1 + 1) + 1 + 102);
            }
            return §§pop().substr(§§pop() - §§pop());
         }
         return param1;
      }
      
      private final function onSocketData(param1:ProgressEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:Boolean = false;
         var _loc2_:ByteArray = new ByteArray();
         §§push(this);
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() - 76) * 95 - 39);
         }
         §§pop().readBytes(§§pop(),§§pop(),bytesAvailable);
         if(!this.proxyResponse)
         {
            this.proxyResponse = new ProxyHTTPResponseVO();
            this.proxyResponse.url = this.currentUrl;
            §§push(_loc2_);
            §§push(1);
            if(_loc6_)
            {
               §§push(-((§§pop() - 59 + 81) * 50) + 1 - 1);
            }
            _loc3_ = §§pop().readUTFBytes(§§pop());
            _loc4_ = false;
            while(!_loc4_)
            {
               while(this.getLastTwoChars(_loc3_) != HTTPHeaders.LINE_BREAK)
               {
                  §§push(_loc3_);
                  §§push(_loc2_);
                  §§push(1);
                  if(_loc6_)
                  {
                     §§push(-(((§§pop() * 74 + 1) * 59 + 1) * 7));
                  }
                  _loc3_ = §§pop() + §§pop().readUTFBytes(§§pop());
               }
               if(_loc3_ == HTTPHeaders.LINE_BREAK)
               {
                  _loc4_ = true;
                  break;
               }
               this.proxyResponse.addHeader(_loc3_);
               _loc3_ = "";
            }
         }
         this.proxyResponse.contentBytes.writeBytes(_loc2_,_loc2_.position,_loc2_.bytesAvailable);
         if(this.proxyResponse.contentBytes.length >= this.proxyResponse.contentLength)
         {
            this.proxyResponse.parseContent();
            this.handleResponse();
         }
      }
      
      private final function onSecurityError(param1:SecurityErrorEvent) : void
      {
      }
      
      private final function onOutputProgress(param1:OutputProgressEvent) : void
      {
         §§push(param1.bytesPending);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1) - 62 + 1 - 1);
         }
         if(§§pop() == §§pop())
         {
         }
      }
   }
}
