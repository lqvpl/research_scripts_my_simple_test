package com.enfluid.ltp.view.missingdatacallouts
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.components.AvgDelayComponent;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchMissingGoogleTitleCompetitionCommand;
   import spark.events.PopUpEvent;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.setTimeout;
   import flash.utils.ByteArray;
   import flash.events.Event;
   import spark.layouts.VerticalLayout;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import system.data.Map;
   import system.data.Iterator;
   import mx.controls.HRule;
   import spark.primitives.BitmapImage;
   import mx.binding.Binding;
   import assets.TextAssets;
   import spark.components.Group;
   import com.enfluid.ltp.view.renderers.headers.KeywordColumnHeaderContent;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   import com.enfluid.ltp.view.filterviews.ProjectFilterView;
   import com.enfluid.ltp.view.filterviews.SuggestedBidFilterView;
   import com.enfluid.ltp.view.filterviews.LocalSearchesFilterView;
   import com.enfluid.ltp.view.filterviews.GlobalSearchesFilterView;
   import com.enfluid.ltp.view.filterviews.AdvertizerCompetitionFilterView;
   import com.enfluid.ltp.view.filterviews.NumWordsFilterView;
   import com.enfluid.ltp.view.filterviews.GoogleTitleCompetitionFilterView;
   import com.enfluid.ltp.view.filterviews.BingTitleCompetitionFilterView;
   import com.enfluid.ltp.view.filterviews.DomainAvailabilityFilterView;
   import com.enfluid.ltp.view.filterviews.AvgKCFilterView;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import mx.events.FlexMouseEvent;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.RankChecker.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.PropertyChangeEvent;
   import spark.components.HGroup;
   
   use namespace mx_internal;
   
   public final class GoogleTitleCompMissingDataCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _714701131_GoogleTitleCompMissingDataCallout_AvgDelayComponent1:AvgDelayComponent;
      
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
            §§push((--(§§pop() + 119) + 1) * 97 + 11);
         }
         §§pop().percentWidth = §§pop();
         this.verticalPosition = "after";
         this.layout = this._GoogleTitleCompMissingDataCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GoogleTitleCompMissingDataCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___GoogleTitleCompMissingDataCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___GoogleTitleCompMissingDataCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 90 + 1 + 99 + 61);
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
         if(_loc2_)
         {
            §§push(§§pop() * 42 * 38 - 1 - 37 - 81 + 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() - 0) * 81 * 10 - 48);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) * 18) + 1 - 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(§§pop() + 105 - 50));
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _GoogleTitleCompMissingDataCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._GoogleTitleCompMissingDataCallout_Label1_i(),this._GoogleTitleCompMissingDataCallout_HRule1_c(),this._GoogleTitleCompMissingDataCallout_AvgDelayComponent1_i(),this._GoogleTitleCompMissingDataCallout_Button1_c()];
         return _loc1_;
      }
      
      private final function _GoogleTitleCompMissingDataCallout_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 1);
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
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1 + 42) * 12);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push((-(§§pop() * 60 - 5) - 47) * 16 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GoogleTitleCompMissingDataCallout_AvgDelayComponent1_i() : AvgDelayComponent
      {
         var _loc1_:AvgDelayComponent = new AvgDelayComponent();
         _loc1_.id = "_GoogleTitleCompMissingDataCallout_AvgDelayComponent1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._GoogleTitleCompMissingDataCallout_AvgDelayComponent1 = _loc1_;
         BindingManager.executeBindings(this,"_GoogleTitleCompMissingDataCallout_AvgDelayComponent1",this._GoogleTitleCompMissingDataCallout_AvgDelayComponent1);
         return _loc1_;
      }
      
      private final function _GoogleTitleCompMissingDataCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() - 46 + 1) * 46);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(§§pop() * 115 + 1 + 28 - 45 - 100);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Fetch Now";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 114 + 1 - 40);
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
         if(_loc3_)
         {
            §§push((§§pop() + 95) * 36 * 13 + 1 - 1 + 46 + 21);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.selectedKeywordCollection.missingGoogleTitleCompCount + " of " + model.selectedKeywordCollection.length + " keywords are missing Google Title Competition.";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_GoogleTitleCompMissingDataCallout_Label1.text");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 118) * 28 * 50);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return model.selectedKeywordCollection.project.googleTitleCompAvgDelay;
         },null,"_GoogleTitleCompMissingDataCallout_AvgDelayComponent1.avgDelay");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 71) * 1 * 116 - 1 - 36 - 2);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _GoogleTitleCompMissingDataCallout_AvgDelayComponent1.avgDelay;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.googleTitleCompAvgDelay = param1;
         },"model.selectedKeywordCollection.project.googleTitleCompAvgDelay");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 24 * 113 - 1 + 116);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(((§§pop() + 90 - 115) * 110 - 68) * 67 * 66);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 85 + 1 - 87 + 112);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 17 - 99 + 1) - 3 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 61) * 39 * 1 + 1 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _GoogleTitleCompMissingDataCallout_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedKeywordCollection.project.googleTitleCompAvgDelay = this._GoogleTitleCompMissingDataCallout_AvgDelayComponent1.avgDelay;
      }
      
      [Bindable(event="propertyChange")]
      public function get _GoogleTitleCompMissingDataCallout_AvgDelayComponent1() : AvgDelayComponent
      {
         return this._714701131_GoogleTitleCompMissingDataCallout_AvgDelayComponent1;
      }
      
      public function set _GoogleTitleCompMissingDataCallout_AvgDelayComponent1(param1:AvgDelayComponent) : void
      {
         var _loc2_:Object = this._714701131_GoogleTitleCompMissingDataCallout_AvgDelayComponent1;
         if(_loc2_ !== param1)
         {
            this._714701131_GoogleTitleCompMissingDataCallout_AvgDelayComponent1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_GoogleTitleCompMissingDataCallout_AvgDelayComponent1",_loc2_,param1));
            }
         }
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
