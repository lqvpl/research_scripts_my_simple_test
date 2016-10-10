package com.enfluid.ltp.util
{
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   import mx.binding.BindingManager;
   import mx.rpc.http.HTTPService;
   import mx.rpc.Responder;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import mx.rpc.IResponder;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import flash.utils.setTimeout;
   import spark.components.Label;
   
   public final class ServiceFacade
   {
       
      
      public var url:String;
      
      private var proxyService:com.enfluid.ltp.util.ProxyHTTPService;
      
      private var service:HTTPService;
      
      private var responder:Responder;
      
      private var proxy:ProxyVO;
      
      public function ServiceFacade(param1:ProxyVO)
      {
         super();
         this.proxy = param1;
      }
      
      public final function send(param1:IResponder = null, param2:int = 0) : void
      {
         this.responder = param1 as Responder;
         var _loc3_:Number = new Date().time - (this.proxy.lastUsed || §§pop());
         if(param2 > _loc3_)
         {
            setTimeout(this.send,param2 - _loc3_,param1);
            return;
         }
         this.proxy.lastUsed = new Date().time;
         if(this.proxy.isUsersIP)
         {
            this.service = new HTTPService();
            this.service.url = this.url;
            this.service.method = "GET";
            this.service.resultFormat = "text";
            this.service.send().addResponder(param1);
            return;
         }
         this.proxyService = new com.enfluid.ltp.util.ProxyHTTPService();
         this.proxyService.url = this.url;
         this.proxyService.send(param1);
      }
      
      public final function fetchCaptchaImage() : void
      {
         this.proxyService.fetchCaptchaImage();
      }
   }
}
