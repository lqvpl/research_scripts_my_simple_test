package com.enfluid.ltp.view.components.majestic
{
   import com.enfluid.ltp.view.components.LTPCustomGrid;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
   import mx.core.IFlexModuleFactory;
   import spark.components.Label;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import spark.components.VGroup;
   import com.adobe.cairngorm.observer.Observe;
   import spark.primitives.RectangularDropShadow;
   import mx.collections.ArrayList;
   import mx.graphics.SolidColor;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass4;
   import mx.rpc.http.HTTPService;
   import mx.states.State;
   import mx.states.SetProperty;
   import flash.utils.ByteArray;
   import com.hurlant.math.BigInteger;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.SubmitAndScrapeKeywordPlannerCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.constants.Values;
   import com.photon.controller.PhotonCommand;
   import spark.components.HGroup;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import mx.binding.Binding;
   import assets.TextAssets;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class CompetitorMajesticAnalysisHeaderComponent extends LTPCustomGrid implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1276794987citationFlowColumn:CompetitorAnalysisGridColumn;
      
      private var _1015562161domainCitationFlowColumn:CompetitorAnalysisGridColumn;
      
      private var _597035720domainTrustFlowColumn:CompetitorAnalysisGridColumn;
      
      private var _980010531externalBacklinksColumn:CompetitorAnalysisGridColumn;
      
      private var _645172775externalEduGovColumn:CompetitorAnalysisGridColumn;
      
      private var _1783748907indexedUrlsColumn:CompetitorAnalysisGridColumn;
      
      private var _817243790internalLinksColumn:CompetitorAnalysisGridColumn;
      
      private var _1453001375keywordColumn:CompetitorAnalysisGridColumn;
      
      private var _427350933referringDomainsColumn:CompetitorAnalysisGridColumn;
      
      private var _1993982335spamScoreColumn:CompetitorAnalysisGridColumn;
      
      private var _1379945828trustFlowColumn:CompetitorAnalysisGridColumn;
      
      private var _816745051urlColumn:CompetitorAnalysisGridColumn;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      private var _842461168columnWidth:Number = 0.065;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CompetitorMajesticAnalysisHeaderComponent()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._CompetitorMajesticAnalysisHeaderComponent_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_majestic_CompetitorMajesticAnalysisHeaderComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CompetitorMajesticAnalysisHeaderComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(§§pop() * 72 + 64 - 77 - 1 + 76));
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(§§pop() - 65 - 1 - 9 - 2);
         }
         §§pop().percentHeight = §§pop();
         this.visible = true;
         this.columns = this._CompetitorMajesticAnalysisHeaderComponent_ArrayList1_c();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 + 29) * 43 - 114);
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
         CompetitorMajesticAnalysisHeaderComponent._watcherSetupUtil = param1;
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
      
      private final function getColumnStatus(param1:*) : Boolean
      {
         if(param1 == null || param1 === "show")
         {
            return true;
         }
         return false;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ArrayList1_c() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.source = [this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn1_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn2_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn3_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn4_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn5_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn6_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn7_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn8_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn9_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn10_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn11_i(),this._CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn12_i()];
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn1_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.align = "left";
         _loc1_.headerText = "Title and URL";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory1_c();
         this.urlColumn = _loc1_;
         BindingManager.executeBindings(this,"urlColumn",this.urlColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn2_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Keyword\rCompetitiveness";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory2_c();
         this.keywordColumn = _loc1_;
         BindingManager.executeBindings(this,"keywordColumn",this.keywordColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn3_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Trust\rFlow";
         _loc1_.linkable = true;
         _loc1_.url = "http://majestic.com";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory3_c();
         this.trustFlowColumn = _loc1_;
         BindingManager.executeBindings(this,"trustFlowColumn",this.trustFlowColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn4_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Citation\rFlow";
         _loc1_.linkable = true;
         _loc1_.url = "http://majestic.com";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory4_c();
         this.citationFlowColumn = _loc1_;
         BindingManager.executeBindings(this,"citationFlowColumn",this.citationFlowColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn5_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Domain\rTF";
         _loc1_.linkable = true;
         _loc1_.url = "http://majestic.com";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory5_c();
         this.domainTrustFlowColumn = _loc1_;
         BindingManager.executeBindings(this,"domainTrustFlowColumn",this.domainTrustFlowColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn6_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Domain\rCF";
         _loc1_.linkable = true;
         _loc1_.url = "http://majestic.com";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory6_c();
         this.domainCitationFlowColumn = _loc1_;
         BindingManager.executeBindings(this,"domainCitationFlowColumn",this.domainCitationFlowColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn7_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "External\rBacklinks";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory7_c();
         this.externalBacklinksColumn = _loc1_;
         BindingManager.executeBindings(this,"externalBacklinksColumn",this.externalBacklinksColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn8_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Referring\rDomains";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory8_c();
         this.referringDomainsColumn = _loc1_;
         BindingManager.executeBindings(this,"referringDomainsColumn",this.referringDomainsColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory8_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn9_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "EDU/GOV\rBacklinks";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory9_c();
         this.externalEduGovColumn = _loc1_;
         BindingManager.executeBindings(this,"externalEduGovColumn",this.externalEduGovColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory9_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn10_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Internal\rLinks";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory10_c();
         this.internalLinksColumn = _loc1_;
         BindingManager.executeBindings(this,"internalLinksColumn",this.internalLinksColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory10_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn11_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Indexed\rURLs";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory11_c();
         this.indexedUrlsColumn = _loc1_;
         BindingManager.executeBindings(this,"indexedUrlsColumn",this.indexedUrlsColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory11_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_CompetitorAnalysisGridColumn12_i() : CompetitorAnalysisGridColumn
      {
         var _loc1_:CompetitorAnalysisGridColumn = new CompetitorAnalysisGridColumn();
         _loc1_.headerText = "Site\rAge";
         _loc1_.headerRenderer = this._CompetitorMajesticAnalysisHeaderComponent_ClassFactory12_c();
         this.spamScoreColumn = _loc1_;
         BindingManager.executeBindings(this,"spamScoreColumn",this.spamScoreColumn);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_ClassFactory12_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisHeaderComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 69 - 10 + 1 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.25;
         },null,"urlColumn.width");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 69) * 19 + 1 + 31);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_PAGE_TITLE_AND_URL_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"urlColumn.helpTitle");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(((-§§pop() + 57 + 1) * 38 + 1) * 97);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_PAGE_TITLE_AND_URL;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"urlColumn.helpContent");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((-(§§pop() * 98 + 1) - 75 - 107) * 78);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * 0.1;
         },null,"keywordColumn.width");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 78) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_KC_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordColumn.helpTitle");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() * 75 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_KC_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordColumn.helpContent");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() - 41) * 110 * 40);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"trustFlowColumn.width");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(((§§pop() + 9 - 1) * 95 - 19) * 91);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_TRUST_FLOW_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"trustFlowColumn.helpTitle");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(§§pop() + 118 + 1 - 5 - 39);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_TRUST_FLOW_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"trustFlowColumn.helpContent");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(§§pop() * 53 * 72 - 91);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"citationFlowColumn.width");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() * 50 * 24 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_CITATION_FLOW_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"citationFlowColumn.helpTitle");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(§§pop() - 119 + 87 + 1 - 1 - 1 - 1 + 89);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_CITATION_FLOW_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"citationFlowColumn.helpContent");
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(-(-(--§§pop() - 115) - 1) + 18);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"domainTrustFlowColumn.width");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(§§pop() * 82 - 119 - 10 - 91 + 101 + 39);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_DOMAIN_TRUST_FLOW_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"domainTrustFlowColumn.helpTitle");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() + 82 - 1 - 1) * 59);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_DOMAIN_TRUST_FLOW_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"domainTrustFlowColumn.helpContent");
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push((§§pop() + 108 + 61) * 25 + 1 - 1 + 58 + 119);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"domainCitationFlowColumn.width");
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push(-((§§pop() - 118) * 52 + 1 - 88 - 96 - 14));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_DOMAIN_CITATION_FLOW_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"domainCitationFlowColumn.helpTitle");
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 55 - 1 + 23);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_DOMAIN_CITATION_FLOW_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"domainCitationFlowColumn.helpContent");
         §§push(result);
         §§push(18);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 14) * 15 * 31 * 24) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"externalBacklinksColumn.width");
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push(§§pop() + 111 - 1 - 62 + 1 + 2);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_EXTERNAL_BACKLINKS_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"externalBacklinksColumn.helpTitle");
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(--(§§pop() - 1 - 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_EXTERNAL_BACKLINKS_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"externalBacklinksColumn.helpContent");
         §§push(result);
         §§push(21);
         if(_loc2_)
         {
            §§push(-(-((§§pop() + 1) * 61) - 31 - 74) - 89);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"referringDomainsColumn.width");
         §§push(result);
         §§push(22);
         if(_loc2_)
         {
            §§push((§§pop() - 42 - 1 - 1 - 1) * 23 - 8);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_REFERRING_DOMAINS_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"referringDomainsColumn.helpTitle");
         §§push(result);
         §§push(23);
         if(_loc3_)
         {
            §§push(-((§§pop() + 16) * 73 - 71 + 90) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_REFERRING_DOMAINS_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"referringDomainsColumn.helpContent");
         §§push(result);
         §§push(24);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 24 - 1 + 39 + 49 + 24));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"externalEduGovColumn.width");
         §§push(result);
         §§push(25);
         if(_loc3_)
         {
            §§push(((§§pop() + 1) * 69 + 1) * 0 * 24 + 92);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_EXTERNAL_EDU_GOV_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"externalEduGovColumn.helpTitle");
         §§push(result);
         §§push(26);
         if(_loc2_)
         {
            §§push((§§pop() - 42 + 1 - 104 - 112 + 46 - 77) * 35);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_EXTERNAL_EDU_GOV_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"externalEduGovColumn.helpContent");
         §§push(result);
         §§push(27);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1 - 1 - 1 - 70) + 108);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"internalLinksColumn.width");
         §§push(result);
         §§push(28);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_INTERNAL_LINKS_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"internalLinksColumn.helpTitle");
         §§push(result);
         §§push(29);
         if(_loc3_)
         {
            §§push(§§pop() * 97 - 1 + 115 + 79);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_INTERNAL_LINKS_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"internalLinksColumn.helpContent");
         §§push(result);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() * 101 - 49 + 1 + 8 - 30);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"indexedUrlsColumn.width");
         §§push(result);
         §§push(31);
         if(_loc3_)
         {
            §§push(-(§§pop() * 29 + 1 + 119) + 74 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_INDEXED_URLS_NOTE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"indexedUrlsColumn.helpTitle");
         §§push(result);
         §§push(32);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.MAJESTIC_COMPETITOR_INDEXED_URLS_NOTE_DESC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"indexedUrlsColumn.helpContent");
         §§push(result);
         §§push(33);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 44 + 35 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width * columnWidth;
         },null,"spamScoreColumn.width");
         §§push(result);
         §§push(34);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 46));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SITE_AGE_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"spamScoreColumn.helpTitle");
         §§push(result);
         §§push(35);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 118 + 1 - 55) + 57);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.COMPETITOR_ANALYSIS_SITE_AGE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"spamScoreColumn.helpContent");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get citationFlowColumn() : CompetitorAnalysisGridColumn
      {
         return this._1276794987citationFlowColumn;
      }
      
      public function set citationFlowColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._1276794987citationFlowColumn;
         if(_loc2_ !== param1)
         {
            this._1276794987citationFlowColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"citationFlowColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainCitationFlowColumn() : CompetitorAnalysisGridColumn
      {
         return this._1015562161domainCitationFlowColumn;
      }
      
      public function set domainCitationFlowColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._1015562161domainCitationFlowColumn;
         if(_loc2_ !== param1)
         {
            this._1015562161domainCitationFlowColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainCitationFlowColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainTrustFlowColumn() : CompetitorAnalysisGridColumn
      {
         return this._597035720domainTrustFlowColumn;
      }
      
      public function set domainTrustFlowColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._597035720domainTrustFlowColumn;
         if(_loc2_ !== param1)
         {
            this._597035720domainTrustFlowColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainTrustFlowColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get externalBacklinksColumn() : CompetitorAnalysisGridColumn
      {
         return this._980010531externalBacklinksColumn;
      }
      
      public function set externalBacklinksColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._980010531externalBacklinksColumn;
         if(_loc2_ !== param1)
         {
            this._980010531externalBacklinksColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"externalBacklinksColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get externalEduGovColumn() : CompetitorAnalysisGridColumn
      {
         return this._645172775externalEduGovColumn;
      }
      
      public function set externalEduGovColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._645172775externalEduGovColumn;
         if(_loc2_ !== param1)
         {
            this._645172775externalEduGovColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"externalEduGovColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get indexedUrlsColumn() : CompetitorAnalysisGridColumn
      {
         return this._1783748907indexedUrlsColumn;
      }
      
      public function set indexedUrlsColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._1783748907indexedUrlsColumn;
         if(_loc2_ !== param1)
         {
            this._1783748907indexedUrlsColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indexedUrlsColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get internalLinksColumn() : CompetitorAnalysisGridColumn
      {
         return this._817243790internalLinksColumn;
      }
      
      public function set internalLinksColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._817243790internalLinksColumn;
         if(_loc2_ !== param1)
         {
            this._817243790internalLinksColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"internalLinksColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordColumn() : CompetitorAnalysisGridColumn
      {
         return this._1453001375keywordColumn;
      }
      
      public function set keywordColumn(param1:CompetitorAnalysisGridColumn) : void
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
      public function get referringDomainsColumn() : CompetitorAnalysisGridColumn
      {
         return this._427350933referringDomainsColumn;
      }
      
      public function set referringDomainsColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._427350933referringDomainsColumn;
         if(_loc2_ !== param1)
         {
            this._427350933referringDomainsColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"referringDomainsColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spamScoreColumn() : CompetitorAnalysisGridColumn
      {
         return this._1993982335spamScoreColumn;
      }
      
      public function set spamScoreColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._1993982335spamScoreColumn;
         if(_loc2_ !== param1)
         {
            this._1993982335spamScoreColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spamScoreColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get trustFlowColumn() : CompetitorAnalysisGridColumn
      {
         return this._1379945828trustFlowColumn;
      }
      
      public function set trustFlowColumn(param1:CompetitorAnalysisGridColumn) : void
      {
         var _loc2_:Object = this._1379945828trustFlowColumn;
         if(_loc2_ !== param1)
         {
            this._1379945828trustFlowColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trustFlowColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urlColumn() : CompetitorAnalysisGridColumn
      {
         return this._816745051urlColumn;
      }
      
      public function set urlColumn(param1:CompetitorAnalysisGridColumn) : void
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
      
      [Bindable(event="propertyChange")]
      private function get columnWidth() : Number
      {
         return this._842461168columnWidth;
      }
      
      private function set columnWidth(param1:Number) : void
      {
         var _loc2_:Object = this._842461168columnWidth;
         if(_loc2_ !== param1)
         {
            this._842461168columnWidth = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"columnWidth",_loc2_,param1));
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
   }
}
