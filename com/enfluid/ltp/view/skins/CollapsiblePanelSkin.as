package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
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
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import mx.states.Transition;
   import mx.effects.Sequence;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import spark.components.HGroup;
   import mx.controls.Spacer;
   import spark.components.Button;
   import mx.graphics.LinearGradient;
   import mx.graphics.GradientEntry;
   import mx.states.State;
   import mx.states.SetStyle;
   import spark.components.ComboBox;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import flash.utils.getDefinitionByName;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class CollapsiblePanelSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static const contentFill:Array = [];
      
      private static const exclusions:Array = ["background","titleDisplay","contentGroup"];
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CollapsiblePanelSkin_Fade1:Fade;
      
      public var _CollapsiblePanelSkin_Fade2:Fade;
      
      private var _1101045340_CollapsiblePanelSkin_Group2:Group;
      
      public var _CollapsiblePanelSkin_Parallel1:Parallel;
      
      public var _CollapsiblePanelSkin_Parallel2:Parallel;
      
      public var _CollapsiblePanelSkin_Rect3:Rect;
      
      public var _CollapsiblePanelSkin_Resize1:Resize;
      
      public var _CollapsiblePanelSkin_Resize2:Resize;
      
      public var _CollapsiblePanelSkin_Rotate1:Rotate;
      
      public var _CollapsiblePanelSkin_Rotate2:Rotate;
      
      private var _122464061_CollapsiblePanelSkin_SetProperty1:SetProperty;
      
      private var _1332194002background:Rect;
      
      private var _1391998104bgFill:SolidColor;
      
      private var _2040837481collapseEaser:Power;
      
      private var _1873950150collapseIcon:BitmapImage;
      
      private var _809612678contentGroup:Group;
      
      private var _540360211expandicon:BitmapImage;
      
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
      
      public function CollapsiblePanelSkin()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._CollapsiblePanelSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_CollapsiblePanelSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CollapsiblePanelSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.blendMode = "normal";
         this.transitions = [this._CollapsiblePanelSkin_Transition1_c(),this._CollapsiblePanelSkin_Transition2_c()];
         this.mxmlContent = [this._CollapsiblePanelSkin_Rect1_i(),this._CollapsiblePanelSkin_Group1_i()];
         this.currentState = "normal";
         this._CollapsiblePanelSkin_Power1_i();
         this._CollapsiblePanelSkin_Power2_i();
         var _CollapsiblePanelSkin_BitmapImage2_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CollapsiblePanelSkin_BitmapImage2_i);
         var _CollapsiblePanelSkin_BitmapImage3_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CollapsiblePanelSkin_BitmapImage3_i);
         var _CollapsiblePanelSkin_Group3_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CollapsiblePanelSkin_Group3_i);
         §§push();
         §§push();
         §§push("name");
         §§push("normal");
         §§push("overrides");
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_CollapsiblePanelSkin_Group3_factory,
            "destination":null,
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["titleBarGroup"]
         }));
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_CollapsiblePanelSkin_BitmapImage2_factory,
            "destination":"_CollapsiblePanelSkin_Group2",
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
            §§push(-(§§pop() * 13 * 118 - 17 - 22));
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("collapsed");
         §§push("overrides");
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_CollapsiblePanelSkin_BitmapImage3_factory,
            "destination":"_CollapsiblePanelSkin_Group2",
            "propertyName":"mxmlContent",
            "position":"first"
         }));
         §§push(new SetProperty().initializeFromObject({
            "target":"titleBarGroup",
            "name":"toolTip",
            "value":"Open"
         }));
         §§push(this._CollapsiblePanelSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
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
         if(_loc4_)
         {
            §§push(-(§§pop() - 1 + 1 + 1 + 67) + 1);
         }
         §§pop().states = null;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_SetProperty1",this._CollapsiblePanelSkin_SetProperty1);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 4 * 46);
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
         CollapsiblePanelSkin._watcherSetupUtil = param1;
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
      
      private final function _CollapsiblePanelSkin_Power1_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 - 1) * 73 + 1) - 1);
         }
         §§pop().easeInFraction = §§pop();
         this.collapseEaser = _loc1_;
         BindingManager.executeBindings(this,"collapseEaser",this.collapseEaser);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Power2_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 52 + 1 + 1 + 76 - 109);
         }
         §§pop().easeInFraction = §§pop();
         this.uncollapseEaser = _loc1_;
         BindingManager.executeBindings(this,"uncollapseEaser",this.uncollapseEaser);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Transition1_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "normal";
         _loc1_.toState = "collapsed";
         _loc1_.effect = this._CollapsiblePanelSkin_Sequence1_c();
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Sequence1_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._CollapsiblePanelSkin_Fade1_i(),this._CollapsiblePanelSkin_Parallel1_i()];
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push((§§pop() + 106) * 62 - 1);
         }
         §§pop().duration = §§pop();
         this._CollapsiblePanelSkin_Fade1 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Fade1",this._CollapsiblePanelSkin_Fade1);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Parallel1_i() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         _loc1_.children = [this._CollapsiblePanelSkin_Rotate1_i(),this._CollapsiblePanelSkin_Resize1_i()];
         this._CollapsiblePanelSkin_Parallel1 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Parallel1",this._CollapsiblePanelSkin_Parallel1);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Rotate1_i() : Rotate
      {
         var _loc1_:Rotate = new Rotate();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push((§§pop() + 88) * 40 + 1);
         }
         §§pop().duration = §§pop();
         this._CollapsiblePanelSkin_Rotate1 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Rotate1",this._CollapsiblePanelSkin_Rotate1);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Resize1_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push(§§pop() * 1 - 83 - 1);
         }
         §§pop().duration = §§pop();
         this._CollapsiblePanelSkin_Resize1 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Resize1",this._CollapsiblePanelSkin_Resize1);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Transition2_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "collapsed";
         _loc1_.toState = "normal";
         _loc1_.effect = this._CollapsiblePanelSkin_Sequence2_c();
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Sequence2_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._CollapsiblePanelSkin_Parallel2_i(),this._CollapsiblePanelSkin_Fade2_i()];
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Parallel2_i() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         _loc1_.children = [this._CollapsiblePanelSkin_Rotate2_i(),this._CollapsiblePanelSkin_Resize2_i()];
         this._CollapsiblePanelSkin_Parallel2 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Parallel2",this._CollapsiblePanelSkin_Parallel2);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Rotate2_i() : Rotate
      {
         var _loc1_:Rotate = new Rotate();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 39 + 1);
         }
         §§pop().duration = §§pop();
         this._CollapsiblePanelSkin_Rotate2 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Rotate2",this._CollapsiblePanelSkin_Rotate2);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Resize2_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push((§§pop() - 14 - 1 - 1) * 84 + 57);
         }
         §§pop().duration = §§pop();
         this._CollapsiblePanelSkin_Resize2 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Resize2",this._CollapsiblePanelSkin_Resize2);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Fade2_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push(-((§§pop() + 117 + 110 + 1) * 60 + 1 - 16));
         }
         §§pop().duration = §§pop();
         this._CollapsiblePanelSkin_Fade2 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Fade2",this._CollapsiblePanelSkin_Fade2);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 81 + 83 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 46 + 76 - 44) * 119));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 114 - 21 - 38 + 48);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 55 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 75) - 115 - 10));
         }
         §§pop().alpha = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 45 - 35 - 82 - 1);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() - 1) * 114 - 27 + 95);
         }
         §§pop().topRightRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 1 - 1) * 30 - 1 + 1);
         }
         §§pop().bottomLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 115) * 37 + 1);
         }
         §§pop().bottomRightRadiusX = §§pop();
         _loc1_.fill = this._CollapsiblePanelSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16119542);
         if(_loc3_)
         {
            §§push(-(§§pop() - 51 + 1 + 1));
         }
         §§pop().color = §§pop();
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(-(§§pop() + 1 + 1 + 5) * 30));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 - 72);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 95 * 78 * 113);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 80 - 1 + 95 - 1 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push((§§pop() - 117) * 11 - 1 - 19 + 1);
         }
         §§pop().maxHeight = §§pop();
         _loc1_.toolTip = "Collapse";
         _loc1_.buttonMode = true;
         _loc1_.mouseChildren = false;
         _loc1_.useHandCursor = true;
         _loc1_.mxmlContent = [this._CollapsiblePanelSkin_Rect2_c(),this._CollapsiblePanelSkin_Rect3_i(),this._CollapsiblePanelSkin_HGroup1_c()];
         _loc1_.id = "titleBarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleBarGroup = _loc1_;
         BindingManager.executeBindings(this,"titleBarGroup",this.titleBarGroup);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(§§pop() * 119 * 25 - 1) * 24 - 34 + 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(§§pop() * 63 * 25 + 72));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 88) * 110);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() - 83 - 1) * 43 + 33 + 1 + 86);
         }
         §§pop().top = §§pop();
         _loc1_.alpha = 0.8;
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 16 * 32 * 98 * 84 + 1) * 99);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() * 102 + 1) * 66 * 8 + 112));
         }
         §§pop().topRightRadiusX = §§pop();
         _loc1_.fill = this._CollapsiblePanelSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 + 1));
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._CollapsiblePanelSkin_GradientEntry1_c(),this._CollapsiblePanelSkin_GradientEntry2_c()];
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(15527405);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 + 1) - 61 + 1) + 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(14737632);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 26) - 26) * 101);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1 + 1 + 101 + 47));
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 2) * 25 + 3 - 29 - 117);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 32 - 58 + 1) * 63) + 48 + 20);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(31);
         if(_loc3_)
         {
            §§push(-(§§pop() + 54 + 115 - 40 + 1));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 62 - 46 + 11 - 1) - 55);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() * 84 + 75 + 2 - 1 - 1);
         }
         §§pop().topRightRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 117) * 67 - 13) + 1 + 117 + 1);
         }
         §§pop().bottomLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 114);
         }
         §§pop().bottomRightRadiusX = §§pop();
         _loc1_.fill = this._CollapsiblePanelSkin_SolidColor2_c();
         _loc1_.initialized(this,"_CollapsiblePanelSkin_Rect3");
         this._CollapsiblePanelSkin_Rect3 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Rect3",this._CollapsiblePanelSkin_Rect3);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16119542);
         if(_loc2_)
         {
            §§push(---(-(§§pop() + 3 - 1) + 36));
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(--(§§pop() - 54) - 1 + 1) - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((--(§§pop() * 59 - 85 + 33) + 1) * 32);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 22 + 69 - 47);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 - 1) * 100) + 1);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._CollapsiblePanelSkin_BitmapImage1_i(),this._CollapsiblePanelSkin_Label1_i(),this._CollapsiblePanelSkin_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 57 + 1) * 49 + 78 - 64 - 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push((-§§pop() + 98 + 89 + 1) * 40);
         }
         §§pop().height = §§pop();
         _loc1_.smooth = true;
         _loc1_.initialized(this,"expandicon");
         this.expandicon = _loc1_;
         BindingManager.executeBindings(this,"expandicon",this.expandicon);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 40) * 8));
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
      
      private final function _CollapsiblePanelSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [];
         _loc1_.id = "_CollapsiblePanelSkin_Group2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CollapsiblePanelSkin_Group2 = _loc1_;
         BindingManager.executeBindings(this,"_CollapsiblePanelSkin_Group2",this._CollapsiblePanelSkin_Group2);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_BitmapImage2_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.initialized(this,"collapseIcon");
         this.collapseIcon = _loc1_;
         BindingManager.executeBindings(this,"collapseIcon",this.collapseIcon);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_BitmapImage3_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.initialized(this,"nonCollapseIcon");
         this.nonCollapseIcon = _loc1_;
         BindingManager.executeBindings(this,"nonCollapseIcon",this.nonCollapseIcon);
         return _loc1_;
      }
      
      private final function _CollapsiblePanelSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 118 + 1 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 102 + 1 + 1) - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 112 + 1 + 78) * 20 - 82);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() + 61 + 1) - 11 + 1) * 114 * 55);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() * 4) - 1) * 74 - 48);
         }
         §§pop().minHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 81 + 44 + 1 - 1 - 1 - 1) * 21);
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
      
      private final function _CollapsiblePanelSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 42 - 40 + 91 - 89 + 65);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CollapsiblePanelSkin_Fade1.target","contentGroup");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 108 + 1) + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Array
         {
            var _loc1_:* = [titleBarGroup,this];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"_CollapsiblePanelSkin_Parallel1.targets");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(((§§pop() - 48) * 23 - 43) * 81 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CollapsiblePanelSkin_Rotate1.target","titleBarGroup");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 51 - 1 + 62 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_CollapsiblePanelSkin_Resize1.target");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 113) * 12);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CollapsiblePanelSkin_Resize1.easer","collapseEaser");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() * 55 - 98 - 1 - 1 + 57 - 25 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Array
         {
            var _loc1_:* = [titleBarGroup,this];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"_CollapsiblePanelSkin_Parallel2.targets");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(§§pop() - 12 + 58 + 41 - 1 + 115 - 102));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CollapsiblePanelSkin_Rotate2.target","titleBarGroup");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 12 - 1 + 101) * 93);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_CollapsiblePanelSkin_Resize2.target");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(§§pop() + 116 + 107 - 74 + 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CollapsiblePanelSkin_Resize2.easer","uncollapseEaser");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CollapsiblePanelSkin_Fade2.target","contentGroup");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 30 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return hostComponent.colllapsedRotation;
         },null,"_CollapsiblePanelSkin_SetProperty1.value");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push((-§§pop() + 1) * 16 - 1 + 97);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return hostComponent.getStyle("backgroundAlpha");
         },null,"_CollapsiblePanelSkin_Rect3.alpha");
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(((§§pop() + 99) * 82 + 75 - 48) * 94 - 25);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.EXPAND_ICON;
         },null,"expandicon.source");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 1 - 98 - 79) * 44 * 41));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return hostComponent.getStyle("collapse");
         },null,"collapseIcon.source");
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 92 + 1) * 72) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return hostComponent.getStyle("nonCollapse");
         },null,"nonCollapseIcon.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _CollapsiblePanelSkin_Group2() : Group
      {
         return this._1101045340_CollapsiblePanelSkin_Group2;
      }
      
      public function set _CollapsiblePanelSkin_Group2(param1:Group) : void
      {
         var _loc2_:Object = this._1101045340_CollapsiblePanelSkin_Group2;
         if(_loc2_ !== param1)
         {
            this._1101045340_CollapsiblePanelSkin_Group2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CollapsiblePanelSkin_Group2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CollapsiblePanelSkin_SetProperty1() : SetProperty
      {
         return this._122464061_CollapsiblePanelSkin_SetProperty1;
      }
      
      public function set _CollapsiblePanelSkin_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._122464061_CollapsiblePanelSkin_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._122464061_CollapsiblePanelSkin_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CollapsiblePanelSkin_SetProperty1",_loc2_,param1));
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
