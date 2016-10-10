package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.model.constants.Values;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import flash.display.BitmapData;
   import com.enfluid.ltp.model.constants.Times;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.ranktracker.SuspendSRTAccountCommand;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   
   public dynamic class ProxyVO extends ActiveRecord
   {
      
      private static var _1881423100proxyIndex:int = §§pop();
      
      public static const USE_USERS_IP:String = "useUsersIP";
      
      private static const DAY_IN_MILLIS:Number = 8.64E7;
      
      private static var initialized:Boolean = false;
      
      private static var OWN_IP_PROXY:com.enfluid.ltp.model.vo.ProxyVO = new com.enfluid.ltp.model.vo.ProxyVO(USE_USERS_IP);
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
      
      {
         §§push();
         §§push(0);
         if(_loc1_)
         {
            §§push(-(§§pop() - 8 + 1));
         }
      }
      
      private var _1579045811cookiesMap:Object;
      
      private var _1226320203lastNCRReqeustTime:Number;
      
      private var _3208616host:String;
      
      private var _3446913port:Number;
      
      private var _1615399306requiresAuth:Boolean;
      
      private var _672292194authUsername:String;
      
      private var _810407011authPassword:String;
      
      private var _2139949878numRecentFailures:int = 0;
      
      private var _1459374221lastUsed:Number;
      
      private var _35987711lastFailureTime:Number;
      
      private var _1029949455lastCaptchaTime:Number;
      
      private var _74961234captchaImageUrl:String;
      
      private var _684929939captchaBitmapData:BitmapData;
      
      public function ProxyVO(param1:String = null)
      {
         this._1579045811cookiesMap = {};
         super();
         this.host = param1;
      }
      
      public static function getNext() : com.enfluid.ltp.model.vo.ProxyVO
      {
         var _loc1_:com.enfluid.ltp.model.vo.ProxyVO = null;
         return OWN_IP_PROXY;
      }
      
      private static function incrementProxyIndex() : void
      {
         proxyIndex = _loc2_;
         if(proxyIndex >= DataModel.instance.proxies.length)
         {
            §§push();
            §§push(0);
            if(_loc3_)
            {
               §§push((-§§pop() * 41 + 85) * 67 + 49);
            }
            §§pop().proxyIndex = §§pop();
         }
      }
      
      [Bindable(event="propertyChange")]
      public static function get proxyIndex() : int
      {
         return com.enfluid.ltp.model.vo.ProxyVO._1881423100proxyIndex;
      }
      
      public static function set proxyIndex(param1:int) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = com.enfluid.ltp.model.vo.ProxyVO._1881423100proxyIndex;
         if(_loc2_ !== param1)
         {
            com.enfluid.ltp.model.vo.ProxyVO._1881423100proxyIndex = param1;
            _loc3_ = com.enfluid.ltp.model.vo.ProxyVO.staticEventDispatcher;
            if(_loc3_ !== null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(com.enfluid.ltp.model.vo.ProxyVO,"proxyIndex",_loc2_,param1));
            }
         }
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      public function get isUsersIP() : Boolean
      {
         return this.host == USE_USERS_IP;
      }
      
      public function get isGettingCaptchas() : Boolean
      {
         return new Date().time - this.lastCaptchaTime < Times.TWO_HOURS;
      }
      
      public function get isFailing() : Boolean
      {
         return new Date().time - this.lastCaptchaTime < Times.ONE_HOUR;
      }
      
      [NotPersisted]
      public function get cookies() : String
      {
         var _loc2_:String = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.cookiesMap)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_.join("; ");
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get cookiesMap() : Object
      {
         return this._1579045811cookiesMap;
      }
      
      public function set cookiesMap(param1:Object) : void
      {
         var _loc2_:Object = this._1579045811cookiesMap;
         if(_loc2_ !== param1)
         {
            this._1579045811cookiesMap = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookiesMap",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastNCRReqeustTime() : Number
      {
         return this._1226320203lastNCRReqeustTime;
      }
      
      public function set lastNCRReqeustTime(param1:Number) : void
      {
         var _loc2_:Object = this._1226320203lastNCRReqeustTime;
         if(_loc2_ !== param1)
         {
            this._1226320203lastNCRReqeustTime = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastNCRReqeustTime",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get host() : String
      {
         return this._3208616host;
      }
      
      public function set host(param1:String) : void
      {
         var _loc2_:Object = this._3208616host;
         if(_loc2_ !== param1)
         {
            this._3208616host = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"host",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get port() : Number
      {
         return this._3446913port;
      }
      
      public function set port(param1:Number) : void
      {
         var _loc2_:Object = this._3446913port;
         if(_loc2_ !== param1)
         {
            this._3446913port = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"port",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get requiresAuth() : Boolean
      {
         return this._1615399306requiresAuth;
      }
      
      public function set requiresAuth(param1:Boolean) : void
      {
         var _loc2_:Object = this._1615399306requiresAuth;
         if(_loc2_ !== param1)
         {
            this._1615399306requiresAuth = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"requiresAuth",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get authUsername() : String
      {
         return this._672292194authUsername;
      }
      
      public function set authUsername(param1:String) : void
      {
         var _loc2_:Object = this._672292194authUsername;
         if(_loc2_ !== param1)
         {
            this._672292194authUsername = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"authUsername",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get authPassword() : String
      {
         return this._810407011authPassword;
      }
      
      public function set authPassword(param1:String) : void
      {
         var _loc2_:Object = this._810407011authPassword;
         if(_loc2_ !== param1)
         {
            this._810407011authPassword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"authPassword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numRecentFailures() : int
      {
         return this._2139949878numRecentFailures;
      }
      
      public function set numRecentFailures(param1:int) : void
      {
         var _loc2_:Object = this._2139949878numRecentFailures;
         if(_loc2_ !== param1)
         {
            this._2139949878numRecentFailures = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numRecentFailures",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastUsed() : Number
      {
         return this._1459374221lastUsed;
      }
      
      public function set lastUsed(param1:Number) : void
      {
         var _loc2_:Object = this._1459374221lastUsed;
         if(_loc2_ !== param1)
         {
            this._1459374221lastUsed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastUsed",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastFailureTime() : Number
      {
         return this._35987711lastFailureTime;
      }
      
      public function set lastFailureTime(param1:Number) : void
      {
         var _loc2_:Object = this._35987711lastFailureTime;
         if(_loc2_ !== param1)
         {
            this._35987711lastFailureTime = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastFailureTime",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastCaptchaTime() : Number
      {
         return this._1029949455lastCaptchaTime;
      }
      
      public function set lastCaptchaTime(param1:Number) : void
      {
         var _loc2_:Object = this._1029949455lastCaptchaTime;
         if(_loc2_ !== param1)
         {
            this._1029949455lastCaptchaTime = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastCaptchaTime",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get captchaImageUrl() : String
      {
         return this._74961234captchaImageUrl;
      }
      
      public function set captchaImageUrl(param1:String) : void
      {
         var _loc2_:Object = this._74961234captchaImageUrl;
         if(_loc2_ !== param1)
         {
            this._74961234captchaImageUrl = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"captchaImageUrl",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get captchaBitmapData() : BitmapData
      {
         return this._684929939captchaBitmapData;
      }
      
      public function set captchaBitmapData(param1:BitmapData) : void
      {
         var _loc2_:Object = this._684929939captchaBitmapData;
         if(_loc2_ !== param1)
         {
            this._684929939captchaBitmapData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"captchaBitmapData",_loc2_,param1));
            }
         }
      }
   }
}
