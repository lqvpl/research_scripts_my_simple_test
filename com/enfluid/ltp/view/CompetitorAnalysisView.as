package com.enfluid.ltp.view
{
   import spark.components.VGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import com.enfluid.ltp.view.components.CompetitorAnalysisFooterComponent;
   import com.enfluid.ltp.view.components.CompetitorAnalysisHeaderComponent;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.collections.IList;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.CompetitorColumnsVO;
   import mx.binding.BindingManager;
   import flash.utils.setTimeout;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class CompetitorAnalysisView extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _3029410body:CompetitorAnalysisContentComponent;
      
      private var _1268861541footer:CompetitorAnalysisFooterComponent;
      
      private var _1221270899header:CompetitorAnalysisHeaderComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      private const tmpPadding:int = 0;
      
      private var averages:Object;
      
      private var _1804607247competitorColumns:IList;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CompetitorAnalysisView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         §§push(this);
         §§push("keywordavg");
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 73 + 1 - 1));
         }
         §§push("pageauthorityavg");
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() + 1 + 88 + 1 - 73);
         }
         §§push("juicelinksavg");
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 117 + 69 + 9 - 1));
         }
         §§push("domainauthorityavg");
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1) - 1 - 111);
         }
         §§push("mozrankavg");
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 46 + 1) * 38 + 1) * 72 - 1);
         }
         §§push("pagerankavg");
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 0 + 80);
         }
         §§push("siteageavg");
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 23 + 64 + 45 - 117 + 1 + 1);
         }
         §§pop().averages = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._CompetitorAnalysisView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_CompetitorAnalysisViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CompetitorAnalysisView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-((§§pop() - 1) * 5) - 35);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(10);
         if(_loc4_)
         {
            §§push(((§§pop() + 111) * 63 - 66 + 52 - 23) * 88);
         }
         §§pop().paddingLeft = §§pop();
         §§push(this);
         §§push(10);
         if(_loc4_)
         {
            §§push((§§pop() + 1 - 25) * 74 + 108);
         }
         §§pop().paddingRight = §§pop();
         §§push(this);
         §§push(0);
         if(_loc4_)
         {
            §§push(((§§pop() + 1) * 112 + 1 + 104 + 1 + 1) * 100);
         }
         §§pop().gap = §§pop();
         this.mxmlContent = [this._CompetitorAnalysisView_CompetitorAnalysisHeaderComponent1_i(),this._CompetitorAnalysisView_CompetitorAnalysisContentComponent1_i(),this._CompetitorAnalysisView_CompetitorAnalysisFooterComponent1_i()];
         this.addEventListener("creationComplete",this.___CompetitorAnalysisView_VGroup1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 0 - 77 + 1 - 1 - 72) * 32);
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
         CompetitorAnalysisView._watcherSetupUtil = param1;
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
      
      protected final function creationCompleteHandler(param1:FlexEvent) : void
      {
         var _loc2_:CompetitorColumnsVO = new CompetitorColumnsVO();
         this.keyword.competitorAnalysisColumns = _loc2_;
      }
      
      private final function _CompetitorAnalysisView_CompetitorAnalysisHeaderComponent1_i() : CompetitorAnalysisHeaderComponent
      {
         var _loc1_:CompetitorAnalysisHeaderComponent = new CompetitorAnalysisHeaderComponent();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 33 - 2) * 20 * 46) + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc3_)
         {
            §§push(§§pop() * 103 - 1 + 1 - 59);
         }
         §§pop().height = §§pop();
         _loc1_.addEventListener("creationComplete",this.__header_creationComplete);
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      public final function __header_creationComplete(param1:FlexEvent) : void
      {
         this.competitorColumns = this.header.columns;
      }
      
      private final function _CompetitorAnalysisView_CompetitorAnalysisContentComponent1_i() : CompetitorAnalysisContentComponent
      {
         var _loc1_:CompetitorAnalysisContentComponent = new CompetitorAnalysisContentComponent();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 42 + 14 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-(§§pop() - 27 + 105) + 1) * 51);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "body";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.body = _loc1_;
         BindingManager.executeBindings(this,"body",this.body);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisView_CompetitorAnalysisFooterComponent1_i() : CompetitorAnalysisFooterComponent
      {
         var _loc1_:CompetitorAnalysisFooterComponent = new CompetitorAnalysisFooterComponent();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 108 + 44 + 1 + 2 + 107 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 69 + 1 + 1 - 21));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "footer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.footer = _loc1_;
         BindingManager.executeBindings(this,"footer",this.footer);
         return _loc1_;
      }
      
      public final function ___CompetitorAnalysisView_VGroup1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private final function _CompetitorAnalysisView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 27) - 35) * 66);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"header.keyword","keyword");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(((§§pop() - 1 + 1) * 35 - 88) * 14 + 1 + 81);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return competitorColumns;
         },null,"body.headerColumns");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(--§§pop() - 24 + 1 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"body.keyword","keyword");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 21 - 1 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return competitorColumns;
         },null,"footer.headerColumns");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1) + 1 + 94);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"footer.keyword","keyword");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get body() : CompetitorAnalysisContentComponent
      {
         return this._3029410body;
      }
      
      public function set body(param1:CompetitorAnalysisContentComponent) : void
      {
         var _loc2_:Object = this._3029410body;
         if(_loc2_ !== param1)
         {
            this._3029410body = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"body",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get footer() : CompetitorAnalysisFooterComponent
      {
         return this._1268861541footer;
      }
      
      public function set footer(param1:CompetitorAnalysisFooterComponent) : void
      {
         var _loc2_:Object = this._1268861541footer;
         if(_loc2_ !== param1)
         {
            this._1268861541footer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"footer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : CompetitorAnalysisHeaderComponent
      {
         return this._1221270899header;
      }
      
      public function set header(param1:CompetitorAnalysisHeaderComponent) : void
      {
         var _loc2_:Object = this._1221270899header;
         if(_loc2_ !== param1)
         {
            this._1221270899header = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keyword() : KeywordVO
      {
         return this._814408215keyword;
      }
      
      public function set keyword(param1:KeywordVO) : void
      {
         var _loc2_:Object = this._814408215keyword;
         if(_loc2_ !== param1)
         {
            this._814408215keyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keyword",_loc2_,param1));
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
      private function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      private function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get competitorColumns() : IList
      {
         return this._1804607247competitorColumns;
      }
      
      private function set competitorColumns(param1:IList) : void
      {
         var _loc2_:Object = this._1804607247competitorColumns;
         if(_loc2_ !== param1)
         {
            this._1804607247competitorColumns = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"competitorColumns",_loc2_,param1));
            }
         }
      }
   }
}
