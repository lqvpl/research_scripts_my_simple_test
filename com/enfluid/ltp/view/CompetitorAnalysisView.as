package com.enfluid.ltp.view
{
   import spark.components.VGroup;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import com.adobe.cairngorm.observer.Observe;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import com.enfluid.ltp.view.components.majestic.CompetitorMajesticAnalysisContentComponent;
   import com.enfluid.ltp.view.components.CompetitorAnalysisFooterComponent;
   import com.enfluid.ltp.view.components.majestic.CompetitorMajesticAnalysisFooterComponent;
   import com.enfluid.ltp.view.components.CompetitorAnalysisHeaderComponent;
   import com.enfluid.ltp.view.components.majestic.CompetitorMajesticAnalysisHeaderComponent;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.collections.IList;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.CompetitorColumnsVO;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   import spark.primitives.Rect;
   import spark.components.Image;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class CompetitorAnalysisView extends VGroup implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CompetitorAnalysisView_Observe1:Observe;
      
      public var _CompetitorAnalysisView_Observe2:Observe;
      
      private var _3029410body:CompetitorAnalysisContentComponent;
      
      private var _93911759body1:CompetitorMajesticAnalysisContentComponent;
      
      private var _1268861541footer:CompetitorAnalysisFooterComponent;
      
      private var _680002058footer1:CompetitorMajesticAnalysisFooterComponent;
      
      private var _1221270899header:CompetitorAnalysisHeaderComponent;
      
      private var _795307844header1:CompetitorMajesticAnalysisHeaderComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      private const tmpPadding:int = 0;
      
      private var averages:Object;
      
      private var _1804607247competitorColumns:IList;
      
      private var _798642587competitorColumnsMajestic:IList;
      
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
         if(_loc3_)
         {
            §§push(-(§§pop() * 2) * 71 + 1 - 1);
         }
         §§push("pageauthorityavg");
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 65 + 1 + 1 + 1) * 99);
         }
         §§push("juicelinksavg");
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 3 + 78 + 30);
         }
         §§push("domainauthorityavg");
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 15 + 1 + 38 + 10 - 109 + 1);
         }
         §§push("mozrankavg");
         §§push(0);
         if(_loc4_)
         {
            §§push(---(-((§§pop() - 1) * 105) + 78));
         }
         §§push("pagerankavg");
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 1) + 1) * 11);
         }
         §§push("siteageavg");
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 12) * 33 - 96 + 1 - 1 - 1);
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
            §§push(§§pop() + 95 + 74 - 67 - 27);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(10);
         if(_loc3_)
         {
            §§push(-((§§pop() + 30) * 11));
         }
         §§pop().paddingLeft = §§pop();
         §§push(this);
         §§push(10);
         if(_loc4_)
         {
            §§push(-(§§pop() - 1 + 1 + 6) * 106 - 1);
         }
         §§pop().paddingRight = §§pop();
         this.currentState = "majestic";
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 59 + 1 + 109 - 1 + 1) * 7));
         }
         §§pop().gap = §§pop();
         this.mxmlContent = [];
         this._CompetitorAnalysisView_Observe1_i();
         this._CompetitorAnalysisView_Observe2_i();
         this.addEventListener("creationComplete",this.___CompetitorAnalysisView_VGroup1_creationComplete);
         this.addEventListener("preinitialize",this.___CompetitorAnalysisView_VGroup1_preinitialize);
         var _CompetitorAnalysisView_CompetitorAnalysisContentComponent1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisView_CompetitorAnalysisContentComponent1_i);
         var _CompetitorAnalysisView_CompetitorAnalysisFooterComponent1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisView_CompetitorAnalysisFooterComponent1_i);
         var _CompetitorAnalysisView_CompetitorAnalysisHeaderComponent1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisView_CompetitorAnalysisHeaderComponent1_i);
         var _CompetitorAnalysisView_CompetitorMajesticAnalysisContentComponent1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisView_CompetitorMajesticAnalysisContentComponent1_i);
         var _CompetitorAnalysisView_CompetitorMajesticAnalysisFooterComponent1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisView_CompetitorMajesticAnalysisFooterComponent1_i);
         var _CompetitorAnalysisView_CompetitorMajesticAnalysisHeaderComponent1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CompetitorAnalysisView_CompetitorMajesticAnalysisHeaderComponent1_i);
         states = [new State({
            "name":"moz",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisView_CompetitorAnalysisFooterComponent1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisView_CompetitorAnalysisContentComponent1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisView_CompetitorAnalysisHeaderComponent1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"majestic",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisView_CompetitorMajesticAnalysisFooterComponent1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisView_CompetitorMajesticAnalysisContentComponent1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new AddItems().initializeFromObject({
               "itemsFactory":_CompetitorAnalysisView_CompetitorMajesticAnalysisHeaderComponent1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1);
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
      
      protected final function preInit() : void
      {
      }
      
      protected final function changeProject(param1:*) : void
      {
         currentState = this.model.selectedProject.source == "majestic"?"majestic":"moz";
      }
      
      protected final function creationCompleteHandler(param1:FlexEvent) : void
      {
         currentState = this.keyword.source == "majestic"?"majestic":"moz";
         var _loc2_:CompetitorColumnsVO = new CompetitorColumnsVO();
         this.keyword.competitorAnalysisColumns = _loc2_;
      }
      
      protected final function checkExpanded(param1:*) : void
      {
         if(this.keyword && this.keyword.isExpanded)
         {
            currentState = this.keyword.source == "majestic"?"majestic":"moz";
         }
      }
      
      private final function _CompetitorAnalysisView_Observe1_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._CompetitorAnalysisView_Observe1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisView_Observe1",this._CompetitorAnalysisView_Observe1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisView_Observe2_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._CompetitorAnalysisView_Observe2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisView_Observe2",this._CompetitorAnalysisView_Observe2);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisView_CompetitorAnalysisHeaderComponent1_i() : CompetitorAnalysisHeaderComponent
      {
         var _loc1_:CompetitorAnalysisHeaderComponent = new CompetitorAnalysisHeaderComponent();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc2_)
         {
            §§push(§§pop() - 44 + 1 + 1);
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
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 63) * 75 + 53 + 111 + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 73) + 1 + 1 - 1 + 1);
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
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 6 - 94 - 4);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 27 + 1) - 114);
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
      
      private final function _CompetitorAnalysisView_CompetitorMajesticAnalysisHeaderComponent1_i() : CompetitorMajesticAnalysisHeaderComponent
      {
         var _loc1_:CompetitorMajesticAnalysisHeaderComponent = new CompetitorMajesticAnalysisHeaderComponent();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() + 1 - 22) * 1 - 30));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 64 - 30 + 2 + 1 + 1) * 6);
         }
         §§pop().height = §§pop();
         _loc1_.addEventListener("creationComplete",this.__header1_creationComplete);
         _loc1_.id = "header1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header1 = _loc1_;
         BindingManager.executeBindings(this,"header1",this.header1);
         return _loc1_;
      }
      
      public final function __header1_creationComplete(param1:FlexEvent) : void
      {
         this.competitorColumnsMajestic = this.header1.columns;
      }
      
      private final function _CompetitorAnalysisView_CompetitorMajesticAnalysisContentComponent1_i() : CompetitorMajesticAnalysisContentComponent
      {
         var _loc1_:CompetitorMajesticAnalysisContentComponent = new CompetitorMajesticAnalysisContentComponent();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1) * 119 * 77 + 82);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(-§§pop() * 44) + 1 + 76) * 117 - 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "body1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.body1 = _loc1_;
         BindingManager.executeBindings(this,"body1",this.body1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisView_CompetitorMajesticAnalysisFooterComponent1_i() : CompetitorMajesticAnalysisFooterComponent
      {
         var _loc1_:CompetitorMajesticAnalysisFooterComponent = new CompetitorMajesticAnalysisFooterComponent();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 14) * 97) + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() + 86) - 21);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "footer1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.footer1 = _loc1_;
         BindingManager.executeBindings(this,"footer1",this.footer1);
         return _loc1_;
      }
      
      public final function ___CompetitorAnalysisView_VGroup1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      public final function ___CompetitorAnalysisView_VGroup1_preinitialize(param1:FlexEvent) : void
      {
         this.preInit();
      }
      
      private final function _CompetitorAnalysisView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 25 * 75));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return model.preferences.selectedProjectID;
         },null,"_CompetitorAnalysisView_Observe1.source");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() + 73) * 73 * 67 - 73 + 88));
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return changeProject;
         },null,"_CompetitorAnalysisView_Observe1.handler");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 29 - 1) * 11 * 116);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return keyword.isExpanded;
         },null,"_CompetitorAnalysisView_Observe2.source");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 18) * 66 - 49 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return checkExpanded;
         },null,"_CompetitorAnalysisView_Observe2.handler");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() - 44 + 1) - 76 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"header.keyword","keyword");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 + 86 + 1 - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return competitorColumns;
         },null,"body.headerColumns");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((§§pop() - 80) * 18 * 42 - 1 - 54 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"body.keyword","keyword");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 34 * 10 + 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return competitorColumns;
         },null,"footer.headerColumns");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(--(§§pop() - 11 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"footer.keyword","keyword");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() * 87 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"header1.keyword","keyword");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 33) * 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return competitorColumnsMajestic;
         },null,"body1.headerColumns");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"body1.keyword","keyword");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 106 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return competitorColumnsMajestic;
         },null,"footer1.headerColumns");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 35 + 98 - 1 - 1 + 41) * 83);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"footer1.keyword","keyword");
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
      public function get body1() : CompetitorMajesticAnalysisContentComponent
      {
         return this._93911759body1;
      }
      
      public function set body1(param1:CompetitorMajesticAnalysisContentComponent) : void
      {
         var _loc2_:Object = this._93911759body1;
         if(_loc2_ !== param1)
         {
            this._93911759body1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"body1",_loc2_,param1));
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
      public function get footer1() : CompetitorMajesticAnalysisFooterComponent
      {
         return this._680002058footer1;
      }
      
      public function set footer1(param1:CompetitorMajesticAnalysisFooterComponent) : void
      {
         var _loc2_:Object = this._680002058footer1;
         if(_loc2_ !== param1)
         {
            this._680002058footer1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"footer1",_loc2_,param1));
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
      public function get header1() : CompetitorMajesticAnalysisHeaderComponent
      {
         return this._795307844header1;
      }
      
      public function set header1(param1:CompetitorMajesticAnalysisHeaderComponent) : void
      {
         var _loc2_:Object = this._795307844header1;
         if(_loc2_ !== param1)
         {
            this._795307844header1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"header1",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      private function get competitorColumnsMajestic() : IList
      {
         return this._798642587competitorColumnsMajestic;
      }
      
      private function set competitorColumnsMajestic(param1:IList) : void
      {
         var _loc2_:Object = this._798642587competitorColumnsMajestic;
         if(_loc2_ !== param1)
         {
            this._798642587competitorColumnsMajestic = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"competitorColumnsMajestic",_loc2_,param1));
            }
         }
      }
   }
}
