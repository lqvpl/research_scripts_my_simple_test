package com.enfluid.ltp.view.missingdatacallouts
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.dataandfilters.target;
   import com.enfluid.ltp.view.dataandfilters.NumWordsSection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchMissingGlobalSearchesCommand;
   import spark.events.PopUpEvent;
   import flash.events.Event;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
   import mx.binding.BindingManager;
   import spark.events.GridEvent;
   import mx.collections.SortField;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import mx.collections.Sort;
   import mx.collections.ArrayCollection;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import mx.controls.HRule;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.utils.Dictionary;
   import mx.graphics.SolidColor;
   import flash.utils.Proxy;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import com.enfluid.ltp.view.containers.LockCollapsiblePanel;
   import mx.events.FlexMouseEvent;
   import com.enfluid.ltp.model.ViewModel;
   import flash.utils.ByteArray;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public final class GlobalSearchesMissingDataCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _GlobalSearchesMissingDataCallout_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GlobalSearchesMissingDataCallout()
      {
         var com.enfluid.ltp.view.missingdatacallouts.target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._GlobalSearchesMissingDataCallout_bindingsSetup();
         var watchers:Array = [];
         com.enfluid.ltp.view.missingdatacallouts.target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_missingdatacallouts_GlobalSearchesMissingDataCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GlobalSearchesMissingDataCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 57 + 1) * 43 - 104 - 1);
         }
         §§pop().percentWidth = §§pop();
         this.verticalPosition = "after";
         this.layout = this._GlobalSearchesMissingDataCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GlobalSearchesMissingDataCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___GlobalSearchesMissingDataCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___GlobalSearchesMissingDataCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(((§§pop() - 11 + 1 + 4) * 4 - 13) * 94));
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
         GlobalSearchesMissingDataCallout._watcherSetupUtil = param1;
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
         new FetchMissingGlobalSearchesCommand().execute();
         this.close();
      }
      
      protected final function calloutCloseHandler(param1:PopUpEvent) : void
      {
         dispatchEvent(new Event("calloutCloseEvent"));
      }
      
      private final function _GlobalSearchesMissingDataCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1 - 1 + 86 - 23));
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() - 17) * 67 * 30 * 110);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 4 - 53 - 95 - 52 - 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-((§§pop() * 15 - 1) * 45) - 48));
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _GlobalSearchesMissingDataCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._GlobalSearchesMissingDataCallout_Label1_i(),this._GlobalSearchesMissingDataCallout_HRule1_c(),this._GlobalSearchesMissingDataCallout_Button1_c()];
         return _loc1_;
      }
      
      private final function _GlobalSearchesMissingDataCallout_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1) * 71 * 37 * 44);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.setStyle("textAlign","left");
         _loc1_.id = "_GlobalSearchesMissingDataCallout_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._GlobalSearchesMissingDataCallout_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_GlobalSearchesMissingDataCallout_Label1",this._GlobalSearchesMissingDataCallout_Label1);
         return _loc1_;
      }
      
      private final function _GlobalSearchesMissingDataCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 1 - 77);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 31 + 79));
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GlobalSearchesMissingDataCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 58 * 23 + 1 - 1 + 52 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((§§pop() - 52 + 1) * 64 * 68 * 96);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Fetch Now";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 80 + 1 - 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___GlobalSearchesMissingDataCallout_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___GlobalSearchesMissingDataCallout_Button1_click(param1:MouseEvent) : void
      {
         this.onClickFetchNow(param1);
      }
      
      public final function ___GlobalSearchesMissingDataCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___GlobalSearchesMissingDataCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      private final function _GlobalSearchesMissingDataCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 + 100 - 68) * 107 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.selectedKeywordCollection.missingGlobalSearchesCount + " of " + model.selectedKeywordCollection.length + " keywords are missing Global Searches.";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_GlobalSearchesMissingDataCallout_Label1.text");
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
