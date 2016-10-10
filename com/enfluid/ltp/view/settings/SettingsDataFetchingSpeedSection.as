package com.enfluid.ltp.view.settings
{
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.SelfAdjustingLabel;
   import mx.binding.BindingManager;
   import spark.components.NumericStepper;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.layouts.VerticalLayout;
   import spark.components.Label;
   import mx.controls.HRule;
   import spark.components.HGroup;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import mx.collections.ArrayCollection;
   import flash.events.Event;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import mx.controls.Spacer;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.http.HTTPService;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class SettingsDataFetchingSpeedSection extends CollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _941180544_SettingsDataFetchingSpeedSection_NumericStepper1:NumericStepper;
      
      private var _941180543_SettingsDataFetchingSpeedSection_NumericStepper2:NumericStepper;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SettingsDataFetchingSpeedSection()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._SettingsDataFetchingSpeedSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_settings_SettingsDataFetchingSpeedSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SettingsDataFetchingSpeedSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.layout = this._SettingsDataFetchingSpeedSection_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsDataFetchingSpeedSection_Array1_c);
         this.addEventListener("creationComplete",this.___SettingsDataFetchingSpeedSection_CollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 3 - 5 + 1 + 8);
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
         SettingsDataFetchingSpeedSection._watcherSetupUtil = param1;
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
      
      protected final function initPanel(param1:FlexEvent) : void
      {
         var event:FlexEvent = param1;
         this.addEventListener("collapsedChanged",function():void
         {
            if(!collapsed)
            {
               new SetUserEvent("UserEvent.Settings.Speed.Opened").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.Settings.Speed.Closed").execute();
            }
         });
      }
      
      private final function _SettingsDataFetchingSpeedSection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() + 29 - 1) - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 105 + 64);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 88 + 1 + 1 + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 26 - 0 + 1);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _SettingsDataFetchingSpeedSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._SettingsDataFetchingSpeedSection_Label1_c(),this._SettingsDataFetchingSpeedSection_HRule1_c(),this._SettingsDataFetchingSpeedSection_HGroup1_c()];
         return _loc1_;
      }
      
      private final function _SettingsDataFetchingSpeedSection_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 76 - 1) * 16 - 118 + 2 + 15);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Set the average delay between requests (in seconds) for each service.  A smaller average delay will retrieve data faster, but increase your chances of getting CAPTCAHAs, or of otherwise getting blocked.";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsDataFetchingSpeedSection_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 115 + 1 - 59) * 46 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 1 + 1) - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsDataFetchingSpeedSection_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1 - 1 + 1));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.verticalAlign = "baseline";
         _loc1_.mxmlContent = [this._SettingsDataFetchingSpeedSection_Label2_c(),this._SettingsDataFetchingSpeedSection_NumericStepper1_i(),this._SettingsDataFetchingSpeedSection_Spacer1_c(),this._SettingsDataFetchingSpeedSection_Label3_c(),this._SettingsDataFetchingSpeedSection_NumericStepper2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsDataFetchingSpeedSection_Label2_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Google Average Delay:";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 40) * 46) * 100);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsDataFetchingSpeedSection_NumericStepper1_i() : NumericStepper
      {
         var _loc1_:NumericStepper = new NumericStepper();
         §§push(_loc1_);
         §§push(42);
         if(_loc3_)
         {
            §§push(((§§pop() + 104 + 1 - 49) * 24 - 108) * 24);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(999);
         if(_loc2_)
         {
            §§push((-(§§pop() * 5) + 1 + 1) * 59 - 1);
         }
         §§pop().maximum = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--((§§pop() - 1) * 73 * 66));
         }
         §§pop().minimum = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 1) + 119 + 1));
         }
         §§pop().stepSize = §§pop();
         _loc1_.addEventListener("change",this.___SettingsDataFetchingSpeedSection_NumericStepper1_change);
         _loc1_.id = "_SettingsDataFetchingSpeedSection_NumericStepper1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsDataFetchingSpeedSection_NumericStepper1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsDataFetchingSpeedSection_NumericStepper1",this._SettingsDataFetchingSpeedSection_NumericStepper1);
         return _loc1_;
      }
      
      public final function ___SettingsDataFetchingSpeedSection_NumericStepper1_change(param1:Event) : void
      {
         new SavePreferencesCommand().execute();
      }
      
      private final function _SettingsDataFetchingSpeedSection_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 13 + 1 + 102 + 98 + 81 + 14);
         }
         §§pop().width = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsDataFetchingSpeedSection_Label3_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Bing Average Delay:";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc3_)
         {
            §§push(--(-§§pop() + 42) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsDataFetchingSpeedSection_NumericStepper2_i() : NumericStepper
      {
         var _loc1_:NumericStepper = new NumericStepper();
         §§push(_loc1_);
         §§push(42);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 - 1 + 106 - 1) * 77);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(999);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 1) * 37));
         }
         §§pop().maximum = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 57 - 112 - 65) - 118);
         }
         §§pop().minimum = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(((§§pop() - 1 + 14) * 78 - 1 + 96 - 1) * 69);
         }
         §§pop().stepSize = §§pop();
         _loc1_.addEventListener("change",this.___SettingsDataFetchingSpeedSection_NumericStepper2_change);
         _loc1_.id = "_SettingsDataFetchingSpeedSection_NumericStepper2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsDataFetchingSpeedSection_NumericStepper2 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsDataFetchingSpeedSection_NumericStepper2",this._SettingsDataFetchingSpeedSection_NumericStepper2);
         return _loc1_;
      }
      
      public final function ___SettingsDataFetchingSpeedSection_NumericStepper2_change(param1:Event) : void
      {
         new SavePreferencesCommand().execute();
      }
      
      public final function ___SettingsDataFetchingSpeedSection_CollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _SettingsDataFetchingSpeedSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 76) * 106);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return model.preferences.googleRequestAvgDelay;
         },null,"_SettingsDataFetchingSpeedSection_NumericStepper1.value");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() + 12) * 94 * 21) + 1 - 95);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return model.preferences.bingReqeustAvgDelay;
         },null,"_SettingsDataFetchingSpeedSection_NumericStepper2.value");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() * 45 * 57 + 16 - 1 + 5 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SettingsDataFetchingSpeedSection_NumericStepper1.value;
         },function(param1:*):void
         {
            model.preferences.googleRequestAvgDelay = param1;
         },"model.preferences.googleRequestAvgDelay");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 58 - 42 + 1 - 1 - 23);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() - 4 + 1) * 118 * 95 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 99) + 106));
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 84 - 1 - 20);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() * 9 - 38 + 110) - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 1 - 1 - 18 - 26 - 12);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SettingsDataFetchingSpeedSection_NumericStepper2.value;
         },function(param1:*):void
         {
            model.preferences.bingReqeustAvgDelay = param1;
         },"model.preferences.bingReqeustAvgDelay");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() - 66 - 55) * 93 - 96);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 82) * 50 + 1 - 1 + 68 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() + 23 + 1) * 118);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 - 38 + 1 - 92 - 4 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 69) - 1 - 67 - 84);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _SettingsDataFetchingSpeedSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.preferences.googleRequestAvgDelay = this._SettingsDataFetchingSpeedSection_NumericStepper1.value;
         this.model.preferences.bingReqeustAvgDelay = this._SettingsDataFetchingSpeedSection_NumericStepper2.value;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SettingsDataFetchingSpeedSection_NumericStepper1() : NumericStepper
      {
         return this._941180544_SettingsDataFetchingSpeedSection_NumericStepper1;
      }
      
      public function set _SettingsDataFetchingSpeedSection_NumericStepper1(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._941180544_SettingsDataFetchingSpeedSection_NumericStepper1;
         if(_loc2_ !== param1)
         {
            this._941180544_SettingsDataFetchingSpeedSection_NumericStepper1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SettingsDataFetchingSpeedSection_NumericStepper1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SettingsDataFetchingSpeedSection_NumericStepper2() : NumericStepper
      {
         return this._941180543_SettingsDataFetchingSpeedSection_NumericStepper2;
      }
      
      public function set _SettingsDataFetchingSpeedSection_NumericStepper2(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._941180543_SettingsDataFetchingSpeedSection_NumericStepper2;
         if(_loc2_ !== param1)
         {
            this._941180543_SettingsDataFetchingSpeedSection_NumericStepper2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SettingsDataFetchingSpeedSection_NumericStepper2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get model() : DataModel
      {
         return this._104069929model;
      }
      
      private function set model(param1:DataModel) : void
      {
         var _loc2_:Object = this._104069929model;
         if(_loc2_ !== param1)
         {
            this._104069929model = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"model",_loc2_,param1));
            }
         }
      }
   }
}
