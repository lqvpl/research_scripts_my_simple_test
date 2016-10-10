package
{
   import spark.components.WindowedApplication;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.states.State;
   import mx.states.SetProperty;
   import spark.components.Label;
   import com.adobe.cairngorm.popup.PopUpWrapper;
   import com.enfluid.ltp.view.RankChecker.RankCheckView;
   import spark.components.VGroup;
   import spark.effects.Fade;
   import com.enfluid.ltp.view.Footer;
   import com.enfluid.ltp.view.Header;
   import spark.components.Image;
   import com.enfluid.ltp.view.MainView;
   import spark.effects.easing.Power;
   import com.enfluid.ltp.view.containers.RankDrawer;
   import mx.core.IFlexModuleFactory;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import air.update.ApplicationUpdaterUI;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.UncaughtErrorEvent;
   import com.enfluid.ltp.model.constants.RankCheckConstants;
   import com.enfluid.ltp.util.Logger;
   import system.serializers.eden.info;
   import info.noirbizarre.airorm.utils.capitalize;
   import flash.utils.setTimeout;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import com.enfluid.ltp.controller.common.StartupCommand;
   import mx.controls.Spacer;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Callout.GeneralCalloutArrowSkin;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.controller.common.AppUpdateCommand;
   import flash.events.Event;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.view.popups.NotificationPopup;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import com.enfluid.ltp.view.popups.SeoMozKeyPopup;
   import spark.components.TextArea;
   import mx.states.Transition;
   import com.adobe.cairngorm.popup.PopUpEvent;
   import com.enfluid.ltp.view.popups.UpgradeToPlatinumPopup;
   import spark.effects.Move;
   import spark.components.ComboBox;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import mx.core.mx_internal;
   import spark.components.ResizeMode;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import system.data.Map;
   import system.data.Iterator;
   import com.enfluid.ltp.view.popups.ProxiesPopup;
   import mx.events.FlexEvent;
   import flash.filesystem.File;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.popups.KeywordPlannerLoginPopup;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.target;
   import com.enfluid.ltp.view.components.SelfAdjustingLabel;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import mx.collections.IList;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import system.data.lists.ArrayList;
   import com.enfluid.ltp.view.popups.ConvertingDBPopup;
   import spark.components.Group;
   import mx.states.AddItems;
   import mx.binding.utils.BindingUtils;
   import com.enfluid.ltp.view.popups.LicensePopup;
   import spark.components.DataGroup;
   import com.hurlant.crypto.symmetric.IMode;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.ECBMode;
   import com.hurlant.crypto.symmetric.CFBMode;
   import com.hurlant.crypto.symmetric.CFB8Mode;
   import com.hurlant.crypto.symmetric.OFBMode;
   import com.hurlant.crypto.symmetric.CTRMode;
   import com.hurlant.crypto.symmetric.CBCMode;
   import com.enfluid.ltp.view.popups.EULAPopup;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import com.enfluid.ltp.view.popups.ErrorPopup;
   import com.enfluid.ltp.view.popups.SettingsCallout;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import hr.binaria.asx3m.converters.IDataHolder;
   import hr.binaria.asx3m.annotations.AnnotatedWrapper;
   import hr.binaria.asx3m.annotations.Annotation;
   import flash.utils.getQualifiedClassName;
   import mx.events.EffectEvent;
   import spark.layouts.HorizontalLayout;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.controller.rankchecker.DeleteRankCheckRecordCommand;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.adobe.net.URI;
   import com.dk.license.LicenseUtil;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatDeleteColumnHeaderRenderer;
   import system.numeric.Mathematics;
   import mx.controls.Alert;
   import mx.collections.XMLListCollection;
   import com.enfluid.ltp.view.skins.RankDrawerSkin;
   import com.enfluid.ltp.view.skins.BorderContainerYellowShadowSkin;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   import assets.LibraryAssets;
   import spark.layouts.VerticalLayout;
   import mx.events.CloseEvent;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.core.UIFTETextField;
   import com.enfluid.ltp.view.skins.StandardToggleSwitchSkin;
   import com.enfluid.ltp.view.skins.ToggleSwitchSkin;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Checkbox.GeneralCheckboxSkin;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Callout.GeneralCalloutSkin;
   import com.enfluid.ltp.view.skins.CollapsiblePanelSkin;
   import com.enfluid.ltp.view.skins.CompetitorAnalysisPanelSkin;
   import com.enfluid.ltp.view.skins.SlimScrollerSkin;
   import com.enfluid.ltp.view.skins.FlatUIComponents.ScrollPane.FlatUIScrollBarSkin;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass6;
   
   use namespace bi_internal;
   use namespace mx_internal;
   
   public final class LongTailPro extends WindowedApplication implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _LongTailPro_Label1:Label;
      
      public var _LongTailPro_PopUpWrapper1:PopUpWrapper;
      
      public var _LongTailPro_PopUpWrapper2:PopUpWrapper;
      
      public var _LongTailPro_PopUpWrapper3:PopUpWrapper;
      
      public var _LongTailPro_PopUpWrapper4:PopUpWrapper;
      
      public var _LongTailPro_PopUpWrapper5:PopUpWrapper;
      
      public var _LongTailPro_PopUpWrapper6:PopUpWrapper;
      
      public var _LongTailPro_PopUpWrapper7:PopUpWrapper;
      
      public var _LongTailPro_PopUpWrapper8:PopUpWrapper;
      
      public var _LongTailPro_PopUpWrapper9:PopUpWrapper;
      
      public var _LongTailPro_RankCheckView1:RankCheckView;
      
      private var _951530617content:VGroup;
      
      private var _50884728fadeInContent:spark.effects.Fade;
      
      private var _2025857548fadeInLogo:spark.effects.Fade;
      
      private var _326184926fadeInRankDrawer:spark.effects.Fade;
      
      private var _1268861541footer:Footer;
      
      private var _1221270899header:Header;
      
      private var _3327403logo:Image;
      
      private var _8376322mainView:MainView;
      
      private var _22944400powerEasing:Power;
      
      private var _807166013rankDrawer:RankDrawer;
      
      private var _273711292startupLogoAndText:VGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      protected var appUpdater:ApplicationUpdaterUI;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _LongTailPro_StylesInit_done:Boolean = false;
      
      private var _embed__font_OpenSans2_medium_italic_1733198559:Class;
      
      private var _embed__font_OpenSans2_bold_normal_2124759710:Class;
      
      private var _embed__font_OpenSans2_bold_italic_1635156483:Class;
      
      private var _embed__font_OpenSans2_medium_normal_1945942762:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function LongTailPro()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.appUpdater = new ApplicationUpdaterUI();
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._embed__font_OpenSans2_medium_italic_1733198559 = LongTailPro__embed__font_OpenSans2_medium_italic_1733198559;
         this._embed__font_OpenSans2_bold_normal_2124759710 = LongTailPro__embed__font_OpenSans2_bold_normal_2124759710;
         this._embed__font_OpenSans2_bold_italic_1635156483 = LongTailPro__embed__font_OpenSans2_bold_italic_1635156483;
         this._embed__font_OpenSans2_medium_normal_1945942762 = LongTailPro__embed__font_OpenSans2_medium_normal_1945942762;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._LongTailPro_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_LongTailProWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return LongTailPro[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.visible = false;
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._LongTailPro_Array1_c);
         this._LongTailPro_PopUpWrapper1_i();
         this._LongTailPro_PopUpWrapper2_i();
         this._LongTailPro_PopUpWrapper3_i();
         this._LongTailPro_PopUpWrapper4_i();
         this._LongTailPro_PopUpWrapper5_i();
         this._LongTailPro_PopUpWrapper6_i();
         this._LongTailPro_PopUpWrapper7_i();
         this._LongTailPro_PopUpWrapper8_i();
         this._LongTailPro_PopUpWrapper9_i();
         this._LongTailPro_Fade2_i();
         this._LongTailPro_Fade1_i();
         this._LongTailPro_Fade3_i();
         this._LongTailPro_Power1_i();
         this.addEventListener("creationComplete",this.___LongTailPro_WindowedApplication1_creationComplete);
         this.addEventListener("preinitialize",this.___LongTailPro_WindowedApplication1_preinitialize);
         this.addEventListener("closing",this.___LongTailPro_WindowedApplication1_closing);
         this.addEventListener("applicationComplete",this.___LongTailPro_WindowedApplication1_applicationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-((§§pop() - 37) * 25 - 1) * 79));
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
         LongTailPro._watcherSetupUtil = param1;
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
            this.fontSize = 12;
         };
         mx_internal::_LongTailPro_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function handleGlobalErrors(param1:UncaughtErrorEvent) : void
      {
         param1.preventDefault();
         Logger.log(param1.error.getStackTrace());
         if(this.model.preferences.showRuntimeErrors)
         {
            this.viewModel.runtimeErrorText = param1.error.getStackTrace();
         }
      }
      
      private final function setupErrorHandling() : void
      {
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.handleGlobalErrors);
      }
      
      private final function doExit() : void
      {
         exit();
      }
      
      private final function onCreationComplete() : void
      {
         §§push();
         §§push(this.showApp);
         §§push(100);
         if(_loc1_)
         {
            §§push((§§pop() + 1) * 113 + 60);
         }
         §§pop().setTimeout(§§pop(),§§pop());
         this.viewModel.application = this;
         callLater(this.startup);
         §§push();
         §§push(this.checkUpdate);
         §§push(1000);
         if(_loc2_)
         {
            §§push((§§pop() + 27 + 1 - 1 + 1 - 1) * 39 + 1);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function startup() : void
      {
         new StartupCommand().execute();
      }
      
      private final function showApp() : void
      {
         this.visible = true;
      }
      
      private final function checkUpdate() : void
      {
         new AppUpdateCommand().execute();
      }
      
      private final function onExit(param1:Event) : void
      {
      }
      
      private final function _LongTailPro_PopUpWrapper1_i() : PopUpWrapper
      {
         var _loc1_:PopUpWrapper = new PopUpWrapper();
         _loc1_.modal = true;
         _loc1_.popup = new DeferredInstanceFromFunction(this._LongTailPro_NotificationPopup1_c,this._LongTailPro_NotificationPopup1_r);
         _loc1_.initialized(this,"_LongTailPro_PopUpWrapper1");
         this._LongTailPro_PopUpWrapper1 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_PopUpWrapper1",this._LongTailPro_PopUpWrapper1);
         return _loc1_;
      }
      
      private final function _LongTailPro_NotificationPopup1_c() : NotificationPopup
      {
         var _loc1_:NotificationPopup = new NotificationPopup();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LongTailPro_NotificationPopup1_r() : void
      {
      }
      
      private final function _LongTailPro_PopUpWrapper2_i() : PopUpWrapper
      {
         var _loc1_:PopUpWrapper = new PopUpWrapper();
         _loc1_.modal = true;
         _loc1_.popup = new DeferredInstanceFromFunction(this._LongTailPro_SeoMozKeyPopup1_c,this._LongTailPro_SeoMozKeyPopup1_r);
         _loc1_.addEventListener("closed",this.___LongTailPro_PopUpWrapper2_closed);
         _loc1_.initialized(this,"_LongTailPro_PopUpWrapper2");
         this._LongTailPro_PopUpWrapper2 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_PopUpWrapper2",this._LongTailPro_PopUpWrapper2);
         return _loc1_;
      }
      
      private final function _LongTailPro_SeoMozKeyPopup1_c() : SeoMozKeyPopup
      {
         var _loc1_:SeoMozKeyPopup = new SeoMozKeyPopup();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LongTailPro_SeoMozKeyPopup1_r() : void
      {
      }
      
      public final function ___LongTailPro_PopUpWrapper2_closed(param1:PopUpEvent) : void
      {
         ViewModel.instance.showSEOMozPopup = false;
      }
      
      private final function _LongTailPro_PopUpWrapper3_i() : PopUpWrapper
      {
         var _loc1_:PopUpWrapper = new PopUpWrapper();
         _loc1_.modal = true;
         _loc1_.popup = new DeferredInstanceFromFunction(this._LongTailPro_UpgradeToPlatinumPopup1_c,this._LongTailPro_UpgradeToPlatinumPopup1_r);
         _loc1_.addEventListener("closed",this.___LongTailPro_PopUpWrapper3_closed);
         _loc1_.initialized(this,"_LongTailPro_PopUpWrapper3");
         this._LongTailPro_PopUpWrapper3 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_PopUpWrapper3",this._LongTailPro_PopUpWrapper3);
         return _loc1_;
      }
      
      private final function _LongTailPro_UpgradeToPlatinumPopup1_c() : UpgradeToPlatinumPopup
      {
         var _loc1_:UpgradeToPlatinumPopup = new UpgradeToPlatinumPopup();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LongTailPro_UpgradeToPlatinumPopup1_r() : void
      {
      }
      
      public final function ___LongTailPro_PopUpWrapper3_closed(param1:PopUpEvent) : void
      {
         ViewModel.instance.showUpgradeToPlatinumPopup = false;
      }
      
      private final function _LongTailPro_PopUpWrapper4_i() : PopUpWrapper
      {
         var _loc1_:PopUpWrapper = new PopUpWrapper();
         _loc1_.modal = true;
         _loc1_.popup = new DeferredInstanceFromFunction(this._LongTailPro_ProxiesPopup1_c,this._LongTailPro_ProxiesPopup1_r);
         _loc1_.addEventListener("closed",this.___LongTailPro_PopUpWrapper4_closed);
         _loc1_.initialized(this,"_LongTailPro_PopUpWrapper4");
         this._LongTailPro_PopUpWrapper4 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_PopUpWrapper4",this._LongTailPro_PopUpWrapper4);
         return _loc1_;
      }
      
      private final function _LongTailPro_ProxiesPopup1_c() : ProxiesPopup
      {
         var _loc1_:ProxiesPopup = new ProxiesPopup();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LongTailPro_ProxiesPopup1_r() : void
      {
      }
      
      public final function ___LongTailPro_PopUpWrapper4_closed(param1:PopUpEvent) : void
      {
         ViewModel.instance.showProxiesPopup = false;
      }
      
      private final function _LongTailPro_PopUpWrapper5_i() : PopUpWrapper
      {
         var _loc1_:PopUpWrapper = new PopUpWrapper();
         _loc1_.modal = true;
         _loc1_.popup = new DeferredInstanceFromFunction(this._LongTailPro_KeywordPlannerLoginPopup1_c,this._LongTailPro_KeywordPlannerLoginPopup1_r);
         _loc1_.addEventListener("closed",this.___LongTailPro_PopUpWrapper5_closed);
         _loc1_.initialized(this,"_LongTailPro_PopUpWrapper5");
         this._LongTailPro_PopUpWrapper5 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_PopUpWrapper5",this._LongTailPro_PopUpWrapper5);
         return _loc1_;
      }
      
      private final function _LongTailPro_KeywordPlannerLoginPopup1_c() : KeywordPlannerLoginPopup
      {
         var _loc1_:KeywordPlannerLoginPopup = new KeywordPlannerLoginPopup();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LongTailPro_KeywordPlannerLoginPopup1_r() : void
      {
      }
      
      public final function ___LongTailPro_PopUpWrapper5_closed(param1:PopUpEvent) : void
      {
         ViewModel.instance.showKeywordPlannerLoginPopup = false;
      }
      
      private final function _LongTailPro_PopUpWrapper6_i() : PopUpWrapper
      {
         var _loc1_:PopUpWrapper = new PopUpWrapper();
         _loc1_.modal = true;
         _loc1_.popup = new DeferredInstanceFromFunction(this._LongTailPro_ConvertingDBPopup1_c,this._LongTailPro_ConvertingDBPopup1_r);
         _loc1_.addEventListener("closed",this.___LongTailPro_PopUpWrapper6_closed);
         _loc1_.initialized(this,"_LongTailPro_PopUpWrapper6");
         this._LongTailPro_PopUpWrapper6 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_PopUpWrapper6",this._LongTailPro_PopUpWrapper6);
         return _loc1_;
      }
      
      private final function _LongTailPro_ConvertingDBPopup1_c() : ConvertingDBPopup
      {
         var _loc1_:ConvertingDBPopup = new ConvertingDBPopup();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LongTailPro_ConvertingDBPopup1_r() : void
      {
      }
      
      public final function ___LongTailPro_PopUpWrapper6_closed(param1:PopUpEvent) : void
      {
         ViewModel.instance.showConvertingDBPopup = false;
      }
      
      private final function _LongTailPro_PopUpWrapper7_i() : PopUpWrapper
      {
         var _loc1_:PopUpWrapper = new PopUpWrapper();
         _loc1_.modal = true;
         _loc1_.popup = new DeferredInstanceFromFunction(this._LongTailPro_LicensePopup1_c,this._LongTailPro_LicensePopup1_r);
         _loc1_.addEventListener("closed",this.___LongTailPro_PopUpWrapper7_closed);
         _loc1_.initialized(this,"_LongTailPro_PopUpWrapper7");
         this._LongTailPro_PopUpWrapper7 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_PopUpWrapper7",this._LongTailPro_PopUpWrapper7);
         return _loc1_;
      }
      
      private final function _LongTailPro_LicensePopup1_c() : LicensePopup
      {
         var _loc1_:LicensePopup = new LicensePopup();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LongTailPro_LicensePopup1_r() : void
      {
      }
      
      public final function ___LongTailPro_PopUpWrapper7_closed(param1:PopUpEvent) : void
      {
         ViewModel.instance.showLicensePopup = false;
      }
      
      private final function _LongTailPro_PopUpWrapper8_i() : PopUpWrapper
      {
         var _loc1_:PopUpWrapper = new PopUpWrapper();
         _loc1_.modal = true;
         _loc1_.popup = new DeferredInstanceFromFunction(this._LongTailPro_EULAPopup1_c,this._LongTailPro_EULAPopup1_r);
         _loc1_.initialized(this,"_LongTailPro_PopUpWrapper8");
         this._LongTailPro_PopUpWrapper8 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_PopUpWrapper8",this._LongTailPro_PopUpWrapper8);
         return _loc1_;
      }
      
      private final function _LongTailPro_EULAPopup1_c() : EULAPopup
      {
         var _loc1_:EULAPopup = new EULAPopup();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LongTailPro_EULAPopup1_r() : void
      {
      }
      
      private final function _LongTailPro_PopUpWrapper9_i() : PopUpWrapper
      {
         var _loc1_:PopUpWrapper = new PopUpWrapper();
         _loc1_.modal = true;
         _loc1_.popup = new DeferredInstanceFromFunction(this._LongTailPro_ErrorPopup1_c,this._LongTailPro_ErrorPopup1_r);
         _loc1_.addEventListener("closed",this.___LongTailPro_PopUpWrapper9_closed);
         _loc1_.initialized(this,"_LongTailPro_PopUpWrapper9");
         this._LongTailPro_PopUpWrapper9 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_PopUpWrapper9",this._LongTailPro_PopUpWrapper9);
         return _loc1_;
      }
      
      private final function _LongTailPro_ErrorPopup1_c() : ErrorPopup
      {
         var _loc1_:ErrorPopup = new ErrorPopup();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LongTailPro_ErrorPopup1_r() : void
      {
      }
      
      public final function ___LongTailPro_PopUpWrapper9_closed(param1:PopUpEvent) : void
      {
         ViewModel.instance.runtimeErrorText = "";
      }
      
      private final function _LongTailPro_Fade2_i() : spark.effects.Fade
      {
         var _loc1_:spark.effects.Fade = new spark.effects.Fade();
         _loc1_.disableLayout = true;
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 119 - 11);
         }
         §§pop().alphaFrom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1) - 1 - 2 - 1 + 1);
         }
         §§pop().alphaTo = §§pop();
         §§push(_loc1_);
         §§push(200);
         if(_loc3_)
         {
            §§push(-(§§pop() - 17 - 80 - 1 - 1 + 38) - 1);
         }
         §§pop().duration = §§pop();
         _loc1_.addEventListener("effectEnd",this.__fadeInContent_effectEnd);
         this.fadeInContent = _loc1_;
         BindingManager.executeBindings(this,"fadeInContent",this.fadeInContent);
         return _loc1_;
      }
      
      public final function __fadeInContent_effectEnd(param1:EffectEvent) : void
      {
         this.removeElement(this.startupLogoAndText);
      }
      
      private final function _LongTailPro_Fade1_i() : spark.effects.Fade
      {
         var _loc1_:spark.effects.Fade = new spark.effects.Fade();
         _loc1_.disableLayout = true;
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 39 * 73 + 4 - 1 - 15 - 102 - 29);
         }
         §§pop().alphaFrom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((-§§pop() + 1 - 1 - 1 - 1) * 30));
         }
         §§pop().alphaTo = §§pop();
         §§push(_loc1_);
         §§push(500);
         if(_loc3_)
         {
            §§push((§§pop() + 73) * 18 + 1);
         }
         §§pop().duration = §§pop();
         this.fadeInLogo = _loc1_;
         BindingManager.executeBindings(this,"fadeInLogo",this.fadeInLogo);
         return _loc1_;
      }
      
      private final function _LongTailPro_Fade3_i() : spark.effects.Fade
      {
         var _loc1_:spark.effects.Fade = new spark.effects.Fade();
         _loc1_.disableLayout = true;
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 33 - 82 + 1 + 1);
         }
         §§pop().alphaFrom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 - 96);
         }
         §§pop().alphaTo = §§pop();
         §§push(_loc1_);
         §§push(200);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 97 + 1 + 36);
         }
         §§pop().duration = §§pop();
         this.fadeInRankDrawer = _loc1_;
         BindingManager.executeBindings(this,"fadeInRankDrawer",this.fadeInRankDrawer);
         return _loc1_;
      }
      
      private final function _LongTailPro_Power1_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push((§§pop() + 97 + 25 + 20 - 1) * 6 + 1 - 53);
         }
         §§pop().exponent = §§pop();
         this.powerEasing = _loc1_;
         BindingManager.executeBindings(this,"powerEasing",this.powerEasing);
         return _loc1_;
      }
      
      private final function _LongTailPro_Array1_c() : Array
      {
         var _loc1_:Array = [this._LongTailPro_VGroup1_i(),this._LongTailPro_VGroup2_i(),this._LongTailPro_RankDrawer1_i()];
         return _loc1_;
      }
      
      private final function _LongTailPro_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 87 - 1 + 1) * 57) * 110 * 18);
         }
         §§pop().horizontalCenter = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 106 - 33 + 1));
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.mxmlContent = [this._LongTailPro_Image1_i(),this._LongTailPro_Label1_i()];
         _loc1_.id = "startupLogoAndText";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.startupLogoAndText = _loc1_;
         BindingManager.executeBindings(this,"startupLogoAndText",this.startupLogoAndText);
         return _loc1_;
      }
      
      private final function _LongTailPro_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() * 9 + 69 + 1 + 1) * 86);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 1 + 1 + 1 + 44 - 1);
         }
         §§pop().height = §§pop();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.smooth = true;
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() * 103 + 1) + 1 - 1 - 1);
         }
         §§pop().alpha = §§pop();
         _loc1_.id = "logo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.logo = _loc1_;
         BindingManager.executeBindings(this,"logo",this.logo);
         return _loc1_;
      }
      
      private final function _LongTailPro_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(700);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1 + 119 + 98));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(§§pop() * 17 + 63) - 1 + 11 + 1 + 11);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 67 + 1 - 1 + 98));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(25);
         if(_loc2_)
         {
            §§push((§§pop() - 87 - 60 - 99) * 70 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_LongTailPro_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LongTailPro_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_Label1",this._LongTailPro_Label1);
         return _loc1_;
      }
      
      private final function _LongTailPro_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((§§pop() * 65 + 5) * 32 * 21) + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 32 + 1 - 1) + 54 + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 76 + 1) * 22 * 68) + 34);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 88 + 68 + 113 + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 54 - 1 - 106);
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 83 + 1) + 17 - 1));
         }
         §§pop().alpha = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((--(§§pop() + 1 + 1) + 88) * 113);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._LongTailPro_Header1_i(),this._LongTailPro_MainView1_i(),this._LongTailPro_Footer1_i()];
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      private final function _LongTailPro_Header1_i() : Header
      {
         var _loc1_:Header = new Header();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-§§pop() - 35 + 38 + 1 - 82 + 114 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc2_)
         {
            §§push(-(§§pop() * 80 + 24));
         }
         §§pop().height = §§pop();
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private final function _LongTailPro_MainView1_i() : MainView
      {
         var _loc1_:MainView = new MainView();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 55 + 1 + 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.horizontalAlign = "center";
         _loc1_.id = "mainView";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainView = _loc1_;
         BindingManager.executeBindings(this,"mainView",this.mainView);
         return _loc1_;
      }
      
      private final function _LongTailPro_Footer1_i() : Footer
      {
         var _loc1_:Footer = new Footer();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((--§§pop() - 1 + 23) * 72 + 98 - 92);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "footer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.footer = _loc1_;
         BindingManager.executeBindings(this,"footer",this.footer);
         return _loc1_;
      }
      
      private final function _LongTailPro_RankDrawer1_i() : RankDrawer
      {
         var _loc1_:RankDrawer = new RankDrawer();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 1 + 18);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((-§§pop() + 86) * 62) + 1 + 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.includeInLayout = true;
         _loc1_.label = "Rank Checker";
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 104 - 1) - 1);
         }
         §§pop().alpha = §§pop();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LongTailPro_Array4_c);
         _loc1_.setStyle("skinClass",RankDrawerSkin);
         _loc1_.id = "rankDrawer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rankDrawer = _loc1_;
         BindingManager.executeBindings(this,"rankDrawer",this.rankDrawer);
         return _loc1_;
      }
      
      private final function _LongTailPro_Array4_c() : Array
      {
         var _loc1_:Array = [this._LongTailPro_RankCheckView1_i()];
         return _loc1_;
      }
      
      private final function _LongTailPro_RankCheckView1_i() : RankCheckView
      {
         var _loc1_:RankCheckView = new RankCheckView();
         §§push(_loc1_);
         §§push("borderWeight");
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 79 - 93 + 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("skinClass",BorderContainerYellowShadowSkin);
         _loc1_.setStyle("dropShadowVisible",false);
         _loc1_.id = "_LongTailPro_RankCheckView1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LongTailPro_RankCheckView1 = _loc1_;
         BindingManager.executeBindings(this,"_LongTailPro_RankCheckView1",this._LongTailPro_RankCheckView1);
         return _loc1_;
      }
      
      public final function ___LongTailPro_WindowedApplication1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete();
      }
      
      public final function ___LongTailPro_WindowedApplication1_preinitialize(param1:FlexEvent) : void
      {
         maximize();
      }
      
      public final function ___LongTailPro_WindowedApplication1_closing(param1:Event) : void
      {
         this.onExit(param1);
      }
      
      public final function ___LongTailPro_WindowedApplication1_applicationComplete(param1:FlexEvent) : void
      {
         this.setupErrorHandling();
      }
      
      private final function _LongTailPro_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 49) * 105 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showNotificationMessage;
         },null,"_LongTailPro_PopUpWrapper1.open");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1) * 101 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showSEOMozPopup;
         },null,"_LongTailPro_PopUpWrapper2.open");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 94) * 6 * 119 - 101);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showUpgradeToPlatinumPopup;
         },null,"_LongTailPro_PopUpWrapper3.open");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() + 118 + 1 + 1) * 2 * 59);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showProxiesPopup;
         },null,"_LongTailPro_PopUpWrapper4.open");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((-(§§pop() + 19) + 50 - 50 - 86) * 76);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showKeywordPlannerLoginPopup;
         },null,"_LongTailPro_PopUpWrapper5.open");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() * 31 + 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showConvertingDBPopup;
         },null,"_LongTailPro_PopUpWrapper6.open");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(§§pop() + 55 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showLicensePopup;
         },null,"_LongTailPro_PopUpWrapper7.open");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push((§§pop() - 27) * 77 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showEULAPopup;
         },null,"_LongTailPro_PopUpWrapper8.open");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push((--§§pop() + 1) * 102 + 54);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return Boolean(ViewModel.instance.runtimeErrorText);
         },null,"_LongTailPro_PopUpWrapper9.open");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() * 58 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"fadeInLogo.easer","powerEasing");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push((--§§pop() + 30 + 0) * 88 + 16);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"fadeInLogo.target","logo");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push((§§pop() - 105) * 83 - 1 - 62 + 67);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"fadeInContent.easer","powerEasing");
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push((--§§pop() + 1 + 27) * 13 + 67);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"fadeInContent.target","content");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-((§§pop() - 54 - 71) * 75) + 98 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"fadeInRankDrawer.easer","powerEasing");
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(--(-(§§pop() - 51 - 44 - 52) - 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"fadeInRankDrawer.target","rankDrawer");
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 92) * 119));
         }
         §§pop()[§§pop()] = new Binding(this,null,function(param1:*):void
         {
            logo.setStyle("showEffect",param1);
         },"logo.showEffect","fadeInLogo");
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push((-(§§pop() + 78) * 95 + 1) * 44 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return !!model.isPlatinum?AssetsLibrary.PLATINUM_LOGO:AssetsLibrary.LOGO;
         },null,"logo.source");
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push((-(§§pop() + 98) - 89 - 18 + 16 + 1) * 117);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return viewModel.versionDetermined;
         },null,"logo.visible");
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push(-((-(§§pop() * 105) - 105) * 105));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = viewModel.startupText;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_LongTailPro_Label1.text");
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 82 - 1) * 78 - 86));
         }
         §§pop()[§§pop()] = new Binding(this,null,function(param1:*):void
         {
            content.setStyle("showEffect",param1);
         },"content.showEffect","fadeInContent");
         §§push(result);
         §§push(20);
         if(_loc2_)
         {
            §§push((-(§§pop() * 36) + 1) * 45 - 60 + 1 + 108);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return viewModel.appInitialized && model.allowUserIn;
         },null,"content.visible");
         §§push(result);
         §§push(21);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 108 + 1 + 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            §§push(model.projects.length);
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() * 6 - 24 + 1 + 1 - 9 - 83 - 34);
            }
            return §§pop() != §§pop();
         },null,"header.isActionsVisible");
         §§push(result);
         §§push(22);
         if(_loc3_)
         {
            §§push((-§§pop() + 86 - 25 + 1) * 16);
         }
         §§pop()[§§pop()] = new Binding(this,null,function(param1:*):void
         {
            rankDrawer.setStyle("showEffect",param1);
         },"rankDrawer.showEffect","fadeInRankDrawer");
         §§push(result);
         §§push(23);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1) * 105);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return viewModel.appInitialized && model.allowUserIn;
         },null,"rankDrawer.visible");
         §§push(result);
         §§push(24);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 80 + 1) * 71 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return mainView.height * 0.8;
         },null,"_LongTailPro_RankCheckView1.height");
         return result;
      }
      
      mx_internal final function _LongTailPro_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_LongTailPro_StylesInit_done)
         {
            return;
         }
         mx_internal::_LongTailPro_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("global",conditions,selector);
         style = styleManager.getStyleDeclaration("global");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.textFieldClass = UIFTETextField;
               this.fontFamily = "OpenSans2";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","pod");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".pod");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(0);
               if(_loc1_)
               {
                  §§push(§§pop() - 85 - 91 + 1 + 1 - 1);
               }
               §§pop().backgroundColor = §§pop();
               this.borderVisible = false;
               §§push(this);
               §§push(0);
               if(_loc2_)
               {
                  §§push(§§pop() - 103 + 18 + 39);
               }
               §§pop().cornerRadius = §§pop();
               §§push(this);
               §§push(0);
               if(_loc2_)
               {
                  §§push(§§pop() * 99 + 20 + 88 + 109);
               }
               §§pop().backgroundAlpha = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","sectionTitle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".sectionTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontWeight = "bold";
               §§push(this);
               §§push(6710886);
               if(_loc2_)
               {
                  §§push(§§pop() - 1 - 93 + 1 - 57 + 1 + 1 - 1);
               }
               §§pop().color = §§pop();
               §§push(this);
               §§push(24);
               if(_loc1_)
               {
                  §§push(§§pop() * 90 - 106 + 1 + 1 - 1 - 73 - 1);
               }
               §§pop().fontSize = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","sectionSubTitle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".sectionSubTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontWeight = "bold";
               §§push(this);
               §§push(18);
               if(_loc2_)
               {
                  §§push(-(§§pop() * 15) - 1 + 17);
               }
               §§pop().fontSize = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","largeInput");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".largeInput");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(16645629);
               if(_loc1_)
               {
                  §§push(--(§§pop() + 47) * 1 + 84 + 1);
               }
               §§pop().borderColor = §§pop();
               §§push(this);
               §§push(20);
               if(_loc1_)
               {
                  §§push(-(§§pop() + 104 - 9));
               }
               §§pop().fontSize = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","largeInput2");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".largeInput2");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(20);
               if(_loc2_)
               {
                  §§push(-(§§pop() + 62) + 113 + 1);
               }
               §§pop().fontSize = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","dataGridHeaderStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".dataGridHeaderStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.textAlign = "center";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","ltpComboBox");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".ltpComboBox");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.textInputStyleName = "ltpComboBoxTextInput";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","ltpComboBoxTextInput");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".ltpComboBoxTextInput");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(3355443);
               if(_loc1_)
               {
                  §§push(§§pop() + 50 - 101 + 15 - 58 - 12);
               }
               §§pop().color = §§pop();
               this.borderVisible = false;
               §§push(this);
               §§push(0);
               if(_loc2_)
               {
                  §§push(-((§§pop() + 109) * 93 * 8));
               }
               §§pop().cornerRadius = §§pop();
               this.textAlign = "left";
               this.fontStyle = "normal";
               §§push(this);
               §§push(12);
               if(_loc2_)
               {
                  §§push(-§§pop() + 61 - 1 - 1);
               }
               §§pop().fontSize = §§pop();
               §§push(this);
               §§push(15);
               if(_loc1_)
               {
                  §§push(-((§§pop() * 117 + 1 + 1 - 98) * 94) + 1);
               }
               §§pop().paddingLeft = §§pop();
               §§push(this);
               §§push(15);
               if(_loc1_)
               {
                  §§push(-(§§pop() - 16) * 40 - 45 + 1);
               }
               §§pop().paddingRight = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","standardToggleSwitch");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".standardToggleSwitch");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = StandardToggleSwitchSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","toggleSwitch");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".toggleSwitch");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = ToggleSwitchSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","alertMessageStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".alertMessageStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(6710886);
               if(_loc2_)
               {
                  §§push(§§pop() * 99 + 1 + 102);
               }
               §§pop().color = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","alertTitleStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".alertTitleStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(3355443);
               if(_loc2_)
               {
                  §§push(-§§pop() * 98 - 22 - 1 - 1 + 1);
               }
               §§pop().color = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","alertButtonStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".alertButtonStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(3355443);
               if(_loc1_)
               {
                  §§push(-((§§pop() + 1 - 31) * 48) - 36 - 18);
               }
               §§pop().color = §§pop();
               this.emphasizedSkin = GeneralFlatButtonSkin;
               this.skin = GeneralFlatButtonSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","GridBackgroundAlternatingRowColors");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".GridBackgroundAlternatingRowColors");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(13557737);
               if(_loc1_)
               {
                  §§push((((-§§pop() + 1) * 39 + 14) * 47 + 1) * 25);
               }
               §§pop().alternatingRowColors = null;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","ProxiesGridAlternatingRowColors");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".ProxiesGridAlternatingRowColors");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(16119800);
               if(_loc1_)
               {
                  §§push(§§pop() + 1 - 57 + 1 + 92);
               }
               §§pop().alternatingRowColors = null;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","createProjectCallout");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".createProjectCallout");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               §§push(this);
               §§push(16119542);
               if(_loc2_)
               {
                  §§push((§§pop() - 1 - 75) * 61);
               }
               §§pop().backgroundColor = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.CheckBox",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.CheckBox");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = GeneralCheckboxSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Callout",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.Callout");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = GeneralCalloutSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Button",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.Button");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.buttonMode = "true";
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.WindowedApplication",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.WindowedApplication");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.interactionMode = "mouse";
               §§push(this);
               §§push(16777215);
               if(_loc2_)
               {
                  §§push(-(-§§pop() - 95 + 1));
               }
               §§pop().baseColor = §§pop();
               §§push(this);
               §§push(277083);
               if(_loc1_)
               {
                  §§push(-(--(§§pop() - 1) - 1 - 1));
               }
               §§pop().backgroundColor = §§pop();
               §§push(this);
               §§push(6710886);
               if(_loc2_)
               {
                  §§push(-(§§pop() - 1 - 1) + 1 - 108 + 1 + 18);
               }
               §§pop().color = §§pop();
               this.skinClass = LTPSkin;
               this.fontFamily = "OpenSans2";
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.List",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.List");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderVisible = false;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.DataGrid",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.DataGrid");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderVisible = false;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("com.enfluid.ltp.view.containers.CollapsiblePanel",conditions,selector);
         style = styleManager.getStyleDeclaration("com.enfluid.ltp.view.containers.CollapsiblePanel");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = CollapsiblePanelSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("com.enfluid.ltp.view.containers.CompetitorAnalysisPanel",conditions,selector);
         style = styleManager.getStyleDeclaration("com.enfluid.ltp.view.containers.CompetitorAnalysisPanel");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = CompetitorAnalysisPanelSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Alert",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.Alert");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.titleStyleName = "alertTitleStyle";
               §§push(this);
               §§push(10066329);
               if(_loc1_)
               {
                  §§push(-((§§pop() - 99) * 4 + 1) - 1);
               }
               §§pop().borderColor = §§pop();
               this.messageStyleName = "alertMessageStyle";
               this.buttonStyleName = "alertButtonStyle";
               §§push(this);
               §§push(15658734);
               if(_loc1_)
               {
                  §§push(-(§§pop() - 16) - 1);
               }
               §§pop().backgroundColor = §§pop();
               §§push(this);
               §§push(25);
               if(_loc1_)
               {
                  §§push(§§pop() + 1 - 1 + 1);
               }
               §§pop().headerHeight = §§pop();
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("com.enfluid.ltp.view.components.SlimScroller",conditions,selector);
         style = styleManager.getStyleDeclaration("com.enfluid.ltp.view.components.SlimScroller");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = SlimScrollerSkin;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.VScrollBar",conditions,selector);
         style = styleManager.getStyleDeclaration("spark.components.VScrollBar");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.skinClass = FlatUIScrollBarSkin;
            };
         }
         styleManager.initProtoChainRoots();
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : VGroup
      {
         return this._951530617content;
      }
      
      public function set content(param1:VGroup) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeInContent() : spark.effects.Fade
      {
         return this._50884728fadeInContent;
      }
      
      public function set fadeInContent(param1:spark.effects.Fade) : void
      {
         var _loc2_:Object = this._50884728fadeInContent;
         if(_loc2_ !== param1)
         {
            this._50884728fadeInContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeInContent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeInLogo() : spark.effects.Fade
      {
         return this._2025857548fadeInLogo;
      }
      
      public function set fadeInLogo(param1:spark.effects.Fade) : void
      {
         var _loc2_:Object = this._2025857548fadeInLogo;
         if(_loc2_ !== param1)
         {
            this._2025857548fadeInLogo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeInLogo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeInRankDrawer() : spark.effects.Fade
      {
         return this._326184926fadeInRankDrawer;
      }
      
      public function set fadeInRankDrawer(param1:spark.effects.Fade) : void
      {
         var _loc2_:Object = this._326184926fadeInRankDrawer;
         if(_loc2_ !== param1)
         {
            this._326184926fadeInRankDrawer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeInRankDrawer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get footer() : Footer
      {
         return this._1268861541footer;
      }
      
      public function set footer(param1:Footer) : void
      {
         var _loc2_:Object = this._1268861541footer;
         if(_loc2_ !== param1)
         {
            this._1268861541footer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"footer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : Header
      {
         return this._1221270899header;
      }
      
      public function set header(param1:Header) : void
      {
         var _loc2_:Object = this._1221270899header;
         if(_loc2_ !== param1)
         {
            this._1221270899header = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logo() : Image
      {
         return this._3327403logo;
      }
      
      public function set logo(param1:Image) : void
      {
         var _loc2_:Object = this._3327403logo;
         if(_loc2_ !== param1)
         {
            this._3327403logo = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logo",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainView() : MainView
      {
         return this._8376322mainView;
      }
      
      public function set mainView(param1:MainView) : void
      {
         var _loc2_:Object = this._8376322mainView;
         if(_loc2_ !== param1)
         {
            this._8376322mainView = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainView",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get powerEasing() : Power
      {
         return this._22944400powerEasing;
      }
      
      public function set powerEasing(param1:Power) : void
      {
         var _loc2_:Object = this._22944400powerEasing;
         if(_loc2_ !== param1)
         {
            this._22944400powerEasing = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"powerEasing",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankDrawer() : RankDrawer
      {
         return this._807166013rankDrawer;
      }
      
      public function set rankDrawer(param1:RankDrawer) : void
      {
         var _loc2_:Object = this._807166013rankDrawer;
         if(_loc2_ !== param1)
         {
            this._807166013rankDrawer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankDrawer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startupLogoAndText() : VGroup
      {
         return this._273711292startupLogoAndText;
      }
      
      public function set startupLogoAndText(param1:VGroup) : void
      {
         var _loc2_:Object = this._273711292startupLogoAndText;
         if(_loc2_ !== param1)
         {
            this._273711292startupLogoAndText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startupLogoAndText",_loc2_,param1));
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
