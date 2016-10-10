package com.enfluid.ltp.view.popups
{
   import spark.components.TitleWindow;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.SlimScrollerSkinInnerClass0;
   import mx.binding.BindingManager;
   import spark.primitives.Rect;
   import flash.utils.ByteArray;
   import spark.components.VGroup;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.model.ViewModel;
   import flash.utils.Dictionary;
   import spark.components.Scroller;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.target;
   import com.enfluid.ltp.view.components.SelfAdjustingGroup;
   import mx.binding.Binding;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import flash.utils.setTimeout;
   import spark.components.Button;
   import spark.components.DataGrid;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.system.System;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.util.Logger;
   import mx.events.CloseEvent;
   import spark.events.PopUpEvent;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import mx.graphics.GradientEntry;
   import mx.events.PropertyChangeEvent;
   import assets.TextAssets;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import mx.graphics.LinearGradient;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class ErrorPopup extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _951530617content:VGroup;
      
      private var _1490955432myLabel:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function ErrorPopup()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._ErrorPopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_ErrorPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return ErrorPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(400);
         if(_loc3_)
         {
            §§push(§§pop() + 9 + 32 + 1 + 1);
         }
         §§pop().height = §§pop();
         this.title = "An Error Occurred";
         this.layout = this._ErrorPopup_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._ErrorPopup_Array1_c);
         this.addEventListener("close",this.___ErrorPopup_TitleWindow1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 + 1 - 70));
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
         ErrorPopup._watcherSetupUtil = param1;
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
      
      private final function _ErrorPopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 16) - 101 - 76);
         }
         §§pop().paddingBottom = §§pop();
         return _loc1_;
      }
      
      private final function _ErrorPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._ErrorPopup_Scroller1_c(),this._ErrorPopup_Button1_c()];
         return _loc1_;
      }
      
      private final function _ErrorPopup_Scroller1_c() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 20 + 9 + 1 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 1 - 43 - 1 - 28);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.viewport = this._ErrorPopup_VGroup1_i();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _ErrorPopup_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() + 24 + 1) * 78 * 54 * 72));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 79);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 78 + 1 - 106 + 1 - 108 + 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(((§§pop() * 24 + 91 + 1) * 44 + 1) * 101);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(--(§§pop() - 71 + 7 - 43));
         }
         §§pop().paddingTop = §§pop();
         _loc1_.mxmlContent = [this._ErrorPopup_Label1_i()];
         _loc1_.id = "content";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.content = _loc1_;
         BindingManager.executeBindings(this,"content",this.content);
         return _loc1_;
      }
      
      private final function _ErrorPopup_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.id = "myLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.myLabel = _loc1_;
         BindingManager.executeBindings(this,"myLabel",this.myLabel);
         return _loc1_;
      }
      
      private final function _ErrorPopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Copy to Clipboard";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___ErrorPopup_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___ErrorPopup_Button1_click(param1:MouseEvent) : void
      {
         System.setClipboard(ViewModel.instance.runtimeErrorText);
      }
      
      public final function ___ErrorPopup_TitleWindow1_close(param1:CloseEvent) : void
      {
         ViewModel.instance.runtimeErrorText = "";
      }
      
      private final function _ErrorPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 49 - 1 + 1) + 82);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(myLabel.width);
            §§push(15);
            if(_loc1_)
            {
               §§push((-(§§pop() - 1) + 33 - 57 + 1) * 18);
            }
            return §§pop() + §§pop();
         },null,"this.width");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 45) - 1) + 27 - 30 + 46);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = ViewModel.instance.runtimeErrorText;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"myLabel.text");
         return result;
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
      public function get myLabel() : Label
      {
         return this._1490955432myLabel;
      }
      
      public function set myLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1490955432myLabel;
         if(_loc2_ !== param1)
         {
            this._1490955432myLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLabel",_loc2_,param1));
            }
         }
      }
   }
}
