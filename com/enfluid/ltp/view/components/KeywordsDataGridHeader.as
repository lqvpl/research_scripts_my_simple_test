package com.enfluid.ltp.view.components
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.adobe.cairngorm.observer.Observe;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkin;
   import mx.collections.IList;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.KeywordColumnsVO;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import hr.binaria.asx3m.mapper.IMapper;
   import flash.events.MouseEvent;
   import mx.core.ClassFactory;
   import hr.binaria.asx3m.converters.ISingleValueConverter;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import spark.primitives.Rect;
   import spark.effects.Fade;
   import flash.utils.ByteArray;
   import spark.components.Group;
   import flash.utils.Endian;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   import mx.binding.Binding;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import system.data.Map;
   import system.data.Iterator;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.view.renderers.headers.SelectColumnsHeaderRenderer;
   import mx.events.ResizeEvent;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import spark.events.GridSelectionEvent;
   import mx.graphics.RadialGradient;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import assets.TextAssets;
   import com.enfluid.ltp.view.renderers.headers.KeywordColumnHeaderContent;
   import com.enfluid.ltp.view.filterviews.ProjectFilterView;
   import com.enfluid.ltp.view.filterviews.SuggestedBidFilterView;
   import com.enfluid.ltp.view.filterviews.LocalSearchesFilterView;
   import spark.components.Callout;
   import com.enfluid.ltp.view.missingdatacallouts.GlobalSearchesMissingDataCallout;
   import com.enfluid.ltp.view.filterviews.GlobalSearchesFilterView;
   import com.enfluid.ltp.view.filterviews.AdvertizerCompetitionFilterView;
   import com.enfluid.ltp.view.filterviews.NumWordsFilterView;
   import com.enfluid.ltp.view.missingdatacallouts.GoogleTitleCompMissingDataCallout;
   import com.enfluid.ltp.view.filterviews.GoogleTitleCompetitionFilterView;
   import com.enfluid.ltp.view.missingdatacallouts.BingTitleCompMissingDataCallout;
   import com.enfluid.ltp.view.filterviews.BingTitleCompetitionFilterView;
   import com.enfluid.ltp.view.missingdatacallouts.DomainsMissingDataCallout;
   import com.enfluid.ltp.view.filterviews.DomainAvailabilityFilterView;
   import com.enfluid.ltp.view.filterviews.AvgKCFilterView;
   import mx.collections.XMLListCollection;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class KeywordsDataGridHeader extends LTPCustomGrid implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _KeywordsDataGridHeader_Observe1:Observe;
      
      public var _KeywordsDataGridHeader_Observe2:Observe;
      
      private var _360563722advertiserCompetitionColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _1810362272avgKCColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _179764957bingTitleCompetitionColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _1950053259domainAvailabilityColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _336034353globalSearchesColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _1278838806googleTitleCompetitionColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _1453001375keywordColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _176497559localSearchesColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _938911649numberofWordsColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _1744071729projectColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _1207579127selectColumnsColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var _193194288suggestedBidColumn:com.enfluid.ltp.view.components.FilterGridColumn;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _309310695project:ProjectVO;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordsDataGridHeader()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._KeywordsDataGridHeader_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_KeywordsDataGridHeaderWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordsDataGridHeader[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 55 + 90 + 118 - 88);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(41);
         if(_loc4_)
         {
            §§push((§§pop() + 8) * 13 + 71 + 45 - 1 - 1 + 6);
         }
         §§pop().height = §§pop();
         this.resizableColumns = true;
         this.variableRowHeight = true;
         this.columns = this._KeywordsDataGridHeader_ArrayList1_c();
         this._KeywordsDataGridHeader_Observe1_i();
         this._KeywordsDataGridHeader_Observe2_i();
         this.addEventListener("creationComplete",this.___KeywordsDataGridHeader_LTPCustomGrid1_creationComplete);
         this.addEventListener("resize",this.___KeywordsDataGridHeader_LTPCustomGrid1_resize);
         this.addEventListener("selectionChange",this.___KeywordsDataGridHeader_LTPCustomGrid1_selectionChange);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 104 - 8 + 1 - 1);
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
         KeywordsDataGridHeader._watcherSetupUtil = param1;
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
            this.horizontalScrollPolicy = "off";
            this.skinClass = KeywordDataGridSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function get dataProvider() : IList
      {
         if(!super.dataProvider)
         {
            super.dataProvider = new ArrayCollection();
         }
         return super.dataProvider;
      }
      
      public final function setColumnsSize() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc1_:Array = this.getVisibleColumns();
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 1 - 1) * 42 - 73);
         }
         var _loc2_:Number = §§pop();
         §§push(1);
         if(_loc8_)
         {
            §§push((§§pop() - 1 + 88) * 61);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(((§§pop() - 18) * 110 + 69 - 95) * 56 * 38 + 1);
         }
         for each(_loc4_ in _loc1_)
         {
            if(_loc4_ == this.selectColumnsColumn)
            {
               _loc4_.width = _loc4_.minWidth;
            }
            else
            {
               §§push(this.width - _loc2_);
               §§push(30);
               if(_loc8_)
               {
                  §§push(-(§§pop() - 78) * 83 + 1 + 1);
               }
               _loc5_ = (§§pop() - §§pop()) / (_loc1_.length - _loc3_);
               _loc4_.width = _loc5_ > _loc4_.minWidth?_loc5_:_loc4_.minWidth;
            }
            _loc2_ = _loc2_ + _loc4_.width;
            _loc3_++;
         }
      }
      
      protected final function resultGridCreationComplete(param1:FlexEvent) : void
      {
         var _loc2_:KeywordColumnsVO = this.viewModel.keywordColumns;
         _loc2_.keywords = this.keywordColumn;
         _loc2_.project = this.projectColumn;
         _loc2_.suggestedBid = this.suggestedBidColumn;
         _loc2_.localSearches = this.localSearchesColumn;
         _loc2_.globalSearches = this.globalSearchesColumn;
         _loc2_.advertizerCompetition = this.advertiserCompetitionColumn;
         _loc2_.numWords = this.numberofWordsColumn;
         _loc2_.googleTitleCompetition = this.googleTitleCompetitionColumn;
         _loc2_.bingTitleCompetition = this.bingTitleCompetitionColumn;
         _loc2_.domainAvailability = this.domainAvailabilityColumn;
         _loc2_.avgKC = this.avgKCColumn;
         this.viewModel.keywordDataGrid = this;
         this.setColumnsSize();
      }
      
      private final function columnsSizeHandler(param1:Object = null) : void
      {
         if(this.viewModel.dataFiltersChanged)
         {
            this.setColumnsSize();
            this.viewModel.dataFiltersChanged = false;
         }
      }
      
      private final function getVisibleColumns() : Array
      {
         var _loc1_:Array = [];
         §§push(0);
         if(_loc4_)
         {
            §§push((-(-§§pop() * 44) * 11 + 76) * 72 - 95);
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < columns.length)
         {
            if(columns.getItemAt(_loc2_).visible)
            {
               _loc1_.push(columns.getItemAt(_loc2_));
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_Observe1_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         _loc1_.handler = this.columnsSizeHandler;
         this._KeywordsDataGridHeader_Observe1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordsDataGridHeader_Observe1",this._KeywordsDataGridHeader_Observe1);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_Observe2_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         _loc1_.handler = this.setColumnsSize;
         _loc1_.sendArgumentsToHandler = false;
         this._KeywordsDataGridHeader_Observe2 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordsDataGridHeader_Observe2",this._KeywordsDataGridHeader_Observe2);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ArrayList1_c() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.source = [this._KeywordsDataGridHeader_FilterGridColumn1_i(),this._KeywordsDataGridHeader_FilterGridColumn2_i(),this._KeywordsDataGridHeader_FilterGridColumn3_i(),this._KeywordsDataGridHeader_FilterGridColumn4_i(),this._KeywordsDataGridHeader_FilterGridColumn5_i(),this._KeywordsDataGridHeader_FilterGridColumn6_i(),this._KeywordsDataGridHeader_FilterGridColumn7_i(),this._KeywordsDataGridHeader_FilterGridColumn8_i(),this._KeywordsDataGridHeader_FilterGridColumn9_i(),this._KeywordsDataGridHeader_FilterGridColumn10_i(),this._KeywordsDataGridHeader_FilterGridColumn11_i(),this._KeywordsDataGridHeader_FilterGridColumn12_i()];
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn1_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(130);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 1 + 26 - 1 + 35) * 46));
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "keyword";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory1_c();
         this.keywordColumn = _loc1_;
         BindingManager.executeBindings(this,"keywordColumn",this.keywordColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn2_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1) * 23);
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "projectTitle";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory2_c();
         _loc1_.headerText = "Project";
         this.projectColumn = _loc1_;
         BindingManager.executeBindings(this,"projectColumn",this.projectColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn3_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((§§pop() * 48 - 1 + 1) * 1);
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "suggestedBid";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory3_c();
         _loc1_.headerText = "Suggested Bid";
         _loc1_.numericSort = true;
         this.suggestedBidColumn = _loc1_;
         BindingManager.executeBindings(this,"suggestedBidColumn",this.suggestedBidColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn4_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 1 - 89 + 0) * 80 * 21);
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "localSearches";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory4_c();
         _loc1_.headerText = "Local Searches";
         _loc1_.numericSort = true;
         this.localSearchesColumn = _loc1_;
         BindingManager.executeBindings(this,"localSearchesColumn",this.localSearchesColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn5_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 5 + 50) - 69 - 97) * 57);
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "globalSearches";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory5_c();
         _loc1_.headerText = "Global Searches";
         _loc1_.numericSort = true;
         this.globalSearchesColumn = _loc1_;
         BindingManager.executeBindings(this,"globalSearchesColumn",this.globalSearchesColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn6_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((§§pop() * 39 - 81 + 1 + 1) * 99 * 98 * 57);
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "advertiserCompetition";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory6_c();
         _loc1_.headerText = "Advertiser Competition";
         this.advertiserCompetitionColumn = _loc1_;
         BindingManager.executeBindings(this,"advertiserCompetitionColumn",this.advertiserCompetitionColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn7_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-((§§pop() * 13 * 3 - 1) * 119 - 59));
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "numWords";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory7_c();
         _loc1_.headerText = "Number of Words";
         _loc1_.numericSort = true;
         this.numberofWordsColumn = _loc1_;
         BindingManager.executeBindings(this,"numberofWordsColumn",this.numberofWordsColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn8_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(--(§§pop() * 72 + 1 + 0 - 1) - 85);
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "googleTitleCompetition";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory8_c();
         _loc1_.headerText = "Google Title Comp";
         _loc1_.numericSort = true;
         this.googleTitleCompetitionColumn = _loc1_;
         BindingManager.executeBindings(this,"googleTitleCompetitionColumn",this.googleTitleCompetitionColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory8_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn9_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() + 35 - 1 + 72 - 41);
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "bingTitleCompetition";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory9_c();
         _loc1_.headerText = "Bing Title Comp";
         _loc1_.numericSort = true;
         this.bingTitleCompetitionColumn = _loc1_;
         BindingManager.executeBindings(this,"bingTitleCompetitionColumn",this.bingTitleCompetitionColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory9_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn10_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(§§pop() - 87 - 51 - 8) + 106 + 16);
         }
         §§pop().minWidth = §§pop();
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory10_c();
         _loc1_.headerText = "Domain Availability";
         _loc1_.showEditIcon = true;
         this.domainAvailabilityColumn = _loc1_;
         BindingManager.executeBindings(this,"domainAvailabilityColumn",this.domainAvailabilityColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory10_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn11_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 58) * 8);
         }
         §§pop().minWidth = §§pop();
         _loc1_.dataField = "avgKC";
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory11_c();
         _loc1_.headerText = "Avg Keyword Competitiveness";
         _loc1_.resizable = false;
         _loc1_.numericSort = true;
         this.avgKCColumn = _loc1_;
         BindingManager.executeBindings(this,"avgKCColumn",this.avgKCColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory11_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_FilterGridColumn12_i() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         var _loc1_:com.enfluid.ltp.view.components.FilterGridColumn = new com.enfluid.ltp.view.components.FilterGridColumn();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push((-(-§§pop() * 96) + 58 - 1) * 63);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1) + 1 - 93 - 1 - 55);
         }
         §§pop().minWidth = §§pop();
         _loc1_.headerRenderer = this._KeywordsDataGridHeader_ClassFactory12_c();
         _loc1_.resizable = false;
         this.selectColumnsColumn = _loc1_;
         BindingManager.executeBindings(this,"selectColumnsColumn",this.selectColumnsColumn);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridHeader_ClassFactory12_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SelectColumnsHeaderRenderer;
         return _loc1_;
      }
      
      public final function ___KeywordsDataGridHeader_LTPCustomGrid1_creationComplete(param1:FlexEvent) : void
      {
         this.resultGridCreationComplete(param1);
      }
      
      public final function ___KeywordsDataGridHeader_LTPCustomGrid1_resize(param1:ResizeEvent) : void
      {
         this.setColumnsSize();
      }
      
      public final function ___KeywordsDataGridHeader_LTPCustomGrid1_selectionChange(param1:GridSelectionEvent) : void
      {
         this.model.selectedKeyword = this.selectedItem as KeywordVO;
      }
      
      private final function _KeywordsDataGridHeader_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 1 - 106);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return viewModel.dataFiltersChanged;
         },null,"_KeywordsDataGridHeader_Observe1.source");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 2 + 1 + 1) * 52 - 32);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this.columns.length;
         },null,"_KeywordsDataGridHeader_Observe2.source");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() - 100) * 1 - 61 - 8 + 1) * 95);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return model.selectedKeywordCollection.project;
         },function(param1:*):void
         {
            project = param1;
         },"project");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(((§§pop() + 86 - 13) * 16 - 1) * 35));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_KEYWORDS_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordColumn.helpTitle");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push((§§pop() + 5) * 45 - 86);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_KEYWORDS_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordColumn.helpContent");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() - 1 - 67 + 58) - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new KeywordColumnHeaderContent();
         },null,"keywordColumn.headerContent");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(§§pop() * 56 * 38 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "Keywords (" + (viewModel.selectedKeywordsTab.isTrashTab || model.selectedKeywordCollection.project.specialFilter == SpecialFilterConstants.TRASH?Object(model.selectedKeywordCollection).trashKeywords.totalCount + " keywords in trash":model.selectedKeywordCollection.length == model.selectedKeywordCollection.totalCount?model.selectedKeywordCollection.length:model.selectedKeywordCollection.length + " of " + model.selectedKeywordCollection.totalCount + " match filters") + ")";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"keywordColumn.headerText");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() - 110 + 63) - 1 - 1 - 1 + 92);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"keywordColumn.sortable");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 97) - 1) - 65 + 102);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_PROJECT_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"projectColumn.helpTitle");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 36 - 38 - 1 - 94 - 1 - 111);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_PROJECT_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"projectColumn.helpContent");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(§§pop() - 111 - 1 + 1 + 109 + 86) - 89);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return viewModel.selectedKeywordsTab.isFavoritesTab;
         },null,"projectColumn.visible");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 33);
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new ProjectFilterView();
         },null,"projectColumn.headerContent");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1 + 1 - 60));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"projectColumn.sortable");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() - 77 + 23) - 40 + 40 - 117 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_SUGGESTED_BID_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"suggestedBidColumn.helpTitle");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 114 - 1 - 1 - 38);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_SUGGESTED_BID_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"suggestedBidColumn.helpContent");
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push((§§pop() * 114 + 1) * 76);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return project.suggestedBidEnabled;
         },null,"suggestedBidColumn.visible");
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push((-(§§pop() * 31 - 1 - 32) * 57 - 119) * 16);
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new SuggestedBidFilterView();
         },null,"suggestedBidColumn.headerContent");
         §§push(result);
         §§push(17);
         if(_loc2_)
         {
            §§push(§§pop() * 54 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"suggestedBidColumn.sortable");
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push(§§pop() - 117 + 1 + 1 - 83 + 89);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_LOCAL_SEARCHES_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"localSearchesColumn.helpTitle");
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push((§§pop() + 35 - 79 + 1 - 60) * 54 * 38 * 101);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_LOCAL_SEARCHES_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"localSearchesColumn.helpContent");
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1) - 62 - 1 - 102);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return project.localSearchesEnabled;
         },null,"localSearchesColumn.visible");
         §§push(result);
         §§push(21);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 - 47) + 78));
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new LocalSearchesFilterView();
         },null,"localSearchesColumn.headerContent");
         §§push(result);
         §§push(22);
         if(_loc3_)
         {
            §§push(--§§pop() * 1 - 51);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"localSearchesColumn.sortable");
         §§push(result);
         §§push(23);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 40 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_GLOBAL_SEARCEHES_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"globalSearchesColumn.helpTitle");
         §§push(result);
         §§push(24);
         if(_loc2_)
         {
            §§push((§§pop() + 44) * 64 - 82);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_GLOBAL_SEARCEHES_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"globalSearchesColumn.helpContent");
         §§push(result);
         §§push(25);
         if(_loc3_)
         {
            §§push(-((§§pop() + 38) * 82 * 10));
         }
         §§pop()[§§pop()] = new Binding(this,function():Callout
         {
            return new GlobalSearchesMissingDataCallout();
         },null,"globalSearchesColumn.missingDataCallout");
         §§push(result);
         §§push(26);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return project.globalSearchesEnabled;
         },null,"globalSearchesColumn.visible");
         §§push(result);
         §§push(27);
         if(_loc3_)
         {
            §§push((§§pop() * 112 - 77 + 1) * 76);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            §§push(model.selectedKeywordCollection.missingGlobalSearchesCount);
            §§push(0);
            if(_loc1_)
            {
               §§push(-(§§pop() * 105 - 1 - 104) + 1 - 7 + 1);
            }
            return §§pop() > §§pop();
         },null,"globalSearchesColumn.showWarningIcon");
         §§push(result);
         §§push(28);
         if(_loc3_)
         {
            §§push(-(§§pop() + 83 + 82));
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new GlobalSearchesFilterView();
         },null,"globalSearchesColumn.headerContent");
         §§push(result);
         §§push(29);
         if(_loc3_)
         {
            §§push((§§pop() + 93 - 106 - 97 + 76 - 1 + 99) * 45);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isFetchingMissingGlobalSearches;
         },null,"globalSearchesColumn.showProgressSpinner");
         §§push(result);
         §§push(30);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 74 - 10 + 1) * 76);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"globalSearchesColumn.sortable");
         §§push(result);
         §§push(31);
         if(_loc3_)
         {
            §§push(§§pop() * 29 * 37 - 1 + 30 - 94 - 1 - 12);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_ADVERTISER_COMPETITION_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"advertiserCompetitionColumn.helpTitle");
         §§push(result);
         §§push(32);
         if(_loc2_)
         {
            §§push(-(-((§§pop() + 1) * 32 - 21) * 58));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_ADVERTISER_COMPETITION_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"advertiserCompetitionColumn.helpContent");
         §§push(result);
         §§push(33);
         if(_loc3_)
         {
            §§push(§§pop() - 24 - 74 - 71 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return project.advertiserCompEnabled;
         },null,"advertiserCompetitionColumn.visible");
         §§push(result);
         §§push(34);
         if(_loc2_)
         {
            §§push(--((-§§pop() + 95) * 13) * 91);
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new AdvertizerCompetitionFilterView();
         },null,"advertiserCompetitionColumn.headerContent");
         §§push(result);
         §§push(35);
         if(_loc3_)
         {
            §§push((-§§pop() * 115 + 54 + 18) * 82);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"advertiserCompetitionColumn.sortable");
         §§push(result);
         §§push(36);
         if(_loc3_)
         {
            §§push(-(§§pop() - 27 + 1 + 1) + 1 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_NUM_WORDS_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"numberofWordsColumn.helpTitle");
         §§push(result);
         §§push(37);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1 - 1) * 27 - 19 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_NUM_WORDS_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"numberofWordsColumn.helpContent");
         §§push(result);
         §§push(38);
         if(_loc3_)
         {
            §§push(-(§§pop() + 6 + 104 - 95 + 41 + 91 - 92));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return project.numWordsEnabled;
         },null,"numberofWordsColumn.visible");
         §§push(result);
         §§push(39);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() + 1) + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new NumWordsFilterView();
         },null,"numberofWordsColumn.headerContent");
         §§push(result);
         §§push(40);
         if(_loc2_)
         {
            §§push(§§pop() - 109 + 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"numberofWordsColumn.sortable");
         §§push(result);
         §§push(41);
         if(_loc3_)
         {
            §§push(-(§§pop() * 61) + 1 - 54);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_GOOGLE_TITLE_COMPETITION_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"googleTitleCompetitionColumn.helpTitle");
         §§push(result);
         §§push(42);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 37 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_GOOGLE_TITLE_COMPETITION_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"googleTitleCompetitionColumn.helpContent");
         §§push(result);
         §§push(43);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 21 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return project.googleTitleCompEnabled;
         },null,"googleTitleCompetitionColumn.visible");
         §§push(result);
         §§push(44);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Callout
         {
            return new GoogleTitleCompMissingDataCallout();
         },null,"googleTitleCompetitionColumn.missingDataCallout");
         §§push(result);
         §§push(45);
         if(_loc3_)
         {
            §§push(-((§§pop() + 32 + 61 - 1) * 43) * 85 * 94);
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new GoogleTitleCompetitionFilterView();
         },null,"googleTitleCompetitionColumn.headerContent");
         §§push(result);
         §§push(46);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 97 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            §§push(model.selectedKeywordCollection.missingGoogleTitleCompCount);
            §§push(0);
            if(_loc1_)
            {
               §§push(-§§pop() + 103 - 8);
            }
            return §§pop() > §§pop();
         },null,"googleTitleCompetitionColumn.showWarningIcon");
         §§push(result);
         §§push(47);
         if(_loc3_)
         {
            §§push((§§pop() + 39 - 1) * 66 * 108);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isFetchingMissingGoogleTitleCompetition;
         },null,"googleTitleCompetitionColumn.showProgressSpinner");
         §§push(result);
         §§push(48);
         if(_loc2_)
         {
            §§push(-(§§pop() - 118 - 1) * 15);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"googleTitleCompetitionColumn.sortable");
         §§push(result);
         §§push(49);
         if(_loc2_)
         {
            §§push(§§pop() + 23 + 55 + 87 - 59);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_BING_TITLE_COMPETITION_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"bingTitleCompetitionColumn.helpTitle");
         §§push(result);
         §§push(50);
         if(_loc3_)
         {
            §§push(-((§§pop() + 108 + 1 + 10 + 91) * 92) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_BING_TITLE_COMPETITION_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"bingTitleCompetitionColumn.helpContent");
         §§push(result);
         §§push(51);
         if(_loc2_)
         {
            §§push(-(§§pop() - 39 - 1 - 1 + 1 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Callout
         {
            return new BingTitleCompMissingDataCallout();
         },null,"bingTitleCompetitionColumn.missingDataCallout");
         §§push(result);
         §§push(52);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 110 - 17 - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return project.bingTitleCompEnabled;
         },null,"bingTitleCompetitionColumn.visible");
         §§push(result);
         §§push(53);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 106 + 115));
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new BingTitleCompetitionFilterView();
         },null,"bingTitleCompetitionColumn.headerContent");
         §§push(result);
         §§push(54);
         if(_loc2_)
         {
            §§push(-(§§pop() + 91) + 27);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            §§push(model.selectedKeywordCollection.missingBingTitleCompCount);
            §§push(0);
            if(_loc1_)
            {
               §§push(§§pop() * 44 * 40 * 7);
            }
            return §§pop() > §§pop();
         },null,"bingTitleCompetitionColumn.showWarningIcon");
         §§push(result);
         §§push(55);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isFetchingMissingBingTitleCompetition;
         },null,"bingTitleCompetitionColumn.showProgressSpinner");
         §§push(result);
         §§push(56);
         if(_loc3_)
         {
            §§push(§§pop() - 37 - 6 - 25);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"bingTitleCompetitionColumn.sortable");
         §§push(result);
         §§push(57);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 102 + 104 - 110) - 1 + 40);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_DOMAIN_AVAILABILITY_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"domainAvailabilityColumn.helpTitle");
         §§push(result);
         §§push(58);
         if(_loc3_)
         {
            §§push(§§pop() + 63 + 8 + 1 - 1 + 28);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_DOMAIN_AVAILABILITY_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"domainAvailabilityColumn.helpContent");
         §§push(result);
         §§push(59);
         if(_loc3_)
         {
            §§push(§§pop() - 74 - 1 - 4 - 1 - 26 + 1 - 37);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return project.domainsEnabled;
         },null,"domainAvailabilityColumn.visible");
         §§push(result);
         §§push(60);
         if(_loc2_)
         {
            §§push(-§§pop() - 105 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Callout
         {
            return new DomainsMissingDataCallout();
         },null,"domainAvailabilityColumn.missingDataCallout");
         §§push(result);
         §§push(61);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 68));
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new DomainAvailabilityFilterView();
         },null,"domainAvailabilityColumn.headerContent");
         §§push(result);
         §§push(62);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 76 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isFetchingMissingDomains;
         },null,"domainAvailabilityColumn.showProgressSpinner");
         §§push(result);
         §§push(63);
         if(_loc3_)
         {
            §§push(--(§§pop() + 42 + 1 + 1 + 76) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            §§push(model.selectedKeywordCollection.missingDomainAvailabilityCount);
            §§push(0);
            if(_loc1_)
            {
               §§push((§§pop() + 23 + 71 + 11 - 1 + 82 - 90) * 30);
            }
            return §§pop() > §§pop();
         },null,"domainAvailabilityColumn.showWarningIcon");
         §§push(result);
         §§push(64);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 48));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_AVG_KEYWORD_COMPETITIVENESS_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"avgKCColumn.helpTitle");
         §§push(result);
         §§push(65);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 1) * 6 - 1 - 101));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_AVG_KEYWORD_COMPETITIVENESS_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"avgKCColumn.helpContent");
         §§push(result);
         §§push(66);
         if(_loc3_)
         {
            §§push((§§pop() * 32 - 1) * 59 * 4);
         }
         §§pop()[§§pop()] = new Binding(this,function():Group
         {
            return new AvgKCFilterView();
         },null,"avgKCColumn.headerContent");
         §§push(result);
         §§push(67);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1) + 1) * 42);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return true;
         },null,"avgKCColumn.sortable");
         §§push(result);
         §§push(68);
         if(_loc3_)
         {
            §§push(-(§§pop() * 19) * 114 - 26 - 1 + 0 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return false;
         },null,"selectColumnsColumn.sortable");
         return result;
      }
      
      private final function _KeywordsDataGridHeader_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.project = this.model.selectedKeywordCollection.project;
      }
      
      [Bindable(event="propertyChange")]
      public function get advertiserCompetitionColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._360563722advertiserCompetitionColumn;
      }
      
      public function set advertiserCompetitionColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._360563722advertiserCompetitionColumn;
         if(_loc2_ !== param1)
         {
            this._360563722advertiserCompetitionColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advertiserCompetitionColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avgKCColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._1810362272avgKCColumn;
      }
      
      public function set avgKCColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._1810362272avgKCColumn;
         if(_loc2_ !== param1)
         {
            this._1810362272avgKCColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avgKCColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bingTitleCompetitionColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._179764957bingTitleCompetitionColumn;
      }
      
      public function set bingTitleCompetitionColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._179764957bingTitleCompetitionColumn;
         if(_loc2_ !== param1)
         {
            this._179764957bingTitleCompetitionColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bingTitleCompetitionColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainAvailabilityColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._1950053259domainAvailabilityColumn;
      }
      
      public function set domainAvailabilityColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._1950053259domainAvailabilityColumn;
         if(_loc2_ !== param1)
         {
            this._1950053259domainAvailabilityColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainAvailabilityColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get globalSearchesColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._336034353globalSearchesColumn;
      }
      
      public function set globalSearchesColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._336034353globalSearchesColumn;
         if(_loc2_ !== param1)
         {
            this._336034353globalSearchesColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"globalSearchesColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleTitleCompetitionColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._1278838806googleTitleCompetitionColumn;
      }
      
      public function set googleTitleCompetitionColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._1278838806googleTitleCompetitionColumn;
         if(_loc2_ !== param1)
         {
            this._1278838806googleTitleCompetitionColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleTitleCompetitionColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._1453001375keywordColumn;
      }
      
      public function set keywordColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
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
      public function get localSearchesColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._176497559localSearchesColumn;
      }
      
      public function set localSearchesColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._176497559localSearchesColumn;
         if(_loc2_ !== param1)
         {
            this._176497559localSearchesColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"localSearchesColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberofWordsColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._938911649numberofWordsColumn;
      }
      
      public function set numberofWordsColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._938911649numberofWordsColumn;
         if(_loc2_ !== param1)
         {
            this._938911649numberofWordsColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberofWordsColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get projectColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._1744071729projectColumn;
      }
      
      public function set projectColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._1744071729projectColumn;
         if(_loc2_ !== param1)
         {
            this._1744071729projectColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"projectColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectColumnsColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._1207579127selectColumnsColumn;
      }
      
      public function set selectColumnsColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._1207579127selectColumnsColumn;
         if(_loc2_ !== param1)
         {
            this._1207579127selectColumnsColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectColumnsColumn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get suggestedBidColumn() : com.enfluid.ltp.view.components.FilterGridColumn
      {
         return this._193194288suggestedBidColumn;
      }
      
      public function set suggestedBidColumn(param1:com.enfluid.ltp.view.components.FilterGridColumn) : void
      {
         var _loc2_:Object = this._193194288suggestedBidColumn;
         if(_loc2_ !== param1)
         {
            this._193194288suggestedBidColumn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suggestedBidColumn",_loc2_,param1));
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
      private function get project() : ProjectVO
      {
         return this._309310695project;
      }
      
      private function set project(param1:ProjectVO) : void
      {
         var _loc2_:Object = this._309310695project;
         if(_loc2_ !== param1)
         {
            this._309310695project = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"project",_loc2_,param1));
            }
         }
      }
   }
}
