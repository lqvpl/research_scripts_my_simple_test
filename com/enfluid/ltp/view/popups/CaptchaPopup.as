package com.enfluid.ltp.view.popups
{
   import spark.components.BorderContainer;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.binding.utils.ChangeWatcher;
   import spark.components.Button;
   import spark.primitives.BitmapImage;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.IOErrorEvent;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IDataHolder;
   import hr.binaria.asx3m.converters.IConverterLookup;
   import hr.binaria.asx3m.mapper.IMapper;
   import hr.binaria.asx3m.core.TreeUnmarshaller;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import mx.managers.PopUpManager;
   import flash.events.MouseEvent;
   import spark.effects.Fade;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import com.enfluid.ltp.controller.common.CancelCheckAllRanksCommand;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Values;
   import spark.primitives.Rect;
   import spark.components.Label;
   import flash.utils.ByteArray;
   import flash.events.SecurityErrorEvent;
   import spark.components.HGroup;
   import mx.states.Transition;
   import mx.events.FlexEvent;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.collections.IList;
   import mx.controls.scrollClasses.ScrollBar;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import spark.effects.easing.IEaser;
   import spark.effects.easing.EaseInOutBase;
   import com.enfluid.ltp.controller.rankchecker.ReadRanksXMLCommand;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.SelectColumnsHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import com.enfluid.ltp.model.ViewModel;
   import mx.graphics.SolidColor;
   import mx.events.PropertyChangeEvent;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class CaptchaPopup extends BorderContainer implements IBindingClient
   {
      
      public static var CAPTCHA_ENTERED:String = "captchaEntered";
      
      public static var CAPTCHA_LOAD_ERROR:String = "captchaLoadError";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CaptchaPopup_Button2:Button;
      
      private var _552567418captcha:BitmapImage;
      
      private var _958832272captchaInput:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _861444355enteredCaptcha:String;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CaptchaPopup()
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
         var bindings:Array = this._CaptchaPopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_CaptchaPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CaptchaPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.styleName = "pod";
         this.layout = this._CaptchaPopup_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CaptchaPopup_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 1) + 66));
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
         CaptchaPopup._watcherSetupUtil = param1;
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
            this.backgroundAlpha = 1;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected final function captcha_ioErrorHandler(param1:IOErrorEvent) : void
      {
         dispatchEvent(new Event(CAPTCHA_LOAD_ERROR));
         PopUpManager.removePopUp(this);
      }
      
      private final function onClickGo() : void
      {
         dispatchEvent(new Event(CAPTCHA_ENTERED));
         PopUpManager.removePopUp(this);
      }
      
      protected final function button1_clickHandler(param1:MouseEvent) : void
      {
         if(this.model.isCheckingRanks)
         {
            new CancelCheckAllRanksCommand().execute();
         }
         PopUpManager.removePopUp(this);
      }
      
      private final function _CaptchaPopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 17 * 116 + 1));
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 19 - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() + 6) + 115 + 1 + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() * 19 + 35 - 113);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         return _loc1_;
      }
      
      private final function _CaptchaPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._CaptchaPopup_Label1_c(),this._CaptchaPopup_BitmapImage1_i(),this._CaptchaPopup_HGroup1_c(),this._CaptchaPopup_Button2_i()];
         return _loc1_;
      }
      
      private final function _CaptchaPopup_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.styleName = "sectionTitle";
         _loc1_.text = "Please enter the text below:";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CaptchaPopup_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.addEventListener("ioError",this.__captcha_ioError);
         _loc1_.addEventListener("securityError",this.__captcha_securityError);
         _loc1_.initialized(this,"captcha");
         this.captcha = _loc1_;
         BindingManager.executeBindings(this,"captcha",this.captcha);
         return _loc1_;
      }
      
      public final function __captcha_ioError(param1:IOErrorEvent) : void
      {
         this.captcha_ioErrorHandler(param1);
      }
      
      public final function __captcha_securityError(param1:SecurityErrorEvent) : void
      {
         this.captcha_ioErrorHandler(null);
      }
      
      private final function _CaptchaPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         _loc1_.mxmlContent = [this._CaptchaPopup_TextInput1_i(),this._CaptchaPopup_Button1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CaptchaPopup_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         _loc1_.addEventListener("enter",this.__captchaInput_enter);
         _loc1_.id = "captchaInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.captchaInput = _loc1_;
         BindingManager.executeBindings(this,"captchaInput",this.captchaInput);
         return _loc1_;
      }
      
      public final function __captchaInput_enter(param1:FlexEvent) : void
      {
         this.onClickGo();
      }
      
      private final function _CaptchaPopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Go";
         _loc1_.addEventListener("click",this.___CaptchaPopup_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___CaptchaPopup_Button1_click(param1:MouseEvent) : void
      {
         this.onClickGo();
      }
      
      private final function _CaptchaPopup_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() - 77 - 1 - 1 + 77 + 1 - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push((-§§pop() + 63 - 90) * 111 + 71);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push(--§§pop() + 116);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("cornerRadius");
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 57 + 1 + 70 - 117 + 1 + 1 - 100);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         §§push(_loc1_);
         §§push("chromeColor");
         §§push(16771899);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 32 - 1 - 95) * 14);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.___CaptchaPopup_Button2_click);
         _loc1_.id = "_CaptchaPopup_Button2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CaptchaPopup_Button2 = _loc1_;
         BindingManager.executeBindings(this,"_CaptchaPopup_Button2",this._CaptchaPopup_Button2);
         return _loc1_;
      }
      
      public final function ___CaptchaPopup_Button2_click(param1:MouseEvent) : void
      {
         this.button1_clickHandler(param1);
      }
      
      private final function _CaptchaPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 90 - 1 + 0);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return ViewModel.instance.captchaImageUrl;
         },null,"captcha.source");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 4 + 39 + 1 + 108);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"captchaInput.text","enteredCaptcha");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() * 110 - 1 - 2);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return captcha.width;
         },null,"_CaptchaPopup_Button2.width");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() * 40 + 12 - 1 - 107 + 1 + 102);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!model.isCheckingRanks?"Cancel Check Ranks":"Cancel";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CaptchaPopup_Button2.label");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 4 - 114);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return captchaInput.text;
         },function(param1:*):void
         {
            enteredCaptcha = param1;
         },"enteredCaptcha");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 - 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 52));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(((§§pop() * 46 - 1 - 1) * 53 + 1) * 20);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((-(-(§§pop() - 1) - 1) + 1) * 5 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-((§§pop() * 107 - 83) * 69 * 60 + 117) + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _CaptchaPopup_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.enteredCaptcha = this.captchaInput.text;
      }
      
      [Bindable(event="propertyChange")]
      public function get captcha() : BitmapImage
      {
         return this._552567418captcha;
      }
      
      public function set captcha(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._552567418captcha;
         if(_loc2_ !== param1)
         {
            this._552567418captcha = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"captcha",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get captchaInput() : TextInput
      {
         return this._958832272captchaInput;
      }
      
      public function set captchaInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._958832272captchaInput;
         if(_loc2_ !== param1)
         {
            this._958832272captchaInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"captchaInput",_loc2_,param1));
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
      public function get enteredCaptcha() : String
      {
         return this._861444355enteredCaptcha;
      }
      
      public function set enteredCaptcha(param1:String) : void
      {
         var _loc2_:Object = this._861444355enteredCaptcha;
         if(_loc2_ !== param1)
         {
            this._861444355enteredCaptcha = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enteredCaptcha",_loc2_,param1));
            }
         }
      }
   }
}
