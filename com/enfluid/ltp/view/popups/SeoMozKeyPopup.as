package com.enfluid.ltp.view.popups
{
   import spark.components.TitleWindow;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import spark.components.PopUpAnchor;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.DataModel;
   import spark.layouts.VerticalLayout;
   import flash.utils.setTimeout;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import spark.components.Label;
   import hr.binaria.asx3m.converters.IConverter;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import spark.components.Group;
   import mx.controls.HRule;
   import spark.primitives.Rect;
   import mx.controls.Spacer;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import mx.core.mx_internal;
   import com.enfluid.ltp.view.components.target;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import com.enfluid.ltp.view.components.WarningInformationLabel;
   import flash.events.Event;
   import spark.events.TextOperationEvent;
   import flash.data.SQLStatement;
   import flash.data.SQLResult;
   import flash.events.SQLErrorEvent;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.view.LeftRail;
   import spark.components.Form;
   import mx.core.DeferredInstanceFromFunction;
   import spark.layouts.FormLayout;
   import flash.filesystem.File;
   import com.enfluid.ltp.model.vo.RTDomain;
   import com.enfluid.ltp.model.vo.RTKeyword;
   import com.enfluid.ltp.model.vo.RTRank;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.controller.common.SaveRegistrationStatusCommand;
   import spark.components.HGroup;
   import spark.components.FormItem;
   import hr.binaria.asx3m.core.MapBackedDataHolder;
   import spark.effects.Fade;
   import info.noirbizarre.airorm.utils.sql_db;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   use namespace sql_db;
   
   public final class SeoMozKeyPopup extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _2146437761accessID:TextInput;
      
      private var _739567217secretKey:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1066257116showExplanation:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SeoMozKeyPopup()
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
         var bindings:Array = this._SeoMozKeyPopup_bindingsSetup();
         var watchers:Array = [];
         com.enfluid.ltp.view.popups.target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_SeoMozKeyPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SeoMozKeyPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(600);
         if(_loc3_)
         {
            §§push((-§§pop() - 53) * 43 - 1 + 1 - 1);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(550);
         if(_loc3_)
         {
            §§push(((§§pop() + 12 - 73 - 85 + 53) * 51 - 1) * 84);
         }
         §§pop().height = §§pop();
         this.title = "SEOmoz API Key Needed";
         this.layout = this._SeoMozKeyPopup_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SeoMozKeyPopup_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 95 - 1 + 53) * 66);
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
         SeoMozKeyPopup._watcherSetupUtil = param1;
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
      
      private final function _SeoMozKeyPopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "left";
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(-(§§pop() - 110) + 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() + 24 - 95) - 73);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() - 22 - 64));
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 1 + 1) * 91) - 1 - 64);
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) + 112 + 1 - 11 + 1));
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._SeoMozKeyPopup_Label1_c(),this._SeoMozKeyPopup_HRule1_c(),this._SeoMozKeyPopup_Spacer1_c(),this._SeoMozKeyPopup_Label2_c(),this._SeoMozKeyPopup_Button1_c(),this._SeoMozKeyPopup_Button2_c(),this._SeoMozKeyPopup_WarningInformationLabel1_c(),this._SeoMozKeyPopup_Spacer2_c(),this._SeoMozKeyPopup_Label3_c(),this._SeoMozKeyPopup_HRule2_c(),this._SeoMozKeyPopup_Label4_c(),this._SeoMozKeyPopup_Form1_c(),this._SeoMozKeyPopup_Button3_c()];
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Create SEOmoz Key";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 112 + 1 + 57);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc2_)
         {
            §§push(§§pop() - 36 + 72 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-§§pop() * 75 * 98 - 1 - 109);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 14 * 60 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 10) * 106);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Label2_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(----§§pop());
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "To continue fetching SEOmoz data, you\'ll need your own SEOmoz API Key. It\'s easy, free, and takes just a minute.";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push(-((§§pop() + 32 + 1) * 43));
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 110);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Create an SEOmoz account and Generate API Key";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SeoMozKeyPopup_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SeoMozKeyPopup_Button1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("https://www.seomoz.org/users/community?redirect=/api/keys"));
      }
      
      private final function _SeoMozKeyPopup_Button2_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 59 - 38 - 74));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Already have an SEOmoz account? Generate an API Key now.";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SeoMozKeyPopup_Button2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SeoMozKeyPopup_Button2_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.seomoz.org/api/keys"));
      }
      
      private final function _SeoMozKeyPopup_WarningInformationLabel1_c() : WarningInformationLabel
      {
         var _loc1_:WarningInformationLabel = new WarningInformationLabel();
         _loc1_.label = "Long Tail Pro and Long Tail Platinum now require that each user provide their own SEOmoz API Key.  Previously, all users shared a single API Key, which meant that high usage by one user could cause other users to be blocked from accessing data.  Providing your own API Key ensures you continued access to SEOmoz data.";
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 66) + 1);
         }
         §§pop().percentWidth = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(--(§§pop() + 68 + 19));
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Label3_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Enter Your API Details";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 118 - 47 - 1 + 16);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1 + 1) - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_HRule2_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1 + 1) + 1 - 105 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 3 - 58 + 42);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Label4_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 107 + 1 + 83 - 1 + 2 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Once you\'ve generated an API Key, enter your details below:";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 - 56) * 114));
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Form1_c() : Form
      {
         var _loc1_:Form = new Form();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 48 - 101 + 107 - 36) + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.layout = this._SeoMozKeyPopup_FormLayout1_c();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SeoMozKeyPopup_Array2_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_FormLayout1_c() : FormLayout
      {
         var _loc1_:FormLayout = new FormLayout();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(--(§§pop() - 89) - 1 - 83 - 72));
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Array2_c() : Array
      {
         var _loc1_:Array = [this._SeoMozKeyPopup_HGroup1_c()];
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 112 - 90 - 1 + 31 - 1) - 76);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 87) * 111 - 71));
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._SeoMozKeyPopup_FormItem1_c(),this._SeoMozKeyPopup_FormItem2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_FormItem1_c() : FormItem
      {
         var _loc1_:FormItem = new FormItem();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push((-(§§pop() * 23 + 110) + 1) * 33 + 119 + 35);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SeoMozKeyPopup_Array4_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Array4_c() : Array
      {
         var _loc1_:Array = [this._SeoMozKeyPopup_Label5_c(),this._SeoMozKeyPopup_TextInput1_i()];
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Label5_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Your Access ID";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 + 87 + 1) - 94);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "accessID";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.accessID = _loc1_;
         BindingManager.executeBindings(this,"accessID",this.accessID);
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_FormItem2_c() : FormItem
      {
         var _loc1_:FormItem = new FormItem();
         §§push(_loc1_);
         §§push(50);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 75);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._SeoMozKeyPopup_Array5_c);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Array5_c() : Array
      {
         var _loc1_:Array = [this._SeoMozKeyPopup_Label6_c(),this._SeoMozKeyPopup_TextInput2_i()];
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Label6_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Your Secret Key:";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_TextInput2_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 54);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "secretKey";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.secretKey = _loc1_;
         BindingManager.executeBindings(this,"secretKey",this.secretKey);
         return _loc1_;
      }
      
      private final function _SeoMozKeyPopup_Button3_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 1 - 105 - 59) * 39));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Submit";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___SeoMozKeyPopup_Button3_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SeoMozKeyPopup_Button3_click(param1:MouseEvent) : void
      {
         ViewModel.instance.showSEOMozPopup = false;
         new SavePreferencesCommand().execute();
      }
      
      private final function _SeoMozKeyPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 44 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.preferences.userSeoMozAccessId;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"accessID.text");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-§§pop() + 43 - 15 - 95 + 1 + 50);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.preferences.userSeoMozSecretKey;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"secretKey.text");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1) + 107 + 79 - 1 + 3);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return accessID.text;
         },function(param1:*):void
         {
            model.preferences.userSeoMozAccessId = param1;
         },"model.preferences.userSeoMozAccessId");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() - 28) + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(--((§§pop() * 79 + 79) * 92 * 110 + 1));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 76 * 102);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() - 1 - 115 - 1) - 56));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 8 - 1 - 56);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-((§§pop() + 113 + 56 - 63) * 41) * 59 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return secretKey.text;
         },function(param1:*):void
         {
            model.preferences.userSeoMozSecretKey = param1;
         },"model.preferences.userSeoMozSecretKey");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 15 + 1) - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() - 73 + 99) * 69) + 83);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 88) + 8 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 57 + 70 - 118 - 1 + 80 + 1 - 103);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() - 59 + 1 - 72 + 23);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _SeoMozKeyPopup_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.preferences.userSeoMozAccessId = this.accessID.text;
         this.model.preferences.userSeoMozSecretKey = this.secretKey.text;
      }
      
      [Bindable(event="propertyChange")]
      public function get accessID() : TextInput
      {
         return this._2146437761accessID;
      }
      
      public function set accessID(param1:TextInput) : void
      {
         var _loc2_:Object = this._2146437761accessID;
         if(_loc2_ !== param1)
         {
            this._2146437761accessID = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"accessID",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get secretKey() : TextInput
      {
         return this._739567217secretKey;
      }
      
      public function set secretKey(param1:TextInput) : void
      {
         var _loc2_:Object = this._739567217secretKey;
         if(_loc2_ !== param1)
         {
            this._739567217secretKey = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secretKey",_loc2_,param1));
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
      private function get showExplanation() : Boolean
      {
         return this._1066257116showExplanation;
      }
      
      private function set showExplanation(param1:Boolean) : void
      {
         var _loc2_:Object = this._1066257116showExplanation;
         if(_loc2_ !== param1)
         {
            this._1066257116showExplanation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showExplanation",_loc2_,param1));
            }
         }
      }
   }
}
