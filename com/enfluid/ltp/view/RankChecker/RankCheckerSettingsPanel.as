package com.enfluid.ltp.view.RankChecker
{
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.validators.NumberValidator;
   import spark.components.ComboBox;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import spark.components.HGroup;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.events.ValidationResultEvent;
   import com.hurlant.crypto.rsa.RSAKey;
   import com.hurlant.math.BigInteger;
   import flash.events.FocusEvent;
   import mx.utils.StringUtil;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import flash.events.Event;
   import mx.controls.Spacer;
   import flash.events.MouseEvent;
   import spark.components.supportClasses.ToggleButtonBase;
   import com.enfluid.ltp.view.components.HelpButton;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import spark.events.IndexChangeEvent;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import spark.events.DropDownEvent;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import system.errors.ConcurrencyError;
   import flash.errors.IllegalOperationError;
   import mx.binding.Binding;
   import mx.collections.IList;
   import com.enfluid.ltp.model.constants.Countries;
   import com.enfluid.ltp.model.constants.Languages;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import spark.effects.Rotate;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class RankCheckerSettingsPanel extends CollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _RankCheckerSettingsPanel_NumberValidator1:NumberValidator;
      
      private var _1455568792countryCombo:ComboBox;
      
      private var _438303466languageCombo:ComboBox;
      
      private var _1227478493tiAvgDelayGoogleRequests:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RankCheckerSettingsPanel()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._RankCheckerSettingsPanel_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_RankChecker_RankCheckerSettingsPanelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RankCheckerSettingsPanel[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1 - 25) - 106 + 7);
         }
         §§pop().percentWidth = §§pop();
         this.layout = this._RankCheckerSettingsPanel_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._RankCheckerSettingsPanel_Array1_c);
         this._RankCheckerSettingsPanel_NumberValidator1_i();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1 + 1) + 14);
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
         RankCheckerSettingsPanel._watcherSetupUtil = param1;
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
      
      protected final function numbervalidator1_invalidHandler(param1:ValidationResultEvent) : void
      {
      }
      
      protected final function numbervalidator1_validHandler(param1:ValidationResultEvent) : void
      {
         this.model.avgDelayBetweenGoogleRequests = Number(this.tiAvgDelayGoogleRequests.text);
      }
      
      protected final function tiAvgDelayGoogleRequests_focusOutHandler(param1:FocusEvent) : void
      {
         if(StringUtil.trim(this.tiAvgDelayGoogleRequests.text) == "")
         {
            this.tiAvgDelayGoogleRequests.text = this.model.avgDelayBetweenGoogleRequests.toString();
         }
      }
      
      private final function _RankCheckerSettingsPanel_NumberValidator1_i() : NumberValidator
      {
         var _loc1_:NumberValidator = new NumberValidator();
         _loc1_.property = "text";
         _loc1_.triggerEvent = "change";
         _loc1_.addEventListener("invalid",this.___RankCheckerSettingsPanel_NumberValidator1_invalid);
         _loc1_.addEventListener("valid",this.___RankCheckerSettingsPanel_NumberValidator1_valid);
         _loc1_.initialized(this,"_RankCheckerSettingsPanel_NumberValidator1");
         this._RankCheckerSettingsPanel_NumberValidator1 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckerSettingsPanel_NumberValidator1",this._RankCheckerSettingsPanel_NumberValidator1);
         return _loc1_;
      }
      
      public final function ___RankCheckerSettingsPanel_NumberValidator1_invalid(param1:ValidationResultEvent) : void
      {
         this.numbervalidator1_invalidHandler(param1);
      }
      
      public final function ___RankCheckerSettingsPanel_NumberValidator1_valid(param1:ValidationResultEvent) : void
      {
         this.numbervalidator1_validHandler(param1);
      }
      
      private final function _RankCheckerSettingsPanel_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((-§§pop() * 13 - 27 + 1) * 109 + 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-§§pop() + 62 + 74 + 1 + 115 + 1 + 93);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 76 + 48) + 9);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() * 80 * 70 + 1 + 42);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_Array1_c() : Array
      {
         var _loc1_:Array = [this._RankCheckerSettingsPanel_HGroup1_c(),this._RankCheckerSettingsPanel_Spacer1_c(),this._RankCheckerSettingsPanel_Label2_c(),this._RankCheckerSettingsPanel_ComboBox1_i(),this._RankCheckerSettingsPanel_Spacer2_c(),this._RankCheckerSettingsPanel_Label3_c(),this._RankCheckerSettingsPanel_ComboBox2_i()];
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._RankCheckerSettingsPanel_Label1_c(),this._RankCheckerSettingsPanel_TextInput1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Average delay between Google requests:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc3_)
         {
            §§push(-(§§pop() + 20 + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push((§§pop() - 113 - 1) * 96 * 47 - 22);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 1);
         }
         §§pop().maxChars = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 102 - 1 - 10 - 1);
         }
         §§pop().widthInChars = §§pop();
         _loc1_.restrict = "0-9";
         _loc1_.setStyle("skinClass",FlatTextInputSkinSolo);
         _loc1_.addEventListener("focusOut",this.__tiAvgDelayGoogleRequests_focusOut);
         _loc1_.id = "tiAvgDelayGoogleRequests";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tiAvgDelayGoogleRequests = _loc1_;
         BindingManager.executeBindings(this,"tiAvgDelayGoogleRequests",this.tiAvgDelayGoogleRequests);
         return _loc1_;
      }
      
      public final function __tiAvgDelayGoogleRequests_focusOut(param1:FocusEvent) : void
      {
         this.tiAvgDelayGoogleRequests_focusOutHandler(param1);
      }
      
      private final function _RankCheckerSettingsPanel_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(--§§pop() + 1);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_Label2_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Google Country:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 117 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_ComboBox1_i() : ComboBox
      {
         var _loc1_:ComboBox = new ComboBox();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() * 6 + 69) * 116 + 48) * 79 + 64);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push((-(§§pop() + 83 + 1 - 90) + 15 - 78) * 6);
         }
         §§pop().height = §§pop();
         _loc1_.labelField = "name";
         _loc1_.setStyle("skinClass",GeneralComboboxSkin);
         _loc1_.addEventListener("change",this.__countryCombo_change);
         _loc1_.addEventListener("open",this.__countryCombo_open);
         _loc1_.id = "countryCombo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.countryCombo = _loc1_;
         BindingManager.executeBindings(this,"countryCombo",this.countryCombo);
         return _loc1_;
      }
      
      public final function __countryCombo_change(param1:IndexChangeEvent) : void
      {
         this.model.preferences.selectedCountryCode = CountryVO(this.countryCombo.selectedItem).code;
         new SavePreferencesCommand().execute();
      }
      
      public final function __countryCombo_open(param1:DropDownEvent) : void
      {
         §§push(this.countryCombo.dropDown);
         §§push(400);
         if(_loc2_)
         {
            §§push((§§pop() + 118) * 63 * 0 + 1);
         }
         §§pop().height = §§pop();
      }
      
      private final function _RankCheckerSettingsPanel_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 14 + 1) * 59 + 20 + 1 - 54);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_Label3_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Google Language:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1) + 1 + 1 + 1) * 71 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_ComboBox2_i() : ComboBox
      {
         var _loc1_:ComboBox = new ComboBox();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 22) - 1 - 95 - 71);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push(--((§§pop() * 20 + 61 + 1) * 3 * 72));
         }
         §§pop().height = §§pop();
         _loc1_.labelField = "name";
         _loc1_.setStyle("skinClass",GeneralComboboxSkin);
         _loc1_.addEventListener("change",this.__languageCombo_change);
         _loc1_.addEventListener("open",this.__languageCombo_open);
         _loc1_.id = "languageCombo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.languageCombo = _loc1_;
         BindingManager.executeBindings(this,"languageCombo",this.languageCombo);
         return _loc1_;
      }
      
      public final function __languageCombo_change(param1:IndexChangeEvent) : void
      {
         this.model.preferences.selectedLanguageCode = LanguageVO(this.languageCombo.selectedItem).code;
         new SavePreferencesCommand().execute();
      }
      
      public final function __languageCombo_open(param1:DropDownEvent) : void
      {
         §§push(this.languageCombo.dropDown);
         §§push(300);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 71 - 1 + 1);
         }
         §§pop().height = §§pop();
      }
      
      private final function _RankCheckerSettingsPanel_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 1 - 114 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_RankCheckerSettingsPanel_NumberValidator1.source","tiAvgDelayGoogleRequests");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((--§§pop() - 34 + 1) * 10);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.avgDelayBetweenGoogleRequests;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"tiAvgDelayGoogleRequests.text");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(((-(§§pop() + 1) + 10) * 14 - 1 - 1) * 109);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return Countries.ALL;
         },null,"countryCombo.dataProvider");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 68 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return DataModel.instance.selectedCountry;
         },null,"countryCombo.selectedItem");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1) + 15 + 1 + 22 + 27);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return Languages.ALL;
         },null,"languageCombo.dataProvider");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 20 - 1 + 44);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return DataModel.instance.selectedLanguage;
         },null,"languageCombo.selectedItem");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(--§§pop() + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return countryCombo.selectedItem;
         },function(param1:*):void
         {
            DataModel.instance.selectedCountry = param1;
         },"DataModel.instance.selectedCountry");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) - 69) * 15 + 16);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 61) - 49 - 103 - 1 - 70);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 28 + 1) * 81 - 11 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 119 - 1 - 1) * 97 - 19);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 90) * 99);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return languageCombo.selectedItem;
         },function(param1:*):void
         {
            DataModel.instance.selectedLanguage = param1;
         },"DataModel.instance.selectedLanguage");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) - 1) + 46 + 94 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() - 109) * 83 + 65);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 1 + 84) * 7) - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() + 101 - 86 + 106 - 5) * 28 + 1));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-§§pop() + 73 + 24 + 1 + 83 + 1 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _RankCheckerSettingsPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         DataModel.instance.selectedCountry = this.countryCombo.selectedItem;
         DataModel.instance.selectedLanguage = this.languageCombo.selectedItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get countryCombo() : ComboBox
      {
         return this._1455568792countryCombo;
      }
      
      public function set countryCombo(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1455568792countryCombo;
         if(_loc2_ !== param1)
         {
            this._1455568792countryCombo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"countryCombo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get languageCombo() : ComboBox
      {
         return this._438303466languageCombo;
      }
      
      public function set languageCombo(param1:ComboBox) : void
      {
         var _loc2_:Object = this._438303466languageCombo;
         if(_loc2_ !== param1)
         {
            this._438303466languageCombo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"languageCombo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tiAvgDelayGoogleRequests() : TextInput
      {
         return this._1227478493tiAvgDelayGoogleRequests;
      }
      
      public function set tiAvgDelayGoogleRequests(param1:TextInput) : void
      {
         var _loc2_:Object = this._1227478493tiAvgDelayGoogleRequests;
         if(_loc2_ !== param1)
         {
            this._1227478493tiAvgDelayGoogleRequests = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiAvgDelayGoogleRequests",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      private function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      private function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
   }
}
