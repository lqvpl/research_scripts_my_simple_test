package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.view.renderers.CalculatableValueGroup;
   import com.enfluid.ltp.util.Scraper;
   import com.enfluid.ltp.view.popups.CaptchaPopup;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.util.ServiceFacade;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.constants.Times;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.Util;
   import flash.events.Event;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.model.vo.ProxyHTTPResponseVO;
   import spark.primitives.Rect;
   import com.enfluid.ltp.util.KeywordUtil;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.view.components.KeywordsDataGridList;
   import mx.managers.PopUpManager;
   import flash.display.DisplayObject;
   import mx.core.FlexGlobals;
   import flash.utils.ByteArray;
   
   public class FetchGoogleCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      protected var scraper:Scraper;
      
      private const NUM_RETRIES_ALLOWED:int = 2;
      
      private var captchaPopup:CaptchaPopup;
      
      private var numRetries:int = 0;
      
      private var proxy:ProxyVO;
      
      private var service:ServiceFacade;
      
      private var captchaDomain:String;
      
      public function FetchGoogleCommand()
      {
         this.scraper = new Scraper();
         super();
      }
      
      protected function get httpPrefix() : String
      {
         return !!this.proxy.isUsersIP?"https://":"http://";
      }
      
      public function execute() : void
      {
         this.proxy = ProxyVO.getNext();
         this.service = new ServiceFacade(this.proxy);
         if(!this.proxy.lastNCRReqeustTime || this.proxy.lastNCRReqeustTime + Times.ONE_DAY < new Date().time)
         {
            this.makeNCRRequest();
            §§push();
            §§push(this.execute);
            §§push(2000);
            if(_loc3_)
            {
               §§push(--(§§pop() - 109));
            }
            §§pop().setTimeout(§§pop(),§§pop());
            return;
         }
         this.service.url = this.calcUrl(this.proxy.isUsersIP);
         Logger.log("Fetching Google Url: " + this.service.url);
         var _loc1_:Number = model.proxies && §§pop() > §§pop()?Number(Constants.GOOGLE_AVG_DELAY_WHEN_USING_PROXIES):Number(Number(model.preferences.googleRequestAvgDelay));
         var _loc2_:Number = Util.getDelay(_loc1_);
         this.service.send(this,_loc2_);
      }
      
      public final function onEnterCaptcha(param1:Event) : void
      {
         new SetUserEvent("UserEvent.GoogleCaptcha.Entered").execute();
         this.proxy.captchaBitmapData = null;
         this.proxy.captchaImageUrl = null;
         var _loc2_:String = this.captchaPopup.enteredCaptcha;
         this.captchaPopup.removeEventListener(CaptchaPopup.CAPTCHA_ENTERED,this.onEnterCaptcha);
         this.captchaPopup = null;
         §§push(this.scraper.getElementsByName("continue"));
         §§push(0);
         if(_loc7_)
         {
            §§push(--(§§pop() * 43) - 105 + 78 - 6);
         }
         var _loc3_:String = §§pop()[§§pop()].getAttribute("value");
         §§push(this.scraper.getElementsByName("id"));
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-(§§pop() + 16) - 62));
         }
         var _loc4_:String = §§pop()[§§pop()].getAttribute("value");
         §§push(this.scraper.getElementsByName("submit"));
         §§push(0);
         if(_loc7_)
         {
            §§push(-§§pop() + 67 - 22);
         }
         var _loc5_:String = §§pop()[§§pop()].getAttribute("value");
         this.service.url = this.calcCaptchaUrl() + "/sorry/Captcha?continue=" + _loc3_ + "&id=" + _loc4_ + "&captcha=" + _loc2_ + "&submit=" + _loc5_;
         this.service.send(this);
      }
      
      public final function result(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1 is ProxyHTTPResponseVO)
         {
            _loc2_ = ProxyHTTPResponseVO(param1).contentText;
         }
         else
         {
            _loc2_ = param1.result;
         }
         §§push(_loc2_.indexOf("Redirecting you to"));
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 41) * 82 + 1);
         }
         if(§§pop() >= §§pop())
         {
            this.execute();
            return;
         }
         _loc2_ = this.stripAllScriptTags(_loc2_);
         this.scraper.setHtmlContent(_loc2_,this.parseResult);
      }
      
      public final function fault(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         try
         {
            if(param1 is ProxyHTTPResponseVO)
            {
               _loc2_ = ProxyHTTPResponseVO(param1).contentText;
               this.captchaDomain = KeywordUtil.extractFullDomainWithPrefix(ProxyHTTPResponseVO(param1).url);
            }
            else
            {
               _loc2_ = param1.fault.content;
               this.captchaDomain = "http://ipv4.google.com";
            }
            §§push(_loc2_.indexOf("id=\"captcha\""));
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() - 1 - 1 + 1);
            }
            if(§§pop() >= §§pop())
            {
               if(!this.proxy.isUsersIP)
               {
               }
               this.proxy.lastCaptchaTime = new Date().time;
               this.scraper.setHtmlContent(_loc2_,this.handleGoogleCaptcha);
            }
            return;
         }
         catch(err:Error)
         {
         }
         Logger.log("GOOGLE FAULT:");
         Logger.log("message: " + param1.message);
         Logger.log("content: " + param1.fault.content);
      }
      
      protected function calcCaptchaUrl() : String
      {
         return "http://www.google.com";
      }
      
      protected function calcUrl(param1:Boolean) : String
      {
         return null;
      }
      
      protected function parseResult() : void
      {
      }
      
      private final function stripAllScriptTags(param1:String) : String
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() * 77 + 68) * 14 * 53 - 49) * 90);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() * 36 + 15 + 47 - 1 - 1 - 1 - 94);
         }
         var _loc5_:* = §§pop();
         var _loc2_:String = "<script ";
         var _loc3_:String = "</script>";
         while(true)
         {
            §§push(param1.indexOf(_loc2_));
            §§push(0);
            if(_loc6_)
            {
               §§push((-§§pop() - 1 - 1) * 23 - 1 + 1);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            _loc4_ = int(param1.indexOf(_loc2_));
            _loc5_ = int(param1.indexOf(_loc3_,_loc4_) + _loc3_.length);
            §§push(param1);
            §§push(0);
            if(_loc7_)
            {
               §§push(---§§pop() - 7);
            }
            param1 = §§pop().substring(§§pop(),_loc4_) + param1.substring(_loc5_);
         }
         return param1;
      }
      
      private final function makeNCRRequest() : void
      {
         var _loc1_:ServiceFacade = new ServiceFacade(this.proxy);
         _loc1_.url = this.httpPrefix + "www.google.com/ncr";
         _loc1_.send();
         this.proxy.lastNCRReqeustTime = new Date().time;
      }
      
      private final function handleGoogleCaptcha() : void
      {
         new SetUserEvent("UserEvent.GoogleCaptcha.Show").execute();
         §§push(this.scraper.getElementsByTagName("img"));
         §§push(0);
         if(_loc2_)
         {
            §§push(---(§§pop() - 1 + 74 + 8));
         }
         var _loc1_:String = §§pop()[§§pop()].getAttribute("src");
         this.proxy.captchaImageUrl = this.captchaDomain + _loc1_;
         this.captchaPopup = CaptchaPopup(PopUpManager.createPopUp(DisplayObject(FlexGlobals.topLevelApplication),CaptchaPopup,true));
         if(!this.proxy.isUsersIP)
         {
            this.service.fetchCaptchaImage();
         }
         this.captchaPopup.proxy = this.proxy;
         PopUpManager.centerPopUp(this.captchaPopup);
         this.captchaPopup.addEventListener(CaptchaPopup.CAPTCHA_ENTERED,this.onEnterCaptcha);
         PopUpManager.centerPopUp(this.captchaPopup);
      }
   }
}
