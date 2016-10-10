package io.calq.analytics
{
   import flash.utils.Timer;
   import flash.net.URLRequest;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.annotations.Annotation;
   import system.data.Iterator;
   import flash.net.URLRequestHeader;
   import flash.net.URLLoader;
   import flash.events.Event;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.skins.target;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import spark.effects.Rotate;
   import spark.components.CheckBox;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   
   use namespace mx_internal;
   
   public final class ApiDispatcher
   {
      
      protected static const API_ROOT:String = "http://api.calq.io/";
       
      
      protected var _queue:Vector.<io.calq.analytics.AbstractAnalyticsApiCall>;
      
      protected var activeCall:io.calq.analytics.AbstractAnalyticsApiCall;
      
      protected var retryTimer:Timer;
      
      public function ApiDispatcher()
      {
         super();
         _queue = new Vector.<io.calq.analytics.AbstractAnalyticsApiCall>();
         §§push();
         §§push(60000);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1 - 113 - 1));
         }
         retryTimer = new §§pop().Timer(§§pop(),1);
         retryTimer.addEventListener("timer",onRetryTimer);
      }
      
      public final function enqueue(param1:io.calq.analytics.AbstractAnalyticsApiCall) : void
      {
         _queue.push(param1);
         dispatchNext();
      }
      
      protected final function dispatchNext() : void
      {
         if(activeCall == null && §§pop() > §§pop())
         {
            activeCall = _queue.shift();
            dispatch(activeCall);
         }
      }
      
      protected final function dispatch(param1:io.calq.analytics.AbstractAnalyticsApiCall) : void
      {
         var _loc3_:URLRequest = new URLRequest(apiRoot + param1.apiEndpoint);
         _loc3_.method = "POST";
         _loc3_.requestHeaders.push(new URLRequestHeader("Content-Type","application/json"));
         _loc3_.data = param1.payload;
         var _loc2_:URLLoader = new URLLoader();
         _loc2_.dataFormat = "text";
         _loc2_.addEventListener("complete",onApiCallComplete);
         _loc2_.addEventListener("httpResponseStatus",onHttpStatus);
         _loc2_.addEventListener("ioError",onApiCallIoError);
         _loc2_.addEventListener("securityError",onApiCallSecurityError);
         _loc2_.load(_loc3_);
      }
      
      protected final function onApiCallComplete(param1:Event) : void
      {
         var _loc2_:* = null;
         if(activeCall != null)
         {
            _loc2_ = URLLoader(param1.target);
            if(_loc2_.data != null && _loc2_.data.hasOwnProperty("error"))
            {
               trace("[CalqClient] API error occured. API call will be skipped.",_loc2_.data.error);
            }
            activeCall = null;
            dispatchNext();
         }
      }
      
      protected final function onHttpStatus(param1:HTTPStatusEvent) : void
      {
         §§push(param1.status);
         §§push(500);
         if(_loc2_)
         {
            §§push(-((§§pop() - 42 + 1) * 10) * 95 + 73);
         }
         if(§§pop() == §§pop())
         {
            onApiCallIoError(null);
         }
      }
      
      protected final function onApiCallIoError(param1:IOErrorEvent) : void
      {
         trace("[CalqClient] IO error during API call. The call will be retried.",param1);
         _queue.unshift(activeCall);
         activeCall = null;
         retryTimer.reset();
         retryTimer.start();
      }
      
      protected final function onApiCallSecurityError(param1:SecurityErrorEvent) : void
      {
         trace("[CalqClient] Security error during API call. The API call has been skipped.",param1);
         activeCall = null;
         dispatchNext();
      }
      
      protected final function onRetryTimer(param1:TimerEvent) : void
      {
         dispatchNext();
      }
      
      protected function get apiRoot() : String
      {
         return "http://api.calq.io/".charAt("http://api.calq.io/".length - 1) == "/"?"http://api.calq.io/":"http://api.calq.io//";
      }
   }
}
