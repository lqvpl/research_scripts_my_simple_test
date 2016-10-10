package com.enfluid.ltp.view.missingdatacallouts
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.hurlant.math.bi_internal;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.AdvertiserCompetitionValues;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import com.enfluid.ltp.controller.common.FetchCompetitorUrls;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticCacheKcCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticBatchPagesDataCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticDomainsBulkKcCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticPagesBulkKcCommand;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.competitoranalysis.FetchMissingAmazonKCCommand;
   import mx.graphics.SolidColor;
   import spark.events.PopUpEvent;
   import flash.events.Event;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import spark.layouts.VerticalLayout;
   import spark.components.HGroup;
   import com.enfluid.ltp.view.components.HelpButton;
   import mx.collections.ArrayCollection;
   import mx.controls.HRule;
   import spark.components.Image;
   import spark.components.PopUpAnchor;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.controls.Spacer;
   import mx.events.FlexMouseEvent;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass9;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.rpc.http.HTTPService;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace bi_internal;
   use namespace mx_internal;
   
   public final class AmazonKCMissingDataCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _AmazonKCMissingDataCallout_Label2:Label;
      
      private var _684647380numMissingLabel:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function AmazonKCMissingDataCallout()
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
         var bindings:Array = this._AmazonKCMissingDataCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_missingdatacallouts_AmazonKCMissingDataCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AmazonKCMissingDataCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(300);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 1 - 46 - 1);
         }
         §§pop().width = §§pop();
         this.verticalPosition = "after";
         this.layout = this._AmazonKCMissingDataCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._AmazonKCMissingDataCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___AmazonKCMissingDataCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___AmazonKCMissingDataCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 89 + 1 - 1);
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
         AmazonKCMissingDataCallout._watcherSetupUtil = param1;
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
         new FetchMissingAmazonKCCommand().execute();
         this.close();
      }
      
      protected final function calloutCloseHandler(param1:PopUpEvent) : void
      {
         dispatchEvent(new Event("calloutCloseEvent"));
      }
      
      protected final function calcProcessingTime(param1:int) : String
      {
         §§push(param1);
         §§push(10);
         if(_loc6_)
         {
            §§push(§§pop() * 87 + 1 - 118 - 53);
         }
         var _loc2_:int = §§pop() * §§pop();
         §§push(Math);
         §§push(_loc2_);
         §§push(60);
         if(_loc6_)
         {
            §§push(((§§pop() + 67) * 9 * 31 * 106 * 113 + 77) * 26);
         }
         var _loc3_:int = §§pop().floor(§§pop() / §§pop());
         §§push(Math);
         §§push(_loc3_);
         §§push(60);
         if(_loc7_)
         {
            §§push(§§pop() - 1 - 1 + 1 - 82 + 42 + 101);
         }
         var _loc4_:int = §§pop().floor(§§pop() / §§pop());
         var _loc5_:String = "";
         §§push(_loc4_);
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() + 1 - 1) * 11);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc5_);
            §§push(_loc4_ + " hour");
            §§push(_loc4_);
            §§push(1);
            if(_loc7_)
            {
               §§push(§§pop() * 23 - 13 + 1);
            }
            _loc5_ = §§pop() + (§§pop() + (§§pop() > §§pop()?"s":"") + " ");
         }
         §§push(_loc3_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-(§§pop() - 75 - 36) + 109) - 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc5_);
            §§push(_loc3_);
            §§push(_loc4_);
            §§push(60);
            if(_loc6_)
            {
               §§push(§§pop() + 1 + 1 + 28);
            }
            §§push(§§pop() - §§pop() * §§pop() + " minute");
            §§push(_loc3_);
            §§push(1);
            if(_loc6_)
            {
               §§push(§§pop() + 81 - 3 + 107);
            }
            _loc5_ = §§pop() + (§§pop() + (§§pop() > §§pop()?"s":"") + " ");
         }
         if(!_loc4_ && §§pop() > §§pop())
         {
            §§push(_loc5_);
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(60);
            if(_loc7_)
            {
               §§push(§§pop() - 25 - 1 + 27 - 93 - 54 + 35);
            }
            _loc5_ = §§pop() + (§§pop() - §§pop() * §§pop() + " seconds ");
         }
         return _loc5_;
      }
      
      private final function _AmazonKCMissingDataCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() - 97 + 1 - 1 + 1 - 92 + 21);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((-§§pop() * 111 + 88 + 1) * 75 * 4 * 71);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 58) * 11 - 1 + 1 + 60 + 50);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-§§pop() * 89 + 1 + 1 - 71);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _AmazonKCMissingDataCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._AmazonKCMissingDataCallout_Label1_i(),this._AmazonKCMissingDataCallout_HRule1_c(),this._AmazonKCMissingDataCallout_Label2_i(),this._AmazonKCMissingDataCallout_HRule2_c(),this._AmazonKCMissingDataCallout_Button1_c(),this._AmazonKCMissingDataCallout_Spacer1_c()];
         return _loc1_;
      }
      
      private final function _AmazonKCMissingDataCallout_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 55 - 114) * 19 - 1));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "numMissingLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.numMissingLabel = _loc1_;
         BindingManager.executeBindings(this,"numMissingLabel",this.numMissingLabel);
         return _loc1_;
      }
      
      private final function _AmazonKCMissingDataCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() * 95 + 55 - 2 - 1) * 48 * 42);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 4 + 48 + 1) * 22 - 1 - 37);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _AmazonKCMissingDataCallout_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.id = "_AmazonKCMissingDataCallout_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AmazonKCMissingDataCallout_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_AmazonKCMissingDataCallout_Label2",this._AmazonKCMissingDataCallout_Label2);
         return _loc1_;
      }
      
      private final function _AmazonKCMissingDataCallout_HRule2_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() - 39 - 1 - 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1 - 97 + 57) - 107 + 56);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _AmazonKCMissingDataCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 54 + 1 - 101);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(§§pop() * 77 - 1 - 28));
         }
         §§pop().height = §§pop();
         _loc1_.label = "Fetch Now";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() + 50 + 1 - 78));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___AmazonKCMissingDataCallout_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___AmazonKCMissingDataCallout_Button1_click(param1:MouseEvent) : void
      {
         this.onClickFetchData(param1);
      }
      
      private final function _AmazonKCMissingDataCallout_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() - 25) * 39 - 111) * 44 - 8);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___AmazonKCMissingDataCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___AmazonKCMissingDataCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      private final function _AmazonKCMissingDataCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() - 117) * 8 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.selectedKeywordCollection.missingAmazonKCCount + " of " + (model.selectedKeywordCollection.length + " keywords are missing Amazon KC.");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"numMissingLabel.text");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 60 * 98 * 100 * 44 - 1 + 102);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return numMissingLabel.width;
         },null,"_AmazonKCMissingDataCallout_Label2.width");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "It will take about " + calcProcessingTime(model.selectedKeywordCollection.missingAmazonKCCount) + "to fetch Amazon KC for these keywords.  Narrowing your filters will reduce processing time";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_AmazonKCMissingDataCallout_Label2.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get numMissingLabel() : Label
      {
         return this._684647380numMissingLabel;
      }
      
      public function set numMissingLabel(param1:Label) : void
      {
         var _loc2_:Object = this._684647380numMissingLabel;
         if(_loc2_ !== param1)
         {
            this._684647380numMissingLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numMissingLabel",_loc2_,param1));
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
