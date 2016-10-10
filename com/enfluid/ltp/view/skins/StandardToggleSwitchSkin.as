package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import spark.components.Group;
   import spark.components.Label;
   import spark.effects.Move;
   import mx.effects.Parallel;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import flash.display.Sprite;
   import mx.binding.utils.ChangeWatcher;
   import flash.events.MouseEvent;
   import spark.components.supportClasses.ToggleButtonBase;
   import flash.events.Event;
   import com.enfluid.ltp.view.components.Link;
   import mx.binding.BindingManager;
   import spark.components.ComboBox;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import spark.layouts.HorizontalLayout;
   import flash.utils.ByteArray;
   import spark.filters.DropShadowFilter;
   import spark.effects.AddAction;
   import mx.graphics.SolidColorStroke;
   import spark.primitives.Line;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import spark.effects.easing.IEaser;
   import spark.effects.easing.EaseInOutBase;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class StandardToggleSwitchSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static const exclusions:Array = ["labelDisplay"];
      
      private static const focusExclusions:Array = ["labelDisplay"];
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _StandardToggleSwitchSkin_Rect1:Rect;
      
      public var _StandardToggleSwitchSkin_Rect2:Rect;
      
      public var _StandardToggleSwitchSkin_Rect3:Rect;
      
      public var _StandardToggleSwitchSkin_Rect4:Rect;
      
      public var _StandardToggleSwitchSkin_Rect5:Rect;
      
      private var _1630131710_StandardToggleSwitchSkin_SolidColor4:SolidColor;
      
      private var _809612678contentGroup:Group;
      
      private var _1951102525deselectedGroup:Group;
      
      private var _247677346deselectedLabelField:Label;
      
      private var _1184053038labelDisplay:Label;
      
      private var _275021552maskRect:Group;
      
      private var _1994587966moveEffect:Move;
      
      private var _1434352804selectedGroup:Group;
      
      private var _1867707233selectedLabelField:Label;
      
      private var _1340073310slideEffect:Parallel;
      
      private var _757175174switchButton:Group;
      
      private var _110342614thumb:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _583595847cornerRadius:Number = 10;
      
      private var _1294050691labelPadding:Number = 5;
      
      private var contentPosition:Number;
      
      private var mouseDownX:Number;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:ToggleButtonBase;
      
      public function StandardToggleSwitchSkin()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._StandardToggleSwitchSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_StandardToggleSwitchSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return StandardToggleSwitchSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.layout = this._StandardToggleSwitchSkin_HorizontalLayout1_c();
         this.mxmlContent = [this._StandardToggleSwitchSkin_Group1_i(),this._StandardToggleSwitchSkin_Label3_i()];
         this.currentState = "up";
         this._StandardToggleSwitchSkin_Parallel1_i();
         this.addEventListener("creationComplete",this.___StandardToggleSwitchSkin_SparkSkin1_creationComplete);
         §§push();
         §§push(new State({
            "name":"up",
            "overrides":[]
         }));
         §§push();
         §§push("name");
         §§push("over");
         §§push("stateGroups");
         §§push(["overStates"]);
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_StandardToggleSwitchSkin_SolidColor4");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(13421772);
         if(_loc4_)
         {
            §§push(((§§pop() - 12) * 24 - 1 + 81) * 62 - 1 - 21);
         }
         §§push(new §§pop().State(null));
         §§push(new State({
            "name":"down",
            "stateGroups":["downStates"],
            "overrides":[]
         }));
         §§push(new State({
            "name":"disabled",
            "stateGroups":["disabledStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.7
            })]
         }));
         §§push(new State({
            "name":"upAndSelected",
            "stateGroups":["selectedStates"],
            "overrides":[]
         }));
         §§push();
         §§push("name");
         §§push("overAndSelected");
         §§push("stateGroups");
         §§push(["selectedStates","overStates"]);
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_StandardToggleSwitchSkin_SolidColor4");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(13421772);
         if(_loc3_)
         {
            §§push(§§pop() + 102 - 1 + 1);
         }
         §§pop().states = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1 - 27) + 1);
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
         StandardToggleSwitchSkin._watcherSetupUtil = param1;
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
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      override public function get focusSkinExclusions() : Array
      {
         return focusExclusions;
      }
      
      protected final function creationCompleteHandler(param1:FlexEvent) : void
      {
         Sprite(this.hostComponent).mouseChildren = true;
         ChangeWatcher.watch(this.hostComponent,"selected",this.selectedChangeHandler);
         var _loc2_:Number = Math.max(this.selectedGroup.width,this.deselectedGroup.width);
         §§push(this.switchButton);
         §§push(_loc2_);
         §§push(this.thumb.width);
         §§push(2);
         if(_loc5_)
         {
            §§push(-(-(--§§pop() - 15) - 1));
         }
         §§pop().minWidth = §§pop() + §§pop() / §§pop();
         §§push(this.switchButton);
         §§push(Math);
         §§push(width);
         §§push(_loc2_);
         §§push(this.thumb.width);
         §§push(2);
         if(_loc4_)
         {
            §§push(§§pop() * 99 * 16 + 51 + 1);
         }
         §§pop().width = §§pop().max(§§pop(),§§pop() + §§pop() / §§pop());
         this.maskRect.width = this.switchButton.width;
         §§push(this.selectedGroup);
         §§push(this.deselectedGroup);
         §§push(this.deselectedGroup);
         §§push(this.switchButton.width);
         §§push(this.thumb.width);
         §§push(2);
         if(_loc5_)
         {
            §§push(§§pop() * 105 * 82 - 1 + 60);
         }
         §§pop().width = §§pop().width = §§pop().x = §§pop() - §§pop() / §§pop();
         this.switchButton.width = this.switchButton.width;
         §§push(this.contentGroup);
         if(this.hostComponent.selected)
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(--§§pop() + 1);
            }
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(this.selectedGroup.width);
            §§push(this.thumb.width);
            §§push(2);
            if(_loc4_)
            {
               §§push(-(§§pop() * 79 - 1 - 1 - 79) - 1);
            }
            §§push(Number(-(§§pop() - §§pop() / §§pop())));
         }
         §§pop().x = §§pop();
         §§push(this);
         §§push(this.contentGroup.height);
         §§push(2);
         if(_loc4_)
         {
            §§push((§§pop() * 22 - 1 - 1) * 99);
         }
         §§pop().cornerRadius = §§pop() / §§pop();
      }
      
      protected final function thumb_mouseDownHandler(param1:MouseEvent) : void
      {
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.stageMouseMoveHandler);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.stageMouseUpHandler);
         this.contentPosition = this.contentGroup.x;
         this.mouseDownX = mouseX;
      }
      
      protected final function stageMouseMoveHandler(param1:MouseEvent) : void
      {
         §§push(this.contentGroup);
         §§push(Math);
         §§push(this.selectedGroup.width);
         §§push(this.thumb.width);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 109) + 33) * 45 * 106);
         }
         §§push(-(§§pop() - §§pop() / §§pop()));
         §§push(Math);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 10 + 103));
         }
         §§pop().x = §§pop().max(§§pop(),§§pop().min(§§pop(),this.contentPosition + (mouseX - this.mouseDownX)));
      }
      
      protected final function stageMouseUpHandler(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.stageMouseMoveHandler);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.stageMouseUpHandler);
         §§push(Math.abs(this.mouseDownX - mouseX));
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1 - 1 + 1 - 106) * 53);
         }
         if(§§pop() > §§pop())
         {
            §§push(this.contentGroup.x);
            §§push(this.selectedGroup.width);
            §§push(this.thumb.width);
            §§push(2);
            if(_loc4_)
            {
               §§push(--(§§pop() * 22 + 87 - 1));
            }
            §§push(-(§§pop() - §§pop() / §§pop()));
            §§push(2);
            if(_loc4_)
            {
               §§push((§§pop() - 61) * 68 - 112 + 89 - 99);
            }
            if(§§pop() > §§pop() / §§pop())
            {
               _loc2_ = false;
            }
            else
            {
               _loc2_ = true;
            }
            if(ToggleButtonBase(this.hostComponent).selected != _loc2_)
            {
               ToggleButtonBase(this.hostComponent).selected = _loc2_;
            }
            else
            {
               this.animate();
            }
         }
         ToggleButtonBase(this.hostComponent).selected = !ToggleButtonBase(this.hostComponent).selected;
         ToggleButtonBase(this.hostComponent).dispatchEvent(new Event(Event.CHANGE));
      }
      
      private final function selectedChangeHandler(param1:Event) : void
      {
         this.animate();
      }
      
      private final function animate() : void
      {
         this.moveEffect.stop();
         §§push(this.moveEffect);
         if(this.hostComponent.selected)
         {
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-(§§pop() + 1 + 1) - 106) - 112);
            }
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(this.selectedGroup.width);
            §§push(this.thumb.width);
            §§push(2);
            if(_loc2_)
            {
               §§push((§§pop() - 1 - 1 - 1) * 48 * 46 - 115 + 49);
            }
            §§push(Number(-(§§pop() - §§pop() / §§pop())));
         }
         §§pop().xTo = §§pop();
         this.slideEffect.play();
      }
      
      private final function _StandardToggleSwitchSkin_Parallel1_i() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         _loc1_.children = [this._StandardToggleSwitchSkin_Move1_i()];
         this.slideEffect = _loc1_;
         BindingManager.executeBindings(this,"slideEffect",this.slideEffect);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Move1_i() : Move
      {
         var _loc1_:Move = new Move();
         §§push(_loc1_);
         §§push(150);
         if(_loc3_)
         {
            §§push((-§§pop() - 108 - 1 + 7 - 48) * 30 - 1);
         }
         §§pop().duration = §§pop();
         this.moveEffect = _loc1_;
         BindingManager.executeBindings(this,"moveEffect",this.moveEffect);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 27) - 104 - 57 - 59);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 95) - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContent = [this._StandardToggleSwitchSkin_Group2_i(),this._StandardToggleSwitchSkin_Group3_i()];
         _loc1_.addEventListener("mouseDown",this.__switchButton_mouseDown);
         _loc1_.id = "switchButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.switchButton = _loc1_;
         BindingManager.executeBindings(this,"switchButton",this.switchButton);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 14) * 110);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContent = [this._StandardToggleSwitchSkin_Rect1_i()];
         _loc1_.id = "maskRect";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.maskRect = _loc1_;
         BindingManager.executeBindings(this,"maskRect",this.maskRect);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(-§§pop() - 110) + 47 - 1 - 93) * 81);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 6 - 68 - 73 - 108);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(-(§§pop() - 86) - 1 - 1));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 119) * 110 + 21 + 62 + 95);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._StandardToggleSwitchSkin_SolidColor1_c();
         _loc1_.initialized(this,"_StandardToggleSwitchSkin_Rect1");
         this._StandardToggleSwitchSkin_Rect1 = _loc1_;
         BindingManager.executeBindings(this,"_StandardToggleSwitchSkin_Rect1",this._StandardToggleSwitchSkin_Rect1);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.alpha = 0.5;
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._StandardToggleSwitchSkin_Group4_c(),this._StandardToggleSwitchSkin_Group7_i()];
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Group4_c() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 37 - 1 - 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.filters = [this._StandardToggleSwitchSkin_DropShadowFilter1_c()];
         _loc1_.mxmlContent = [this._StandardToggleSwitchSkin_Group5_i(),this._StandardToggleSwitchSkin_Group6_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_DropShadowFilter1_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.alpha = 0.4;
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 65 + 58 + 16 + 71 + 1 - 1);
         }
         §§pop().blurX = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1) - 1);
         }
         §§pop().blurY = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 23) * 104 * 98 - 1 - 33);
         }
         §§pop().distance = §§pop();
         _loc1_.inner = true;
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 6 + 59 - 1);
         }
         §§pop().quality = §§pop();
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 51 + 113 - 1));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._StandardToggleSwitchSkin_Rect2_i(),this._StandardToggleSwitchSkin_Label1_i()];
         _loc1_.id = "selectedGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.selectedGroup = _loc1_;
         BindingManager.executeBindings(this,"selectedGroup",this.selectedGroup);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 89 * 107 + 29 - 82 - 1 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1) * 15 * 37 * 71 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-((§§pop() - 10) * 56) - 9 - 1) * 71);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 17) + 93 - 1 - 66);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._StandardToggleSwitchSkin_SolidColor2_c();
         _loc1_.stroke = this._StandardToggleSwitchSkin_SolidColorStroke1_c();
         _loc1_.initialized(this,"_StandardToggleSwitchSkin_Rect2");
         this._StandardToggleSwitchSkin_Rect2 = _loc1_;
         BindingManager.executeBindings(this,"_StandardToggleSwitchSkin_Rect2",this._StandardToggleSwitchSkin_Rect2);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(3703986);
         if(_loc2_)
         {
            §§push(§§pop() * 59 - 1 + 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(8947848);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 102);
         }
         §§pop().color = §§pop();
         _loc1_.pixelHinting = true;
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 62 - 50 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 9 + 0 - 80);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) - 1));
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.text = "Yes";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 77);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         §§push(_loc1_);
         §§push("baselineShift");
         §§push(-1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 6 - 60) - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "selectedLabelField";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.selectedLabelField = _loc1_;
         BindingManager.executeBindings(this,"selectedLabelField",this.selectedLabelField);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 89 + 56 - 19 - 1) * 68);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._StandardToggleSwitchSkin_Rect3_i(),this._StandardToggleSwitchSkin_Label2_i()];
         _loc1_.id = "deselectedGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.deselectedGroup = _loc1_;
         BindingManager.executeBindings(this,"deselectedGroup",this.deselectedGroup);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 52 + 1 - 1 - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 40) * 70 - 1 - 1 - 15) + 42);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(--(§§pop() - 19) - 1 - 77));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 39 - 1) * 0);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._StandardToggleSwitchSkin_SolidColor3_c();
         _loc1_.stroke = this._StandardToggleSwitchSkin_SolidColorStroke2_c();
         _loc1_.initialized(this,"_StandardToggleSwitchSkin_Rect3");
         this._StandardToggleSwitchSkin_Rect3 = _loc1_;
         BindingManager.executeBindings(this,"_StandardToggleSwitchSkin_Rect3",this._StandardToggleSwitchSkin_Rect3);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_SolidColor3_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(15658734);
         if(_loc3_)
         {
            §§push((-(§§pop() * 42 + 62) - 44) * 43 + 1 + 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_SolidColorStroke2_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(14540253);
         if(_loc3_)
         {
            §§push(((§§pop() - 1 - 78 - 1 - 68) * 103 + 1) * 46);
         }
         §§pop().color = §§pop();
         _loc1_.pixelHinting = true;
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push((-§§pop() - 1) * 86 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() + 6 + 32 + 87) * 24 * 35);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) - 1));
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.text = "No";
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1 + 1 - 1 + 1) * 59);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         §§push(_loc1_);
         §§push("baselineShift");
         §§push(-1);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1 + 1) + 1) * 12);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "deselectedLabelField";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.deselectedLabelField = _loc1_;
         BindingManager.executeBindings(this,"deselectedLabelField",this.deselectedLabelField);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(22);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 81 - 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 58 - 1 + 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.filters = [this._StandardToggleSwitchSkin_DropShadowFilter2_c(),this._StandardToggleSwitchSkin_DropShadowFilter3_c()];
         _loc1_.mxmlContent = [this._StandardToggleSwitchSkin_Rect4_i(),this._StandardToggleSwitchSkin_Rect5_i()];
         _loc1_.id = "thumb";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.thumb = _loc1_;
         BindingManager.executeBindings(this,"thumb",this.thumb);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_DropShadowFilter2_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.8;
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 51 - 1 + 59);
         }
         §§pop().angle = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 19) + 73 - 1 + 1 - 1 + 3);
         }
         §§pop().distance = §§pop();
         _loc1_.inner = true;
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_DropShadowFilter3_c() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         _loc1_.alpha = 0.1;
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 32 + 62);
         }
         §§pop().distance = §§pop();
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Rect4_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 115 - 59 + 1 + 1 - 1 + 1 + 82);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 37) * 12 - 1 - 1 + 45 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 49 + 1 + 114 + 119);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() * 19 - 1 - 103));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(---((§§pop() * 20 - 116) * 65));
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._StandardToggleSwitchSkin_SolidColor4_i();
         _loc1_.initialized(this,"_StandardToggleSwitchSkin_Rect4");
         this._StandardToggleSwitchSkin_Rect4 = _loc1_;
         BindingManager.executeBindings(this,"_StandardToggleSwitchSkin_Rect4",this._StandardToggleSwitchSkin_Rect4);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_SolidColor4_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(14079702);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 113 + 1) + 54));
         }
         §§pop().color = §§pop();
         this._StandardToggleSwitchSkin_SolidColor4 = _loc1_;
         BindingManager.executeBindings(this,"_StandardToggleSwitchSkin_SolidColor4",this._StandardToggleSwitchSkin_SolidColor4);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_Rect5_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() * 82 - 24 + 55) * 37 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 8 + 1) * 90 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) + 1 + 85) * 62);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 2 + 38 + 83 + 1) * 26 - 13);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 93 * 118 - 15) * 21);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._StandardToggleSwitchSkin_SolidColorStroke3_c();
         _loc1_.initialized(this,"_StandardToggleSwitchSkin_Rect5");
         this._StandardToggleSwitchSkin_Rect5 = _loc1_;
         BindingManager.executeBindings(this,"_StandardToggleSwitchSkin_Rect5",this._StandardToggleSwitchSkin_Rect5);
         return _loc1_;
      }
      
      private final function _StandardToggleSwitchSkin_SolidColorStroke3_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(9539985);
         if(_loc3_)
         {
            §§push(((§§pop() - 1 - 16) * 81 + 1) * 63 + 73);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 1 - 1) + 40 + 1));
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      public final function __switchButton_mouseDown(param1:MouseEvent) : void
      {
         this.thumb_mouseDownHandler(param1);
      }
      
      private final function _StandardToggleSwitchSkin_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 87) - 1 + 29);
         }
         §§pop().maxDisplayedLines = §§pop();
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      public final function ___StandardToggleSwitchSkin_SparkSkin1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private final function _StandardToggleSwitchSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 67 - 61 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IEaser
         {
            return new EaseInOutBase(0.5);
         },null,"moveEffect.easer");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(--(§§pop() - 10 - 1) + 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"moveEffect.target","contentGroup");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 105) + 112);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return contentGroup.height;
         },null,"maskRect.height");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((--§§pop() - 94) * 87 + 64);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect1.radiusX");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-§§pop() * 36 + 99);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect1.radiusY");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 46 + 1 - 1 - 18 - 6);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"contentGroup.mask","maskRect");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() - 104 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect2.bottomLeftRadiusX");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push((§§pop() + 7) * 37 - 1 + 57);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect2.bottomLeftRadiusY");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(§§pop() + 16 + 35 + 31 + 99);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect2.topLeftRadiusX");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(--§§pop() - 87);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect2.topLeftRadiusY");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 - 1 + 96 + 1 - 40);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            §§push(labelPadding);
            §§push(2);
            if(_loc2_)
            {
               §§push((§§pop() + 42 - 1) * 69 - 1 + 1);
            }
            return §§pop() + §§pop();
         },null,"selectedLabelField.left");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(-((§§pop() + 16) * 4 - 10));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            §§push(labelPadding);
            §§push(thumb.width);
            §§push(2);
            if(_loc1_)
            {
               §§push(§§pop() + 40 + 1 - 1 + 119 - 1 - 1);
            }
            return §§pop() + §§pop() / §§pop();
         },null,"selectedLabelField.right");
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(-§§pop() + 91 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect3.bottomRightRadiusX");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-((§§pop() * 38 - 88) * 52 - 57 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect3.bottomRightRadiusY");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push(§§pop() + 51 - 10 - 1 + 15 - 1 - 85);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect3.topRightRadiusX");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(--(-(-§§pop() + 1) - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect3.topRightRadiusY");
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push(((-§§pop() + 9) * 82 - 1) * 39 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            §§push(labelPadding);
            §§push(thumb.width);
            §§push(2);
            if(_loc1_)
            {
               §§push(-(§§pop() + 96 - 1));
            }
            return §§pop() + §§pop() / §§pop();
         },null,"deselectedLabelField.left");
         §§push(result);
         §§push(17);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1 + 1) * 71 + 52) * 21);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            §§push(labelPadding);
            §§push(2);
            if(_loc2_)
            {
               §§push(--§§pop() - 1 + 1 + 1);
            }
            return §§pop() + §§pop();
         },null,"deselectedLabelField.right");
         §§push(result);
         §§push(18);
         if(_loc2_)
         {
            §§push(-(§§pop() + 44) - 1 - 37 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(selectedGroup.width);
            §§push(thumb.width);
            §§push(2);
            if(_loc2_)
            {
               §§push((§§pop() + 1 - 1 + 1 + 1) * 85);
            }
            return §§pop() - §§pop() / §§pop();
         },null,"thumb.x");
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push(---((§§pop() - 1) * 23 + 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect4.radiusX");
         §§push(result);
         §§push(20);
         if(_loc2_)
         {
            §§push(-§§pop() * 85 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect4.radiusY");
         §§push(result);
         §§push(21);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 105) + 38);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect5.radiusX");
         §§push(result);
         §§push(22);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 116) + 1 + 13) + 96 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return cornerRadius;
         },null,"_StandardToggleSwitchSkin_Rect5.radiusY");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _StandardToggleSwitchSkin_SolidColor4() : SolidColor
      {
         return this._1630131710_StandardToggleSwitchSkin_SolidColor4;
      }
      
      public function set _StandardToggleSwitchSkin_SolidColor4(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1630131710_StandardToggleSwitchSkin_SolidColor4;
         if(_loc2_ !== param1)
         {
            this._1630131710_StandardToggleSwitchSkin_SolidColor4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_StandardToggleSwitchSkin_SolidColor4",_loc2_,param1));
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
      public function get deselectedGroup() : Group
      {
         return this._1951102525deselectedGroup;
      }
      
      public function set deselectedGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1951102525deselectedGroup;
         if(_loc2_ !== param1)
         {
            this._1951102525deselectedGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deselectedGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get deselectedLabelField() : Label
      {
         return this._247677346deselectedLabelField;
      }
      
      public function set deselectedLabelField(param1:Label) : void
      {
         var _loc2_:Object = this._247677346deselectedLabelField;
         if(_loc2_ !== param1)
         {
            this._247677346deselectedLabelField = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"deselectedLabelField",_loc2_,param1));
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
      public function get maskRect() : Group
      {
         return this._275021552maskRect;
      }
      
      public function set maskRect(param1:Group) : void
      {
         var _loc2_:Object = this._275021552maskRect;
         if(_loc2_ !== param1)
         {
            this._275021552maskRect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maskRect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveEffect() : Move
      {
         return this._1994587966moveEffect;
      }
      
      public function set moveEffect(param1:Move) : void
      {
         var _loc2_:Object = this._1994587966moveEffect;
         if(_loc2_ !== param1)
         {
            this._1994587966moveEffect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveEffect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedGroup() : Group
      {
         return this._1434352804selectedGroup;
      }
      
      public function set selectedGroup(param1:Group) : void
      {
         var _loc2_:Object = this._1434352804selectedGroup;
         if(_loc2_ !== param1)
         {
            this._1434352804selectedGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedLabelField() : Label
      {
         return this._1867707233selectedLabelField;
      }
      
      public function set selectedLabelField(param1:Label) : void
      {
         var _loc2_:Object = this._1867707233selectedLabelField;
         if(_loc2_ !== param1)
         {
            this._1867707233selectedLabelField = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedLabelField",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slideEffect() : Parallel
      {
         return this._1340073310slideEffect;
      }
      
      public function set slideEffect(param1:Parallel) : void
      {
         var _loc2_:Object = this._1340073310slideEffect;
         if(_loc2_ !== param1)
         {
            this._1340073310slideEffect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slideEffect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get switchButton() : Group
      {
         return this._757175174switchButton;
      }
      
      public function set switchButton(param1:Group) : void
      {
         var _loc2_:Object = this._757175174switchButton;
         if(_loc2_ !== param1)
         {
            this._757175174switchButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"switchButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get thumb() : Group
      {
         return this._110342614thumb;
      }
      
      public function set thumb(param1:Group) : void
      {
         var _loc2_:Object = this._110342614thumb;
         if(_loc2_ !== param1)
         {
            this._110342614thumb = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thumb",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cornerRadius() : Number
      {
         return this._583595847cornerRadius;
      }
      
      private function set cornerRadius(param1:Number) : void
      {
         var _loc2_:Object = this._583595847cornerRadius;
         if(_loc2_ !== param1)
         {
            this._583595847cornerRadius = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cornerRadius",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get labelPadding() : Number
      {
         return this._1294050691labelPadding;
      }
      
      private function set labelPadding(param1:Number) : void
      {
         var _loc2_:Object = this._1294050691labelPadding;
         if(_loc2_ !== param1)
         {
            this._1294050691labelPadding = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelPadding",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ToggleButtonBase
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ToggleButtonBase) : void
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
