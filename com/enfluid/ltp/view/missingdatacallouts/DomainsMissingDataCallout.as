package com.enfluid.ltp.view.missingdatacallouts
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.layouts.VerticalLayout;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.target;
   import mx.binding.Binding;
   import spark.components.Button;
   import com.enfluid.ltp.view.dataandfilters.domain.DomainsGroup;
   import mx.controls.HRule;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.FetchMissingDomainsCommand;
   import com.hurlant.math.BigInteger;
   import spark.events.PopUpEvent;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Values;
   import spark.components.Image;
   import com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
   import mx.controls.Spacer;
   import system.data.Iterator;
   import spark.components.HGroup;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import io.calq.analytics.AbstractAnalyticsApiCall;
   import flash.utils.Timer;
   import mx.events.FlexMouseEvent;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteSeedKeywordCommand;
   import mx.states.State;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class DomainsMissingDataCallout extends Callout implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _DomainsMissingDataCallout_Button1:Button;
      
      public var _DomainsMissingDataCallout_DomainsGroup1:DomainsGroup;
      
      public var _DomainsMissingDataCallout_DomainsGroup2:DomainsGroup;
      
      public var _DomainsMissingDataCallout_HRule1:HRule;
      
      public var _DomainsMissingDataCallout_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DomainsMissingDataCallout()
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
         var bindings:Array = this._DomainsMissingDataCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_missingdatacallouts_DomainsMissingDataCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DomainsMissingDataCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(§§pop() + 25 + 1 - 1) + 1);
         }
         §§pop().percentWidth = §§pop();
         this.verticalPosition = "after";
         this.layout = this._DomainsMissingDataCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._DomainsMissingDataCallout_Array2_c);
         this.addEventListener("mouseDownOutside",this.___DomainsMissingDataCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___DomainsMissingDataCallout_Callout1_close);
         var _DomainsMissingDataCallout_Button1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._DomainsMissingDataCallout_Button1_i);
         var _DomainsMissingDataCallout_HRule1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._DomainsMissingDataCallout_HRule1_i);
         var _DomainsMissingDataCallout_Label1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._DomainsMissingDataCallout_Label1_i);
         states = [new State({
            "name":"edit",
            "overrides":[]
         }),new State({
            "name":"missingData",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_DomainsMissingDataCallout_Button1_factory,
               "destination":null,
               "position":"after",
               "relativeTo":["_DomainsMissingDataCallout_DomainsGroup2"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_DomainsMissingDataCallout_HRule1_factory,
               "destination":null,
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_DomainsMissingDataCallout_Label1_factory,
               "destination":null,
               "position":"first"
            })]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1) * 22);
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
         DomainsMissingDataCallout._watcherSetupUtil = param1;
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
         new FetchMissingDomainsCommand().execute();
         this.close();
      }
      
      protected final function calloutCloseHandler(param1:PopUpEvent) : void
      {
         dispatchEvent(new Event("calloutCloseEvent"));
      }
      
      private final function _DomainsMissingDataCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 21 + 1 - 11);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1 - 54 - 39));
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(---§§pop());
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 82 - 28 + 1 - 48);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _DomainsMissingDataCallout_Array2_c() : Array
      {
         var _loc1_:Array = [this._DomainsMissingDataCallout_Label2_c(),this._DomainsMissingDataCallout_DomainsGroup1_i(),this._DomainsMissingDataCallout_Spacer1_c(),this._DomainsMissingDataCallout_Label3_c(),this._DomainsMissingDataCallout_DomainsGroup2_i()];
         return _loc1_;
      }
      
      private final function _DomainsMissingDataCallout_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-§§pop() + 1) * 32 + 1 + 1 - 83 - 70);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.setStyle("textAlign","left");
         _loc1_.id = "_DomainsMissingDataCallout_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsMissingDataCallout_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsMissingDataCallout_Label1",this._DomainsMissingDataCallout_Label1);
         return _loc1_;
      }
      
      private final function _DomainsMissingDataCallout_HRule1_i() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 116 + 12 + 91);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 51 + 22 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_DomainsMissingDataCallout_HRule1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsMissingDataCallout_HRule1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsMissingDataCallout_HRule1",this._DomainsMissingDataCallout_HRule1);
         return _loc1_;
      }
      
      private final function _DomainsMissingDataCallout_Label2_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Exact Match Domain Names:";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DomainsMissingDataCallout_DomainsGroup1_i() : DomainsGroup
      {
         var _loc1_:DomainsGroup = new DomainsGroup();
         _loc1_.id = "_DomainsMissingDataCallout_DomainsGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsMissingDataCallout_DomainsGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsMissingDataCallout_DomainsGroup1",this._DomainsMissingDataCallout_DomainsGroup1);
         return _loc1_;
      }
      
      private final function _DomainsMissingDataCallout_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-((§§pop() * 108 * 50 + 1) * 92 - 1) + 103);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DomainsMissingDataCallout_Label3_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Hyphenated Domain Names:";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DomainsMissingDataCallout_DomainsGroup2_i() : DomainsGroup
      {
         var _loc1_:DomainsGroup = new DomainsGroup();
         _loc1_.id = "_DomainsMissingDataCallout_DomainsGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsMissingDataCallout_DomainsGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsMissingDataCallout_DomainsGroup2",this._DomainsMissingDataCallout_DomainsGroup2);
         return _loc1_;
      }
      
      private final function _DomainsMissingDataCallout_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 26 - 1 + 1) * 45 + 35);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(§§pop() + 68 - 1 - 1 - 28));
         }
         §§pop().height = §§pop();
         _loc1_.label = "Fetch Now";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 103 + 1 + 116);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___DomainsMissingDataCallout_Button1_click);
         _loc1_.id = "_DomainsMissingDataCallout_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainsMissingDataCallout_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainsMissingDataCallout_Button1",this._DomainsMissingDataCallout_Button1);
         return _loc1_;
      }
      
      public final function ___DomainsMissingDataCallout_Button1_click(param1:MouseEvent) : void
      {
         this.onClickFetchNow(param1);
      }
      
      public final function ___DomainsMissingDataCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___DomainsMissingDataCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      private final function _DomainsMissingDataCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 87 - 1 - 1 - 111 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            §§push(model.selectedKeywordCollection.missingDomainAvailabilityCount);
            §§push(0);
            if(_loc2_)
            {
               §§push(-(§§pop() * 96) - 1 + 1 + 33 + 1);
            }
            var _loc1_:* = §§pop() > §§pop()?"missingData":"edit";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.currentState");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 73));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.selectedKeywordCollection.missingDomainAvailabilityCount + " of " + model.selectedKeywordCollection.length + " keywords are missing domain availability.";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_DomainsMissingDataCallout_Label1.text");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 53 + 69 + 111);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainExtensionOptions
         {
            return model.selectedKeywordCollection.project.domainsExactMatchExtensions;
         },null,"_DomainsMissingDataCallout_DomainsGroup1.domainsHyphenatedExtensions");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1 + 0 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainExtensionOptions
         {
            return model.selectedKeywordCollection.project.domainsHyphenatedExtensions;
         },null,"_DomainsMissingDataCallout_DomainsGroup2.domainsHyphenatedExtensions");
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
