package com.enfluid.ltp.view.components
{
   import spark.components.RichText;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import flash.events.Event;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import mx.events.FlexEvent;
   import spark.primitives.Ellipse;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import com.enfluid.ltp.view.KeywordsDataGrid;
   import mx.binding.Binding;
   import spark.components.CheckBox;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import spark.components.PopUpAnchor;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public final class Link extends RichText implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1429847026destination:String;
      
      private var _url:String;
      
      private var _264496760upColor:uint;
      
      private var _394214192rolledOver:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function Link()
      {
         var com.enfluid.ltp.view.components.target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._Link_bindingsSetup();
         var watchers:Array = [];
         com.enfluid.ltp.view.components.target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_LinkWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return Link[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.buttonMode = true;
         §§push(this);
         §§push(1);
         if(_loc4_)
         {
            §§push(-(§§pop() - 1 - 1 - 13 - 88));
         }
         §§pop().maxDisplayedLines = §§pop();
         this.mouseChildren = false;
         this.content = ["\n\n\t","\n\t","\n"];
         this.addEventListener("click",this.___Link_RichText1_click);
         this.addEventListener("preinitialize",this.___Link_RichText1_preinitialize);
         this.addEventListener("rollOut",this.___Link_RichText1_rollOut);
         this.addEventListener("rollOver",this.___Link_RichText1_rollOver);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 90 + 47 + 1) * 104 - 85);
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         Link._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function set url(param1:String) : void
      {
         this._url = param1;
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = param1;
         if(!param1)
         {
            this.setStyle("color",12040119);
         }
         else
         {
            this.setStyle("color",this.upColor);
         }
      }
      
      private final function onPreInitialize() : void
      {
         §§push(this.upColor);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 43 * 63 + 22 - 59) * 39 + 1);
         }
         if(§§pop() == §§pop())
         {
            this.upColor = getStyle("color");
         }
      }
      
      public final function ___Link_RichText1_click(param1:MouseEvent) : void
      {
         if(this.destination)
         {
            navigateToURL(new URLRequest(this.destination));
         }
      }
      
      public final function ___Link_RichText1_preinitialize(param1:FlexEvent) : void
      {
         this.onPreInitialize();
      }
      
      public final function ___Link_RichText1_rollOut(param1:MouseEvent) : void
      {
         this.rolledOver = false;
      }
      
      public final function ___Link_RichText1_rollOver(param1:MouseEvent) : void
      {
         if(enabled)
         {
            this.rolledOver = true;
         }
      }
      
      private final function _Link_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 3) - 1) - 44);
         }
         §§pop()[§§pop()] = new Binding(this,function():uint
         {
            return !!rolledOver?uint(upColor):uint(upColor);
         },function(param1:uint):void
         {
            this.setStyle("color",param1);
         },"this.color");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 29 + 1 + 1 - 1 + 116) * 62);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!rolledOver?"underline":"none";
            return _loc1_ == undefined?null:String(_loc1_);
         },function(param1:String):void
         {
            this.setStyle("textDecoration",param1);
         },"this.textDecoration");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() - 29 - 1 + 1) * 99 * 70);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !!enabled?true:false;
         },null,"this.useHandCursor");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get destination() : String
      {
         return this._1429847026destination;
      }
      
      public function set destination(param1:String) : void
      {
         var _loc2_:Object = this._1429847026destination;
         if(_loc2_ !== param1)
         {
            this._1429847026destination = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"destination",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upColor() : uint
      {
         return this._264496760upColor;
      }
      
      public function set upColor(param1:uint) : void
      {
         var _loc2_:Object = this._264496760upColor;
         if(_loc2_ !== param1)
         {
            this._264496760upColor = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upColor",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get rolledOver() : Boolean
      {
         return this._394214192rolledOver;
      }
      
      private function set rolledOver(param1:Boolean) : void
      {
         var _loc2_:Object = this._394214192rolledOver;
         if(_loc2_ !== param1)
         {
            this._394214192rolledOver = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rolledOver",_loc2_,param1));
            }
         }
      }
   }
}
