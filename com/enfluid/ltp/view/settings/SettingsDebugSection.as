package com.enfluid.ltp.view.settings
{
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.CheckBox;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.Event;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.view.renderers.CalculatableValueGroup;
   import spark.layouts.VerticalLayout;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class SettingsDebugSection extends CollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1275805149_SettingsDebugSection_CheckBox1:CheckBox;
      
      private var _1275805148_SettingsDebugSection_CheckBox2:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SettingsDebugSection()
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
         var bindings:Array = this._SettingsDebugSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_settings_SettingsDebugSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SettingsDebugSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.layout = this._SettingsDebugSection_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsDebugSection_Array1_c);
         this.addEventListener("creationComplete",this.___SettingsDebugSection_CollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 90 + 44 + 24 + 1 + 1 - 70 + 1);
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
         SettingsDebugSection._watcherSetupUtil = param1;
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
               new SetUserEvent("UserEvent.Settings.Debug.Opened").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.Settings.Debug.Closed").execute();
            }
         });
      }
      
      protected final function handleShowErrorClick(param1:Event) : void
      {
         var _loc2_:CheckBox = CheckBox(param1.target);
         if(_loc2_.selected)
         {
            new SetUserEvent("UserEvent.Settings.Debug.ShowErrors").execute();
         }
         else
         {
            new SetUserEvent("UserEvent.Settings.Debug.HideErrors").execute();
         }
      }
      
      protected final function handleShowDebugClick(param1:Event) : void
      {
         var _loc2_:CheckBox = CheckBox(param1.target);
         if(_loc2_.selected)
         {
            new SetUserEvent("UserEvent.Settings.Debug.ShowDebugPanel").execute();
         }
         else
         {
            new SetUserEvent("UserEvent.Settings.Debug.HideDebugPanel").execute();
         }
      }
      
      private final function _SettingsDebugSection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 115 - 47);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 2 - 1 + 118 - 69 - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-§§pop() - 60 + 11 + 1 - 1 + 104);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(§§pop() - 74 - 1) * 117);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _SettingsDebugSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._SettingsDebugSection_CheckBox1_i(),this._SettingsDebugSection_CheckBox2_i()];
         return _loc1_;
      }
      
      private final function _SettingsDebugSection_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Show Runtime Errors";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push(-(§§pop() * 5 - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.addEventListener("change",this.___SettingsDebugSection_CheckBox1_change);
         _loc1_.id = "_SettingsDebugSection_CheckBox1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsDebugSection_CheckBox1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsDebugSection_CheckBox1",this._SettingsDebugSection_CheckBox1);
         return _loc1_;
      }
      
      public final function ___SettingsDebugSection_CheckBox1_change(param1:Event) : void
      {
         this.handleShowErrorClick(param1);
         new SavePreferencesCommand().execute();
      }
      
      private final function _SettingsDebugSection_CheckBox2_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Show Debug Panel";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 62) + 80 + 96);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.addEventListener("change",this.___SettingsDebugSection_CheckBox2_change);
         _loc1_.id = "_SettingsDebugSection_CheckBox2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsDebugSection_CheckBox2 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsDebugSection_CheckBox2",this._SettingsDebugSection_CheckBox2);
         return _loc1_;
      }
      
      public final function ___SettingsDebugSection_CheckBox2_change(param1:Event) : void
      {
         this.handleShowDebugClick(param1);
         new SavePreferencesCommand().execute();
      }
      
      public final function ___SettingsDebugSection_CollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _SettingsDebugSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1) * 36 * 68 + 1 + 40);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.showRuntimeErrors;
         },null,"_SettingsDebugSection_CheckBox1.selected");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 54) - 9 - 1 + 3));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.showDebugPanel;
         },null,"_SettingsDebugSection_CheckBox2.selected");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 12 + 1 - 1 + 50 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SettingsDebugSection_CheckBox1.selected;
         },function(param1:*):void
         {
            model.preferences.showRuntimeErrors = param1;
         },"model.preferences.showRuntimeErrors");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 79 + 1 - 18);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 95 + 1) + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 119 - 6 + 47) * 16 + 31 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 17 - 1 + 1) * 27);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 8 * 91);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() * 67 + 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SettingsDebugSection_CheckBox2.selected;
         },function(param1:*):void
         {
            model.preferences.showDebugPanel = param1;
         },"model.preferences.showDebugPanel");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 11 - 1 - 32 + 109 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(--§§pop() - 1 + 57) + 109 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 71 * 90 + 34 - 10);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 + 54) - 1 + 67);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() * 24 - 1 + 1 - 55);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _SettingsDebugSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.preferences.showRuntimeErrors = this._SettingsDebugSection_CheckBox1.selected;
         this.model.preferences.showDebugPanel = this._SettingsDebugSection_CheckBox2.selected;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SettingsDebugSection_CheckBox1() : CheckBox
      {
         return this._1275805149_SettingsDebugSection_CheckBox1;
      }
      
      public function set _SettingsDebugSection_CheckBox1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1275805149_SettingsDebugSection_CheckBox1;
         if(_loc2_ !== param1)
         {
            this._1275805149_SettingsDebugSection_CheckBox1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SettingsDebugSection_CheckBox1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SettingsDebugSection_CheckBox2() : CheckBox
      {
         return this._1275805148_SettingsDebugSection_CheckBox2;
      }
      
      public function set _SettingsDebugSection_CheckBox2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1275805148_SettingsDebugSection_CheckBox2;
         if(_loc2_ !== param1)
         {
            this._1275805148_SettingsDebugSection_CheckBox2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SettingsDebugSection_CheckBox2",_loc2_,param1));
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
