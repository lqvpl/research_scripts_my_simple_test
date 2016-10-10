package com.enfluid.ltp.view.components
{
   import spark.components.HGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.binding.Binding;
   import spark.components.NumericStepper;
   import mx.core.IFlexModuleFactory;
   import mx.states.State;
   import mx.states.SetProperty;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import flash.utils.Proxy;
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class AvgDelayComponent extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _131680475_AvgDelayComponent_NumericStepper1:NumericStepper;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1914847697avgDelay:int;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function AvgDelayComponent()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._AvgDelayComponent_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_AvgDelayComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AvgDelayComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(--(-§§pop() - 1) + 70);
         }
         §§pop().percentWidth = §§pop();
         this.verticalAlign = "baseline";
         this.mxmlContent = [this._AvgDelayComponent_Label1_c(),this._AvgDelayComponent_NumericStepper1_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 49 + 1 - 12));
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
         AvgDelayComponent._watcherSetupUtil = param1;
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
      
      private final function _AvgDelayComponent_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Average Delay Between Requests (seconds):";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _AvgDelayComponent_NumericStepper1_i() : NumericStepper
      {
         var _loc1_:NumericStepper = new NumericStepper();
         §§push(_loc1_);
         §§push(42);
         if(_loc3_)
         {
            §§push(-(§§pop() - 68 + 64));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() - 53 - 50 + 23 + 1 - 89);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(999);
         if(_loc2_)
         {
            §§push(-(§§pop() * 33) - 34 + 22 + 1);
         }
         §§pop().maximum = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 26 * 65 - 1 - 1 - 1) + 1);
         }
         §§pop().minimum = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 1 - 25) * 58) - 1 - 41);
         }
         §§pop().stepSize = §§pop();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() - 0 - 1 + 108 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_AvgDelayComponent_NumericStepper1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AvgDelayComponent_NumericStepper1 = _loc1_;
         BindingManager.executeBindings(this,"_AvgDelayComponent_NumericStepper1",this._AvgDelayComponent_NumericStepper1);
         return _loc1_;
      }
      
      private final function _AvgDelayComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() - 37 + 1 - 1 - 99);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_AvgDelayComponent_NumericStepper1.value","avgDelay");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 11 + 22 + 9 + 1 - 95);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _AvgDelayComponent_NumericStepper1.value;
         },function(param1:*):void
         {
            avgDelay = param1;
         },"avgDelay");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 1) * 103 - 1 + 51);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 113 * 64 + 1 - 115);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((-§§pop() - 1 + 1) * 3));
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 10 - 1 + 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1 - 83) - 103) * 77 - 91 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _AvgDelayComponent_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.avgDelay = this._AvgDelayComponent_NumericStepper1.value;
      }
      
      [Bindable(event="propertyChange")]
      public function get _AvgDelayComponent_NumericStepper1() : NumericStepper
      {
         return this._131680475_AvgDelayComponent_NumericStepper1;
      }
      
      public function set _AvgDelayComponent_NumericStepper1(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._131680475_AvgDelayComponent_NumericStepper1;
         if(_loc2_ !== param1)
         {
            this._131680475_AvgDelayComponent_NumericStepper1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AvgDelayComponent_NumericStepper1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avgDelay() : int
      {
         return this._1914847697avgDelay;
      }
      
      public function set avgDelay(param1:int) : void
      {
         var _loc2_:Object = this._1914847697avgDelay;
         if(_loc2_ !== param1)
         {
            this._1914847697avgDelay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avgDelay",_loc2_,param1));
            }
         }
      }
   }
}
