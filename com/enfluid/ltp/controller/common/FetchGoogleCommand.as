package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.util.Scraper;
   import com.enfluid.ltp.view.popups.CaptchaPopup;
   import mx.rpc.http.HTTPService;
   import spark.components.CheckBox;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.constants.Times;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.hurlant.math.BigInteger;
   import com.photon.controller.PhotonCommandCompletionEvent;
   import com.photon.controller.PhotonCommand;
   import com.hurlant.math.bi_internal;
   import mx.graphics.SolidColor;
   import mx.core.IFlexDisplayObject;
   import com.enfluid.ltp.view.popups.SettingsCallout;
   import mx.managers.PopUpManager;
   import flash.display.DisplayObject;
   import mx.core.FlexGlobals;
   
   use namespace bi_internal;
   
   public class FetchGoogleCommand extends Command implements IPhotonCommand, IResponder
   {
      
      private static var lastNCRReqeustTime:Number;
       
      
      protected var scraper:Scraper;
      
      protected var ownComputerLastUsedAsProxyTimestamp:Number;
      
      private const NUM_RETRIES_ALLOWED:int = 2;
      
      private var captchaPopup:CaptchaPopup;
      
      private var numRetries:int = 0;
      
      private var service:HTTPService;
      
      public function FetchGoogleCommand()
      {
         this.scraper = new Scraper();
         this.service = new HTTPService();
         super();
      }
      
      public function execute() : void
      {
         if(!lastNCRReqeustTime || lastNCRReqeustTime + Times.ONE_HOUR < new Date().time)
         {
            this.makeNCRRequest();
            §§push();
            §§push(this.execute);
            §§push(1000);
            if(_loc1_)
            {
               §§push((§§pop() + 1) * 52 - 71);
            }
            §§pop().setTimeout(§§pop(),§§pop());
            return;
         }
         this.service.url = this.calcUrl();
         Logger.log("Fetching Google Url: " + this.service.url);
         this.service.method = "GET";
         this.service.resultFormat = "text";
         this.service.send().addResponder(this);
      }
      
      public final function fault(param1:Object) : void
      {
         var _loc2_:String = null;
         try
         {
            _loc2_ = param1.fault.rootCause.target.data;
            §§push(_loc2_.indexOf("id=\"captcha\""));
            §§push(0);
            if(_loc5_)
            {
               §§push(-((§§pop() - 1 - 1) * 88 - 1 - 1 + 1));
            }
            if(§§pop() >= §§pop())
            {
               this.scraper.setHtmlContent(_loc2_,this.handleGoogleCaptcha);
            }
            return;
         }
         catch(err:Error)
         {
            return;
         }
      }
      
      public final function onEnterCaptcha(param1:Event) : void
      {
         var _loc2_:String = this.captchaPopup.enteredCaptcha;
         this.captchaPopup.removeEventListener(CaptchaPopup.CAPTCHA_ENTERED,this.onEnterCaptcha);
         this.captchaPopup = null;
         §§push(this.scraper.getElementsByName("continue"));
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() - 1 - 1) - 4 - 1 - 85 + 1);
         }
         var _loc3_:String = §§pop()[§§pop()].getAttribute("value");
         §§push(this.scraper.getElementsByName("id"));
         §§push(0);
         if(_loc6_)
         {
            §§push(-§§pop() - 1 + 0 + 1 - 48 + 1);
         }
         var _loc4_:String = §§pop()[§§pop()].getAttribute("value");
         §§push(this.scraper.getElementsByName("submit"));
         §§push(0);
         if(_loc7_)
         {
            §§push(-(((§§pop() + 1 + 106) * 113 * 69 - 1) * 18));
         }
         var _loc5_:String = §§pop()[§§pop()].getAttribute("value");
         this.service.url = this.calcCaptchaUrl() + "/sorry/Captcha?continue=" + _loc3_ + "&id=" + _loc4_ + "&captcha=" + _loc2_ + "&submit=" + _loc5_;
         this.service.send().addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         §§push(param1.result.indexOf("Redirecting you to http://"));
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 84 * 15 - 1 + 21) * 90);
         }
         if(§§pop() >= §§pop())
         {
            this.execute();
            return;
         }
         this.scraper.setHtmlContent(param1.result,this.parseResult);
      }
      
      protected function calcUrl() : String
      {
         return null;
      }
      
      protected function calcCaptchaUrl() : String
      {
         return "http://www.google.com";
      }
      
      protected function captchaImageUrl() : String
      {
         return "http://sorry.google.com";
      }
      
      protected function parseResult() : void
      {
      }
      
      private final function makeNCRRequest() : void
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.url = "https://www.google.com/ncr";
         _loc1_.send();
         lastNCRReqeustTime = new Date().time;
      }
      
      private final function handleGoogleCaptcha() : void
      {
         §§push(this.scraper.getElementsByTagName("img"));
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 31 - 1 - 1) * 62 + 13 + 1 + 1);
         }
         var _loc1_:String = §§pop()[§§pop()].getAttribute("src");
         viewModel.captchaImageUrl = this.captchaImageUrl() + _loc1_;
         this.captchaPopup = CaptchaPopup(PopUpManager.createPopUp(DisplayObject(FlexGlobals.topLevelApplication),CaptchaPopup,true));
         PopUpManager.centerPopUp(this.captchaPopup);
         §§push(this.captchaPopup);
         §§push(CaptchaPopup.CAPTCHA_ENTERED);
         §§push(this.onEnterCaptcha);
         §§push(false);
         §§push(0);
         if(_loc2_)
         {
            §§push(---(-(§§pop() + 1) * 7));
         }
         §§pop().addEventListener(§§pop(),§§pop(),§§pop(),§§pop(),true);
         PopUpManager.centerPopUp(this.captchaPopup);
      }
   }
}
