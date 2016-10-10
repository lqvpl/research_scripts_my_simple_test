package com.enfluid.ltp.view.components
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.collections.ArrayList;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import spark.events.GridEvent;
   import mx.collections.SortField;
   import mx.collections.Sort;
   import mx.collections.ArrayCollection;
   import flash.events.Event;
   import spark.primitives.Rect;
   import mx.graphics.LinearGradientStroke;
   import spark.components.Group;
   import flash.events.MouseEvent;
   import mx.graphics.SolidColor;
   import mx.binding.Binding;
   import assets.TextAssets;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class CompetitorAnalysisHeaderComponent extends LTPCustomGrid implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1545751317domainAuthorityColumn:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
      
      private var _2006896272juiceLinkColumn:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
      
      private var _1453001375keywordColumn:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
      
      private var _2111946714mozRankColumn:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
      
      private var _624882198pageAuthorityColumn:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
      
      private var _1797217313pageLinkColumn:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
      
      private var _1401564527pageRankColumn:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
      
      private var _305807954siteAgeColumn:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
      
      private var _816745051urlColumn:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CompetitorAnalysisHeaderComponent()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._CompetitorAnalysisHeaderComponent_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_CompetitorAnalysisHeaderComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CompetitorAnalysisHeaderComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(§§pop() * 81 - 46 - 1 + 1 - 1 + 31);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push((§§pop() + 1) * 90 + 1);
         }
         §§pop().percentHeight = §§pop();
         this.visible = true;
         this.columns = this._CompetitorAnalysisHeaderComponent_ArrayList1_c();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 + 37) * 56 - 1 + 101);
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
         CompetitorAnalysisHeaderComponent._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.textAlign = "left";
            this.horizontalScrollPolicy = "off";
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ArrayList1_c() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.source = [this._CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn1_i(),this._CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn2_i(),this._CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn3_i(),this._CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn4_i(),this._CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn5_i(),this._CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn6_i(),this._CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn7_i(),this._CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn8_i(),this._CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn9_i()];
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn1_i() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn = new com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn();
         _loc1_.align = "left";
         _loc1_.headerText = "Title and URL";
         _loc1_.headerRenderer = this._CompetitorAnalysisHeaderComponent_ClassFactory1_c();
         this.urlColumn = _loc1_;
         BindingManager.executeBindings(this,"urlColumn",this.urlColumn);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn2_i() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn = new com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Keyword\rCompetitiveness";
         _loc1_.headerRenderer = this._CompetitorAnalysisHeaderComponent_ClassFactory2_c();
         this.keywordColumn = _loc1_;
         BindingManager.executeBindings(this,"keywordColumn",this.keywordColumn);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn3_i() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn = new com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Page\rAuthority";
         _loc1_.headerRenderer = this._CompetitorAnalysisHeaderComponent_ClassFactory3_c();
         this.pageAuthorityColumn = _loc1_;
         BindingManager.executeBindings(this,"pageAuthorityColumn",this.pageAuthorityColumn);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn4_i() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn = new com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Page\rLinks";
         _loc1_.headerRenderer = this._CompetitorAnalysisHeaderComponent_ClassFactory4_c();
         this.pageLinkColumn = _loc1_;
         BindingManager.executeBindings(this,"pageLinkColumn",this.pageLinkColumn);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn5_i() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn = new com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Juice\rLinks";
         _loc1_.headerRenderer = this._CompetitorAnalysisHeaderComponent_ClassFactory5_c();
         this.juiceLinkColumn = _loc1_;
         BindingManager.executeBindings(this,"juiceLinkColumn",this.juiceLinkColumn);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn6_i() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn = new com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Domain\rAuthority";
         _loc1_.headerRenderer = this._CompetitorAnalysisHeaderComponent_ClassFactory6_c();
         this.domainAuthorityColumn = _loc1_;
         BindingManager.executeBindings(this,"domainAuthorityColumn",this.domainAuthorityColumn);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn7_i() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn = new com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Moz\rRank";
         _loc1_.headerRenderer = this._CompetitorAnalysisHeaderComponent_ClassFactory7_c();
         this.mozRankColumn = _loc1_;
         BindingManager.executeBindings(this,"mozRankColumn",this.mozRankColumn);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn8_i() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn = new com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Page\rRank";
         _loc1_.headerRenderer = this._CompetitorAnalysisHeaderComponent_ClassFactory8_c();
         this.pageRankColumn = _loc1_;
         BindingManager.executeBindings(this,"pageRankColumn",this.pageRankColumn);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ClassFactory8_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_CompetitorAnalysisGridColumn9_i() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn = new com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Site\rAge";
         _loc1_.headerRenderer = this._CompetitorAnalysisHeaderComponent_ClassFactory9_c();
         this.siteAgeColumn = _loc1_;
         BindingManager.executeBindings(this,"siteAgeColumn",this.siteAgeColumn);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_ClassFactory9_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-((§§pop() - 19) * 51) - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.28;
         },null,"urlColumn.width");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() - 1) * 96 * 101 - 56 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_PAGE_TITLE_AND_URL_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"urlColumn.helpTitle");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 0 - 1 + 1 + 25);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_PAGE_TITLE_AND_URL;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"urlColumn.helpContent");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(--(-(§§pop() * 37 - 1) - 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.09;
         },null,"keywordColumn.width");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() * 66 + 1) * 110 - 107 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_KEYWORD_COMPETITIVENESS_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordColumn.helpTitle");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() + 21 + 1 + 1) * 87 - 7 - 23);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_KEYWORD_COMPETITIVENESS;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordColumn.helpContent");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() + 28 + 1) * 97 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.09;
         },null,"pageAuthorityColumn.width");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 84) - 1) - 6);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_PAGE_AUTHORITY_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"pageAuthorityColumn.helpTitle");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() - 80 + 74) * 72);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_PAGE_AUTHORITY;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"pageAuthorityColumn.helpContent");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.09;
         },null,"pageLinkColumn.width");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push((-§§pop() + 57) * 23 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_PAGE_LINKS_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"pageLinkColumn.helpTitle");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(--(§§pop() * 94 * 88));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_PAGE_LINKS;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"pageLinkColumn.helpContent");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(((§§pop() + 15 + 20) * 19 - 14 + 40) * 108));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.09;
         },null,"juiceLinkColumn.width");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 38 + 8) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_JUICE_LINKS_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"juiceLinkColumn.helpTitle");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() + 113 - 1 + 1) * 24 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_JUICE_LINKS;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"juiceLinkColumn.helpContent");
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1 + 1 - 81 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.09;
         },null,"domainAuthorityColumn.width");
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) - 75) + 1 - 1 + 2);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_DOMAIN_AUTHORITY_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"domainAuthorityColumn.helpTitle");
         §§push(result);
         §§push(17);
         if(_loc2_)
         {
            §§push((§§pop() * 46 + 1 - 1 - 1) * 22);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_DOMAIN_AUTHORITY;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"domainAuthorityColumn.helpContent");
         §§push(result);
         §§push(18);
         if(_loc2_)
         {
            §§push(-(--§§pop() + 1 - 49));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.09;
         },null,"mozRankColumn.width");
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 101 + 112 + 78 - 108 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_MOZ_RANK_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"mozRankColumn.helpTitle");
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 1 + 1 + 100 + 1 + 99);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SEO_MOZ_RANK;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"mozRankColumn.helpContent");
         §§push(result);
         §§push(21);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.09;
         },null,"pageRankColumn.width");
         §§push(result);
         §§push(22);
         if(_loc2_)
         {
            §§push(§§pop() - 6 - 86 - 104);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_PAGE_RANK_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"pageRankColumn.helpTitle");
         §§push(result);
         §§push(23);
         if(_loc3_)
         {
            §§push((§§pop() * 1 + 94) * 43 - 109 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_PAGE_RANK;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"pageRankColumn.helpContent");
         §§push(result);
         §§push(24);
         if(_loc3_)
         {
            §§push((§§pop() - 97 + 24) * 1 - 1 + 29 + 78 - 10);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.09;
         },null,"siteAgeColumn.width");
         §§push(result);
         §§push(25);
         if(_loc2_)
         {
            §§push((§§pop() + 38 - 1 - 92 - 17 + 81) * 111 - 36);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SITE_AGE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"siteAgeColumn.helpTitle");
         §§push(result);
         §§push(26);
         if(_loc3_)
         {
            §§push((§§pop() * 73 * 6 - 82) * 70);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SITE_AGE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"siteAgeColumn.helpContent");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get domainAuthorityColumn() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         return this._1545751317domainAuthorityColumn;
      }
      
      public function set domainAuthorityColumn(param1:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._1545751317domainAuthorityColumn;
         if(_loc2_ !== param1)
         {
            this._1545751317domainAuthorityColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainAuthorityColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get juiceLinkColumn() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         return this._2006896272juiceLinkColumn;
      }
      
      public function set juiceLinkColumn(param1:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._2006896272juiceLinkColumn;
         if(_loc2_ !== param1)
         {
            this._2006896272juiceLinkColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"juiceLinkColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordColumn() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         return this._1453001375keywordColumn;
      }
      
      public function set keywordColumn(param1:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._1453001375keywordColumn;
         if(_loc2_ !== param1)
         {
            this._1453001375keywordColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozRankColumn() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         return this._2111946714mozRankColumn;
      }
      
      public function set mozRankColumn(param1:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._2111946714mozRankColumn;
         if(_loc2_ !== param1)
         {
            this._2111946714mozRankColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozRankColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageAuthorityColumn() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         return this._624882198pageAuthorityColumn;
      }
      
      public function set pageAuthorityColumn(param1:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._624882198pageAuthorityColumn;
         if(_loc2_ !== param1)
         {
            this._624882198pageAuthorityColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageAuthorityColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageLinkColumn() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         return this._1797217313pageLinkColumn;
      }
      
      public function set pageLinkColumn(param1:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._1797217313pageLinkColumn;
         if(_loc2_ !== param1)
         {
            this._1797217313pageLinkColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageLinkColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageRankColumn() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         return this._1401564527pageRankColumn;
      }
      
      public function set pageRankColumn(param1:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._1401564527pageRankColumn;
         if(_loc2_ !== param1)
         {
            this._1401564527pageRankColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageRankColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get siteAgeColumn() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         return this._305807954siteAgeColumn;
      }
      
      public function set siteAgeColumn(param1:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._305807954siteAgeColumn;
         if(_loc2_ !== param1)
         {
            this._305807954siteAgeColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"siteAgeColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urlColumn() : com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn
      {
         return this._816745051urlColumn;
      }
      
      public function set urlColumn(param1:com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._816745051urlColumn;
         if(_loc2_ !== param1)
         {
            this._816745051urlColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlColumn",_loc2_,param1));
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
   }
}
