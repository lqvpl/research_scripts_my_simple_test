package com.enfluid.ltp.view.skins
{
   import spark.components.supportClasses.Skin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.effects.AddAction;
   import spark.effects.RemoveAction;
   import spark.effects.Resize;
   import spark.components.Group;
   import spark.components.Button;
   import spark.filters.DropShadowFilter;
   import spark.effects.easing.Sine;
   import mx.core.IFlexModuleFactory;
   import com.adobe.cairngorm.observer.Observe;
   import mx.binding.BindingManager;
   import mx.states.Transition;
   import mx.effects.Sequence;
   import mx.graphics.SolidColor;
   import spark.effects.Rotate;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import mx.core.mx_internal;
   import com.enfluid.ltp.view.containers.RankDrawer;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class RankDrawerSkin extends Skin implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _RankDrawerSkin_AddAction1:AddAction;
      
      public var _RankDrawerSkin_RemoveAction1:RemoveAction;
      
      public var _RankDrawerSkin_Resize1:Resize;
      
      public var _RankDrawerSkin_Resize2:Resize;
      
      private var _809612678contentGroup:Group;
      
      private var _137111012openButton:Button;
      
      private var _903579360shadow:DropShadowFilter;
      
      private var _902268782sineIn:Sine;
      
      private var _2094444929sineOut:Sine;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:RankDrawer;
      
      public function RankDrawerSkin()
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
         bindings = this._RankDrawerSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_RankDrawerSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RankDrawerSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((-(§§pop() * 9) - 55) * 23) * 84 + 75);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(3);
         if(_loc3_)
         {
            §§push(((§§pop() - 1 - 1) * 19 + 117) * 67);
         }
         §§pop().minHeight = §§pop();
         this.transitions = [this._RankDrawerSkin_Transition1_c(),this._RankDrawerSkin_Transition2_c()];
         this.mxmlContent = [this._RankDrawerSkin_Button1_i()];
         this.currentState = "normal";
         this._RankDrawerSkin_DropShadowFilter1_i();
         this._RankDrawerSkin_Sine1_i();
         this._RankDrawerSkin_Sine2_i();
         var _RankDrawerSkin_Group1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._RankDrawerSkin_Group1_i);
         §§push();
         §§push();
         §§push("name");
         §§push("normal");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("shadow");
         §§push("name");
         §§push("blurX");
         §§push("value");
         §§push(10);
         if(_loc4_)
         {
            §§push(-(-§§pop() + 1 + 117 + 1 + 1));
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("shadow");
         §§push("name");
         §§push("blurY");
         §§push("value");
         §§push(10);
         if(_loc4_)
         {
            §§push(--(§§pop() - 114) - 48);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("contentGroup");
         §§push("name");
         §§push("height");
         §§push("value");
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-§§pop() + 36));
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("opened");
         §§push("overrides");
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_RankDrawerSkin_Group1_factory,
            "destination":null,
            "propertyName":"mxmlContent",
            "position":"first"
         }));
         §§push(new SetProperty());
         §§push("target");
         §§push("shadow");
         §§push("name");
         §§push("blurX");
         §§push("value");
         §§push(20);
         if(_loc4_)
         {
            §§push(§§pop() - 77 - 1 - 1 + 1 - 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("shadow");
         §§push("name");
         §§push("blurY");
         §§push("value");
         §§push(20);
         if(_loc4_)
         {
            §§push(-(--(§§pop() - 54) - 1 + 1) - 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("contentGroup");
         §§push("name");
         §§push("percentHeight");
         §§push("value");
         §§push(150);
         if(_loc4_)
         {
            §§push((--(§§pop() * 59 - 85 + 33) + 1) * 32);
         }
         §§pop().states = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 22 + 69 - 47);
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
         RankDrawerSkin._watcherSetupUtil = param1;
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
      
      private final function _RankDrawerSkin_DropShadowFilter1_i() : DropShadowFilter
      {
         var _loc1_:DropShadowFilter = new DropShadowFilter();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 51 + 1 + 1));
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.4;
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(-(§§pop() - 14 + 1 + 5) * 30));
         }
         §§pop().distance = §§pop();
         §§push(_loc1_);
         §§push(270);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 - 72);
         }
         §§pop().angle = §§pop();
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Sine1_i() : Sine
      {
         var _loc1_:Sine = new Sine();
         _loc1_.easeInFraction = 0.1;
         this.sineIn = _loc1_;
         BindingManager.executeBindings(this,"sineIn",this.sineIn);
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Sine2_i() : Sine
      {
         var _loc1_:Sine = new Sine();
         _loc1_.easeInFraction = 0.9;
         this.sineOut = _loc1_;
         BindingManager.executeBindings(this,"sineOut",this.sineOut);
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Transition1_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "normal";
         _loc1_.toState = "opened";
         _loc1_.effect = this._RankDrawerSkin_Sequence1_c();
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Sequence1_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._RankDrawerSkin_AddAction1_i(),this._RankDrawerSkin_Resize1_i()];
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_AddAction1_i() : AddAction
      {
         var _loc1_:AddAction = new AddAction();
         this._RankDrawerSkin_AddAction1 = _loc1_;
         BindingManager.executeBindings(this,"_RankDrawerSkin_AddAction1",this._RankDrawerSkin_AddAction1);
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Resize1_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(400);
         if(_loc2_)
         {
            §§push((-(§§pop() * 94) + 1) * 80 - 1 + 95);
         }
         §§pop().duration = §§pop();
         this._RankDrawerSkin_Resize1 = _loc1_;
         BindingManager.executeBindings(this,"_RankDrawerSkin_Resize1",this._RankDrawerSkin_Resize1);
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Transition2_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "opened";
         _loc1_.toState = "normal";
         _loc1_.effect = this._RankDrawerSkin_Sequence2_c();
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Sequence2_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._RankDrawerSkin_Resize2_i(),this._RankDrawerSkin_RemoveAction1_i()];
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Resize2_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(400);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 11 - 1 - 19 + 1 + 77);
         }
         §§pop().duration = §§pop();
         this._RankDrawerSkin_Resize2 = _loc1_;
         BindingManager.executeBindings(this,"_RankDrawerSkin_Resize2",this._RankDrawerSkin_Resize2);
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_RemoveAction1_i() : RemoveAction
      {
         var _loc1_:RemoveAction = new RemoveAction();
         this._RankDrawerSkin_RemoveAction1 = _loc1_;
         BindingManager.executeBindings(this,"_RankDrawerSkin_RemoveAction1",this._RankDrawerSkin_RemoveAction1);
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 21) * 24 - 34 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.visible = true;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(300);
         if(_loc3_)
         {
            §§push(--((§§pop() - 1) * 25 + 72));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 88) * 110);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(-27);
         if(_loc3_)
         {
            §§push((-§§pop() - 83 - 1) * 43 + 33 + 1 + 86);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 16 * 32 * 98 * 84 + 1) * 99);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() * 102 + 1) * 66 * 8 + 112));
         }
         §§pop().rotation = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.id = "openButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.openButton = _loc1_;
         BindingManager.executeBindings(this,"openButton",this.openButton);
         return _loc1_;
      }
      
      private final function _RankDrawerSkin_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Array
         {
            var _loc1_:* = [shadow];
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"this.filters");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 38 + 1) - 61 + 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_RankDrawerSkin_AddAction1.target","contentGroup");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(-(-§§pop() - 26) - 26));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_RankDrawerSkin_Resize1.target");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 26 + 22 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_RankDrawerSkin_Resize1.easer","sineOut");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() + 47) - 57 - 2);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_RankDrawerSkin_Resize2.target");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 3 - 29 - 117);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_RankDrawerSkin_Resize2.easer","sineIn");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-((§§pop() * 32 - 58 + 1) * 63) + 48 + 20);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_RankDrawerSkin_RemoveAction1.target","contentGroup");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(§§pop() + 54 + 115 - 40 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = hostComponent.label;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"openButton.label");
         return result;
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
      public function get openButton() : Button
      {
         return this._137111012openButton;
      }
      
      public function set openButton(param1:Button) : void
      {
         var _loc2_:Object = this._137111012openButton;
         if(_loc2_ !== param1)
         {
            this._137111012openButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shadow() : DropShadowFilter
      {
         return this._903579360shadow;
      }
      
      public function set shadow(param1:DropShadowFilter) : void
      {
         var _loc2_:Object = this._903579360shadow;
         if(_loc2_ !== param1)
         {
            this._903579360shadow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sineIn() : Sine
      {
         return this._902268782sineIn;
      }
      
      public function set sineIn(param1:Sine) : void
      {
         var _loc2_:Object = this._902268782sineIn;
         if(_loc2_ !== param1)
         {
            this._902268782sineIn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sineIn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sineOut() : Sine
      {
         return this._2094444929sineOut;
      }
      
      public function set sineOut(param1:Sine) : void
      {
         var _loc2_:Object = this._2094444929sineOut;
         if(_loc2_ !== param1)
         {
            this._2094444929sineOut = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sineOut",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : RankDrawer
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:RankDrawer) : void
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
