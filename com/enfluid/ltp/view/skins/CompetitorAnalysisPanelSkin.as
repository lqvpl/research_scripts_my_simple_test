package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.effects.Fade;
   import spark.components.Group;
   import spark.components.HGroup;
   import mx.effects.Parallel;
   import spark.primitives.Rect;
   import spark.effects.Resize;
   import spark.effects.Rotate;
   import mx.states.SetProperty;
   import mx.controls.Spacer;
   import mx.graphics.SolidColor;
   import spark.effects.easing.Power;
   import spark.primitives.BitmapImage;
   import spark.components.Button;
   import spark.components.TextInput;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import mx.states.Transition;
   import mx.effects.Sequence;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import mx.graphics.LinearGradient;
   import com.enfluid.ltp.view.components.Link;
   import mx.graphics.GradientEntry;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import mx.core.mx_internal;
   import com.enfluid.ltp.view.containers.CompetitorAnalysisPanel;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class CompetitorAnalysisPanelSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static const contentFill:Array = ["bgFill"];
      
      private static const exclusions:Array = ["background","titleDisplay","contentGroup"];
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CompetitorAnalysisPanelSkin_Fade1:Fade;
      
      public var _CompetitorAnalysisPanelSkin_Fade2:Fade;
      
      private var _145784632_CompetitorAnalysisPanelSkin_Group2:Group;
      
      private var _116594923_CompetitorAnalysisPanelSkin_HGroup1:HGroup;
      
      public var _CompetitorAnalysisPanelSkin_Parallel1:Parallel;
      
      public var _CompetitorAnalysisPanelSkin_Parallel2:Parallel;
      
      public var _CompetitorAnalysisPanelSkin_Rect3:Rect;
      
      public var _CompetitorAnalysisPanelSkin_Resize1:Resize;
      
      public var _CompetitorAnalysisPanelSkin_Resize2:Resize;
      
      public var _CompetitorAnalysisPanelSkin_Rotate1:Rotate;
      
      public var _CompetitorAnalysisPanelSkin_Rotate2:Rotate;
      
      private var _499768161_CompetitorAnalysisPanelSkin_SetProperty1:SetProperty;
      
      public var _CompetitorAnalysisPanelSkin_Spacer1:Spacer;
      
      private var _1332194002background:Rect;
      
      private var _1391998104bgFill:SolidColor;
      
      private var _2040837481collapseEaser:Power;
      
      private var _1873950150collapseIcon:BitmapImage;
      
      private var _809612678contentGroup:Group;
      
      private var _2126747341nonCollapseIcon:BitmapImage;
      
      private var _365389062searchButton:Button;
      
      private var _559723774searchInput:TextInput;
      
      private var _624374620titleBarGroup:Group;
      
      private var _1893287094titleDisplay:Label;
      
      private var _1527808866uncollapseEaser:Power;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:CompetitorAnalysisPanel;
      
      public function CompetitorAnalysisPanelSkin()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._CompetitorAnalysisPanelSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_CompetitorAnalysisPanelSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CompetitorAnalysisPanelSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.blendMode = "normal";
         this.transitions = [this._CompetitorAnalysisPanelSkin_Transition1_c(),this._CompetitorAnalysisPanelSkin_Transition2_c()];
         this.mxmlContent = [this._CompetitorAnalysisPanelSkin_Rect1_i(),this._CompetitorAnalysisPanelSkin_Group1_i()];
         this.currentState = "normal";
         this._CompetitorAnalysisPanelSkin_Power1_i();
         this._CompetitorAnalysisPanelSkin_Power2_i();
         var _CompetitorAnalysisPanelSkin_BitmapImage1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisPanelSkin_BitmapImage1_i);
         var _CompetitorAnalysisPanelSkin_BitmapImage2_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisPanelSkin_BitmapImage2_i);
         var _CompetitorAnalysisPanelSkin_Button1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisPanelSkin_Button1_i);
         var _CompetitorAnalysisPanelSkin_Group3_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisPanelSkin_Group3_i);
         var _CompetitorAnalysisPanelSkin_TextInput1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisPanelSkin_TextInput1_i);
         states = [new State({
            "name":"normal",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_Group3_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["titleBarGroup"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_BitmapImage1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_Group2",
               "propertyName":"mxmlContent",
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_Button1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_HGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_CompetitorAnalysisPanelSkin_Spacer1"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_TextInput1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_HGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_CompetitorAnalysisPanelSkin_Spacer1"]
            })]
         }),new State({
            "name":"collapsed",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_BitmapImage2_factory,
               "destination":"_CompetitorAnalysisPanelSkin_Group2",
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"titleBarGroup",
               "name":"toolTip",
               "value":"Open"
            }),this._CompetitorAnalysisPanelSkin_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "target":"titleBarGroup",
               "name":"rotation",
               "value":undefined
            })),new SetProperty().initializeFromObject({
               "target":"contentGroup",
               "name":"visible",
               "value":false
            })]
         }),new State({
            "name":"disabled",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_Group3_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["titleBarGroup"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_BitmapImage1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_Group2",
               "propertyName":"mxmlContent",
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_Button1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_HGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_CompetitorAnalysisPanelSkin_Spacer1"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_TextInput1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_HGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_CompetitorAnalysisPanelSkin_Spacer1"]
            }),new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         }),new State({
            "name":"disabledWithControlBar",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_Group3_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["titleBarGroup"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_BitmapImage1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_Group2",
               "propertyName":"mxmlContent",
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_Button1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_HGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_CompetitorAnalysisPanelSkin_Spacer1"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_TextInput1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_HGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_CompetitorAnalysisPanelSkin_Spacer1"]
            })]
         }),new State({
            "name":"normalWithControlBar",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_Group3_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["titleBarGroup"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_BitmapImage1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_Group2",
               "propertyName":"mxmlContent",
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_Button1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_HGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_CompetitorAnalysisPanelSkin_Spacer1"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisPanelSkin_TextInput1_factory,
               "destination":"_CompetitorAnalysisPanelSkin_HGroup1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_CompetitorAnalysisPanelSkin_Spacer1"]
            })]
         })];
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_SetProperty1",this._CompetitorAnalysisPanelSkin_SetProperty1);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(---((§§pop() - 58) * 58));
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
         CompetitorAnalysisPanelSkin._watcherSetupUtil = param1;
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
      
      private final function _CompetitorAnalysisPanelSkin_Power1_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((--§§pop() - 49) * 21);
         }
         §§pop().easeInFraction = §§pop();
         this.collapseEaser = _loc1_;
         BindingManager.executeBindings(this,"collapseEaser",this.collapseEaser);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Power2_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 36) * 79 + 1);
         }
         §§pop().easeInFraction = §§pop();
         this.uncollapseEaser = _loc1_;
         BindingManager.executeBindings(this,"uncollapseEaser",this.uncollapseEaser);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Transition1_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "normal";
         _loc1_.toState = "collapsed";
         _loc1_.effect = this._CompetitorAnalysisPanelSkin_Sequence1_c();
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Sequence1_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._CompetitorAnalysisPanelSkin_Fade1_i(),this._CompetitorAnalysisPanelSkin_Parallel1_i()];
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 - 111 - 39) + 89 + 1);
         }
         §§pop().duration = §§pop();
         this._CompetitorAnalysisPanelSkin_Fade1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Fade1",this._CompetitorAnalysisPanelSkin_Fade1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Parallel1_i() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         _loc1_.children = [this._CompetitorAnalysisPanelSkin_Rotate1_i(),this._CompetitorAnalysisPanelSkin_Resize1_i()];
         this._CompetitorAnalysisPanelSkin_Parallel1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Parallel1",this._CompetitorAnalysisPanelSkin_Parallel1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Rotate1_i() : Rotate
      {
         var _loc1_:Rotate = new Rotate();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 81 - 15);
         }
         §§pop().duration = §§pop();
         this._CompetitorAnalysisPanelSkin_Rotate1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Rotate1",this._CompetitorAnalysisPanelSkin_Rotate1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Resize1_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push(-(§§pop() - 71 - 85 - 110) - 1);
         }
         §§pop().duration = §§pop();
         this._CompetitorAnalysisPanelSkin_Resize1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Resize1",this._CompetitorAnalysisPanelSkin_Resize1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Transition2_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "collapsed";
         _loc1_.toState = "normal";
         _loc1_.effect = this._CompetitorAnalysisPanelSkin_Sequence2_c();
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Sequence2_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._CompetitorAnalysisPanelSkin_Parallel2_i(),this._CompetitorAnalysisPanelSkin_Fade2_i()];
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Parallel2_i() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         _loc1_.children = [this._CompetitorAnalysisPanelSkin_Rotate2_i(),this._CompetitorAnalysisPanelSkin_Resize2_i()];
         this._CompetitorAnalysisPanelSkin_Parallel2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Parallel2",this._CompetitorAnalysisPanelSkin_Parallel2);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Rotate2_i() : Rotate
      {
         var _loc1_:Rotate = new Rotate();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push(-§§pop() + 100 - 1 - 14 + 18 - 1);
         }
         §§pop().duration = §§pop();
         this._CompetitorAnalysisPanelSkin_Rotate2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Rotate2",this._CompetitorAnalysisPanelSkin_Rotate2);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Resize2_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 + 81) - 1);
         }
         §§pop().duration = §§pop();
         this._CompetitorAnalysisPanelSkin_Resize2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Resize2",this._CompetitorAnalysisPanelSkin_Resize2);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Fade2_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push(§§pop() + 34 - 112 - 1);
         }
         §§pop().duration = §§pop();
         this._CompetitorAnalysisPanelSkin_Fade2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Fade2",this._CompetitorAnalysisPanelSkin_Fade2);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 76 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() * 49 - 54 + 1 + 102) * 77);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 8 - 65);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) - 5) + 91 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 13 - 1) * 13 - 75) + 1);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 - 107 - 1);
         }
         §§pop().topRightRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 102) - 77 + 77 - 84 - 1 + 110);
         }
         §§pop().bottomLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) * 114 + 36 - 102));
         }
         §§pop().bottomRightRadiusX = §§pop();
         _loc1_.fill = this._CompetitorAnalysisPanelSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(§§pop() + 82 - 1));
         }
         §§pop().color = §§pop();
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1 + 1) + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 32) * 62);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 45 - 1 + 1) * 71 * 112 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(35);
         if(_loc2_)
         {
            §§push(§§pop() * 57 - 12 + 1 + 1 - 84 - 1);
         }
         §§pop().maxHeight = §§pop();
         _loc1_.toolTip = "Collapse";
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.mxmlContent = [this._CompetitorAnalysisPanelSkin_Rect2_c(),this._CompetitorAnalysisPanelSkin_Rect3_i(),this._CompetitorAnalysisPanelSkin_HGroup1_i()];
         _loc1_.id = "titleBarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleBarGroup = _loc1_;
         BindingManager.executeBindings(this,"titleBarGroup",this.titleBarGroup);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(35);
         if(_loc3_)
         {
            §§push(-(§§pop() - 67) + 15 + 1 + 58 + 1 + 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 102 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 45 - 1 - 1 + 26) * 116 * 105);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 113 - 1 - 80 - 63) * 52 - 1);
         }
         §§pop().top = §§pop();
         _loc1_.alpha = 0.8;
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1) + 96 - 1);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 38 - 94);
         }
         §§pop().topRightRadiusX = §§pop();
         _loc1_.fill = this._CompetitorAnalysisPanelSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(§§pop() * 50 * 26 + 33);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._CompetitorAnalysisPanelSkin_GradientEntry1_c(),this._CompetitorAnalysisPanelSkin_GradientEntry2_c()];
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(14869218);
         if(_loc3_)
         {
            §§push(-(§§pop() - 19 + 115) + 101 - 23 - 1 - 37);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(14277081);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1));
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) - 1) * 81 + 10);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 - 59 - 20) * 10 + 4 + 60);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 82) * 34 - 1 + 108);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(36);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 29);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 - 1 - 9 - 1);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 13) + 1) + 1);
         }
         §§pop().topRightRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 + 1) - 1 - 101);
         }
         §§pop().bottomLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 65) * 50);
         }
         §§pop().bottomRightRadiusX = §§pop();
         _loc1_.fill = this._CompetitorAnalysisPanelSkin_SolidColor2_c();
         _loc1_.initialized(this,"_CompetitorAnalysisPanelSkin_Rect3");
         this._CompetitorAnalysisPanelSkin_Rect3 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Rect3",this._CompetitorAnalysisPanelSkin_Rect3);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(12632256);
         if(_loc2_)
         {
            §§push(-(§§pop() - 28 - 1 - 15 - 1) - 70);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() * 118 - 1 - 56 - 1) * 106);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-((§§pop() + 85 + 1) * 87) - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(---§§pop() * 115));
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(--§§pop() - 30 + 1) - 5);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 102 + 64);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._CompetitorAnalysisPanelSkin_Label1_i(),this._CompetitorAnalysisPanelSkin_Spacer1_i(),this._CompetitorAnalysisPanelSkin_Group2_i()];
         _loc1_.id = "_CompetitorAnalysisPanelSkin_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisPanelSkin_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_HGroup1",this._CompetitorAnalysisPanelSkin_HGroup1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() - 64 - 62 - 1);
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
      
      private final function _CompetitorAnalysisPanelSkin_Spacer1_i() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 - 1) * 70 * 54);
         }
         §§pop().width = §§pop();
         _loc1_.id = "_CompetitorAnalysisPanelSkin_Spacer1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisPanelSkin_Spacer1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Spacer1",this._CompetitorAnalysisPanelSkin_Spacer1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1 + 1 + 1 + 64 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 98 - 92) * 119 - 1);
         }
         §§pop().height = §§pop();
         _loc1_.addEventListener("mouseOut",this.__searchInput_mouseOut);
         _loc1_.addEventListener("mouseOver",this.__searchInput_mouseOver);
         _loc1_.id = "searchInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.searchInput = _loc1_;
         BindingManager.executeBindings(this,"searchInput",this.searchInput);
         return _loc1_;
      }
      
      public final function __searchInput_mouseOut(param1:MouseEvent) : void
      {
         this.titleBarGroup.buttonMode = !this.titleBarGroup.buttonMode;
      }
      
      public final function __searchInput_mouseOver(param1:MouseEvent) : void
      {
         this.titleBarGroup.buttonMode = !this.titleBarGroup.buttonMode;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(150);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1) - 63);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() + 109 + 53 - 63 + 59);
         }
         §§pop().height = §§pop();
         _loc1_.addEventListener("mouseOut",this.__searchButton_mouseOut);
         _loc1_.addEventListener("mouseOver",this.__searchButton_mouseOver);
         _loc1_.id = "searchButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.searchButton = _loc1_;
         BindingManager.executeBindings(this,"searchButton",this.searchButton);
         return _loc1_;
      }
      
      public final function __searchButton_mouseOut(param1:MouseEvent) : void
      {
         this.titleBarGroup.buttonMode = !this.titleBarGroup.buttonMode;
      }
      
      public final function __searchButton_mouseOver(param1:MouseEvent) : void
      {
         this.titleBarGroup.buttonMode = !this.titleBarGroup.buttonMode;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [];
         _loc1_.id = "_CompetitorAnalysisPanelSkin_Group2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisPanelSkin_Group2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisPanelSkin_Group2",this._CompetitorAnalysisPanelSkin_Group2);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.initialized(this,"collapseIcon");
         this.collapseIcon = _loc1_;
         BindingManager.executeBindings(this,"collapseIcon",this.collapseIcon);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_BitmapImage2_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.initialized(this,"nonCollapseIcon");
         this.nonCollapseIcon = _loc1_;
         BindingManager.executeBindings(this,"nonCollapseIcon",this.nonCollapseIcon);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisPanelSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 58 + 1 - 1 - 1 + 81));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1 - 1 + 109);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 10 * 47));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 - 1 - 7) - 62) + 17);
         }
         §§pop().minHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((---(§§pop() + 1) - 75) * 13);
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
      
      private final function _CompetitorAnalysisPanelSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 109 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CompetitorAnalysisPanelSkin_Fade1.target","contentGroup");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Array
         {
            var _loc1_:* = [titleBarGroup,this];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"_CompetitorAnalysisPanelSkin_Parallel1.targets");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 99 + 114 + 76);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CompetitorAnalysisPanelSkin_Rotate1.target","titleBarGroup");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(((§§pop() + 1) * 77 + 1) * 100 * 84));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_CompetitorAnalysisPanelSkin_Resize1.target");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() * 78 + 1 - 105 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CompetitorAnalysisPanelSkin_Resize1.easer","collapseEaser");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() + 118 + 2 + 1 + 37 - 111);
         }
         §§pop()[§§pop()] = new Binding(this,function():Array
         {
            var _loc1_:* = [titleBarGroup,this];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"_CompetitorAnalysisPanelSkin_Parallel2.targets");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 113));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CompetitorAnalysisPanelSkin_Rotate2.target","titleBarGroup");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() - 77) + 8);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_CompetitorAnalysisPanelSkin_Resize2.target");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() - 92 - 1 - 1) * 57);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CompetitorAnalysisPanelSkin_Resize2.easer","uncollapseEaser");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(--((§§pop() + 1 - 92 + 108) * 114));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CompetitorAnalysisPanelSkin_Fade2.target","contentGroup");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() - 92 + 1 + 72 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return hostComponent.getStyle("backgroundAlpha");
         },null,"background.alpha");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push((§§pop() + 57 + 1) * 4);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return hostComponent.colllapsedRotation;
         },null,"_CompetitorAnalysisPanelSkin_SetProperty1.value");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 1 - 13 - 101);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return hostComponent.getStyle("backgroundAlpha");
         },null,"_CompetitorAnalysisPanelSkin_Rect3.alpha");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push((§§pop() + 106 - 56 + 1) * 15);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return hostComponent.getStyle("collapse");
         },null,"collapseIcon.source");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push(-((-§§pop() - 80) * 23 + 13) * 88 * 103);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return hostComponent.getStyle("nonCollapse");
         },null,"nonCollapseIcon.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _CompetitorAnalysisPanelSkin_Group2() : Group
      {
         return this._145784632_CompetitorAnalysisPanelSkin_Group2;
      }
      
      public function set _CompetitorAnalysisPanelSkin_Group2(param1:Group) : void
      {
         var _loc2_:Object = this._145784632_CompetitorAnalysisPanelSkin_Group2;
         if(_loc2_ !== param1)
         {
            this._145784632_CompetitorAnalysisPanelSkin_Group2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CompetitorAnalysisPanelSkin_Group2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CompetitorAnalysisPanelSkin_HGroup1() : HGroup
      {
         return this._116594923_CompetitorAnalysisPanelSkin_HGroup1;
      }
      
      public function set _CompetitorAnalysisPanelSkin_HGroup1(param1:HGroup) : void
      {
         var _loc2_:Object = this._116594923_CompetitorAnalysisPanelSkin_HGroup1;
         if(_loc2_ !== param1)
         {
            this._116594923_CompetitorAnalysisPanelSkin_HGroup1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CompetitorAnalysisPanelSkin_HGroup1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CompetitorAnalysisPanelSkin_SetProperty1() : SetProperty
      {
         return this._499768161_CompetitorAnalysisPanelSkin_SetProperty1;
      }
      
      public function set _CompetitorAnalysisPanelSkin_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._499768161_CompetitorAnalysisPanelSkin_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._499768161_CompetitorAnalysisPanelSkin_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CompetitorAnalysisPanelSkin_SetProperty1",_loc2_,param1));
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
      public function get searchButton() : Button
      {
         return this._365389062searchButton;
      }
      
      public function set searchButton(param1:Button) : void
      {
         var _loc2_:Object = this._365389062searchButton;
         if(_loc2_ !== param1)
         {
            this._365389062searchButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchInput() : TextInput
      {
         return this._559723774searchInput;
      }
      
      public function set searchInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._559723774searchInput;
         if(_loc2_ !== param1)
         {
            this._559723774searchInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchInput",_loc2_,param1));
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
      public function get hostComponent() : CompetitorAnalysisPanel
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CompetitorAnalysisPanel) : void
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
