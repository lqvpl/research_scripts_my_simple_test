package com.enfluid.ltp.view.settings
{
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.CheckBox;
   import mx.core.IFlexModuleFactory;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.Event;
   import spark.layouts.VerticalLayout;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import mx.effects.Sequence;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class SettingsHelpSection extends CollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1993588175_SettingsHelpSection_CheckBox1:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SettingsHelpSection()
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
         var bindings:Array = this._SettingsHelpSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_settings_SettingsHelpSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SettingsHelpSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.layout = this._SettingsHelpSection_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsHelpSection_Array1_c);
         this.addEventListener("creationComplete",this.___SettingsHelpSection_CollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 25 + 112 - 1 + 95 + 1 - 88) * 13);
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
         SettingsHelpSection._watcherSetupUtil = param1;
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
               new SetUserEvent("UserEvent.Settings.Help.Opened").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.Settings.Help.Closed").execute();
            }
         });
      }
      
      protected final function handleCheckBoxChange(param1:Event) : void
      {
         var _loc2_:CheckBox = CheckBox(param1.target);
         if(_loc2_.selected)
         {
            new SetUserEvent("UserEvent.Settings.Help.IconsShow").execute();
         }
         else
         {
            new SetUserEvent("UserEvent.Settings.Help.IconsHide").execute();
         }
      }
      
      private final function _SettingsHelpSection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(((§§pop() + 1 - 1 + 57) * 97 - 3) * 52);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((-§§pop() + 1) * 65 + 37 - 19 - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 73 - 1 - 1 - 1 + 1) - 103);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 0 - 29 + 26);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _SettingsHelpSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._SettingsHelpSection_Button1_c(),this._SettingsHelpSection_CheckBox1_i()];
         return _loc1_;
      }
      
      private final function _SettingsHelpSection_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 - 1) + 62 + 14);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Contact Support";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SettingsHelpSection_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SettingsHelpSection_Button1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://longtailpro.com/support"),"_blank");
         new SetUserEvent("UserEvent.Settings.Help.ContactSupport").execute();
      }
      
      private final function _SettingsHelpSection_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Show Help Icons";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 7 + 1) - 31 + 102);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.addEventListener("change",this.___SettingsHelpSection_CheckBox1_change);
         _loc1_.id = "_SettingsHelpSection_CheckBox1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsHelpSection_CheckBox1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsHelpSection_CheckBox1",this._SettingsHelpSection_CheckBox1);
         return _loc1_;
      }
      
      public final function ___SettingsHelpSection_CheckBox1_change(param1:Event) : void
      {
         this.handleCheckBoxChange(param1);
         new SavePreferencesCommand().execute();
      }
      
      public final function ___SettingsHelpSection_CollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _SettingsHelpSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1 + 1) + 1) * 29 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.showHelpIcons;
         },null,"_SettingsHelpSection_CheckBox1.selected");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((-(-§§pop() * 104 + 4 - 1) + 58) * 80);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SettingsHelpSection_CheckBox1.selected;
         },function(param1:*):void
         {
            model.preferences.showHelpIcons = param1;
         },"model.preferences.showHelpIcons");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 78) * 109 - 119);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 2 + 82 + 89) * 102 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1) - 51 + 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 58 + 1 + 118) + 30));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 117) * 15 - 9);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _SettingsHelpSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.preferences.showHelpIcons = this._SettingsHelpSection_CheckBox1.selected;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SettingsHelpSection_CheckBox1() : CheckBox
      {
         return this._1993588175_SettingsHelpSection_CheckBox1;
      }
      
      public function set _SettingsHelpSection_CheckBox1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1993588175_SettingsHelpSection_CheckBox1;
         if(_loc2_ !== param1)
         {
            this._1993588175_SettingsHelpSection_CheckBox1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SettingsHelpSection_CheckBox1",_loc2_,param1));
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
