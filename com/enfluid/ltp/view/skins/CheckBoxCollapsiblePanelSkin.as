package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import mx.effects.Parallel;
   import spark.components.CheckBox;
   import spark.effects.Fade;
   import com.enfluid.ltp.view.components.HelpButton;
   import spark.effects.Move;
   import spark.effects.Resize;
   import spark.primitives.Rect;
   import spark.effects.easing.Power;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import mx.states.Transition;
   import mx.effects.Sequence;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.graphics.LinearGradient;
   import mx.graphics.GradientEntry;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import com.hurlant.crypto.symmetric.XTeaKey;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class CheckBoxCollapsiblePanelSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static const exclusions:Array = ["background","titleDisplay","contentGroup"];
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CheckBoxCollapsiblePanelSkin_CheckBox1:CheckBox;
      
      public var _CheckBoxCollapsiblePanelSkin_Fade1:Fade;
      
      public var _CheckBoxCollapsiblePanelSkin_Fade2:Fade;
      
      public var _CheckBoxCollapsiblePanelSkin_HelpButton1:HelpButton;
      
      public var _CheckBoxCollapsiblePanelSkin_Move1:Move;
      
      public var _CheckBoxCollapsiblePanelSkin_Move2:Move;
      
      public var _CheckBoxCollapsiblePanelSkin_Resize1:Resize;
      
      public var _CheckBoxCollapsiblePanelSkin_Resize2:Resize;
      
      private var _1391998104bgFill:Rect;
      
      private var _2040837481collapseEaser:Power;
      
      private var _809612678contentGroup:Group;
      
      private var _624374620titleBarGroup:HGroup;
      
      private var _1893287094titleDisplay:Label;
      
      private var _1527808866uncollapseEaser:Power;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:CheckBoxCollapsiblePanel;
      
      public function CheckBoxCollapsiblePanelSkin()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._CheckBoxCollapsiblePanelSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_CheckBoxCollapsiblePanelSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CheckBoxCollapsiblePanelSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.blendMode = "normal";
         this.transitions = [this._CheckBoxCollapsiblePanelSkin_Transition1_c(),this._CheckBoxCollapsiblePanelSkin_Transition2_c()];
         this.mxmlContent = [this._CheckBoxCollapsiblePanelSkin_Rect1_i(),this._CheckBoxCollapsiblePanelSkin_HGroup1_i()];
         this.currentState = "normal";
         this._CheckBoxCollapsiblePanelSkin_Power1_i();
         this._CheckBoxCollapsiblePanelSkin_Power2_i();
         var _CheckBoxCollapsiblePanelSkin_Group1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CheckBoxCollapsiblePanelSkin_Group1_i);
         §§push();
         §§push();
         §§push("name");
         §§push("normal");
         §§push("overrides");
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_CheckBoxCollapsiblePanelSkin_Group1_factory,
            "destination":null,
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["titleBarGroup"]
         }));
         §§push(new SetProperty());
         §§push("target");
         §§push("bgFill");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 56 - 1 - 1);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("collapsed");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("bgFill");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 1 - 100 + 52);
         }
         §§pop().states = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 28 + 21 + 115 - 99) * 29 - 1 - 1);
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
         CheckBoxCollapsiblePanelSkin._watcherSetupUtil = param1;
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
      
      private final function _CheckBoxCollapsiblePanelSkin_Power1_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 0 * 24 + 1) * 37);
         }
         §§pop().easeInFraction = §§pop();
         this.collapseEaser = _loc1_;
         BindingManager.executeBindings(this,"collapseEaser",this.collapseEaser);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Power2_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 92 - 28 + 1 - 1 + 118);
         }
         §§pop().easeInFraction = §§pop();
         this.uncollapseEaser = _loc1_;
         BindingManager.executeBindings(this,"uncollapseEaser",this.uncollapseEaser);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Transition1_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "normal";
         _loc1_.toState = "collapsed";
         _loc1_.effect = this._CheckBoxCollapsiblePanelSkin_Sequence1_c();
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Sequence1_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._CheckBoxCollapsiblePanelSkin_Fade1_i(),this._CheckBoxCollapsiblePanelSkin_Resize1_i(),this._CheckBoxCollapsiblePanelSkin_Move1_i()];
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push(§§pop() * 4 + 1 - 1 + 1 + 60);
         }
         §§pop().duration = §§pop();
         this._CheckBoxCollapsiblePanelSkin_Fade1 = _loc1_;
         BindingManager.executeBindings(this,"_CheckBoxCollapsiblePanelSkin_Fade1",this._CheckBoxCollapsiblePanelSkin_Fade1);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Resize1_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 8 + 46 - 65);
         }
         §§pop().duration = §§pop();
         this._CheckBoxCollapsiblePanelSkin_Resize1 = _loc1_;
         BindingManager.executeBindings(this,"_CheckBoxCollapsiblePanelSkin_Resize1",this._CheckBoxCollapsiblePanelSkin_Resize1);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Move1_i() : Move
      {
         var _loc1_:Move = new Move();
         this._CheckBoxCollapsiblePanelSkin_Move1 = _loc1_;
         BindingManager.executeBindings(this,"_CheckBoxCollapsiblePanelSkin_Move1",this._CheckBoxCollapsiblePanelSkin_Move1);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Transition2_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "collapsed";
         _loc1_.toState = "normal";
         _loc1_.effect = this._CheckBoxCollapsiblePanelSkin_Sequence2_c();
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Sequence2_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._CheckBoxCollapsiblePanelSkin_Resize2_i(),this._CheckBoxCollapsiblePanelSkin_Fade2_i(),this._CheckBoxCollapsiblePanelSkin_Move2_i()];
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Resize2_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(250);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 1 + 80 - 1);
         }
         §§pop().duration = §§pop();
         this._CheckBoxCollapsiblePanelSkin_Resize2 = _loc1_;
         BindingManager.executeBindings(this,"_CheckBoxCollapsiblePanelSkin_Resize2",this._CheckBoxCollapsiblePanelSkin_Resize2);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Fade2_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(250);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 93 * 78));
         }
         §§pop().duration = §§pop();
         this._CheckBoxCollapsiblePanelSkin_Fade2 = _loc1_;
         BindingManager.executeBindings(this,"_CheckBoxCollapsiblePanelSkin_Fade2",this._CheckBoxCollapsiblePanelSkin_Fade2);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Move2_i() : Move
      {
         var _loc1_:Move = new Move();
         this._CheckBoxCollapsiblePanelSkin_Move2 = _loc1_;
         BindingManager.executeBindings(this,"_CheckBoxCollapsiblePanelSkin_Move2",this._CheckBoxCollapsiblePanelSkin_Move2);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 1 - 109 + 57 - 14 + 66);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 47 * 34 * 57);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(-§§pop() - 1) - 42);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 60 - 1 - 65);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 113 - 91 + 9 + 1);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 119 + 107 - 100);
         }
         §§pop().topRightRadiusX = §§pop();
         _loc1_.fill = this._CheckBoxCollapsiblePanelSkin_LinearGradient1_c();
         _loc1_.initialized(this,"bgFill");
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(§§pop() * 41 + 28 - 1 - 65 - 64);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._CheckBoxCollapsiblePanelSkin_GradientEntry1_c(),this._CheckBoxCollapsiblePanelSkin_GradientEntry2_c()];
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(14869218);
         if(_loc2_)
         {
            §§push(((-(§§pop() * 9 + 1) - 1) * 102 - 53) * 20);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(14277081);
         if(_loc3_)
         {
            §§push(-(§§pop() - 80 - 1) + 119);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() + 117 - 99 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(25);
         if(_loc3_)
         {
            §§push(§§pop() + 8 - 1 - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 64) * 23 + 109);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 69) * 59 + 1 + 92) - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 91 + 88 - 56 - 74);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() + 27 - 101 + 1 + 27));
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(----(§§pop() + 1) + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1) + 91 - 1 + 1);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "baseline";
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 13);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._CheckBoxCollapsiblePanelSkin_CheckBox1_i(),this._CheckBoxCollapsiblePanelSkin_Label1_i(),this._CheckBoxCollapsiblePanelSkin_HelpButton1_i()];
         _loc1_.id = "titleBarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleBarGroup = _loc1_;
         BindingManager.executeBindings(this,"titleBarGroup",this.titleBarGroup);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.id = "_CheckBoxCollapsiblePanelSkin_CheckBox1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CheckBoxCollapsiblePanelSkin_CheckBox1 = _loc1_;
         BindingManager.executeBindings(this,"_CheckBoxCollapsiblePanelSkin_CheckBox1",this._CheckBoxCollapsiblePanelSkin_CheckBox1);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((-(§§pop() - 111) - 1) * 92 - 51);
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
      
      private final function _CheckBoxCollapsiblePanelSkin_HelpButton1_i() : HelpButton
      {
         var _loc1_:HelpButton = new HelpButton();
         _loc1_.id = "_CheckBoxCollapsiblePanelSkin_HelpButton1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CheckBoxCollapsiblePanelSkin_HelpButton1 = _loc1_;
         BindingManager.executeBindings(this,"_CheckBoxCollapsiblePanelSkin_HelpButton1",this._CheckBoxCollapsiblePanelSkin_HelpButton1);
         return _loc1_;
      }
      
      private final function _CheckBoxCollapsiblePanelSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(25);
         if(_loc2_)
         {
            §§push(-(--(-§§pop() + 20) - 106) - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 1 + 103);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(25);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 55) * 87 - 84 + 1));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() + 97 + 1 - 1 + 1));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 41 + 37 + 45) * 17));
         }
         §§pop().minHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 - 51) * 78) + 33 + 29);
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
      
      private final function _CheckBoxCollapsiblePanelSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1 + 1 - 1 + 1) * 16);
         }
         §§pop()[§§pop()] = new Binding(this,function():Array
         {
            var _loc1_:* = [contentGroup,bgFill];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"_CheckBoxCollapsiblePanelSkin_Fade1.targets");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((-(--§§pop() * 40) - 1) * 37);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CheckBoxCollapsiblePanelSkin_Fade1.easer","collapseEaser");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(--(§§pop() + 109));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_CheckBoxCollapsiblePanelSkin_Resize1.target");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 71) + 46 - 1 + 65 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CheckBoxCollapsiblePanelSkin_Resize1.easer","collapseEaser");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(--(§§pop() - 43) - 54 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CheckBoxCollapsiblePanelSkin_Move1.target","titleBarGroup");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 39 - 41 - 40 - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_CheckBoxCollapsiblePanelSkin_Resize2.target");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(§§pop() + 70) * 102 - 53);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CheckBoxCollapsiblePanelSkin_Resize2.easer","uncollapseEaser");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-((§§pop() - 35 - 1) * 82 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CheckBoxCollapsiblePanelSkin_Fade2.target","contentGroup");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(§§pop() - 96) + 17 + 110 + 1 + 1 + 66);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CheckBoxCollapsiblePanelSkin_Fade2.easer","uncollapseEaser");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(-(§§pop() + 80) + 98 - 1 - 3);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CheckBoxCollapsiblePanelSkin_Move2.target","titleBarGroup");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(§§pop() + 30) + 1 - 103 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return currentState != "collapsed";
         },null,"_CheckBoxCollapsiblePanelSkin_CheckBox1.selected");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1 - 1 + 1 - 4));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return CheckBoxCollapsiblePanel(hostComponent).helpTitle && CheckBoxCollapsiblePanel(hostComponent).helpContent && DataModel.instance.preferences.showHelpIcons;
         },null,"_CheckBoxCollapsiblePanelSkin_HelpButton1.includeInLayout");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(-((-(§§pop() - 79) - 1) * 77 * 46 * 52));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return CheckBoxCollapsiblePanel(hostComponent).helpTitle && CheckBoxCollapsiblePanel(hostComponent).helpContent && DataModel.instance.preferences.showHelpIcons;
         },null,"_CheckBoxCollapsiblePanelSkin_HelpButton1.visible");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 83 + 40) + 20));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = CheckBoxCollapsiblePanel(hostComponent).helpTitle;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CheckBoxCollapsiblePanelSkin_HelpButton1.helpTitle");
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(§§pop() * 111 * 96));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = CheckBoxCollapsiblePanel(hostComponent).helpContent;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CheckBoxCollapsiblePanelSkin_HelpButton1.helpContent");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bgFill() : Rect
      {
         return this._1391998104bgFill;
      }
      
      public function set bgFill(param1:Rect) : void
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
      public function get titleBarGroup() : HGroup
      {
         return this._624374620titleBarGroup;
      }
      
      public function set titleBarGroup(param1:HGroup) : void
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
      public function get hostComponent() : CheckBoxCollapsiblePanel
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:CheckBoxCollapsiblePanel) : void
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
