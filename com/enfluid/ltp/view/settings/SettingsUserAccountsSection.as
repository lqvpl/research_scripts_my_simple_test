package com.enfluid.ltp.view.settings
{
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Button;
   import spark.components.Image;
   import spark.components.Label;
   import spark.components.VGroup;
   import com.enfluid.ltp.view.components.WarningInformationLabel;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import mx.controls.Alert;
   import com.enfluid.ltp.view.renderers.CalculatableValueGroup;
   import mx.binding.BindingManager;
   import mx.events.CloseEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.controller.common.SaveGoogleCredentialsCommand;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import mx.events.FlexEvent;
   import spark.layouts.VerticalLayout;
   import mx.controls.HRule;
   import mx.controls.Spacer;
   import spark.components.CheckBox;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import spark.components.HGroup;
   import com.enfluid.ltp.model.ViewModel;
   import mx.binding.Binding;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class SettingsUserAccountsSection extends CollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _SettingsUserAccountsSection_Button1:Button;
      
      public var _SettingsUserAccountsSection_Button2:Button;
      
      public var _SettingsUserAccountsSection_Image1:Image;
      
      public var _SettingsUserAccountsSection_Label2:Label;
      
      public var _SettingsUserAccountsSection_Label6:Label;
      
      public var _SettingsUserAccountsSection_Label7:Label;
      
      public var _SettingsUserAccountsSection_VGroup1:VGroup;
      
      public var _SettingsUserAccountsSection_WarningInformationLabel1:WarningInformationLabel;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SettingsUserAccountsSection()
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
         var bindings:Array = this._SettingsUserAccountsSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_settings_SettingsUserAccountsSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SettingsUserAccountsSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.layout = this._SettingsUserAccountsSection_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsUserAccountsSection_Array1_c);
         this.addEventListener("creationComplete",this.___SettingsUserAccountsSection_CollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 90 - 98 - 1) * 62 - 7 - 47);
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
         SettingsUserAccountsSection._watcherSetupUtil = param1;
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
      
      protected final function link1_clickHandler(param1:MouseEvent) : void
      {
         Alert.yesLabel = "Yes";
         Alert.noLabel = "No";
         §§push(Alert);
         §§push(130);
         if(_loc3_)
         {
            §§push(§§pop() * 97 + 69 - 63 + 90 - 1);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc3_)
         {
            §§push(((-§§pop() + 68 - 65) * 17 - 103) * 115);
         }
         §§pop().buttonHeight = §§pop();
         §§push(Alert);
         §§push("Are you sure you want to remove your saved Google credentials?");
         §§push("Remove Google Credentials");
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 54 + 1);
         }
         §§pop().show(§§pop(),§§pop(),§§pop(),null,this.alertEventHandler);
      }
      
      protected final function unlinkSoeMozAccount(param1:MouseEvent) : void
      {
         Alert.yesLabel = "Yes";
         Alert.noLabel = "No";
         §§push(Alert);
         §§push(130);
         if(_loc3_)
         {
            §§push(--(§§pop() * 53) + 71);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(((§§pop() - 42) * 73 + 73) * 40 + 46));
         }
         §§pop().buttonHeight = §§pop();
         §§push(Alert);
         §§push("Are you sure you want to remove your Moz Account API Credentials?");
         §§push("Remove Moz Credentials");
         §§push(3);
         if(_loc3_)
         {
            §§push(---(§§pop() + 80 + 114 - 116) - 1);
         }
         §§pop().show(§§pop(),§§pop(),§§pop(),null,this.clearSeoMozAccount);
      }
      
      private final function alertEventHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            new SetUserEvent("UserEvent.Settings.UserAccount.GoogleCredentialsRemoved").execute();
            this.model.autoLoginGoogle = false;
            this.model.gUserName = "";
            this.model.gPassword = "";
            new SaveGoogleCredentialsCommand().execute();
         }
         else if(param1.detail == Alert.NO)
         {
         }
      }
      
      private final function clearSeoMozAccount(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            new SetUserEvent("UserEvent.Settings.UserAccount.MozCredentialsRemoved").execute();
            this.model.preferences.userSeoMozAccessId = "";
            this.model.preferences.userSeoMozSecretKey = "";
            new SavePreferencesCommand().execute();
         }
         else if(param1.detail == Alert.NO)
         {
         }
      }
      
      private final function goToMoz() : void
      {
         navigateToURL(new URLRequest("http://www.moz.com"),"_blank");
      }
      
      protected final function initPanel(param1:FlexEvent) : void
      {
         var event:FlexEvent = param1;
         this.addEventListener("collapsedChanged",function():void
         {
            if(!collapsed)
            {
               new SetUserEvent("UserEvent.Settings.UserAccount.Opened").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.Settings.UserAccount.Closed").execute();
            }
         });
      }
      
      private final function _SettingsUserAccountsSection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) + 26));
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(--(-§§pop() + 1 - 1) * 84);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() * 96 + 1 - 69) * 11 * 24);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 105 - 17);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._SettingsUserAccountsSection_Label1_c(),this._SettingsUserAccountsSection_HRule1_c(),this._SettingsUserAccountsSection_Spacer1_c(),this._SettingsUserAccountsSection_Label2_i(),this._SettingsUserAccountsSection_WarningInformationLabel1_i(),this._SettingsUserAccountsSection_Button1_i(),this._SettingsUserAccountsSection_Spacer2_c(),this._SettingsUserAccountsSection_VGroup1_i()];
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Google";
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc2_)
         {
            §§push((§§pop() + 32) * 101 + 93);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc3_)
         {
            §§push(§§pop() - 82 - 37 - 4);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         §§push(_loc1_);
         §§push("paddingBottom");
         §§push(-3);
         if(_loc3_)
         {
            §§push(((-§§pop() + 1) * 115 - 67) * 48 + 67 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((§§pop() + 18 - 67 + 61 + 8) * 57 * 91));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 99 + 1 - 101);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() * 56 - 32 - 1) * 65 + 77 + 1 + 1);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push((§§pop() + 30) * 111 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         _loc1_.id = "_SettingsUserAccountsSection_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsUserAccountsSection_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsUserAccountsSection_Label2",this._SettingsUserAccountsSection_Label2);
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_WarningInformationLabel1_i() : WarningInformationLabel
      {
         var _loc1_:WarningInformationLabel = new WarningInformationLabel();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 1 - 19 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "To save google credentials, please generate keywords.  When the Google Login Page appears, check the box that says \'Save Google login credentials and auto-login next time.\'";
         _loc1_.id = "_SettingsUserAccountsSection_WarningInformationLabel1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsUserAccountsSection_WarningInformationLabel1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsUserAccountsSection_WarningInformationLabel1",this._SettingsUserAccountsSection_WarningInformationLabel1);
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 70) * 21 + 1 + 1 - 15);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Remove Saved Google Credentials";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SettingsUserAccountsSection_Button1_click);
         _loc1_.id = "_SettingsUserAccountsSection_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsUserAccountsSection_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsUserAccountsSection_Button1",this._SettingsUserAccountsSection_Button1);
         return _loc1_;
      }
      
      public final function ___SettingsUserAccountsSection_Button1_click(param1:MouseEvent) : void
      {
         this.link1_clickHandler(param1);
      }
      
      private final function _SettingsUserAccountsSection_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 40 - 74) + 40));
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._SettingsUserAccountsSection_HGroup1_c(),this._SettingsUserAccountsSection_HRule2_c(),this._SettingsUserAccountsSection_Spacer4_c(),this._SettingsUserAccountsSection_Label6_i(),this._SettingsUserAccountsSection_Label7_i(),this._SettingsUserAccountsSection_Button2_i()];
         _loc1_.id = "_SettingsUserAccountsSection_VGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsUserAccountsSection_VGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsUserAccountsSection_VGroup1",this._SettingsUserAccountsSection_VGroup1);
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 35 + 1) * 28 - 42);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(-3);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 109 - 102 - 96 + 117 - 1);
         }
         §§pop().paddingBottom = §§pop();
         _loc1_.verticalAlign = "baseline";
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(-(-§§pop() - 32) - 1 + 63) - 1);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._SettingsUserAccountsSection_Label3_c(),this._SettingsUserAccountsSection_Spacer3_c(),this._SettingsUserAccountsSection_Label4_c(),this._SettingsUserAccountsSection_Label5_c(),this._SettingsUserAccountsSection_Image1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Label3_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Moz";
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 - 1) * 69 + 1 - 32);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 54) * 40 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Spacer3_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 76 + 47) - 67 - 1 - 1));
         }
         §§pop().percentWidth = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Label4_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Domain Authority, Page Authority, mozRank, Juice Links, and Page Links are powered by";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Label5_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Moz.com";
         _loc1_.useHandCursor = true;
         _loc1_.buttonMode = true;
         _loc1_.setStyle("textDecoration","underline");
         _loc1_.addEventListener("click",this.___SettingsUserAccountsSection_Label5_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SettingsUserAccountsSection_Label5_click(param1:MouseEvent) : void
      {
         this.goToMoz();
      }
      
      private final function _SettingsUserAccountsSection_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 118 - 1 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 115 + 1);
         }
         §§pop().height = §§pop();
         _loc1_.smooth = true;
         _loc1_.useHandCursor = true;
         _loc1_.buttonMode = true;
         _loc1_.addEventListener("click",this.___SettingsUserAccountsSection_Image1_click);
         _loc1_.id = "_SettingsUserAccountsSection_Image1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsUserAccountsSection_Image1 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsUserAccountsSection_Image1",this._SettingsUserAccountsSection_Image1);
         return _loc1_;
      }
      
      public final function ___SettingsUserAccountsSection_Image1_click(param1:MouseEvent) : void
      {
         this.goToMoz();
      }
      
      private final function _SettingsUserAccountsSection_HRule2_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 + 1) + 1 + 80 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push(--§§pop() + 1 + 1 - 91 + 39);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Spacer4_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 102) * 7 * 35 - 86 - 1 - 1);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Label6_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc3_)
         {
            §§push((-((§§pop() + 1 - 45) * 103) + 11) * 7 + 36);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         _loc1_.id = "_SettingsUserAccountsSection_Label6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsUserAccountsSection_Label6 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsUserAccountsSection_Label6",this._SettingsUserAccountsSection_Label6);
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Label7_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 15 + 1 - 68 - 17);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Moz API credentials are required to analyze competiton for a keyword. If you don\'t already have a Moz account and API credentials, you can create one free. Click below to get started.";
         _loc1_.id = "_SettingsUserAccountsSection_Label7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsUserAccountsSection_Label7 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsUserAccountsSection_Label7",this._SettingsUserAccountsSection_Label7);
         return _loc1_;
      }
      
      private final function _SettingsUserAccountsSection_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-§§pop() * 119 + 64 + 97);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SettingsUserAccountsSection_Button2_click);
         _loc1_.id = "_SettingsUserAccountsSection_Button2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._SettingsUserAccountsSection_Button2 = _loc1_;
         BindingManager.executeBindings(this,"_SettingsUserAccountsSection_Button2",this._SettingsUserAccountsSection_Button2);
         return _loc1_;
      }
      
      public final function ___SettingsUserAccountsSection_Button2_click(param1:MouseEvent) : void
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
      
      public final function ___SettingsUserAccountsSection_CollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _SettingsUserAccountsSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(--§§pop() + 93);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.autoLoginGoogle;
         },null,"_SettingsUserAccountsSection_Label2.includeInLayout");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() - 65 - 1) * 3));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "User:" + model.gUserName + "   Password:" + Util.maskPassword(model.gPassword);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SettingsUserAccountsSection_Label2.text");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) + 1 + 114 - 81);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.autoLoginGoogle;
         },null,"_SettingsUserAccountsSection_Label2.visible");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 22 - 14 - 50);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.autoLoginGoogle;
         },null,"_SettingsUserAccountsSection_WarningInformationLabel1.includeInLayout");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 89 + 72 - 95 + 48));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.autoLoginGoogle;
         },null,"_SettingsUserAccountsSection_WarningInformationLabel1.visible");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) * 51);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.autoLoginGoogle;
         },null,"_SettingsUserAccountsSection_Button1.includeInLayout");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(§§pop() - 59 - 1 - 72 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.source != "majestic";
         },null,"_SettingsUserAccountsSection_VGroup1.visible");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.SEO_MOZ;
         },null,"_SettingsUserAccountsSection_Image1.source");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1 + 33) * 8 + 31));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId != "" && model.preferences.userSeoMozSecretKey != "";
         },null,"_SettingsUserAccountsSection_Label6.includeInLayout");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(-§§pop() + 116 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "Access Id:" + model.preferences.userSeoMozAccessId + "   Secret Key:" + Util.maskPassword(model.preferences.userSeoMozSecretKey);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SettingsUserAccountsSection_Label6.text");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() * 43 - 1 + 92 + 8 + 106 - 1 - 79);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId != "" && model.preferences.userSeoMozSecretKey != "";
         },null,"_SettingsUserAccountsSection_Label6.visible");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 42) + 33 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId == "" || model.preferences.userSeoMozSecretKey == "";
         },null,"_SettingsUserAccountsSection_Label7.includeInLayout");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 48 + 90 - 1) * 116 + 1 - 47);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.userSeoMozAccessId == "" || model.preferences.userSeoMozSecretKey == "";
         },null,"_SettingsUserAccountsSection_Label7.visible");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(((-§§pop() + 1) * 61 + 1) * 46 * 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.preferences.userSeoMozAccessId == "" || model.preferences.userSeoMozSecretKey == ""?"Save Moz API Credentials":"Remove Moz API Credentials";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_SettingsUserAccountsSection_Button2.label");
         return result;
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
