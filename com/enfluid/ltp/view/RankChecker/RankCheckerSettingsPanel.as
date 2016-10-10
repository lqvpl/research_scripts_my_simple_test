package com.enfluid.ltp.view.RankChecker
{
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.ComboBox;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.events.ValidationResultEvent;
   import spark.layouts.VerticalLayout;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import com.adobe.cairngorm.observer.Observe;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.events.MouseEvent;
   import mx.controls.Spacer;
   import com.enfluid.ltp.model.constants.Times;
   import flash.utils.setTimeout;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.constants.SEOMozKeys;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import spark.events.IndexChangeEvent;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import spark.events.DropDownEvent;
   import spark.primitives.Rect;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import mx.graphics.SolidColor;
   import mx.binding.Binding;
   import mx.collections.IList;
   import com.enfluid.ltp.model.constants.Countries;
   import com.enfluid.ltp.model.constants.Languages;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.skins.target;
   import mx.states.State;
   import spark.primitives.Path;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class RankCheckerSettingsPanel extends CollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1455568792countryCombo:ComboBox;
      
      private var _438303466languageCombo:ComboBox;
      
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
         if(_loc3_)
         {
            §§push(-(§§pop() * 73 - 1));
         }
         §§pop().percentWidth = §§pop();
         this.layout = this._RankCheckerSettingsPanel_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._RankCheckerSettingsPanel_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 78 + 48 - 1 - 1) * 75);
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
      
      private final function _RankCheckerSettingsPanel_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() - 34 + 1) * 10);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(((-(§§pop() + 1) + 10) * 14 - 1 - 1) * 109);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 68 + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1) + 15 + 1 + 22 + 27);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_Array1_c() : Array
      {
         var _loc1_:Array = [this._RankCheckerSettingsPanel_Spacer1_c(),this._RankCheckerSettingsPanel_Label1_c(),this._RankCheckerSettingsPanel_ComboBox1_i(),this._RankCheckerSettingsPanel_Spacer2_c(),this._RankCheckerSettingsPanel_Label2_c(),this._RankCheckerSettingsPanel_ComboBox2_i()];
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 44);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckerSettingsPanel_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Google Country:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 1 - 102);
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
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 15 + 16 + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push(§§pop() - 118 - 49 - 103);
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
            §§push((§§pop() * 50 + 28 + 1) * 81 - 11);
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
            §§push((§§pop() - 1 - 119 - 1 - 1) * 97 - 19);
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
         _loc1_.text = "Google Language:";
         §§push(_loc1_);
         §§push("color");
         §§push(1118481);
         if(_loc2_)
         {
            §§push(-(§§pop() * 90) * 99 - 1);
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
            §§push(-(-§§pop() + 1 - 1 + 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(§§pop() + 46 + 94 - 1 - 1 - 1 - 109);
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
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 9 - 1);
         }
         §§pop().height = §§pop();
      }
      
      private final function _RankCheckerSettingsPanel_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 64 - 1 - 89);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return Countries.ALL;
         },null,"countryCombo.dataProvider");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 86 + 106 - 5) * 28);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return DataModel.instance.selectedCountry;
         },null,"countryCombo.selectedItem");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return Languages.ALL;
         },null,"languageCombo.dataProvider");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 24 + 1 + 83 + 1 - 1 - 57);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return DataModel.instance.selectedLanguage;
         },null,"languageCombo.selectedItem");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() * 94 + 1 + 1 + 1 - 29);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return countryCombo.selectedItem;
         },function(param1:*):void
         {
            DataModel.instance.selectedCountry = param1;
         },"DataModel.instance.selectedCountry");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1 - 25));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 7) - 1 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() + 14 - 21 + 113) * 20 - 2 + 84);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(-§§pop() - 89) + 50) * 118 + 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 1 - 82 - 30 - 96);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() - 53 - 1 - 1) * 10 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return languageCombo.selectedItem;
         },function(param1:*):void
         {
            DataModel.instance.selectedLanguage = param1;
         },"DataModel.instance.selectedLanguage");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 1 - 58 + 81);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-§§pop() * 9 * 44 - 1 - 17 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((-(§§pop() - 9) + 1) * 46 - 1 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 111 - 1 - 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-((§§pop() - 88 + 1 + 1) * 25) * 45 * 118);
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
