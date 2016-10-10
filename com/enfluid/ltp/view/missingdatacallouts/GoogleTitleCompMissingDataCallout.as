package com.enfluid.ltp.view.missingdatacallouts
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.BitmapImage;
   import mx.binding.BindingManager;
   import spark.components.CheckBox;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.dataandfilters.GoogleTitleCompetitionSection;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchMissingGoogleTitleCompetitionCommand;
   import com.enfluid.ltp.util.FileSystemOperations;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.util.BlowFishUtil;
   import com.enfluid.ltp.util.Logger;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import spark.events.PopUpEvent;
   import flash.events.Event;
   import spark.layouts.VerticalLayout;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import mx.controls.HRule;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import spark.components.Button;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.core.ClassFactory;
   import spark.skins.spark.DefaultGridItemRenderer;
   import mx.events.FlexMouseEvent;
   import mx.graphics.SolidColor;
   import mx.graphics.GradientEntry;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class GoogleTitleCompMissingDataCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _GoogleTitleCompMissingDataCallout_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GoogleTitleCompMissingDataCallout()
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
         var bindings:Array = this._GoogleTitleCompMissingDataCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_missingdatacallouts_GoogleTitleCompMissingDataCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GoogleTitleCompMissingDataCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() * 96 + 1 + 1));
         }
         §§pop().percentWidth = §§pop();
         this.verticalPosition = "after";
         this.layout = this._GoogleTitleCompMissingDataCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GoogleTitleCompMissingDataCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___GoogleTitleCompMissingDataCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___GoogleTitleCompMissingDataCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 55 - 70 - 37 + 42);
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
         GoogleTitleCompMissingDataCallout._watcherSetupUtil = param1;
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
      
      protected final function onClickFetchNow(param1:MouseEvent) : void
      {
         new FetchMissingGoogleTitleCompetitionCommand().execute();
         this.close();
      }
      
      protected final function calloutCloseHandler(param1:PopUpEvent) : void
      {
         dispatchEvent(new Event("calloutCloseEvent"));
      }
      
      private final function _GoogleTitleCompMissingDataCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() * 108 - 1) * 11 - 1 - 110);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 1 - 115) * 58) + 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1 - 1 + 1) - 1 + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(((§§pop() - 43 - 80) * 78 - 13 - 1) * 7 - 63);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _GoogleTitleCompMissingDataCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._GoogleTitleCompMissingDataCallout_Label1_i(),this._GoogleTitleCompMissingDataCallout_HRule1_c(),this._GoogleTitleCompMissingDataCallout_Button1_c()];
         return _loc1_;
      }
      
      private final function _GoogleTitleCompMissingDataCallout_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() - 35) - 69 + 63 + 62 + 56);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.setStyle("textAlign","left");
         _loc1_.id = "_GoogleTitleCompMissingDataCallout_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._GoogleTitleCompMissingDataCallout_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_GoogleTitleCompMissingDataCallout_Label1",this._GoogleTitleCompMissingDataCallout_Label1);
         return _loc1_;
      }
      
      private final function _GoogleTitleCompMissingDataCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 89 + 97 + 1 + 32 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 50 + 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GoogleTitleCompMissingDataCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() + 82) * 12) * 0 - 85);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(§§pop() * 99 - 35 + 73) + 1);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Fetch Now";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc2_)
         {
            §§push((---(§§pop() + 42) - 60) * 77 + 117);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___GoogleTitleCompMissingDataCallout_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___GoogleTitleCompMissingDataCallout_Button1_click(param1:MouseEvent) : void
      {
         this.onClickFetchNow(param1);
      }
      
      public final function ___GoogleTitleCompMissingDataCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___GoogleTitleCompMissingDataCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      private final function _GoogleTitleCompMissingDataCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 1) * 17 + 41) - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.selectedKeywordCollection.missingGoogleTitleCompCount + " of " + model.selectedKeywordCollection.length + " keywords are missing Google Title Competition.";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_GoogleTitleCompMissingDataCallout_Label1.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get model() : DataModel
      {
         return this._104069929model;
      }
      
      public function set model(param1:DataModel) : void
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
