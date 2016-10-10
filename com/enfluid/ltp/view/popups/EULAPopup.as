package com.enfluid.ltp.view.popups
{
   import spark.components.TitleWindow;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.events.IndexChangeEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SelectProjectCommand;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import spark.components.TextArea;
   import mx.core.IFlexModuleFactory;
   import flash.events.Event;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import mx.managers.PopUpManager;
   import flash.events.MouseEvent;
   import hr.binaria.asx3m.mapper.IMapper;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import spark.components.VGroup;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import spark.primitives.Rect;
   import spark.components.Button;
   import flash.display.LoaderInfo;
   import flash.display.BitmapData;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.adobe.cairngorm.observer.Observe;
   import spark.components.Group;
   import com.enfluid.ltp.view.filterviews.FilterView;
   import flashx.textLayout.elements.TextFlow;
   import flashx.textLayout.conversion.TextConverter;
   import com.enfluid.ltp.view.components.EULA;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import com.enfluid.ltp.model.vo.SRTRequestDataVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.controller.services.Services;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class EULAPopup extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _EULAPopup_TextArea1:TextArea;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _EULAPopup_StylesInit_done:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function EULAPopup()
      {
         var com.enfluid.ltp.view.popups.target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._EULAPopup_bindingsSetup();
         var watchers:Array = [];
         com.enfluid.ltp.view.popups.target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_EULAPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return EULAPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(800);
         if(_loc4_)
         {
            §§push(§§pop() - 59 + 1 - 72 + 23);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(600);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 30 + 1 + 100);
         }
         §§pop().height = §§pop();
         this.title = "Licence Agreement";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._EULAPopup_Array1_c);
         this.addEventListener("creationComplete",this.___EULAPopup_TitleWindow1_creationComplete);
         this.addEventListener("show",this.___EULAPopup_TitleWindow1_show);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1) - 53) * 43 - 1);
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
         EULAPopup._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         mx_internal::_EULAPopup_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected final function titlewindow1_creationCompleteHandler(param1:FlexEvent) : void
      {
      }
      
      private final function onShow() : void
      {
         PopUpManager.centerPopUp(this);
         this.closeButton.visible = false;
      }
      
      protected final function button1_clickHandler(param1:MouseEvent) : void
      {
         this.model.loadPreferencesCommamd.setComplete();
         ViewModel.instance.showEULAPopup = false;
         this.model.preferences.eulaAccepted = true;
         new SavePreferencesCommand().execute();
      }
      
      private final function _EULAPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._EULAPopup_VGroup1_c()];
         return _loc1_;
      }
      
      private final function _EULAPopup_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() * 34) - 1 - 83 - 72);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() * 30) + 112 - 90 - 1 + 31);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(40);
         if(_loc3_)
         {
            §§push((§§pop() - 76) * 41 - 87);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc3_)
         {
            §§push(-(§§pop() - 71) - 14 - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc2_)
         {
            §§push((-(§§pop() + 110) + 1) * 33 + 119 + 35);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 92) + 1 + 87 + 1));
         }
         §§pop().paddingTop = §§pop();
         _loc1_.mxmlContent = [this._EULAPopup_TextArea1_i(),this._EULAPopup_Button1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _EULAPopup_TextArea1_i() : TextArea
      {
         var _loc1_:TextArea = new TextArea();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 70 - 1 + 1 + 75 + 1 - 9);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 54);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.editable = false;
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 - 1 - 105);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingRight");
         §§push(10);
         if(_loc2_)
         {
            §§push((-(§§pop() * 39) + 1) * 93 + 80 - 44 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 43 - 15 - 95 + 1 + 50);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paragraphSpaceBefore");
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1) + 107 + 79 - 1 + 3);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paragraphSpaceAfter");
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 28) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","justify");
         _loc1_.id = "_EULAPopup_TextArea1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._EULAPopup_TextArea1 = _loc1_;
         BindingManager.executeBindings(this,"_EULAPopup_TextArea1",this._EULAPopup_TextArea1);
         return _loc1_;
      }
      
      private final function _EULAPopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 72 - 107 + 1) * 110);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push((-§§pop() + 45 - 1) * 76 * 102);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Agree to Terms";
         _loc1_.useHandCursor = true;
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() - 1 - 115 - 1) - 56));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("cornerRadius");
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() - 8 - 1 - 56);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push(-((§§pop() + 113 + 56 - 63) * 41) * 59 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___EULAPopup_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___EULAPopup_Button1_click(param1:MouseEvent) : void
      {
         this.button1_clickHandler(param1);
      }
      
      public final function ___EULAPopup_TitleWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.titlewindow1_creationCompleteHandler(param1);
      }
      
      public final function ___EULAPopup_TitleWindow1_show(param1:FlexEvent) : void
      {
         this.onShow();
      }
      
      private final function _EULAPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1 + 1) - 73 + 99);
         }
         §§pop()[§§pop()] = new Binding(this,function():TextFlow
         {
            return TextConverter.importToFlow(EULA.eula,TextConverter.TEXT_FIELD_HTML_FORMAT);
         },null,"_EULAPopup_TextArea1.textFlow");
         return result;
      }
      
      mx_internal final function _EULAPopup_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_EULAPopup_StylesInit_done)
         {
            return;
         }
         mx_internal::_EULAPopup_StylesInit_done = true;
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
                  §§push(-(§§pop() - 36 - 88) + 8 - 1 - 1);
               }
               §§pop().modalTransparencyBlur = §§pop();
               §§push(this);
               §§push(16777215);
               if(_loc2_)
               {
                  §§push(§§pop() - 1 + 70 - 118 - 1 + 80 + 1);
               }
               §§pop().modalTransparencyColor = §§pop();
            };
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
