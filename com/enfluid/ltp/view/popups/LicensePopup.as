package com.enfluid.ltp.view.popups
{
   import spark.components.TitleWindow;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.hurlant.crypto.symmetric.ICipher;
   import flash.utils.ByteArray;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.IVMode;
   import com.hurlant.crypto.symmetric.SimpleIVMode;
   import com.hurlant.crypto.symmetric.AESKey;
   import com.hurlant.crypto.symmetric.BlowFishKey;
   import com.hurlant.crypto.symmetric.DESKey;
   import com.hurlant.crypto.symmetric.TripleDESKey;
   import com.hurlant.crypto.symmetric.XTeaKey;
   import com.hurlant.crypto.prng.ARC4;
   import spark.components.Label;
   import spark.components.FormHeading;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import system.Version;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import flash.net.SharedObject;
   import mx.managers.PopUpManager;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.controller.licensing.ValidateSharifyLicenseCommand;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import mx.binding.BindingManager;
   import it.sharify.SharifyStatus;
   import info.noirbizarre.airorm.utils.capitalize;
   import com.enfluid.ltp.controller.licensing.ValidateUserInternalTrialCommand;
   import com.enfluid.ltp.view.renderers.CalculatableValueGroup;
   import spark.layouts.VerticalLayout;
   import flash.events.Event;
   import com.adobe.protocols.dict.events.ErrorEvent;
   import spark.components.Button;
   import mx.effects.Parallel;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import com.enfluid.ltp.model.constants.Constants;
   import spark.components.Form;
   import spark.primitives.Rect;
   import mx.core.DeferredInstanceFromFunction;
   import spark.filters.DropShadowFilter;
   import mx.binding.Binding;
   import spark.components.FormItem;
   import spark.events.GridSelectionEvent;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.components.Group;
   import spark.components.HGroup;
   import system.serializers.§eden:release§.debug;
   import system.text.parser.GenericParser;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.EmptyTrashCommand;
   import mx.events.FlexEvent;
   import spark.components.NumericStepper;
   import spark.primitives.Line;
   import com.enfluid.ltp.model.vo.RTDomain;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import com.enfluid.ltp.controller.rankchecker.DeleteRankCheckRecordCommand;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import system.data.Iterator;
   import spark.components.Scroller;
   import flash.filesystem.File;
   import mx.core.mx_internal;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.events.PropertyChangeEvent;
   import mx.controls.HRule;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class LicensePopup extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _LicensePopup_Label1:Label;
      
      private var _1877141797mainFormHeading:FormHeading;
      
      private var _1350627801tiEmail:TextInput;
      
      private var _1320301901tiLicenseKey:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _2058190590isError:Boolean = false;
      
      private var _1012292027showTrialOptions:Boolean = true;
      
      private var userDataSO:SharedObject;
      
      mx_internal var _LicensePopup_StylesInit_done:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function LicensePopup()
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
         var bindings:Array = this._LicensePopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_LicensePopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return LicensePopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(650);
         if(_loc4_)
         {
            §§push((§§pop() + 1) * 109 - 1 - 1 - 1 - 0 - 50);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(400);
         if(_loc4_)
         {
            §§push((§§pop() - 1 - 1) * 55);
         }
         §§pop().height = §§pop();
         this.styleName = "myStyle";
         this.layout = this._LicensePopup_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._LicensePopup_Array1_c);
         this.addEventListener("show",this.___LicensePopup_TitleWindow1_show);
         this.addEventListener("stateChangeComplete",this.___LicensePopup_TitleWindow1_stateChangeComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 41 + 1 + 89 - 1) * 84);
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
         LicensePopup._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         mx_internal::_LicensePopup_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function onShow() : void
      {
         PopUpManager.centerPopUp(this);
         this.userDataSO = SharedObject.getLocal("userDataCalq");
         this.closeButton.visible = false;
         if(this.userDataSO.data.activateInternalTrial != undefined && this.userDataSO.data.activateInternalTrial)
         {
            this.showTrialOptions = false;
            this.closeButton.visible = true;
         }
         §§push(this.model.trialDaysRemaining);
         §§push(0);
         if(_loc1_)
         {
            §§push((§§pop() * 119 - 1 - 1) * 84);
         }
         if(§§pop() == §§pop())
         {
            this.showTrialOptions = false;
            this.closeButton.visible = false;
         }
      }
      
      private final function validateLicence() : void
      {
         this.tiLicenseKey.text = KeywordUtil.stripBeginningAndEndingSpaces(this.tiLicenseKey.text);
         §§push(this.tiLicenseKey.text.length);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 95 - 1 + 53);
         }
         if(§§pop() == §§pop())
         {
            this.validateFreeTrial();
            return;
         }
         new ValidateSharifyLicenseCommand(this.tiEmail.text,this.tiLicenseKey.text).execute();
      }
      
      private final function calcMessage(param1:int) : String
      {
         if(SharifyStatus.STATUS_ERROR_KEY_NOT_FOUND === _loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push((§§pop() + 1 + 1) * 118 - 77);
            }
         }
         else if(SharifyStatus.STATUS_ERROR_REGISTRATION_REVOKED === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(§§pop() * 61 * 2 * 10 + 1);
            }
         }
         else if(SharifyStatus.STATUS_ERROR_ALREADY_REGISTERED === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push(-§§pop() + 108 + 1 + 1 - 100);
            }
         }
         else if(SharifyStatus.STATUS_SERVER_UNAVAILABLE === _loc2_)
         {
            §§push(3);
            if(_loc3_)
            {
               §§push(-(§§pop() + 76) - 1);
            }
         }
         else
         {
            §§push(1001);
            if(_loc3_)
            {
               §§push(§§pop() + 115 - 1 + 1 + 1);
            }
            if(§§pop() === _loc2_)
            {
               §§push(4);
               if(_loc4_)
               {
                  §§push(-(§§pop() * 24) + 1 - 95 + 1);
               }
            }
            else
            {
               §§push(5);
               if(_loc3_)
               {
                  §§push(-(§§pop() + 34) + 85 - 1);
               }
            }
         }
         switch(§§pop())
         {
            case 0:
               this.isError = true;
               return "The license key and email are not valid.  Please try again.";
            case 1:
               this.isError = true;
               return "Your license has been revoked. If you believe this in error, please contact at support@longtailpro.com. Thanks!";
            case 2:
               this.isError = true;
               return "This license has been used too many times.";
            case 3:
               this.isError = true;
               return "The License servers could not be reached. Please try again.  If you are still unable to register your software after 24 hours, please contact support@longtailpro.com";
            case 4:
               this.isError = true;
               return "The email is not valid, Please try again.";
            default:
               this.isError = false;
               return "If you received a license key in your activation email, \nplease enter your email and license key below.";
         }
      }
      
      private final function validateFreeTrial() : void
      {
         var _loc1_:RegExp = /([a-z0-9._-]+?)@([a-z0-9.-]+)\.([a-z]{2,4})/;
         var _loc2_:String = KeywordUtil.stripSpaces(this.tiEmail.text);
         if(_loc1_.test(_loc2_))
         {
            this.saveTrialData(_loc2_);
         }
         else
         {
            this.showTrialError();
         }
      }
      
      private final function saveTrialData(param1:String) : void
      {
         this.viewModel.showLicensePopup = false;
         new ValidateUserInternalTrialCommand(param1).execute();
      }
      
      private final function showTrialError() : void
      {
         §§push(this.model);
         §§push(1001);
         if(_loc2_)
         {
            §§push(§§pop() + 111 - 1 + 1 + 1 - 24 + 1);
         }
         §§pop().licenseStatus = §§pop();
         this.model.isSharifyRegistered = false;
         this.viewModel.showLicensePopup = true;
      }
      
      private final function _LicensePopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 86) * 34);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() + 9 - 1 - 1) + 107 + 35);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 - 1) + 1 + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 68 - 10) * 52 * 34));
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 103 - 1 - 29);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _LicensePopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._LicensePopup_Button1_c(),this._LicensePopup_Form1_c(),this._LicensePopup_Button2_c()];
         return _loc1_;
      }
      
      private final function _LicensePopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Click Here to Purchase";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(22);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 115 * 55);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___LicensePopup_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___LicensePopup_Button1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(Constants.UPGRADE_PAGE));
      }
      
      private final function _LicensePopup_Form1_c() : Form
      {
         var _loc1_:Form = new Form();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 66);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LicensePopup_Array2_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LicensePopup_Array2_c() : Array
      {
         var _loc1_:Array = [this._LicensePopup_FormHeading1_i(),this._LicensePopup_Label1_i(),this._LicensePopup_FormItem1_c(),this._LicensePopup_FormItem2_c()];
         return _loc1_;
      }
      
      private final function _LicensePopup_FormHeading1_i() : FormHeading
      {
         var _loc1_:FormHeading = new FormHeading();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 77 - 69 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc2_)
         {
            §§push((§§pop() - 6) * 81 + 66 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "mainFormHeading";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mainFormHeading = _loc1_;
         BindingManager.executeBindings(this,"mainFormHeading",this.mainFormHeading);
         return _loc1_;
      }
      
      private final function _LicensePopup_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Otherwise, please enter your email.";
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 6 - 108 - 41));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("fontWeight","bold");
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc3_)
         {
            §§push(-(§§pop() + 93 - 48 - 60) + 1 + 94 - 89);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_LicensePopup_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LicensePopup_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_LicensePopup_Label1",this._LicensePopup_Label1);
         return _loc1_;
      }
      
      private final function _LicensePopup_FormItem1_c() : FormItem
      {
         var _loc1_:FormItem = new FormItem();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 42 - 87 + 20) * 11) + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Email :  ";
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LicensePopup_Array3_c);
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc3_)
         {
            §§push(-((§§pop() + 60) * 18 + 1 - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LicensePopup_Array3_c() : Array
      {
         var _loc1_:Array = [this._LicensePopup_TextInput1_i()];
         return _loc1_;
      }
      
      private final function _LicensePopup_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 109 - 51) * 78 - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "";
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 114 + 23 - 1) * 33 * 37);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","start");
         _loc1_.addEventListener("enter",this.__tiEmail_enter);
         _loc1_.id = "tiEmail";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tiEmail = _loc1_;
         BindingManager.executeBindings(this,"tiEmail",this.tiEmail);
         return _loc1_;
      }
      
      public final function __tiEmail_enter(param1:FlexEvent) : void
      {
         this.tiLicenseKey.setFocus();
      }
      
      private final function _LicensePopup_FormItem2_c() : FormItem
      {
         var _loc1_:FormItem = new FormItem();
         _loc1_.name = "License Key";
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1) * 117 - 1 - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "License :  ";
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LicensePopup_Array4_c);
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","right");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LicensePopup_Array4_c() : Array
      {
         var _loc1_:Array = [this._LicensePopup_TextInput2_i()];
         return _loc1_;
      }
      
      private final function _LicensePopup_TextInput2_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "";
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 91) + 98 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","start");
         _loc1_.addEventListener("enter",this.__tiLicenseKey_enter);
         _loc1_.id = "tiLicenseKey";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.tiLicenseKey = _loc1_;
         BindingManager.executeBindings(this,"tiLicenseKey",this.tiLicenseKey);
         return _loc1_;
      }
      
      public final function __tiLicenseKey_enter(param1:FlexEvent) : void
      {
         this.validateLicence();
      }
      
      private final function _LicensePopup_Button2_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(400);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1) * 37 - 67 + 12);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc2_)
         {
            §§push(-(§§pop() - 13) - 1 - 73 + 1 + 110);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Activate";
         _loc1_.useHandCursor = true;
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 18 + 1 - 34 - 1 + 1 + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("cornerRadius");
         §§push(8);
         if(_loc3_)
         {
            §§push(-(((§§pop() - 1) * 23 - 106) * 15));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(30);
         if(_loc2_)
         {
            §§push(((§§pop() - 68 - 1 - 1) * 112 - 1 - 1) * 71);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___LicensePopup_Button2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___LicensePopup_Button2_click(param1:MouseEvent) : void
      {
         this.validateLicence();
      }
      
      public final function ___LicensePopup_TitleWindow1_show(param1:FlexEvent) : void
      {
         this.onShow();
      }
      
      public final function ___LicensePopup_TitleWindow1_stateChangeComplete(param1:FlexEvent) : void
      {
         PopUpManager.centerPopUp(this);
      }
      
      private final function _LicensePopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(---§§pop() + 1 - 55 - 63);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            §§push(model.trialDaysRemaining);
            §§push(0);
            if(_loc3_)
            {
               §§push((-§§pop() - 1) * 55 + 101 - 92);
            }
            var _loc1_:* = §§pop() == §§pop()?"Trial Expired":"Activate Long Tail Platinum";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.title");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() * 5 - 1) * 41 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():uint
         {
            if(isError)
            {
               §§push(16711680);
               if(_loc1_)
               {
                  §§push(-§§pop() * 22 * 115 * 85);
               }
               §§push(uint(§§pop()));
            }
            else
            {
               §§push(6710886);
               if(_loc1_)
               {
                  §§push(---(§§pop() - 4) - 1);
               }
               §§push(uint(§§pop()));
            }
            return §§pop();
         },function(param1:uint):void
         {
            mainFormHeading.setStyle("color",param1);
         },"mainFormHeading.color");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 114 + 1) - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcMessage(model.licenseStatus);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"mainFormHeading.label");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 4 + 23));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return showTrialOptions;
         },null,"_LicensePopup_Label1.visible");
         return result;
      }
      
      mx_internal final function _LicensePopup_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_LicensePopup_StylesInit_done)
         {
            return;
         }
         mx_internal::_LicensePopup_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","myStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".myStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.modalTransparency = 0.4;
               §§push(this);
               §§push(15);
               if(_loc2_)
               {
                  §§push((§§pop() + 1) * 23 - 1 + 1 - 1 - 8 + 1);
               }
               §§pop().modalTransparencyBlur = §§pop();
               §§push(this);
               §§push(16777215);
               if(_loc2_)
               {
                  §§push(-(-(§§pop() * 12 * 78) - 114) + 55);
               }
               §§pop().modalTransparencyColor = §§pop();
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainFormHeading() : FormHeading
      {
         return this._1877141797mainFormHeading;
      }
      
      public function set mainFormHeading(param1:FormHeading) : void
      {
         var _loc2_:Object = this._1877141797mainFormHeading;
         if(_loc2_ !== param1)
         {
            this._1877141797mainFormHeading = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainFormHeading",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tiEmail() : TextInput
      {
         return this._1350627801tiEmail;
      }
      
      public function set tiEmail(param1:TextInput) : void
      {
         var _loc2_:Object = this._1350627801tiEmail;
         if(_loc2_ !== param1)
         {
            this._1350627801tiEmail = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiEmail",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tiLicenseKey() : TextInput
      {
         return this._1320301901tiLicenseKey;
      }
      
      public function set tiLicenseKey(param1:TextInput) : void
      {
         var _loc2_:Object = this._1320301901tiLicenseKey;
         if(_loc2_ !== param1)
         {
            this._1320301901tiLicenseKey = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tiLicenseKey",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      private function get isError() : Boolean
      {
         return this._2058190590isError;
      }
      
      private function set isError(param1:Boolean) : void
      {
         var _loc2_:Object = this._2058190590isError;
         if(_loc2_ !== param1)
         {
            this._2058190590isError = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isError",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showTrialOptions() : Boolean
      {
         return this._1012292027showTrialOptions;
      }
      
      private function set showTrialOptions(param1:Boolean) : void
      {
         var _loc2_:Object = this._1012292027showTrialOptions;
         if(_loc2_ !== param1)
         {
            this._1012292027showTrialOptions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showTrialOptions",_loc2_,param1));
            }
         }
      }
   }
}
