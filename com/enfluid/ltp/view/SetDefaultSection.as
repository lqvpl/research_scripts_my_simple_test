package com.enfluid.ltp.view
{
   import spark.components.HGroup;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.effects.AddAction;
   import spark.effects.Move;
   import spark.effects.RemoveAction;
   import mx.states.Transition;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.binding.BindingManager;
   import mx.effects.Sequence;
   import mx.effects.Parallel;
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.core.DeferredInstanceFromFunction;
   import spark.components.Image;
   import com.enfluid.ltp.view.components.Link;
   import flash.events.MouseEvent;
   import spark.components.Label;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SetDefaultConfigurationCommand;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class SetDefaultSection extends HGroup implements IBindingClient, IStateClient2
   {
      
      private static const _NORMAL:String = "normal";
      
      private static const _CONFIRM:String = "confirm";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _SetDefaultSection_AddAction1:AddAction;
      
      public var _SetDefaultSection_Move1:Move;
      
      public var _SetDefaultSection_Move2:Move;
      
      public var _SetDefaultSection_RemoveAction1:RemoveAction;
      
      public var _SetDefaultSection_Transition1:Transition;
      
      private var _2075088799confirmGroup:HGroup;
      
      private var _283360808normalGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SetDefaultSection()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._SetDefaultSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_SetDefaultSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SetDefaultSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push((§§pop() * 64 + 33 - 1 - 1 + 1 - 106) * 82);
         }
         §§pop().percentWidth = §§pop();
         this.horizontalAlign = "center";
         §§push(this);
         §§push(3);
         if(_loc4_)
         {
            §§push((§§pop() - 1 - 83 - 62) * 108 * 37 + 1 - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 112 - 1);
         }
         §§pop().paddingTop = §§pop();
         this.transitions = [this._SetDefaultSection_Transition1_i()];
         this.mxmlContent = [];
         this.currentState = "normal";
         var _SetDefaultSection_HGroup2_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._SetDefaultSection_HGroup2_i);
         var _SetDefaultSection_HGroup3_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._SetDefaultSection_HGroup3_i);
         states = [new State({
            "name":"normal",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_SetDefaultSection_HGroup2_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"confirm",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_SetDefaultSection_HGroup3_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(§§pop() * 8 * 52) - 33 - 1);
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
         SetDefaultSection._watcherSetupUtil = param1;
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
      
      private final function _SetDefaultSection_Transition1_i() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.effect = this._SetDefaultSection_Sequence1_c();
         this._SetDefaultSection_Transition1 = _loc1_;
         BindingManager.executeBindings(this,"_SetDefaultSection_Transition1",this._SetDefaultSection_Transition1);
         return _loc1_;
      }
      
      private final function _SetDefaultSection_Sequence1_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         §§push(_loc1_);
         §§push(1000);
         if(_loc2_)
         {
            §§push(--§§pop() * 60 * 84 * 93);
         }
         §§pop().duration = §§pop();
         _loc1_.children = [this._SetDefaultSection_Parallel1_c(),this._SetDefaultSection_RemoveAction1_i()];
         return _loc1_;
      }
      
      private final function _SetDefaultSection_Parallel1_c() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         _loc1_.children = [this._SetDefaultSection_Move1_i(),this._SetDefaultSection_AddAction1_i(),this._SetDefaultSection_Move2_i()];
         return _loc1_;
      }
      
      private final function _SetDefaultSection_Move1_i() : Move
      {
         var _loc1_:Move = new Move();
         _loc1_.applyChangesPostLayout = true;
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 97 - 114 + 1);
         }
         §§pop().xFrom = §§pop();
         this._SetDefaultSection_Move1 = _loc1_;
         BindingManager.executeBindings(this,"_SetDefaultSection_Move1",this._SetDefaultSection_Move1);
         return _loc1_;
      }
      
      private final function _SetDefaultSection_AddAction1_i() : AddAction
      {
         var _loc1_:AddAction = new AddAction();
         this._SetDefaultSection_AddAction1 = _loc1_;
         BindingManager.executeBindings(this,"_SetDefaultSection_AddAction1",this._SetDefaultSection_AddAction1);
         return _loc1_;
      }
      
      private final function _SetDefaultSection_Move2_i() : Move
      {
         var _loc1_:Move = new Move();
         _loc1_.applyChangesPostLayout = true;
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 26 + 5 - 63);
         }
         §§pop().xTo = §§pop();
         this._SetDefaultSection_Move2 = _loc1_;
         BindingManager.executeBindings(this,"_SetDefaultSection_Move2",this._SetDefaultSection_Move2);
         return _loc1_;
      }
      
      private final function _SetDefaultSection_RemoveAction1_i() : RemoveAction
      {
         var _loc1_:RemoveAction = new RemoveAction();
         this._SetDefaultSection_RemoveAction1 = _loc1_;
         BindingManager.executeBindings(this,"_SetDefaultSection_RemoveAction1",this._SetDefaultSection_RemoveAction1);
         return _loc1_;
      }
      
      private final function _SetDefaultSection_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 40 - 71 - 1 + 1) - 2 - 117);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() * 36 - 1 - 7);
         }
         §§pop().height = §§pop();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(§§pop() - 74 - 73 + 1 - 1) * 109);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SetDefaultSection_Link1_c()];
         _loc1_.id = "normalGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.normalGroup = _loc1_;
         BindingManager.executeBindings(this,"normalGroup",this.normalGroup);
         return _loc1_;
      }
      
      private final function _SetDefaultSection_Link1_c() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "Use these settings on new projects";
         _loc1_.addEventListener("click",this.___SetDefaultSection_Link1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SetDefaultSection_Link1_click(param1:MouseEvent) : void
      {
         currentState = _CONFIRM;
      }
      
      private final function _SetDefaultSection_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1 - 1) + 111 - 44));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() * 9 * 19 * 31 * 26 * 55));
         }
         §§pop().height = §§pop();
         _loc1_.horizontalAlign = "right";
         §§push(_loc1_);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1 + 77) * 6);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._SetDefaultSection_Label1_c(),this._SetDefaultSection_Button1_c(),this._SetDefaultSection_Button2_c()];
         _loc1_.id = "confirmGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.confirmGroup = _loc1_;
         BindingManager.executeBindings(this,"confirmGroup",this.confirmGroup);
         return _loc1_;
      }
      
      private final function _SetDefaultSection_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "All future projects will default to these settings:";
         _loc1_.setStyle("verticalAlign","middle");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SetDefaultSection_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 86) - 1 - 107);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Yes, Set Default";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SetDefaultSection_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SetDefaultSection_Button1_click(param1:MouseEvent) : void
      {
         new SetDefaultConfigurationCommand(this.model.selectedProject).execute();
         currentState = _NORMAL;
      }
      
      private final function _SetDefaultSection_Button2_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1 - 1) - 26 + 75 + 103);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Cancel";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SetDefaultSection_Button2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SetDefaultSection_Button2_click(param1:MouseEvent) : void
      {
         currentState = _NORMAL;
      }
      
      private final function _SetDefaultSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-((§§pop() * 53 - 111) * 8 - 1) + 1) * 73);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = _NORMAL;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SetDefaultSection_Transition1.fromState");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() * 55 + 1) * 2 - 1 - 26 + 49);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = _CONFIRM;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SetDefaultSection_Transition1.toState");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_SetDefaultSection_Move1.target","normalGroup");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((-(§§pop() * 103 - 1 + 1 - 1) - 68) * 43);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_SetDefaultSection_Move1.xTo","width");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() * 44 + 1 + 104 + 6 - 99 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_SetDefaultSection_AddAction1.target","confirmGroup");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(---§§pop() - 24 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_SetDefaultSection_Move2.target","confirmGroup");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 112);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_SetDefaultSection_Move2.xFrom","width");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() - 54 + 1 - 88 + 113 + 25) + 50);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_SetDefaultSection_RemoveAction1.target","confirmGroup");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get confirmGroup() : HGroup
      {
         return this._2075088799confirmGroup;
      }
      
      public function set confirmGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._2075088799confirmGroup;
         if(_loc2_ !== param1)
         {
            this._2075088799confirmGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get normalGroup() : HGroup
      {
         return this._283360808normalGroup;
      }
      
      public function set normalGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._283360808normalGroup;
         if(_loc2_ !== param1)
         {
            this._283360808normalGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalGroup",_loc2_,param1));
            }
         }
      }
   }
}
