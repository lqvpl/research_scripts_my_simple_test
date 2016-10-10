package com.enfluid.ltp.view.popups
{
   import spark.components.TitleWindow;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import flash.utils.getQualifiedClassName;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.DataModel;
   import spark.layouts.VerticalLayout;
   import spark.components.Button;
   import mx.events.FlexMouseEvent;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.controls.Alert;
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.filesystem.FileMode;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.currentKeywords;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import flash.events.Event;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.controller.licensing.DetermineVersionCommand;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class UpgradeToPlatinumPopup extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _UpgradeToPlatinumPopup_Label3:Label;
      
      public var _UpgradeToPlatinumPopup_RichEditableText1:RichEditableText;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function UpgradeToPlatinumPopup()
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
         var bindings:Array = this._UpgradeToPlatinumPopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_UpgradeToPlatinumPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return UpgradeToPlatinumPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(550);
         if(_loc3_)
         {
            §§push(((§§pop() + 5) * 109 * 112 - 1) * 59 + 1);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(350);
         if(_loc3_)
         {
            §§push(-(((§§pop() - 1) * 26 + 50 - 1 + 22) * 83));
         }
         §§pop().height = §§pop();
         this.title = "Upgrade To Long Tail Platinum";
         this.layout = this._UpgradeToPlatinumPopup_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._UpgradeToPlatinumPopup_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 75 + 1) * 32 - 1 - 47 - 1);
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
         UpgradeToPlatinumPopup._watcherSetupUtil = param1;
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
      
      private final function _UpgradeToPlatinumPopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() - 42 + 1 + 22);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(-((§§pop() - 75 + 55) * 16) + 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() - 81 - 1 + 1 + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(--(-(§§pop() - 77 - 53) + 43));
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 3) + 1 - 1 + 55 + 1);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _UpgradeToPlatinumPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._UpgradeToPlatinumPopup_Button1_c(),this._UpgradeToPlatinumPopup_Label1_c(),this._UpgradeToPlatinumPopup_RichEditableText1_i(),this._UpgradeToPlatinumPopup_Spacer1_c(),this._UpgradeToPlatinumPopup_Label2_c(),this._UpgradeToPlatinumPopup_Label3_i(),this._UpgradeToPlatinumPopup_Button2_c()];
         return _loc1_;
      }
      
      private final function _UpgradeToPlatinumPopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Click Here to Subscribe to Long Tail Platinum";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___UpgradeToPlatinumPopup_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___UpgradeToPlatinumPopup_Button1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.longtailpro.com/platinumdemo/"));
      }
      
      private final function _UpgradeToPlatinumPopup_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(70);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 7) + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "When purchasing Platinum, you must use the same email address you used to purchase Pro:";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) - 1) * 114);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _UpgradeToPlatinumPopup_RichEditableText1_i() : RichEditableText
      {
         var _loc1_:RichEditableText = new RichEditableText();
         §§push(_loc1_);
         §§push(70);
         if(_loc3_)
         {
            §§push(-((§§pop() - 104 + 1) * 86 * 15 + 1) - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(4748965);
         if(_loc3_)
         {
            §§push((§§pop() - 76 - 1) * 50);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(25);
         if(_loc2_)
         {
            §§push(-§§pop() - 69 - 1 + 1 - 1 - 10);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_UpgradeToPlatinumPopup_RichEditableText1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._UpgradeToPlatinumPopup_RichEditableText1 = _loc1_;
         BindingManager.executeBindings(this,"_UpgradeToPlatinumPopup_RichEditableText1",this._UpgradeToPlatinumPopup_RichEditableText1);
         return _loc1_;
      }
      
      private final function _UpgradeToPlatinumPopup_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() + 42 + 96) * 68);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _UpgradeToPlatinumPopup_Label2_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(70);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 46 - 1) - 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "After subscribing, click below to verify your subscription.";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 106) * 8 + 1) - 50);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _UpgradeToPlatinumPopup_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(70);
         if(_loc2_)
         {
            §§push(-(-(-(§§pop() * 0) * 104 - 1) + 1));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Hmm... We weren\'t able to verify you Platinum subscription.  If you\'re having trouble, please contact support@longtailpro.com.";
         §§push(_loc1_);
         §§push("color");
         §§push(16711680);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 90) - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 82) - 67 - 1) - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_UpgradeToPlatinumPopup_Label3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._UpgradeToPlatinumPopup_Label3 = _loc1_;
         BindingManager.executeBindings(this,"_UpgradeToPlatinumPopup_Label3",this._UpgradeToPlatinumPopup_Label3);
         return _loc1_;
      }
      
      private final function _UpgradeToPlatinumPopup_Button2_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(400);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 13 * 30 - 1) * 112 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push(-((§§pop() - 54) * 72 - 1));
         }
         §§pop().height = §§pop();
         _loc1_.label = "Verify Subscription";
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 16 + 77 + 30) * 59 + 54) * 20);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("cornerRadius");
         §§push(8);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 55 - 1) + 45) * 22);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(35);
         if(_loc2_)
         {
            §§push((-(§§pop() + 96) + 49) * 2);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___UpgradeToPlatinumPopup_Button2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___UpgradeToPlatinumPopup_Button2_click(param1:MouseEvent) : void
      {
         new DetermineVersionCommand().execute();
      }
      
      private final function _UpgradeToPlatinumPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 + 32 - 1) + 25);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.userEmail;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_UpgradeToPlatinumPopup_RichEditableText1.text");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 102 + 1) * 116);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.hasSubscribeToPlatinumError;
         },null,"_UpgradeToPlatinumPopup_Label3.includeInLayout");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 22) - 1 + 17 - 5 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.hasSubscribeToPlatinumError;
         },null,"_UpgradeToPlatinumPopup_Label3.visible");
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
