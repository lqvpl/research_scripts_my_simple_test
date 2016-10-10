package com.enfluid.ltp.view.skins
{
   import spark.components.supportClasses.Skin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.BitmapImage;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import spark.components.Group;
   import flash.utils.ByteArray;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import spark.components.HGroup;
   import mx.binding.BindingManager;
   import mx.core.IFlexDisplayObject;
   import spark.formatters.NumberFormatter;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import mx.controls.Spacer;
   import flash.events.MouseEvent;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   
   use namespace mx_internal;
   
   public final class RankDrawerCloseButtonSkin extends Skin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _RankDrawerCloseButtonSkin_BitmapImage1:BitmapImage;
      
      private var _1184053038labelDisplay:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:Button;
      
      public function RankDrawerCloseButtonSkin()
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
         bindings = this._RankDrawerCloseButtonSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_RankDrawerCloseButtonSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RankDrawerCloseButtonSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 26) * 31 - 1 + 1 - 1 - 95 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(§§pop() * 107 + 75 + 115);
         }
         §§pop().percentHeight = §§pop();
         this.mxmlContent = [this._RankDrawerCloseButtonSkin_Group1_c()];
         this.currentState = "disabled";
         states = [new State({
            "name":"disabled",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"up",
            "overrides":[]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 33) * 21 + 1 + 44 + 1 - 15);
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
         RankDrawerCloseButtonSkin._watcherSetupUtil = param1;
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
      
      private final function _RankDrawerCloseButtonSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 60 + 1 - 1) - 53);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 - 95 - 22 - 110);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._RankDrawerCloseButtonSkin_Rect1_c(),this._RankDrawerCloseButtonSkin_HGroup1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankDrawerCloseButtonSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() * 50 + 103 - 95 - 52) * 84);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-((§§pop() * 116 - 115) * 20) - 1) - 92);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(8);
         if(_loc2_)
         {
            §§push(-((§§pop() - 75 + 1) * 52) - 1);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(8);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 97 + 52 - 38);
         }
         §§pop().topLeftRadiusY = §§pop();
         §§push(_loc1_);
         §§push(8);
         if(_loc2_)
         {
            §§push(§§pop() * 39 + 1 - 1 - 1 + 1 - 1);
         }
         §§pop().topRightRadiusX = §§pop();
         §§push(_loc1_);
         §§push(8);
         if(_loc2_)
         {
            §§push(((§§pop() - 5) * 70 - 38 - 1 - 1) * 32 - 90);
         }
         §§pop().topRightRadiusY = §§pop();
         _loc1_.fill = this._RankDrawerCloseButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _RankDrawerCloseButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16760088);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1));
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _RankDrawerCloseButtonSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((-(§§pop() - 106) - 93) * 102 - 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 6 - 57 + 56 + 20 - 1 - 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-((§§pop() - 9 - 64 + 19) * 64));
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(((§§pop() + 96) * 45 * 71 - 84 + 4) * 83 - 1);
         }
         §§pop().paddingRight = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._RankDrawerCloseButtonSkin_BitmapImage1_i(),this._RankDrawerCloseButtonSkin_Label1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankDrawerCloseButtonSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(-((§§pop() - 2) * 33 * 87) * 38);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 56 + 1));
         }
         §§pop().height = §§pop();
         _loc1_.smooth = true;
         _loc1_.initialized(this,"_RankDrawerCloseButtonSkin_BitmapImage1");
         this._RankDrawerCloseButtonSkin_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_RankDrawerCloseButtonSkin_BitmapImage1",this._RankDrawerCloseButtonSkin_BitmapImage1);
         return _loc1_;
      }
      
      private final function _RankDrawerCloseButtonSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.alpha = 0.75;
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) + 99 + 1);
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(2236962);
         if(_loc2_)
         {
            §§push((§§pop() + 60 - 1 + 116 - 1 - 107) * 31 * 93);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push((-((-§§pop() - 1) * 104) + 108) * 81);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      private final function _RankDrawerCloseButtonSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) - 1) + 88);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.CONTAINER_DISPLAY_SLIDE_ICON;
         },null,"_RankDrawerCloseButtonSkin_BitmapImage1.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : Label
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:Label) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
