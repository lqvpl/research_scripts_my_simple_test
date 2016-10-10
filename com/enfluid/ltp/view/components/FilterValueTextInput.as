package com.enfluid.ltp.view.components
{
   import spark.components.TextInput;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import flash.events.Event;
   import spark.events.TextOperationEvent;
   import spark.primitives.Rect;
   import spark.effects.Rotate;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.SolidColor;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class FilterValueTextInput extends TextInput implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _value:Number;
      
      private var _203492346decimalsAllowed:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FilterValueTextInput()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._FilterValueTextInput_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_FilterValueTextInputWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FilterValueTextInput[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         this.addEventListener("change",this.___FilterValueTextInput_TextInput1_change);
         states = [new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"restrict",
               "value":"0-9"
            })]
         }),new State({
            "name":"decimalsAllowed",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"restrict",
               "value":"0-9."
            })]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() - 1) * 114 + 67 - 9) * 103);
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
         FilterValueTextInput._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = FlatTextInputSkinSolo;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      [Bindable(event="valueChange")]
      public function get value() : Number
      {
         return this._value;
      }
      
      public function set value(param1:Number) : void
      {
         if(isNaN(param1))
         {
            param1 = 0;
         }
         if(this._value !== param1)
         {
            this._value = param1;
            if(this.getValueFromText(text) != this._value)
            {
               text = String(this._value);
            }
            dispatchEvent(new Event("valueChange"));
         }
      }
      
      public final function onChange() : void
      {
         this.value = this.getValueFromText(text);
      }
      
      private final function getValueFromText(param1:String) : Number
      {
         var _loc2_:Number = NaN;
         if(this.text == ".")
         {
            §§push(0);
            if(_loc4_)
            {
               return -§§pop() * 13 - 1 + 114 + 12;
            }
         }
         _loc2_ = Number(this.text);
         if(isNaN(_loc2_) || §§pop() < §§pop())
         {
            §§push(0);
            if(_loc3_)
            {
               return §§pop() * 58 + 1 + 1 - 54 - 1;
            }
         }
         return _loc2_;
      }
      
      public final function ___FilterValueTextInput_TextInput1_change(param1:TextOperationEvent) : void
      {
         this.onChange();
      }
      
      private final function _FilterValueTextInput_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 79 - 1) * 24 + 84 - 1 - 67);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!decimalsAllowed?"decimalsAllowed":"normal";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.currentState");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get decimalsAllowed() : Boolean
      {
         return this._203492346decimalsAllowed;
      }
      
      public function set decimalsAllowed(param1:Boolean) : void
      {
         var _loc2_:Object = this._203492346decimalsAllowed;
         if(_loc2_ !== param1)
         {
            this._203492346decimalsAllowed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decimalsAllowed",_loc2_,param1));
            }
         }
      }
   }
}
