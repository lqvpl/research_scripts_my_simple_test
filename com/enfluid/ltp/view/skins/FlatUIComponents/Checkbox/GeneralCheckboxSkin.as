package com.enfluid.ltp.view.skins.FlatUIComponents.Checkbox
{
   import spark.skins.SparkSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.BitmapImage;
   import mx.binding.BindingManager;
   import mx.graphics.GradientEntry;
   import spark.primitives.Rect;
   import spark.components.Group;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.adobe.cairngorm.observer.Observe;
   import spark.components.supportClasses.LabelPlacement;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.SaveProxiesCommand;
   import mx.graphics.LinearGradientStroke;
   import mx.events.FlexEvent;
   import spark.events.PopUpEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.HGroup;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.skins.target;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import mx.graphics.SolidColor;
   import mx.events.CloseEvent;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import spark.components.CheckBox;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass10;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class GeneralCheckboxSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static const exclusions:Array = ["labelDisplay","check"];
      
      private static const symbols:Array = [];
      
      private static const focusExclusions:Array = ["labelDisplay"];
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _431941019_GeneralCheckboxSkin_GradientEntry1:GradientEntry;
      
      private var _431941018_GeneralCheckboxSkin_GradientEntry2:GradientEntry;
      
      private var _431941017_GeneralCheckboxSkin_GradientEntry3:GradientEntry;
      
      private var _431941016_GeneralCheckboxSkin_GradientEntry4:GradientEntry;
      
      public var _GeneralCheckboxSkin_Rect2:Rect;
      
      public var _GeneralCheckboxSkin_Rect3:Rect;
      
      public var _GeneralCheckboxSkin_Rect4:Rect;
      
      public var _GeneralCheckboxSkin_Rect5:Rect;
      
      public var _GeneralCheckboxSkin_Rect6:Rect;
      
      public var _GeneralCheckboxSkin_Rect7:Rect;
      
      private var _94627080check:BitmapImage;
      
      private var _1611109018checkDisplay:Group;
      
      private var _1184053038labelDisplay:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:CheckBox;
      
      public function GeneralCheckboxSkin()
      {
         var target:Object = null;
         var _GeneralCheckboxSkin_BitmapImage1_factory:DeferredInstanceFromFunction = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._GeneralCheckboxSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_FlatUIComponents_Checkbox_GeneralCheckboxSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GeneralCheckboxSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._GeneralCheckboxSkin_Group1_i(),this._GeneralCheckboxSkin_Label1_i()];
         this.currentState = "up";
         _GeneralCheckboxSkin_BitmapImage1_factory = new DeferredInstanceFromFunction(this._GeneralCheckboxSkin_BitmapImage1_i);
         var _GeneralCheckboxSkin_Rect3_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._GeneralCheckboxSkin_Rect3_i);
         var _GeneralCheckboxSkin_Rect4_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._GeneralCheckboxSkin_Rect4_i);
         var _GeneralCheckboxSkin_Rect5_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._GeneralCheckboxSkin_Rect5_i);
         var _GeneralCheckboxSkin_Rect6_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._GeneralCheckboxSkin_Rect6_i);
         var _GeneralCheckboxSkin_Rect7_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._GeneralCheckboxSkin_Rect7_i);
         §§push();
         §§push(new State({
            "name":"up",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_GeneralCheckboxSkin_Rect3_factory,
               "destination":"checkDisplay",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_GeneralCheckboxSkin_Rect2"]
            })]
         }));
         §§push(new State({
            "name":"over",
            "stateGroups":["overStates"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_GeneralCheckboxSkin_Rect3_factory,
               "destination":"checkDisplay",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_GeneralCheckboxSkin_Rect2"]
            }),new SetProperty().initializeFromObject({
               "target":"_GeneralCheckboxSkin_GradientEntry3",
               "name":"alpha",
               "value":0.8
            }),new SetProperty().initializeFromObject({
               "target":"_GeneralCheckboxSkin_GradientEntry4",
               "name":"alpha",
               "value":0.8
            })]
         }));
         §§push();
         §§push("name");
         §§push("down");
         §§push("stateGroups");
         §§push(["downStates"]);
         §§push("overrides");
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_GeneralCheckboxSkin_Rect7_factory,
            "destination":"checkDisplay",
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["_GeneralCheckboxSkin_Rect2"]
         }));
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_GeneralCheckboxSkin_Rect6_factory,
            "destination":"checkDisplay",
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["_GeneralCheckboxSkin_Rect2"]
         }));
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_GeneralCheckboxSkin_Rect5_factory,
            "destination":"checkDisplay",
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["_GeneralCheckboxSkin_Rect2"]
         }));
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_GeneralCheckboxSkin_Rect4_factory,
            "destination":"checkDisplay",
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["_GeneralCheckboxSkin_Rect2"]
         }));
         §§push(new SetProperty());
         §§push("target");
         §§push("_GeneralCheckboxSkin_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(12569557);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 58);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty().initializeFromObject({
            "target":"_GeneralCheckboxSkin_GradientEntry1",
            "name":"alpha",
            "value":0.75
         }));
         §§push(new SetProperty());
         §§push("target");
         §§push("_GeneralCheckboxSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(12569557);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 29);
         }
         §§push(new §§pop().State(null));
         §§push(new State({
            "name":"disabled",
            "stateGroups":["disabledStates"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_GeneralCheckboxSkin_Rect3_factory,
               "destination":"checkDisplay",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_GeneralCheckboxSkin_Rect2"]
            }),new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         }));
         §§push(new State({
            "name":"upAndSelected",
            "stateGroups":["selectedStates"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_GeneralCheckboxSkin_BitmapImage1_factory,
               "destination":"checkDisplay",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_GeneralCheckboxSkin_Rect2"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_GeneralCheckboxSkin_Rect3_factory,
               "destination":"checkDisplay",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_GeneralCheckboxSkin_Rect2"]
            })]
         }));
         §§push(new State({
            "name":"overAndSelected",
            "stateGroups":["selectedStates","overStates"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_GeneralCheckboxSkin_BitmapImage1_factory,
               "destination":"checkDisplay",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_GeneralCheckboxSkin_Rect2"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_GeneralCheckboxSkin_Rect3_factory,
               "destination":"checkDisplay",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_GeneralCheckboxSkin_Rect2"]
            }),new SetProperty().initializeFromObject({
               "target":"_GeneralCheckboxSkin_GradientEntry3",
               "name":"alpha",
               "value":0.8
            }),new SetProperty().initializeFromObject({
               "target":"_GeneralCheckboxSkin_GradientEntry4",
               "name":"alpha",
               "value":0.8
            })]
         }));
         §§push();
         §§push("name");
         §§push("downAndSelected");
         §§push("stateGroups");
         §§push(["selectedStates","downStates"]);
         §§push("overrides");
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_GeneralCheckboxSkin_BitmapImage1_factory,
            "destination":"checkDisplay",
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["_GeneralCheckboxSkin_Rect2"]
         }));
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_GeneralCheckboxSkin_Rect7_factory,
            "destination":"checkDisplay",
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["_GeneralCheckboxSkin_Rect2"]
         }));
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_GeneralCheckboxSkin_Rect6_factory,
            "destination":"checkDisplay",
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["_GeneralCheckboxSkin_Rect2"]
         }));
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_GeneralCheckboxSkin_Rect5_factory,
            "destination":"checkDisplay",
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["_GeneralCheckboxSkin_Rect2"]
         }));
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_GeneralCheckboxSkin_Rect4_factory,
            "destination":"checkDisplay",
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["_GeneralCheckboxSkin_Rect2"]
         }));
         §§push(new SetProperty());
         §§push("target");
         §§push("_GeneralCheckboxSkin_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(12569557);
         if(_loc4_)
         {
            §§push(§§pop() * 112 - 1 + 23);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty().initializeFromObject({
            "target":"_GeneralCheckboxSkin_GradientEntry1",
            "name":"alpha",
            "value":0.75
         }));
         §§push(new SetProperty());
         §§push("target");
         §§push("_GeneralCheckboxSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(12569557);
         if(_loc4_)
         {
            §§push((§§pop() + 1 + 94 - 111 + 1 + 1) * 44);
         }
         §§pop().states = null;
         _GeneralCheckboxSkin_BitmapImage1_factory.getInstance();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 - 45 - 1) * 68 - 1 - 46);
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
         GeneralCheckboxSkin._watcherSetupUtil = param1;
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
      
      override public function get symbolItems() : Array
      {
         return symbols;
      }
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      override public function get focusSkinExclusions() : Array
      {
         return focusExclusions;
      }
      
      override public function styleChanged(param1:String) : void
      {
         super.styleChanged(param1);
         if(param1 == "labelPlacement" || param1 == "gap" || param1 === null)
         {
            this.updateLabelPlacement();
         }
      }
      
      public final function updateLabelPlacement() : void
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 47) - 1);
         }
         var _loc1_:* = §§pop();
         if(!this.checkDisplay || !this.labelDisplay)
         {
            return;
         }
         if(getStyle("gap") == undefined)
         {
            §§push(5);
            if(_loc4_)
            {
               §§push((§§pop() - 1 - 1 - 1) * 11);
            }
            _loc1_ = §§pop();
         }
         else
         {
            _loc1_ = int(int(getStyle("gap")));
         }
         if(LabelPlacement.BOTTOM === _loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push((-§§pop() - 1) * 103 + 48 + 21 - 80);
            }
         }
         else if(LabelPlacement.LEFT === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(-(§§pop() + 1 - 1));
            }
         }
         else if(LabelPlacement.TOP === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push((§§pop() - 1 - 8 - 100) * 64 * 66 * 98 - 1);
            }
         }
         else if(LabelPlacement.RIGHT === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(§§pop() + 1 + 1 + 35 - 1);
            }
         }
         else
         {
            §§push(4);
            if(_loc4_)
            {
               §§push((§§pop() + 104 - 49 + 1) * 6 + 1 + 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc3_)
               {
                  §§push((-(§§pop() + 105) - 1 + 1 + 3 - 1) * 18);
               }
               §§pop().horizontalCenter = §§pop();
               this.labelDisplay.verticalCenter = undefined;
               this.labelDisplay.top = this.checkDisplay.height + _loc1_;
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() - 1 - 1 - 13);
               }
               §§pop().bottom = §§pop();
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push((-§§pop() - 3 + 1) * 63 + 1 + 63);
               }
               §§pop().left = §§pop();
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc3_)
               {
                  §§push(-(-§§pop() + 12) - 81 - 51 + 95);
               }
               §§pop().right = §§pop();
               §§push(this.checkDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(§§pop() - 1 - 83 + 87) * 48 + 104 + 111);
               }
               §§pop().horizontalCenter = §§pop();
               this.checkDisplay.verticalCenter = undefined;
               §§push(this.checkDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() + 65 - 96 - 84);
               }
               §§pop().top = §§pop();
               this.checkDisplay.bottom = undefined;
               break;
            case 1:
               this.labelDisplay.horizontalCenter = undefined;
               §§push(this.labelDisplay);
               §§push(2);
               if(_loc4_)
               {
                  §§push(-(-(§§pop() + 1) - 57 + 1 - 18));
               }
               §§pop().verticalCenter = §§pop();
               §§push(this.labelDisplay);
               §§push(3);
               if(_loc3_)
               {
                  §§push(--((§§pop() + 100 - 3 + 75 + 1) * 101));
               }
               §§pop().top = §§pop();
               §§push(this.labelDisplay);
               §§push(3);
               if(_loc4_)
               {
                  §§push(-(§§pop() - 75 + 1) * 116 + 1);
               }
               §§pop().bottom = §§pop();
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push((§§pop() * 39 - 1 - 101 + 35) * 93);
               }
               §§pop().left = §§pop();
               this.labelDisplay.right = this.checkDisplay.width + _loc1_;
               this.checkDisplay.horizontalCenter = undefined;
               §§push(this.checkDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push((§§pop() + 1) * 71 - 103 + 1 - 49 - 20 + 1);
               }
               §§pop().verticalCenter = §§pop();
               this.checkDisplay.left = undefined;
               §§push(this.checkDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push((§§pop() - 42 - 72 - 1 + 18 + 1 + 17) * 104);
               }
               §§pop().right = §§pop();
               break;
            case 2:
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push((§§pop() - 1 + 1 - 1 + 1 + 1 - 50) * 63);
               }
               §§pop().horizontalCenter = §§pop();
               this.labelDisplay.verticalCenter = undefined;
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(§§pop() + 51 + 1 - 53 - 45 - 8));
               }
               §§pop().top = §§pop();
               this.labelDisplay.bottom = this.checkDisplay.height + _loc1_;
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push((-§§pop() - 29 + 1) * 119 - 64);
               }
               §§pop().left = §§pop();
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc3_)
               {
                  §§push(-((§§pop() * 64 - 55) * 79 - 1 - 1 + 42));
               }
               §§pop().right = §§pop();
               §§push(this.checkDisplay);
               §§push(0);
               if(_loc3_)
               {
                  §§push(-(§§pop() - 1 + 1 - 59));
               }
               §§pop().horizontalCenter = §§pop();
               this.checkDisplay.verticalCenter = undefined;
               this.checkDisplay.top = undefined;
               §§push(this.checkDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(-(-(§§pop() + 38) + 1) - 1 - 1));
               }
               §§pop().bottom = §§pop();
               break;
            case 3:
            default:
               this.labelDisplay.horizontalCenter = undefined;
               §§push(this.labelDisplay);
               §§push(2);
               if(_loc3_)
               {
                  §§push(-(-§§pop() - 1));
               }
               §§pop().verticalCenter = §§pop();
               §§push(this.labelDisplay);
               §§push(3);
               if(_loc3_)
               {
                  §§push((§§pop() + 1) * 8 + 78);
               }
               §§pop().top = §§pop();
               §§push(this.labelDisplay);
               §§push(3);
               if(_loc4_)
               {
                  §§push(§§pop() + 1 + 1 + 107 - 47);
               }
               §§pop().bottom = §§pop();
               this.labelDisplay.left = this.checkDisplay.width + _loc1_;
               §§push(this.labelDisplay);
               §§push(0);
               if(_loc3_)
               {
                  §§push(§§pop() * 16 - 1 + 1 - 70 + 1 - 1);
               }
               §§pop().right = §§pop();
               this.checkDisplay.horizontalCenter = undefined;
               §§push(this.checkDisplay);
               §§push(0);
               if(_loc3_)
               {
                  §§push(-(§§pop() + 1) - 1);
               }
               §§pop().verticalCenter = §§pop();
               §§push(this.checkDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push(-§§pop() - 65 - 85);
               }
               §§pop().left = §§pop();
               this.checkDisplay.right = undefined;
         }
      }
      
      private final function _GeneralCheckboxSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 44 - 1) * 87 - 0 - 1));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(13);
         if(_loc3_)
         {
            §§push(-(§§pop() + 50 + 1 + 1));
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 31 + 4 + 1 - 26);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.layoutDirection = "ltr";
         _loc1_.mxmlContent = [this._GeneralCheckboxSkin_Rect1_c(),this._GeneralCheckboxSkin_Rect2_i()];
         _loc1_.id = "checkDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.checkDisplay = _loc1_;
         BindingManager.executeBindings(this,"checkDisplay",this.checkDisplay);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 31 + 1) * 97 - 75) * 70);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 47 + 1) + 1 - 4);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 31 - 62) + 48 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 22) - 1 + 65 + 103);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._GeneralCheckboxSkin_LinearGradientStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-((§§pop() + 80 + 1 - 1 + 1) * 48));
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1 + 1 - 1 - 1 + 1));
         }
         §§pop().weight = §§pop();
         _loc1_.entries = [this._GeneralCheckboxSkin_GradientEntry1_i(),this._GeneralCheckboxSkin_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(12569557);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1 - 1 - 1) + 48) * 94);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         this._GeneralCheckboxSkin_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_GradientEntry1",this._GeneralCheckboxSkin_GradientEntry1);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(12569557);
         if(_loc2_)
         {
            §§push(§§pop() + 14 + 25 + 18 - 105 - 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         this._GeneralCheckboxSkin_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_GradientEntry2",this._GeneralCheckboxSkin_GradientEntry2);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(-(§§pop() + 67 + 86) - 26) * 43);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 53 + 113 + 33);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--§§pop() - 27 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 94 + 54 + 1) * 4 + 86));
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._GeneralCheckboxSkin_SolidColor1_c();
         _loc1_.initialized(this,"_GeneralCheckboxSkin_Rect2");
         this._GeneralCheckboxSkin_Rect2 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_Rect2",this._GeneralCheckboxSkin_Rect2);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(15790320);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1) * 97 + 119 - 16 + 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 34 + 1 - 25) * 8 - 1) + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 28 + 1 + 1 - 71) - 66);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 1 - 91) * 17 + 1 + 1) * 106);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._GeneralCheckboxSkin_LinearGradientStroke2_c();
         _loc1_.initialized(this,"_GeneralCheckboxSkin_Rect3");
         this._GeneralCheckboxSkin_Rect3 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_Rect3",this._GeneralCheckboxSkin_Rect3);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_LinearGradientStroke2_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 1 + 99 - 1 - 1);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 + 1 - 1) * 114 + 69));
         }
         §§pop().weight = §§pop();
         _loc1_.entries = [this._GeneralCheckboxSkin_GradientEntry3_i(),this._GeneralCheckboxSkin_GradientEntry4_i()];
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_GradientEntry3_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(12569557);
         if(_loc3_)
         {
            §§push(-((§§pop() * 8 - 55) * 103 + 1 + 26));
         }
         §§pop().color = §§pop();
         this._GeneralCheckboxSkin_GradientEntry3 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_GradientEntry3",this._GeneralCheckboxSkin_GradientEntry3);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_GradientEntry4_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(12569557);
         if(_loc2_)
         {
            §§push(§§pop() * 92 - 1 - 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
         this._GeneralCheckboxSkin_GradientEntry4 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_GradientEntry4",this._GeneralCheckboxSkin_GradientEntry4);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_Rect4_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--§§pop() - 1 + 1 - 85);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--§§pop() - 118 + 1 - 1 - 64 - 111);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) + 70 - 1 - 32 + 60 + 66);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--((§§pop() + 1) * 111 * 66 * 89 + 105));
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._GeneralCheckboxSkin_SolidColor2_c();
         _loc1_.initialized(this,"_GeneralCheckboxSkin_Rect4");
         this._GeneralCheckboxSkin_Rect4 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_Rect4",this._GeneralCheckboxSkin_Rect4);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 - 1 + 112) * 31));
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.07;
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_Rect5_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 107 - 1) + 108);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 66 + 29) * 21 - 69);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 7 + 7) * 86 + 1) - 73);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 60 - 95 + 14));
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._GeneralCheckboxSkin_SolidColor3_c();
         _loc1_.initialized(this,"_GeneralCheckboxSkin_Rect5");
         this._GeneralCheckboxSkin_Rect5 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_Rect5",this._GeneralCheckboxSkin_Rect5);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_SolidColor3_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() + 99) + 1) * 62 - 1 - 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.07;
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_Rect6_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() + 89) + 1 + 1) * 76);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 90 - 30) * 14));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 15 - 28) * 104);
         }
         §§pop().top = §§pop();
         _loc1_.fill = this._GeneralCheckboxSkin_SolidColor4_c();
         _loc1_.initialized(this,"_GeneralCheckboxSkin_Rect6");
         this._GeneralCheckboxSkin_Rect6 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_Rect6",this._GeneralCheckboxSkin_Rect6);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_SolidColor4_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 - 1 + 44);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.25;
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_Rect7_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 106));
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 - 41));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 + 113) * 10);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 109 + 1 + 1);
         }
         §§pop().top = §§pop();
         _loc1_.fill = this._GeneralCheckboxSkin_SolidColor5_c();
         _loc1_.initialized(this,"_GeneralCheckboxSkin_Rect7");
         this._GeneralCheckboxSkin_Rect7 = _loc1_;
         BindingManager.executeBindings(this,"_GeneralCheckboxSkin_Rect7",this._GeneralCheckboxSkin_Rect7);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_SolidColor5_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 83) * 43 * 77 - 1));
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.09;
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 46 * 45 + 1 - 78 + 6 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(--(§§pop() - 1 - 1 + 1 - 1) + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() - 57 - 1) * 118 - 30) + 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.smooth = true;
         _loc1_.smoothingQuality = "high";
         _loc1_.alpha = 0.75;
         _loc1_.initialized(this,"check");
         this.check = _loc1_;
         BindingManager.executeBindings(this,"check",this.check);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(-((§§pop() + 72 + 21) * 91 * 8 + 24) * 82);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 12) + 64 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 60 - 39));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 90 + 32 - 1) + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() * 70 * 114 * 8 * 115);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() + 107 - 1);
         }
         §§pop().maxDisplayedLines = §§pop();
         _loc1_.setStyle("textAlign","start");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      private final function _GeneralCheckboxSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 48 + 112);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.CHECKBOX_TICK;
         },null,"check.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _GeneralCheckboxSkin_GradientEntry1() : GradientEntry
      {
         return this._431941019_GeneralCheckboxSkin_GradientEntry1;
      }
      
      public function set _GeneralCheckboxSkin_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._431941019_GeneralCheckboxSkin_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._431941019_GeneralCheckboxSkin_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_GeneralCheckboxSkin_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _GeneralCheckboxSkin_GradientEntry2() : GradientEntry
      {
         return this._431941018_GeneralCheckboxSkin_GradientEntry2;
      }
      
      public function set _GeneralCheckboxSkin_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._431941018_GeneralCheckboxSkin_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._431941018_GeneralCheckboxSkin_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_GeneralCheckboxSkin_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _GeneralCheckboxSkin_GradientEntry3() : GradientEntry
      {
         return this._431941017_GeneralCheckboxSkin_GradientEntry3;
      }
      
      public function set _GeneralCheckboxSkin_GradientEntry3(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._431941017_GeneralCheckboxSkin_GradientEntry3;
         if(_loc2_ !== param1)
         {
            this._431941017_GeneralCheckboxSkin_GradientEntry3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_GeneralCheckboxSkin_GradientEntry3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _GeneralCheckboxSkin_GradientEntry4() : GradientEntry
      {
         return this._431941016_GeneralCheckboxSkin_GradientEntry4;
      }
      
      public function set _GeneralCheckboxSkin_GradientEntry4(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._431941016_GeneralCheckboxSkin_GradientEntry4;
         if(_loc2_ !== param1)
         {
            this._431941016_GeneralCheckboxSkin_GradientEntry4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_GeneralCheckboxSkin_GradientEntry4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get check() : BitmapImage
      {
         return this._94627080check;
      }
      
      public function set check(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._94627080check;
         if(_loc2_ !== param1)
         {
            this._94627080check = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"check",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkDisplay() : Group
      {
         return this._1611109018checkDisplay;
      }
      
      public function set checkDisplay(param1:Group) : void
      {
         var _loc2_:Object = this._1611109018checkDisplay;
         if(_loc2_ !== param1)
         {
            this._1611109018checkDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkDisplay",_loc2_,param1));
            }
         }
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
      public function get hostComponent() : CheckBox
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CheckBox) : void
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
