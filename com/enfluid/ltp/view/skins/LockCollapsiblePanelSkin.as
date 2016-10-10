package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import mx.events.FlexEvent;
   import spark.effects.Fade;
   import spark.components.Group;
   import mx.effects.Parallel;
   import spark.primitives.Rect;
   import spark.effects.Resize;
   import spark.effects.Rotate;
   import mx.states.SetProperty;
   import mx.graphics.SolidColor;
   import spark.effects.easing.Power;
   import spark.primitives.BitmapImage;
   import spark.components.Image;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import spark.layouts.VerticalLayout;
   import mx.states.Transition;
   import mx.effects.Sequence;
   import com.enfluid.ltp.view.GenerateKeywordsCallout;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.HGroup;
   import mx.graphics.LinearGradient;
   import mx.graphics.GradientEntry;
   import flash.events.MouseEvent;
   import spark.components.CheckBox;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import flash.events.Event;
   import mx.controls.Spacer;
   import spark.components.Button;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.settings.target;
   import mx.core.DeferredInstanceFromFunction;
   import flash.utils.Proxy;
   import com.enfluid.ltp.view.containers.LockCollapsiblePanel;
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.events.PropertyChangeEvent;
   import flash.utils.setTimeout;
   import mx.states.State;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class LockCollapsiblePanelSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static const contentFill:Array = [];
      
      private static const exclusions:Array = ["background","titleDisplay","contentGroup"];
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _LockCollapsiblePanelSkin_Fade1:Fade;
      
      public var _LockCollapsiblePanelSkin_Fade2:Fade;
      
      private var _1892424271_LockCollapsiblePanelSkin_Group2:Group;
      
      public var _LockCollapsiblePanelSkin_Parallel1:Parallel;
      
      public var _LockCollapsiblePanelSkin_Parallel2:Parallel;
      
      public var _LockCollapsiblePanelSkin_Rect3:Rect;
      
      public var _LockCollapsiblePanelSkin_Resize1:Resize;
      
      public var _LockCollapsiblePanelSkin_Resize2:Resize;
      
      public var _LockCollapsiblePanelSkin_Rotate1:Rotate;
      
      public var _LockCollapsiblePanelSkin_Rotate2:Rotate;
      
      private var _152630184_LockCollapsiblePanelSkin_SetProperty1:SetProperty;
      
      private var _1332194002background:Rect;
      
      private var _1391998104bgFill:SolidColor;
      
      private var _2040837481collapseEaser:Power;
      
      private var _1873950150collapseIcon:BitmapImage;
      
      private var _809612678contentGroup:Group;
      
      private var _540360211expandicon:BitmapImage;
      
      private var _1908992068lockIcon:Image;
      
      private var _2126747341nonCollapseIcon:BitmapImage;
      
      private var _624374620titleBarGroup:Group;
      
      private var _1893287094titleDisplay:Label;
      
      private var _1527808866uncollapseEaser:Power;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:CollapsiblePanel;
      
      public function LockCollapsiblePanelSkin()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._LockCollapsiblePanelSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_LockCollapsiblePanelSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return LockCollapsiblePanelSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.blendMode = "normal";
         this.transitions = [this._LockCollapsiblePanelSkin_Transition1_c(),this._LockCollapsiblePanelSkin_Transition2_c()];
         this.mxmlContent = [this._LockCollapsiblePanelSkin_Rect1_i(),this._LockCollapsiblePanelSkin_Group1_i()];
         this.currentState = "normal";
         this._LockCollapsiblePanelSkin_Power1_i();
         this._LockCollapsiblePanelSkin_Power2_i();
         var _LockCollapsiblePanelSkin_BitmapImage2_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._LockCollapsiblePanelSkin_BitmapImage2_i);
         var _LockCollapsiblePanelSkin_BitmapImage3_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._LockCollapsiblePanelSkin_BitmapImage3_i);
         var _LockCollapsiblePanelSkin_Group3_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._LockCollapsiblePanelSkin_Group3_i);
         §§push();
         §§push();
         §§push("name");
         §§push("normal");
         §§push("overrides");
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_LockCollapsiblePanelSkin_Group3_factory,
            "destination":null,
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["titleBarGroup"]
         }));
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_LockCollapsiblePanelSkin_BitmapImage2_factory,
            "destination":"_LockCollapsiblePanelSkin_Group2",
            "propertyName":"mxmlContent",
            "position":"first"
         }));
         §§push(new SetProperty());
         §§push("target");
         §§push("expandicon");
         §§push("name");
         §§push("rotation");
         §§push("value");
         §§push(90);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 4));
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("collapsed");
         §§push("overrides");
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_LockCollapsiblePanelSkin_BitmapImage3_factory,
            "destination":"_LockCollapsiblePanelSkin_Group2",
            "propertyName":"mxmlContent",
            "position":"first"
         }));
         §§push(new SetProperty().initializeFromObject({
            "target":"titleBarGroup",
            "name":"toolTip",
            "value":"Open"
         }));
         §§push(this._LockCollapsiblePanelSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
            "target":"titleBarGroup",
            "name":"rotation",
            "value":undefined
         })));
         §§push(new SetProperty());
         §§push("target");
         §§push("expandicon");
         §§push("name");
         §§push("rotation");
         §§push("value");
         §§push(0);
         if(_loc3_)
         {
            §§push(-((-(§§pop() - 79) - 1) * 77 * 46 * 52));
         }
         §§pop().states = null;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_SetProperty1",this._LockCollapsiblePanelSkin_SetProperty1);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-(§§pop() - 83 + 40) + 20));
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
         LockCollapsiblePanelSkin._watcherSetupUtil = param1;
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
      
      override public function get colorizeExclusions() : Array
      {
         return exclusions;
      }
      
      override public function get contentItems() : Array
      {
         return contentFill;
      }
      
      private final function _LockCollapsiblePanelSkin_Power1_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1) * 112 * 45 + 33);
         }
         §§pop().easeInFraction = §§pop();
         this.collapseEaser = _loc1_;
         BindingManager.executeBindings(this,"collapseEaser",this.collapseEaser);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Power2_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() - 1 + 1 - 16) * 1 - 8 - 1) * 50);
         }
         §§pop().easeInFraction = §§pop();
         this.uncollapseEaser = _loc1_;
         BindingManager.executeBindings(this,"uncollapseEaser",this.uncollapseEaser);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Transition1_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "normal";
         _loc1_.toState = "collapsed";
         _loc1_.effect = this._LockCollapsiblePanelSkin_Sequence1_c();
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Sequence1_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._LockCollapsiblePanelSkin_Fade1_i(),this._LockCollapsiblePanelSkin_Parallel1_i()];
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push(-(--(§§pop() - 1 - 69) * 39) + 1);
         }
         §§pop().duration = §§pop();
         this._LockCollapsiblePanelSkin_Fade1 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Fade1",this._LockCollapsiblePanelSkin_Fade1);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Parallel1_i() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         _loc1_.children = [this._LockCollapsiblePanelSkin_Rotate1_i(),this._LockCollapsiblePanelSkin_Resize1_i()];
         this._LockCollapsiblePanelSkin_Parallel1 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Parallel1",this._LockCollapsiblePanelSkin_Parallel1);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Rotate1_i() : Rotate
      {
         var _loc1_:Rotate = new Rotate();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 - 68 - 90) * 80);
         }
         §§pop().duration = §§pop();
         this._LockCollapsiblePanelSkin_Rotate1 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Rotate1",this._LockCollapsiblePanelSkin_Rotate1);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Resize1_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push(--(§§pop() + 97));
         }
         §§pop().duration = §§pop();
         this._LockCollapsiblePanelSkin_Resize1 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Resize1",this._LockCollapsiblePanelSkin_Resize1);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Transition2_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "collapsed";
         _loc1_.toState = "normal";
         _loc1_.effect = this._LockCollapsiblePanelSkin_Sequence2_c();
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Sequence2_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._LockCollapsiblePanelSkin_Parallel2_i(),this._LockCollapsiblePanelSkin_Fade2_i()];
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Parallel2_i() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         _loc1_.children = [this._LockCollapsiblePanelSkin_Rotate2_i(),this._LockCollapsiblePanelSkin_Resize2_i()];
         this._LockCollapsiblePanelSkin_Parallel2 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Parallel2",this._LockCollapsiblePanelSkin_Parallel2);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Rotate2_i() : Rotate
      {
         var _loc1_:Rotate = new Rotate();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push((-(§§pop() * 90) + 1) * 6);
         }
         §§pop().duration = §§pop();
         this._LockCollapsiblePanelSkin_Rotate2 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Rotate2",this._LockCollapsiblePanelSkin_Rotate2);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Resize2_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 - 0 + 1 + 1 + 73);
         }
         §§pop().duration = §§pop();
         this._LockCollapsiblePanelSkin_Resize2 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Resize2",this._LockCollapsiblePanelSkin_Resize2);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Fade2_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push((-(§§pop() - 6 + 119) - 1 + 24) * 96);
         }
         §§pop().duration = §§pop();
         this._LockCollapsiblePanelSkin_Fade2 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Fade2",this._LockCollapsiblePanelSkin_Fade2);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() * 93 * 35);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1) - 74 + 33);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() - 9 + 1) * 17 + 1 + 1) * 16);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 9 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 23 + 1) + 26 - 1);
         }
         §§pop().alpha = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() * 10 + 1) * 54 - 13 + 1);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 65 + 44 + 72 - 1));
         }
         §§pop().topRightRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 32 - 1 - 1);
         }
         §§pop().bottomLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 83 + 114 - 1);
         }
         §§pop().bottomRightRadiusX = §§pop();
         _loc1_.fill = this._LockCollapsiblePanelSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16119542);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 1);
         }
         §§pop().color = §§pop();
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 112 + 78 - 1) - 37);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 96) * 54);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1 - 88));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 76) * 63 + 52));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(§§pop() * 24 + 26 + 55 + 45);
         }
         §§pop().maxHeight = §§pop();
         _loc1_.toolTip = "Collapse";
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.mxmlContent = [this._LockCollapsiblePanelSkin_Rect2_c(),this._LockCollapsiblePanelSkin_Rect3_i(),this._LockCollapsiblePanelSkin_HGroup1_c()];
         _loc1_.id = "titleBarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleBarGroup = _loc1_;
         BindingManager.executeBindings(this,"titleBarGroup",this.titleBarGroup);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 52 + 53 - 91);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() * 29 - 6 + 118);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 19 + 60 + 1 + 84) * 22);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1 + 1) - 94) * 32);
         }
         §§pop().top = §§pop();
         _loc1_.alpha = 0.8;
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 74 + 1 - 1 + 1));
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 50 - 1 - 1 + 1) * 58);
         }
         §§pop().topRightRadiusX = §§pop();
         _loc1_.fill = this._LockCollapsiblePanelSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 62) * 0 * 24);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._LockCollapsiblePanelSkin_GradientEntry1_c(),this._LockCollapsiblePanelSkin_GradientEntry2_c()];
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(15527405);
         if(_loc2_)
         {
            §§push((§§pop() - 70) * 32 * 92);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(14737632);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 118 - 108 - 1) * 87);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1 + 1 + 60) * 92) - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--((§§pop() + 46 - 65) * 20) + 117);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 80 - 1) + 1 + 1 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(31);
         if(_loc3_)
         {
            §§push(-((-(§§pop() * 78) + 42) * 39) + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 18 - 1 - 14 + 66);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 47 * 34 * 57);
         }
         §§pop().topRightRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(-§§pop() - 1) - 42);
         }
         §§pop().bottomLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 60 - 1 - 65);
         }
         §§pop().bottomRightRadiusX = §§pop();
         _loc1_.fill = this._LockCollapsiblePanelSkin_SolidColor2_c();
         _loc1_.initialized(this,"_LockCollapsiblePanelSkin_Rect3");
         this._LockCollapsiblePanelSkin_Rect3 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Rect3",this._LockCollapsiblePanelSkin_Rect3);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16119542);
         if(_loc3_)
         {
            §§push(-(§§pop() * 7 - 108 - 1 + 1 + 1 + 1));
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-(§§pop() * 97) + 1 + 112) * 41 + 28 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(§§pop() - 64 - 1));
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1));
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--((§§pop() + 37) * 53 + 1) * 73);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((-§§pop() + 119 + 96) * 102 - 1);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._LockCollapsiblePanelSkin_BitmapImage1_i(),this._LockCollapsiblePanelSkin_Label1_i(),this._LockCollapsiblePanelSkin_Group2_i(),this._LockCollapsiblePanelSkin_Spacer1_c(),this._LockCollapsiblePanelSkin_Image1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 66 + 1 - 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(((§§pop() * 2 + 1 - 1) * 105 + 64) * 23 + 109);
         }
         §§pop().height = §§pop();
         _loc1_.smooth = true;
         _loc1_.initialized(this,"expandicon");
         this.expandicon = _loc1_;
         BindingManager.executeBindings(this,"expandicon",this.expandicon);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 59 + 1 + 92));
         }
         §§pop().height = §§pop();
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "titleDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleDisplay = _loc1_;
         BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [];
         _loc1_.id = "_LockCollapsiblePanelSkin_Group2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LockCollapsiblePanelSkin_Group2 = _loc1_;
         BindingManager.executeBindings(this,"_LockCollapsiblePanelSkin_Group2",this._LockCollapsiblePanelSkin_Group2);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_BitmapImage2_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.initialized(this,"collapseIcon");
         this.collapseIcon = _loc1_;
         BindingManager.executeBindings(this,"collapseIcon",this.collapseIcon);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_BitmapImage3_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.initialized(this,"nonCollapseIcon");
         this.nonCollapseIcon = _loc1_;
         BindingManager.executeBindings(this,"nonCollapseIcon",this.nonCollapseIcon);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 12) - 56 - 74);
         }
         §§pop().percentWidth = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.__lockIcon_click);
         _loc1_.id = "lockIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockIcon = _loc1_;
         BindingManager.executeBindings(this,"lockIcon",this.lockIcon);
         return _loc1_;
      }
      
      public final function __lockIcon_click(param1:MouseEvent) : void
      {
         ViewModel.instance.showUpgradeToPlatinumPopup = true;
      }
      
      private final function _LockCollapsiblePanelSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(-(§§pop() * 50 + 27) * 18 + 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(--((§§pop() + 1 + 1) * 14));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 110 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 37) + 1 + 97 - 1) - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 51 + 54 - 44) + 20);
         }
         §§pop().minHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 106) - 1);
         }
         §§pop().minWidth = §§pop();
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private final function _LockCollapsiblePanelSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 103 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_LockCollapsiblePanelSkin_Fade1.target","contentGroup");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() + 55) * 87 - 84 + 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Array
         {
            var _loc1_:* = [titleBarGroup,this];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"_LockCollapsiblePanelSkin_Parallel1.targets");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() - 56 - 1 + 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_LockCollapsiblePanelSkin_Rotate1.target","titleBarGroup");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() * 108 - 48 - 1) * 17);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_LockCollapsiblePanelSkin_Resize1.target");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1 - 51) * 78);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_LockCollapsiblePanelSkin_Resize1.easer","collapseEaser");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 29 - 44 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Array
         {
            var _loc1_:* = [titleBarGroup,this];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"_LockCollapsiblePanelSkin_Parallel2.targets");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 1) * 16));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_LockCollapsiblePanelSkin_Rotate2.target","titleBarGroup");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 40));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_LockCollapsiblePanelSkin_Resize2.target");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(-((§§pop() - 39) * 42 - 22) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_LockCollapsiblePanelSkin_Resize2.easer","uncollapseEaser");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(§§pop() * 40 + 46 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_LockCollapsiblePanelSkin_Fade2.target","contentGroup");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 18 - 43);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return hostComponent.colllapsedRotation;
         },null,"_LockCollapsiblePanelSkin_SetProperty1.value");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push((-(§§pop() - 54 + 1) + 79 - 1) * 39 - 41);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return hostComponent.getStyle("backgroundAlpha");
         },null,"_LockCollapsiblePanelSkin_Rect3.alpha");
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.EXPAND_ICON;
         },null,"expandicon.source");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() + 70) * 102 - 53);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return hostComponent.getStyle("collapse");
         },null,"collapseIcon.source");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push(-((§§pop() - 35 - 1) * 82 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return hostComponent.getStyle("nonCollapse");
         },null,"nonCollapseIcon.source");
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() - 96) + 17 + 110 + 1 + 1 + 66);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.LOCK;
         },null,"lockIcon.source");
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push(-(§§pop() + 80) + 98 - 1 - 3);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return LockCollapsiblePanel(hostComponent).showLock;
         },null,"lockIcon.visible");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _LockCollapsiblePanelSkin_Group2() : Group
      {
         return this._1892424271_LockCollapsiblePanelSkin_Group2;
      }
      
      public function set _LockCollapsiblePanelSkin_Group2(param1:Group) : void
      {
         var _loc2_:Object = this._1892424271_LockCollapsiblePanelSkin_Group2;
         if(_loc2_ !== param1)
         {
            this._1892424271_LockCollapsiblePanelSkin_Group2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_LockCollapsiblePanelSkin_Group2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _LockCollapsiblePanelSkin_SetProperty1() : SetProperty
      {
         return this._152630184_LockCollapsiblePanelSkin_SetProperty1;
      }
      
      public function set _LockCollapsiblePanelSkin_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._152630184_LockCollapsiblePanelSkin_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._152630184_LockCollapsiblePanelSkin_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_LockCollapsiblePanelSkin_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : Rect
      {
         return this._1332194002background;
      }
      
      public function set background(param1:Rect) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bgFill() : SolidColor
      {
         return this._1391998104bgFill;
      }
      
      public function set bgFill(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1391998104bgFill;
         if(_loc2_ !== param1)
         {
            this._1391998104bgFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgFill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get collapseEaser() : Power
      {
         return this._2040837481collapseEaser;
      }
      
      public function set collapseEaser(param1:Power) : void
      {
         var _loc2_:Object = this._2040837481collapseEaser;
         if(_loc2_ !== param1)
         {
            this._2040837481collapseEaser = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collapseEaser",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get collapseIcon() : BitmapImage
      {
         return this._1873950150collapseIcon;
      }
      
      public function set collapseIcon(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._1873950150collapseIcon;
         if(_loc2_ !== param1)
         {
            this._1873950150collapseIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collapseIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get expandicon() : BitmapImage
      {
         return this._540360211expandicon;
      }
      
      public function set expandicon(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._540360211expandicon;
         if(_loc2_ !== param1)
         {
            this._540360211expandicon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expandicon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockIcon() : Image
      {
         return this._1908992068lockIcon;
      }
      
      public function set lockIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1908992068lockIcon;
         if(_loc2_ !== param1)
         {
            this._1908992068lockIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nonCollapseIcon() : BitmapImage
      {
         return this._2126747341nonCollapseIcon;
      }
      
      public function set nonCollapseIcon(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._2126747341nonCollapseIcon;
         if(_loc2_ !== param1)
         {
            this._2126747341nonCollapseIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nonCollapseIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleBarGroup() : Group
      {
         return this._624374620titleBarGroup;
      }
      
      public function set titleBarGroup(param1:Group) : void
      {
         var _loc2_:Object = this._624374620titleBarGroup;
         if(_loc2_ !== param1)
         {
            this._624374620titleBarGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleBarGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleDisplay() : Label
      {
         return this._1893287094titleDisplay;
      }
      
      public function set titleDisplay(param1:Label) : void
      {
         var _loc2_:Object = this._1893287094titleDisplay;
         if(_loc2_ !== param1)
         {
            this._1893287094titleDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get uncollapseEaser() : Power
      {
         return this._1527808866uncollapseEaser;
      }
      
      public function set uncollapseEaser(param1:Power) : void
      {
         var _loc2_:Object = this._1527808866uncollapseEaser;
         if(_loc2_ !== param1)
         {
            this._1527808866uncollapseEaser = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"uncollapseEaser",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : CollapsiblePanel
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CollapsiblePanel) : void
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
