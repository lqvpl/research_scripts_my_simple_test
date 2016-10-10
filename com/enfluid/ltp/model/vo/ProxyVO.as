package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.skins.target;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.util.Util;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import flash.filesystem.File;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   use namespace mx_internal;
   
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
            §§push(-(§§pop() - 1) - 39 - 1 - 1 + 1 - 1);
         }
      }
      
      private var _3208616host:String;
      
      private var _3446913port:Number;
      
      private var _1615399306requiresAuth:Boolean;
      
      private var _672292194authUsername:String;
      
      private var _810407011authPassword:String;
      
      private var _679968672recentFailureCount:int = 0;
      
      private var _1459374221lastUsed:Number;
      
      private var _35987711lastFailureTime:Number;
      
      public function ProxyVO(param1:String = null)
      {
         super();
         this.host = param1;
      }
      
      public static function getNext() : com.enfluid.ltp.model.vo.ProxyVO
      {
         if(!initialized)
         {
            DataModel.instance.proxies.source.sort(Util.randomSort);
            initialized = true;
         }
         if(proxyIndex == DataModel.instance.proxies.length)
         {
            proxyIndex++;
            return OWN_IP_PROXY;
         }
         if(proxyIndex > DataModel.instance.proxies.length)
         {
            §§push();
            §§push(0);
            if(_loc5_)
            {
               §§push(((§§pop() - 1) * 4 + 48 + 1) * 22 - 1 - 37);
            }
            §§pop().proxyIndex = §§pop();
         }
         var _loc1_:com.enfluid.ltp.model.vo.ProxyVO = com.enfluid.ltp.model.vo.ProxyVO(DataModel.instance.proxies.getItemAt(proxyIndex));
         proxyIndex++;
         return _loc1_;
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
      public function get recentFailureCount() : int
      {
         return this._679968672recentFailureCount;
      }
      
      public function set recentFailureCount(param1:int) : void
      {
         var _loc2_:Object = this._679968672recentFailureCount;
         if(_loc2_ !== param1)
         {
            this._679968672recentFailureCount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recentFailureCount",_loc2_,param1));
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
   }
}
