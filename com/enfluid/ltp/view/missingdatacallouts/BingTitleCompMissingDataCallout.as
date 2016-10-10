package com.enfluid.ltp.view.missingdatacallouts
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchMissingBingTitleCompetitionCommand;
   import com.hurlant.math.bi_internal;
   import spark.events.PopUpEvent;
   import flash.events.Event;
   import spark.layouts.VerticalLayout;
   import mx.binding.BindingManager;
   import spark.formatters.NumberFormatter;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import mx.controls.HRule;
   import mx.rpc.http.HTTPService;
   import spark.components.Button;
   import mx.graphics.SolidColor;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.events.FlexMouseEvent;
   import spark.components.HGroup;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace bi_internal;
   use namespace mx_internal;
   
   public final class BingTitleCompMissingDataCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _BingTitleCompMissingDataCallout_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BingTitleCompMissingDataCallout()
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
         var bindings:Array = this._BingTitleCompMissingDataCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_missingdatacallouts_BingTitleCompMissingDataCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return BingTitleCompMissingDataCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(-§§pop() * 94 + 58) - 1);
         }
         §§pop().percentWidth = §§pop();
         this.verticalPosition = "after";
         this.layout = this._BingTitleCompMissingDataCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._BingTitleCompMissingDataCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___BingTitleCompMissingDataCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___BingTitleCompMissingDataCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(----§§pop() * 32 - 1 - 1);
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
         BingTitleCompMissingDataCallout._watcherSetupUtil = param1;
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
      
      protected final function onClickFetchData(param1:MouseEvent) : void
      {
         new FetchMissingBingTitleCompetitionCommand().execute();
         this.close();
      }
      
      protected final function calloutCloseHandler(param1:PopUpEvent) : void
      {
         dispatchEvent(new Event("calloutCloseEvent"));
      }
      
      private final function _BingTitleCompMissingDataCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 41 - 110 - 1 + 1 + 1) - 79);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 + 10 + 8 - 93) * 27));
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-((-§§pop() - 119) * 3 - 1));
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 1);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _BingTitleCompMissingDataCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._BingTitleCompMissingDataCallout_Label1_i(),this._BingTitleCompMissingDataCallout_HRule1_c(),this._BingTitleCompMissingDataCallout_Button1_c()];
         return _loc1_;
      }
      
      private final function _BingTitleCompMissingDataCallout_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-(§§pop() + 13) - 1 - 1) * 8 * 26);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "_BingTitleCompMissingDataCallout_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BingTitleCompMissingDataCallout_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_BingTitleCompMissingDataCallout_Label1",this._BingTitleCompMissingDataCallout_Label1);
         return _loc1_;
      }
      
      private final function _BingTitleCompMissingDataCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 69 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 75 - 1 - 32);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BingTitleCompMissingDataCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1 + 1) * 30 - 49 + 105);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1) + 115);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Fetch Now";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc2_)
         {
            §§push((§§pop() + 109 + 57 + 1 - 36) * 8 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___BingTitleCompMissingDataCallout_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___BingTitleCompMissingDataCallout_Button1_click(param1:MouseEvent) : void
      {
         this.onClickFetchData(param1);
      }
      
      public final function ___BingTitleCompMissingDataCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___BingTitleCompMissingDataCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      private final function _BingTitleCompMissingDataCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1 + 50 - 86) * 105) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.selectedKeywordCollection.missingBingTitleCompCount + " of " + (model.selectedKeywordCollection.length + " keywords are missing Bing Title Competition.");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_BingTitleCompMissingDataCallout_Label1.text");
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
