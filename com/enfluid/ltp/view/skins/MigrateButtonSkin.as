package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkButtonSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.Rect;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import spark.primitives.RectangularDropShadow;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import mx.graphics.GradientEntry;
   import spark.components.Label;
   import mx.states.State;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import spark.components.BorderContainer;
   import mx.core.DeferredInstanceFromFunction;
   import flash.utils.getDefinitionByName;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class MigrateButtonSkin extends SparkButtonSkin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _3143043fill:Rect;
      
      private var _681210700highlight:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function MigrateButtonSkin()
      {
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._MigrateButtonSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_MigrateButtonSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return MigrateButtonSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(21);
         if(_loc4_)
         {
            §§push((§§pop() - 62) * 7 + 1 - 1);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 3 + 23 - 1);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._MigrateButtonSkin_Rect1_i(),this._MigrateButtonSkin_Rect2_i(),this._MigrateButtonSkin_Label1_i()];
         this.currentState = "up";
         this.addEventListener("creationComplete",this.___MigrateButtonSkin_SparkButtonSkin1_creationComplete);
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-§§pop() + 71) - 100 + 1 + 1 - 1);
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
         MigrateButtonSkin._watcherSetupUtil = param1;
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
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
      }
      
      protected final function onCreationCompleteHandler(param1:FlexEvent) : void
      {
         hostComponent.buttonMode = true;
         hostComponent.useHandCursor = true;
      }
      
      private final function _MigrateButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 72 - 97 - 61 + 1 - 1 + 35 - 36);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 116 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() - 1) * 28);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 27 + 1 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() - 88 + 56 - 97 - 1));
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._MigrateButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _MigrateButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(15776045);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 - 6 + 1) * 1 + 30);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _MigrateButtonSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) + 1) + 82 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 4 - 1 + 53);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 32 + 1 - 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() * 97 + 1 + 40);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 7 + 109);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._MigrateButtonSkin_SolidColor2_c();
         _loc1_.initialized(this,"highlight");
         this.highlight = _loc1_;
         BindingManager.executeBindings(this,"highlight",this.highlight);
         return _loc1_;
      }
      
      private final function _MigrateButtonSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16760088);
         if(_loc3_)
         {
            §§push(--((§§pop() * 65 + 1) * 68 - 35) + 16);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 + 108 + 1 - 112));
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _MigrateButtonSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() + 18) * 72 - 1 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() + 15 - 1 - 1 - 1 - 47 - 26 + 2);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 39 + 1) - 6);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-§§pop() - 61 - 108 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(-§§pop() + 1 - 107) * 76);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 104 + 1) * 21 + 56 + 1);
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(5523230);
         if(_loc3_)
         {
            §§push(-(§§pop() - 45 - 1) - 1 + 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push(§§pop() - 28 - 74 - 65 - 1 - 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",labelDisplay);
         return _loc1_;
      }
      
      public final function ___MigrateButtonSkin_SparkButtonSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationCompleteHandler(param1);
      }
      
      private final function _MigrateButtonSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(§§pop() + 85) * 43);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width;
         },null,"labelDisplay.width");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get fill() : Rect
      {
         return this._3143043fill;
      }
      
      public function set fill(param1:Rect) : void
      {
         var _loc2_:Object = this._3143043fill;
         if(_loc2_ !== param1)
         {
            this._3143043fill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get highlight() : Rect
      {
         return this._681210700highlight;
      }
      
      public function set highlight(param1:Rect) : void
      {
         var _loc2_:Object = this._681210700highlight;
         if(_loc2_ !== param1)
         {
            this._681210700highlight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highlight",_loc2_,param1));
            }
         }
      }
   }
}
