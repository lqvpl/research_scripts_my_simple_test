package com.enfluid.ltp.view.popups
{
   import spark.components.TitleWindow;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.FormHeading;
   import com.enfluid.ltp.view.components.Link;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import mx.collections.ArrayCollection;
   import com.hurlant.math.BigInteger;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.managers.PopUpManager;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.controller.licensing.ActivateDKLicenseCommand;
   import com.enfluid.ltp.controller.licensing.ValidateSharifyLicenseCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import it.sharify.SharifyStatus;
   import spark.layouts.VerticalLayout;
   import spark.components.HGroup;
   import com.enfluid.ltp.view.components.SelfAdjustingLabel;
   import spark.components.Button;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.KeywordColumnRenderer;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import com.enfluid.ltp.model.constants.Constants;
   import spark.components.Form;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.view.renderers.ProjectDropDownItemRenderer;
   import spark.components.FormItem;
   import com.dk.license.LicenceAppID;
   import flash.utils.ByteArray;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import flash.events.Event;
   import spark.effects.Resize;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.PKCS5;
   import com.enfluid.ltp.model.constants.Values;
   import com.photon.controller.PhotonCommand;
   import spark.components.Label;
   import spark.primitives.Rect;
   import mx.collections.IList;
   import spark.components.gridClasses.GridColumn;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import com.enfluid.ltp.view.GenerateKeywordsCallout;
   
   use namespace mx_internal;
   
   public final class LicensePopup extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _LicensePopup_FormHeading1:FormHeading;
      
      public var _LicensePopup_Link1:Link;
      
      private var _1350627801tiEmail:TextInput;
      
      private var _1320301901tiLicenseKey:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _2058190590isError:Boolean = false;
      
      mx_internal var _LicensePopup_StylesInit_done:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function LicensePopup()
      {
         var com.enfluid.ltp.view.popups.target:Object = null;
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
         com.enfluid.ltp.view.popups.target = this;
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
            §§push(-(((§§pop() + 1) * 21 + 1) * 29));
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(400);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1));
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
            §§push(-(§§pop() - 1 - 1 - 100 - 40 - 34));
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
         §§push(this.model.trialDaysRemaining);
         §§push(0);
         if(_loc1_)
         {
            §§push((§§pop() + 41 + 1) * 63);
         }
         if(§§pop() == §§pop())
         {
            this.closeButton.visible = false;
         }
      }
      
      private final function validateLicence() : void
      {
         this.tiLicenseKey.text = KeywordUtil.stripBeginningAndEndingSpaces(this.tiLicenseKey.text);
         §§push(this.tiLicenseKey.text.toLocaleLowerCase().indexOf("ltpv3-"));
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() - 1 - 1 + 1);
         }
         if(§§pop() == §§pop())
         {
            new ActivateDKLicenseCommand(this.tiEmail.text,this.tiLicenseKey.text).execute();
         }
         else
         {
            new ValidateSharifyLicenseCommand(this.tiEmail.text,this.tiLicenseKey.text).execute();
         }
      }
      
      private final function calcMessage(param1:int) : String
      {
         if(SharifyStatus.STATUS_ERROR_KEY_NOT_FOUND === _loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(-((-§§pop() + 1 - 89) * 57) + 1);
            }
         }
         else if(SharifyStatus.STATUS_ERROR_REGISTRATION_REVOKED === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push((§§pop() - 1 + 1 + 1) * 43 - 51 - 26 - 44);
            }
         }
         else if(SharifyStatus.STATUS_ERROR_ALREADY_REGISTERED === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push(--(§§pop() + 1 - 107 - 1));
            }
         }
         else if(SharifyStatus.STATUS_SERVER_UNAVAILABLE === _loc2_)
         {
            §§push(3);
            if(_loc3_)
            {
               §§push(-(§§pop() + 12) + 81 + 10 - 66 - 22);
            }
         }
         else
         {
            §§push(4);
            if(_loc3_)
            {
               §§push(-(-§§pop() + 70 + 6 - 83 + 97 + 110));
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
            default:
               this.isError = false;
               return "Please enter your Email and License Key";
         }
      }
      
      private final function _LicensePopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() * 10 - 53 + 1) * 82);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-((§§pop() - 1) * 112) - 1 + 14));
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 63 + 1 + 27);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 + 1) * 30);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1 - 28 - 85 - 1 - 46));
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _LicensePopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._LicensePopup_Button1_c(),this._LicensePopup_Form1_c(),this._LicensePopup_Button2_c(),this._LicensePopup_Link1_i()];
         return _loc1_;
      }
      
      private final function _LicensePopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Click Here to Purchase a License";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(22);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 8 - 1);
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
            §§push((§§pop() - 79 - 54 + 1) * 15);
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
         var _loc1_:Array = [this._LicensePopup_FormHeading1_i(),this._LicensePopup_FormItem1_c(),this._LicensePopup_FormItem2_c()];
         return _loc1_;
      }
      
      private final function _LicensePopup_FormHeading1_i() : FormHeading
      {
         var _loc1_:FormHeading = new FormHeading();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 27) + 1 + 1 + 16 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 46 - 48);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_LicensePopup_FormHeading1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LicensePopup_FormHeading1 = _loc1_;
         BindingManager.executeBindings(this,"_LicensePopup_FormHeading1",this._LicensePopup_FormHeading1);
         return _loc1_;
      }
      
      private final function _LicensePopup_FormItem1_c() : FormItem
      {
         var _loc1_:FormItem = new FormItem();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 98 - 1) * 49 * 49 * 97 * 95);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Email :  ";
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LicensePopup_Array3_c);
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 67 - 1 - 19 + 1));
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
            §§push(§§pop() * 111 - 1 + 57 - 105);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "";
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 22 * 50 - 40 - 1) - 1);
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
            §§push(-(§§pop() - 1 - 71) + 83);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "License :  ";
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._LicensePopup_Array4_c);
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() - 36) * 31);
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
            §§push(-((§§pop() - 30 + 110 + 1) * 59 + 71));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "";
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 50) + 39 + 43 + 114 - 117);
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
            §§push((§§pop() - 1 + 105) * 50 - 1 + 1 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc2_)
         {
            §§push(---(§§pop() + 24 - 1) + 1 - 1);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Register";
         _loc1_.useHandCursor = true;
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 47);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("cornerRadius");
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() + 14 - 110 - 1 - 65) * 86);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(35);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 4) * 2 - 116 - 1 - 1);
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
      
      private final function _LicensePopup_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         _loc1_.text = "register later";
         _loc1_.addEventListener("click",this.___LicensePopup_Link1_click);
         _loc1_.id = "_LicensePopup_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LicensePopup_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_LicensePopup_Link1",this._LicensePopup_Link1);
         return _loc1_;
      }
      
      public final function ___LicensePopup_Link1_click(param1:MouseEvent) : void
      {
         this.viewModel.showLicensePopup = false;
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
            §§push(-(§§pop() - 1 - 1 + 73 + 36 - 112));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            §§push(model.trialDaysRemaining);
            §§push(0);
            if(_loc2_)
            {
               §§push((-(§§pop() + 1) + 75 - 1 + 1) * 59);
            }
            var _loc1_:* = §§pop() == §§pop()?"Trial Expired":"Register Long Tail Pro - " + model.trialDaysRemaining + " days remaining in trial";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.title");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 107 - 1) * 15);
         }
         §§pop()[§§pop()] = new Binding(this,function():uint
         {
            if(isError)
            {
               §§push(16711680);
               if(_loc2_)
               {
                  §§push(-(§§pop() + 1 + 73));
               }
               §§push(uint(§§pop()));
            }
            else
            {
               §§push(6710886);
               if(_loc1_)
               {
                  §§push(§§pop() - 106 + 1 + 114);
               }
               §§push(uint(§§pop()));
            }
            return §§pop();
         },function(param1:uint):void
         {
            _LicensePopup_FormHeading1.setStyle("color",param1);
         },"_LicensePopup_FormHeading1.color");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 91 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcMessage(model.licenseStatus);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_LicensePopup_FormHeading1.label");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 46 - 27 + 103) * 3);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            §§push(model.trialDaysRemaining);
            §§push(0);
            if(_loc1_)
            {
               §§push((§§pop() + 62 - 66) * 5 - 81);
            }
            return §§pop() > §§pop();
         },null,"_LicensePopup_Link1.includeInLayout");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() + 22 - 4 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            §§push(model.trialDaysRemaining);
            §§push(0);
            if(_loc1_)
            {
               §§push(§§pop() - 53 + 1 - 1 - 0 + 112);
            }
            return §§pop() > §§pop();
         },null,"_LicensePopup_Link1.visible");
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
               if(_loc1_)
               {
                  §§push(--(-§§pop() + 1));
               }
               §§pop().modalTransparencyBlur = §§pop();
               §§push(this);
               §§push(16777215);
               if(_loc1_)
               {
                  §§push(--(§§pop() + 1 + 1));
               }
               §§pop().modalTransparencyColor = §§pop();
            };
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
   }
}
