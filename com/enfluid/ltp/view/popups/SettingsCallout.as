package com.enfluid.ltp.view.popups
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Button;
   import spark.components.CheckBox;
   import spark.components.HGroup;
   import spark.components.Image;
   import spark.components.Label;
   import com.enfluid.ltp.view.components.WarningInformationLabel;
   import spark.components.VGroup;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.MouseEvent;
   import mx.controls.Alert;
   import mx.events.CloseEvent;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import assets.LibraryAssets_BING;
   import assets.LibraryAssets_BTN_ANALYZE;
   import assets.LibraryAssets_BTN_ANALYZE_DOWN;
   import assets.LibraryAssets_BTN_ANALYZE_OVER;
   import assets.LibraryAssets_BTN_CHECK_RANK;
   import assets.LibraryAssets_BTN_CHECK_RANK_DOWN;
   import assets.LibraryAssets_BTN_CHECK_RANK_OVER;
   import assets.LibraryAssets_BTN_GENERATE_KEYWORDS;
   import assets.LibraryAssets_BTN_GENERATE_KEYWORDS_DOWN;
   import assets.LibraryAssets_BTN_GENERATE_KEYWORDS_OVER;
   import assets.LibraryAssets_GOOGLE;
   import assets.LibraryAssets_YAHOO;
   import assets.LibraryAssets_BTN_ADD_PROJECTS_OVER;
   import assets.LibraryAssets_BTN_ADD_PROJECTS_DOWN;
   import assets.LibraryAssets_BTN_ADD_PROJECTS;
   import com.enfluid.ltp.view.filterviews.LocalSearchesFilterView;
   import com.enfluid.ltp.controller.common.SaveGoogleCredentialsCommand;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import spark.components.Scroller;
   import mx.binding.BindingManager;
   import mx.controls.HRule;
   import mx.controls.Spacer;
   import hr.binaria.asx3m.annotations.Annotation;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.hurlant.util.Memory;
   import flash.events.Event;
   import mx.rpc.http.HTTPService;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatHeaderRenderer;
   import mx.graphics.SolidColor;
   import spark.events.DropDownEvent;
   import flash.data.SQLConnection;
   import flash.filesystem.File;
   import spark.components.BorderContainer;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.view.skins.ProjectDetailsItemSkin;
   import flash.utils.getQualifiedClassName;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import com.enfluid.ltp.controller.keywordresearch.QuickAddAndAnalyzeCommand;
   import flash.system.ApplicationDomain;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Callout.GeneralCalloutArrowSkin;
   import flash.utils.ByteArray;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.ICipher;
   import com.hurlant.crypto.symmetric.PKCS5;
   import com.hurlant.util.Base64;
   import spark.primitives.Rect;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import spark.effects.easing.Sine;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass2;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import system.data.Map;
   import system.data.iterators.ArrayIterator;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import spark.effects.easing.IEaser;
   import spark.effects.easing.EaseInOutBase;
   import mx.collections.ArrayList;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import mx.graphics.LinearGradient;
   import mx.events.FlexMouseEvent;
   import spark.events.PopUpEvent;
   import com.enfluid.ltp.view.renderers.DeleteColumnRenderer;
   import mx.collections.IList;
   import com.enfluid.ltp.util.Util;
   import mx.events.PropertyChangeEvent;
   
   use namespace bi_internal;
   use namespace mx_internal;
   
   public final class SettingsCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _SettingsCallout_Button2:Button;
      
      public var _SettingsCallout_Button3:Button;
      
      private var _1371191811_SettingsCallout_CheckBox1:CheckBox;
      
      private var _1371191810_SettingsCallout_CheckBox2:CheckBox;
      
      private var _1371191809_SettingsCallout_CheckBox3:CheckBox;
      
      public var _SettingsCallout_HGroup1:HGroup;
      
      public var _SettingsCallout_HGroup2:HGroup;
      
      public var _SettingsCallout_HGroup3:HGroup;
      
      public var _SettingsCallout_HGroup4:HGroup;
      
      public var _SettingsCallout_Image1:Image;
      
      public var _SettingsCallout_Label11:Label;
      
      public var _SettingsCallout_Label12:Label;
      
      public var _SettingsCallout_Label4:Label;
      
      public var _SettingsCallout_Label6:Label;
      
      public var _SettingsCallout_Label9:Label;
      
      public var _SettingsCallout_WarningInformationLabel1:WarningInformationLabel;
      
      private var _494627343settingGroup:VGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SettingsCallout()
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
         var bindings:Array = this._SettingsCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_SettingsCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SettingsCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(500);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) * 36);
         }
         §§pop().maxWidth = §§pop();
         this.verticalPosition = "after";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___SettingsCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___SettingsCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 1 - 1 + 1 - 12 + 1) * 83 - 116);
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
         SettingsCallout._watcherSetupUtil = param1;
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
      
      protected final function unlinkSoeMozAccount(param1:MouseEvent) : void
      {
         Alert.yesLabel = "Yes";
         Alert.noLabel = "No";
         §§push(Alert);
         §§push(130);
         if(_loc2_)
         {
            §§push((§§pop() + 75 + 99 + 1) * 90 + 105 + 1 + 41);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc3_)
         {
            §§push((-(§§pop() - 19) - 1 - 1) * 19);
         }
         §§pop().buttonHeight = §§pop();
         §§push(Alert);
         §§push("Do you want to unlink the saved SEO Moz Account?");
         §§push("Unlink SEO Moz Credentials");
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() * 74 * 52 * 49 + 1 - 1 - 93) * 3);
         }
         §§pop().show(§§pop(),§§pop(),§§pop(),null,this.clearSeoMozAccount);
      }
      
      protected final function link1_clickHandler(param1:MouseEvent) : void
      {
         Alert.yesLabel = "Yes";
         Alert.noLabel = "No";
         §§push(Alert);
         §§push(130);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 + 11 - 73 + 9 - 1);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(§§pop() * 43 + 65));
         }
         §§pop().buttonHeight = §§pop();
         §§push(Alert);
         §§push("Do you want to unlink the saved Google credentials?");
         §§push("Unlink Google Credentials");
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 36 + 63 + 1 - 1);
         }
         §§pop().show(§§pop(),§§pop(),§§pop(),null,this.alertEventHandler);
      }
      
      private final function clearSeoMozAccount(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            this.model.preferences.userSeoMozAccessId = "";
            this.model.preferences.userSeoMozSecretKey = "";
            new SavePreferencesCommand().execute();
         }
         else if(param1.detail == Alert.NO)
         {
         }
      }
      
      private final function alertEventHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            this.model.autoLoginGoogle = false;
            this.model.gUserName = "";
            this.model.gPassword = "";
            new SaveGoogleCredentialsCommand().execute();
         }
         else if(param1.detail == Alert.NO)
         {
         }
      }
      
      private final function goToMoz() : void
      {
         navigateToURL(new URLRequest("http://www.moz.com"),"_blank");
      }
      
      private final function _SettingsCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._SettingsCallout_Scroller1_c()];
         return _loc1_;
      }
      
      private final function _SettingsCallout_Scroller1_c() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 1 - 62) * 20));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() + 17) + 1) * 34);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.viewport = this._SettingsCallout_VGroup1_i();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1 - 58) * 65 - 24);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(--(§§pop() * 79) - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() * 85 + 83 + 36);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(-(§§pop() * 50 + 4 - 1 - 1));
         }
         §§pop().paddingTop = §§pop();
         _loc1_.mxmlContent = [this._SettingsCallout_Label1_c(),this._SettingsCallout_HRule1_c(),this._SettingsCallout_Spacer1_c(),this._SettingsCallout_Button1_c(),this._SettingsCallout_CheckBox1_i(),this._SettingsCallout_Spacer2_c(),this._SettingsCallout_Label2_c(),this._SettingsCallout_HRule2_c(),this._SettingsCallout_Spacer3_c(),this._SettingsCallout_HGroup1_i(),this._SettingsCallout_HGroup2_i(),this._SettingsCallout_WarningInformationLabel1_i(),this._SettingsCallout_Spacer4_c(),this._SettingsCallout_Button2_i(),this._SettingsCallout_Spacer5_c(),this._SettingsCallout_Label7_c(),this._SettingsCallout_HRule3_c(),this._SettingsCallout_Spacer6_c(),this._SettingsCallout_HGroup3_i(),this._SettingsCallout_HGroup4_i(),this._SettingsCallout_Label12_i(),this._SettingsCallout_Spacer7_c(),this._SettingsCallout_Button3_i(),this._SettingsCallout_Spacer8_c(),this._SettingsCallout_Label13_c(),this._SettingsCallout_HGroup5_c(),this._SettingsCallout_Label15_c(),this._SettingsCallout_HRule4_c(),this._SettingsCallout_CheckBox2_i(),this._SettingsCallout_CheckBox3_i()];
         _loc1_.id = "settingGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.settingGroup = _loc1_;
         BindingManager.executeBindings(this,"settingGroup",this.settingGroup);
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Help";
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) + 65);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push(§§pop() * 35 + 1 + 1 + 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1 + 87 + 76 - 51));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 101) * 56) * 11);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 44 + 1 - 1 - 13 - 1 - 61);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 114 - 1 - 1 - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Contact Support";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SettingsCallout_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SettingsCallout_Button1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://longtailpro.com/support"),"_blank");
      }
      
      private final function _SettingsCallout_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Show Help Icons";
         _loc1_.addEventListener("change",this.___SettingsCallout_CheckBox1_change);
         _loc1_.id = "_SettingsCallout_CheckBox1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_CheckBox1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_CheckBox1",this._SettingsCallout_CheckBox1);
         return _loc1_;
      }
      
      public final function ___SettingsCallout_CheckBox1_change(param1:Event) : void
      {
         new SavePreferencesCommand().execute();
      }
      
      private final function _SettingsCallout_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((-(§§pop() * 11) - 109) * 57);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label2_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Saved Google Credentials";
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 74) * 73);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_HRule2_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 103 + 1 + 1 - 117);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() * 73 - 1 - 72 + 1) * 63 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Spacer3_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(--§§pop() * 55) - 116);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsCallout_Label3_c(),this._SettingsCallout_Label4_i()];
         _loc1_.id = "_SettingsCallout_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_HGroup1",this._SettingsCallout_HGroup1);
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label3_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Current User : ";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc3_)
         {
            §§push(-(§§pop() * 55 + 2));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label4_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() * 44 * 29 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_SettingsCallout_Label4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_Label4 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_Label4",this._SettingsCallout_Label4);
         return _loc1_;
      }
      
      private final function _SettingsCallout_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsCallout_Label5_c(),this._SettingsCallout_Label6_i()];
         _loc1_.id = "_SettingsCallout_HGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_HGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_HGroup2",this._SettingsCallout_HGroup2);
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label5_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Password : ";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 1) * 37);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label6_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push(-(§§pop() * 73) + 100);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_SettingsCallout_Label6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_Label6 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_Label6",this._SettingsCallout_Label6);
         return _loc1_;
      }
      
      private final function _SettingsCallout_WarningInformationLabel1_i() : WarningInformationLabel
      {
         var _loc1_:WarningInformationLabel = new WarningInformationLabel();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 84 - 105 + 112 + 1 - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "To save google credentials, please generate keywords.  When the Google Login Page appears, check the box that says \'Save Google login credentials and auto-login next time.\'";
         _loc1_.id = "_SettingsCallout_WarningInformationLabel1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_WarningInformationLabel1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_WarningInformationLabel1",this._SettingsCallout_WarningInformationLabel1);
         return _loc1_;
      }
      
      private final function _SettingsCallout_Spacer4_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 46) + 38 + 109 + 1);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 35) * 22 - 96 + 1 + 1));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Unlink Google Account";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SettingsCallout_Button2_click);
         _loc1_.id = "_SettingsCallout_Button2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_Button2 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_Button2",this._SettingsCallout_Button2);
         return _loc1_;
      }
      
      public final function ___SettingsCallout_Button2_click(param1:MouseEvent) : void
      {
         this.link1_clickHandler(param1);
      }
      
      private final function _SettingsCallout_Spacer5_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 + 1) + 87 + 1 - 112));
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label7_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Saved Moz Credentials";
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc3_)
         {
            §§push(-((§§pop() * 10 + 94 - 1) * 28));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 54) - 37);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_HRule3_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 53 + 33 - 1) * 78);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 105 * 99 - 1 + 119 + 41);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Spacer6_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 - 1) * 102) - 1 - 114 - 119);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsCallout_Label8_c(),this._SettingsCallout_Label9_i()];
         _loc1_.id = "_SettingsCallout_HGroup3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_HGroup3 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_HGroup3",this._SettingsCallout_HGroup3);
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label8_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Access Id : ";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc3_)
         {
            §§push(§§pop() * 117 - 1 - 76 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label9_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() + 89 - 1 - 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_SettingsCallout_Label9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_Label9 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_Label9",this._SettingsCallout_Label9);
         return _loc1_;
      }
      
      private final function _SettingsCallout_HGroup4_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._SettingsCallout_Label10_c(),this._SettingsCallout_Label11_i()];
         _loc1_.id = "_SettingsCallout_HGroup4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_HGroup4 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_HGroup4",this._SettingsCallout_HGroup4);
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label10_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Secret Key : ";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push(-(§§pop() + 113) * 71 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label11_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() + 108 - 1 - 100 + 1 + 119);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_SettingsCallout_Label11";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_Label11 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_Label11",this._SettingsCallout_Label11);
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label12_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() * 28) - 2);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Moz API credentials are required to analyze competiton for a keyword. If you don\'t already have a Moz account and API credentials, you can create one free. Click below to get started.";
         _loc1_.id = "_SettingsCallout_Label12";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_Label12 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_Label12",this._SettingsCallout_Label12);
         return _loc1_;
      }
      
      private final function _SettingsCallout_Spacer7_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 26 - 1 + 46 - 1);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Button3_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 70 - 1 - 1 - 29 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SettingsCallout_Button3_click);
         _loc1_.id = "_SettingsCallout_Button3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_Button3 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_Button3",this._SettingsCallout_Button3);
         return _loc1_;
      }
      
      public final function ___SettingsCallout_Button3_click(param1:MouseEvent) : void
      {
         if(this.model.preferences.userSeoMozAccessId == "" || this.model.preferences.userSeoMozSecretKey == "")
         {
            ViewModel.instance.showSEOMozPopup = true;
         }
         else
         {
            this.unlinkSoeMozAccount(param1);
         }
      }
      
      private final function _SettingsCallout_Spacer8_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() - 35 + 49 - 21 + 1 + 42);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label13_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 6 - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Domain Authority, Page Authority, mozRank, Juice Links, and Links are powered by";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_HGroup5_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 4 * 38 * 37);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.horizontalAlign = "center";
         _loc1_.mxmlContent = [this._SettingsCallout_Label14_c(),this._SettingsCallout_Image1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_Label14_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "www.moz.com";
         _loc1_.useHandCursor = true;
         _loc1_.buttonMode = true;
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push(--((§§pop() + 84) * 59) + 14);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() + 98 + 97) * 76 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(2);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 1) * 118) - 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textDecoration","underline");
         _loc1_.addEventListener("click",this.___SettingsCallout_Label14_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SettingsCallout_Label14_click(param1:MouseEvent) : void
      {
         this.goToMoz();
      }
      
      private final function _SettingsCallout_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.useHandCursor = true;
         _loc1_.buttonMode = true;
         _loc1_.addEventListener("click",this.___SettingsCallout_Image1_click);
         _loc1_.id = "_SettingsCallout_Image1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_Image1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_Image1",this._SettingsCallout_Image1);
         return _loc1_;
      }
      
      public final function ___SettingsCallout_Image1_click(param1:MouseEvent) : void
      {
         this.goToMoz();
      }
      
      private final function _SettingsCallout_Label15_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Debug";
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 5 + 0 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc3_)
         {
            §§push(§§pop() + 93 - 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_HRule4_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 21 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 112 - 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_CheckBox2_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Show Runtime Errors";
         _loc1_.addEventListener("change",this.___SettingsCallout_CheckBox2_change);
         _loc1_.id = "_SettingsCallout_CheckBox2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_CheckBox2 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_CheckBox2",this._SettingsCallout_CheckBox2);
         return _loc1_;
      }
      
      public final function ___SettingsCallout_CheckBox2_change(param1:Event) : void
      {
         new SavePreferencesCommand().execute();
      }
      
      private final function _SettingsCallout_CheckBox3_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Show Debug Panel";
         _loc1_.addEventListener("change",this.___SettingsCallout_CheckBox3_change);
         _loc1_.id = "_SettingsCallout_CheckBox3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsCallout_CheckBox3 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsCallout_CheckBox3",this._SettingsCallout_CheckBox3);
         return _loc1_;
      }
      
      public final function ___SettingsCallout_CheckBox3_change(param1:Event) : void
      {
         new SavePreferencesCommand().execute();
      }
      
      public final function ___SettingsCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___SettingsCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.viewModel.showSettingsCallout = false;
      }
      
      private final function _SettingsCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 93 * 54 - 74 + 1 - 1) * 19);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.showHelpIcons;
         },null,"_SettingsCallout_CheckBox1.selected");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 83 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.autoLoginGoogle;
         },null,"_SettingsCallout_HGroup1.includeInLayout");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() * 63) - 68);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.autoLoginGoogle;
         },null,"_SettingsCallout_HGroup1.visible");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 37 - 1 - 72));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.gUserName;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SettingsCallout_Label4.text");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() + 69 + 69 + 12));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.autoLoginGoogle;
         },null,"_SettingsCallout_HGroup2.includeInLayout");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.autoLoginGoogle;
         },null,"_SettingsCallout_HGroup2.visible");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(-((§§pop() + 33) * 35) - 51 + 1 + 5);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = Util.maskPassword(model.gPassword);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SettingsCallout_Label6.text");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(§§pop() + 118 - 1 - 1 + 1 + 1 - 1 + 28);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.autoLoginGoogle;
         },null,"_SettingsCallout_WarningInformationLabel1.includeInLayout");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push((-(-§§pop() - 90 - 80 - 112) - 8) * 53);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.autoLoginGoogle;
         },null,"_SettingsCallout_Button2.includeInLayout");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(----§§pop() * 75);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId != "" && model.preferences.userSeoMozSecretKey != "";
         },null,"_SettingsCallout_HGroup3.includeInLayout");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 75 + 77 - 10) * 106 + 2 - 110 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId != "" && model.preferences.userSeoMozSecretKey != "";
         },null,"_SettingsCallout_HGroup3.visible");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(((§§pop() - 33) * 77 + 1) * 96 - 49);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.preferences.userSeoMozAccessId;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SettingsCallout_Label9.text");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push((-§§pop() * 100 * 87 - 116) * 69 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId != "" && model.preferences.userSeoMozSecretKey != "";
         },null,"_SettingsCallout_HGroup4.includeInLayout");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(-(§§pop() - 109 - 25 - 85 + 99) * 47);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId != "" && model.preferences.userSeoMozSecretKey != "";
         },null,"_SettingsCallout_HGroup4.visible");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push(§§pop() + 59 - 33 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.preferences.userSeoMozSecretKey;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SettingsCallout_Label11.text");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(----(§§pop() * 7 - 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId == "" || model.preferences.userSeoMozSecretKey == "";
         },null,"_SettingsCallout_Label12.includeInLayout");
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 82 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId == "" || model.preferences.userSeoMozSecretKey == "";
         },null,"_SettingsCallout_Label12.visible");
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 30 - 25);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.preferences.userSeoMozAccessId == "" || model.preferences.userSeoMozSecretKey == ""?"Link Moz Account":"Unlink Moz Account";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SettingsCallout_Button3.label");
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 112 - 1 + 10);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.SEO_MOZ;
         },null,"_SettingsCallout_Image1.source");
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push(-(§§pop() - 112 - 67 - 65 - 13) + 88);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.showRuntimeErrors;
         },null,"_SettingsCallout_CheckBox2.selected");
         §§push(result);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() + 4 - 37 - 1 + 75 + 25 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.showDebugPanel;
         },null,"_SettingsCallout_CheckBox3.selected");
         §§push(result);
         §§push(21);
         if(_loc2_)
         {
            §§push(-(§§pop() - 77 - 112 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SettingsCallout_CheckBox1.selected;
         },function(param1:*):void
         {
            model.preferences.showHelpIcons = param1;
         },"model.preferences.showHelpIcons");
         §§push(result);
         §§push(21);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 40 - 46 - 1 + 28 - 1));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(--(§§pop() - 7 - 113) * 63) - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() + 44) * 116);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 64) * 28 + 93);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(21);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 53 + 86 - 1) + 13) * 31);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(22);
         if(_loc2_)
         {
            §§push(-(§§pop() - 33 + 1) + 1 - 7 - 1 + 23);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SettingsCallout_CheckBox2.selected;
         },function(param1:*):void
         {
            model.preferences.showRuntimeErrors = param1;
         },"model.preferences.showRuntimeErrors");
         §§push(result);
         §§push(22);
         if(_loc2_)
         {
            §§push(-(§§pop() * 94 + 1) + 1 - 5);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 1) * 74 * 5));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push((§§pop() + 97 + 1) * 81 + 63 + 1 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push((-§§pop() + 48 - 68) * 20);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(22);
         if(_loc2_)
         {
            §§push(--(-§§pop() * 117) - 16);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(23);
         if(_loc2_)
         {
            §§push(--§§pop() + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _SettingsCallout_CheckBox3.selected;
         },function(param1:*):void
         {
            model.preferences.showDebugPanel = param1;
         },"model.preferences.showDebugPanel");
         §§push(result);
         §§push(23);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 9);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(--§§pop() * 113 + 11 + 1 + 118 - 59);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(((§§pop() + 1) * 114 - 1 + 1 + 1) * 74);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(20);
         if(_loc2_)
         {
            §§push((-(-§§pop() + 1 + 1 - 1) - 1) * 96);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(23);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 - 1 - 1) * 24));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _SettingsCallout_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.preferences.showHelpIcons = this._SettingsCallout_CheckBox1.selected;
         this.model.preferences.showRuntimeErrors = this._SettingsCallout_CheckBox2.selected;
         this.model.preferences.showDebugPanel = this._SettingsCallout_CheckBox3.selected;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SettingsCallout_CheckBox1() : CheckBox
      {
         return this._1371191811_SettingsCallout_CheckBox1;
      }
      
      public function set _SettingsCallout_CheckBox1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1371191811_SettingsCallout_CheckBox1;
         if(_loc2_ !== param1)
         {
            this._1371191811_SettingsCallout_CheckBox1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SettingsCallout_CheckBox1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SettingsCallout_CheckBox2() : CheckBox
      {
         return this._1371191810_SettingsCallout_CheckBox2;
      }
      
      public function set _SettingsCallout_CheckBox2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1371191810_SettingsCallout_CheckBox2;
         if(_loc2_ !== param1)
         {
            this._1371191810_SettingsCallout_CheckBox2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SettingsCallout_CheckBox2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SettingsCallout_CheckBox3() : CheckBox
      {
         return this._1371191809_SettingsCallout_CheckBox3;
      }
      
      public function set _SettingsCallout_CheckBox3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1371191809_SettingsCallout_CheckBox3;
         if(_loc2_ !== param1)
         {
            this._1371191809_SettingsCallout_CheckBox3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SettingsCallout_CheckBox3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get settingGroup() : VGroup
      {
         return this._494627343settingGroup;
      }
      
      public function set settingGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._494627343settingGroup;
         if(_loc2_ !== param1)
         {
            this._494627343settingGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"settingGroup",_loc2_,param1));
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
