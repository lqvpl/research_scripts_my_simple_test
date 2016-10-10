package com.enfluid.ltp.view
{
   import spark.components.Group;
   import mx.binding.IBindingClient;
   import com.adobe.utils.StringUtil;
   import com.enfluid.ltp.model.constants.AdvertiserCompetitionValues;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Label;
   import com.enfluid.ltp.view.components.KeywordsDataGridHeader;
   import com.enfluid.ltp.view.components.KeywordsDataGridList;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.events.FlexEvent;
   import spark.events.GridEvent;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   import mx.collections.SortField;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import mx.collections.Sort;
   import mx.collections.ArrayCollection;
   import spark.components.VGroup;
   import mx.binding.BindingManager;
   import mx.containers.ViewStack;
   import mx.core.UIComponentDescriptor;
   import spark.components.NavigatorContent;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.view.components.FormattedSelfAdjustingLabel;
   import spark.components.HGroup;
   import mx.binding.Binding;
   import mx.collections.IList;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class KeywordsDataGrid extends Group implements IBindingClient
   {
      
      private static var isDecending:Boolean = false;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _KeywordsDataGrid_Label1:Label;
      
      private var _1221270899header:KeywordsDataGridHeader;
      
      private var _1298782681keywordList:KeywordsDataGridList;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordsDataGrid()
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
         mx_internal::_document = this;
         var bindings:Array = this._KeywordsDataGrid_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_KeywordsDataGridWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordsDataGrid[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 13 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(§§pop() * 33 * 15 - 1 - 46 + 83 + 1);
         }
         §§pop().percentHeight = §§pop();
         this.mxmlContent = [this._KeywordsDataGrid_VGroup1_c(),this._KeywordsDataGrid_Label1_i()];
         this.addEventListener("creationComplete",this.___KeywordsDataGrid_Group1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 + 1 - 63) * 7) + 1 + 99);
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function advertiserCompetitionSortCompare(param1:Object, param2:Object, param3:Array) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:String = StringUtil.trim(param1.advertiserCompetition);
         var _loc6_:String = StringUtil.trim(param2.advertiserCompetition);
         return advertiserCompetitionStringCompare(_loc5_,_loc6_);
      }
      
      public static function advertiserCompetitionStringCompare(param1:String, param2:String) : int
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 60 - 1 + 1 + 111);
         }
         var _loc3_:* = §§pop();
         if(param1 == AdvertiserCompetitionValues.HIGH)
         {
            §§push(3);
            if(_loc6_)
            {
               §§push(--§§pop() - 13 - 1 + 47 + 76 + 104);
            }
         }
         else if(param1 == AdvertiserCompetitionValues.MEDIUM)
         {
            §§push(2);
            if(_loc6_)
            {
               §§push(-(§§pop() + 105) + 1);
            }
         }
         else if(param1 == AdvertiserCompetitionValues.LOW)
         {
            §§push(1);
            if(_loc7_)
            {
               §§push(-(§§pop() - 35 + 43 + 1) * 110);
            }
         }
         else
         {
            §§push(0);
            if(_loc7_)
            {
               §§push((-(§§pop() - 1) - 1 + 28) * 85);
            }
         }
         var _loc4_:int = §§pop();
         if(param2 == AdvertiserCompetitionValues.HIGH)
         {
            §§push(3);
            if(_loc6_)
            {
               §§push(§§pop() - 1 + 54 - 59 + 83);
            }
         }
         else if(param2 == AdvertiserCompetitionValues.MEDIUM)
         {
            §§push(2);
            if(_loc6_)
            {
               §§push(§§pop() - 1 - 62 + 119 + 1 + 85);
            }
         }
         else if(param2 == AdvertiserCompetitionValues.LOW)
         {
            §§push(1);
            if(_loc7_)
            {
               §§push(-§§pop() - 1 + 90 + 3 + 99);
            }
         }
         else
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(-((§§pop() - 1 + 1) * 32 - 1));
            }
         }
         var _loc5_:int = §§pop();
         if(_loc4_ == _loc5_)
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(-((§§pop() + 1) * 106) * 102);
            }
            _loc3_ = §§pop();
         }
         else if(!isDecending && _loc4_ > _loc5_)
         {
            §§push(1);
            if(_loc7_)
            {
               §§push(§§pop() + 1 + 1 - 106);
            }
            _loc3_ = §§pop();
         }
         else if(isDecending && _loc4_ < _loc5_)
         {
            §§push(1);
            if(_loc7_)
            {
               §§push(--(§§pop() * 102 + 111 + 1 - 61 - 1));
            }
            _loc3_ = §§pop();
         }
         else
         {
            §§push(-1);
            if(_loc6_)
            {
               §§push(-(-(§§pop() - 53) - 1 - 1) - 1);
            }
            _loc3_ = §§pop();
         }
         return _loc3_;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         KeywordsDataGrid._watcherSetupUtil = param1;
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
         this.header.addEventListener(GridEvent.GRID_CLICK,this.columnHeaderGroup_clickHandler);
      }
      
      private final function calcDataProvider(param1:KeywordArrayCollection, param2:int) : KeywordArrayCollection
      {
         if(param2 == SpecialFilterConstants.TRASH)
         {
            return this.model.selectedKeywordCollection.trashKeywords;
         }
         return this.model.selectedKeywordCollection;
      }
      
      private final function columnHeaderGroup_clickHandler(param1:GridEvent) : void
      {
         if(!param1.column.sortable)
         {
            return;
         }
         var _loc2_:SortField = new SortField();
         _loc2_.name = param1.column.dataField;
         _loc2_.numeric = (param1.column as FilterGridColumn).numericSort;
         _loc2_.descending = (param1.column as FilterGridColumn).sortDescending;
         var _loc3_:Sort = new Sort();
         _loc3_.fields = [_loc2_];
         if(param1.column.headerText == "Advertiser Competition")
         {
            isDecending = _loc2_.descending;
            _loc3_.compareFunction = advertiserCompetitionSortCompare;
         }
         else
         {
            _loc3_.compareFunction = null;
         }
         (this.keywordList.dataProvider as ArrayCollection).sort = _loc3_;
         (this.keywordList.dataProvider as ArrayCollection).refresh();
      }
      
      private final function _KeywordsDataGrid_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 25 - 112) * 119 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 105 - 1) * 111);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(§§pop() * 65 + 91 + 1);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._KeywordsDataGrid_KeywordsDataGridHeader1_i(),this._KeywordsDataGrid_KeywordsDataGridList1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordsDataGrid_KeywordsDataGridHeader1_i() : KeywordsDataGridHeader
      {
         var _loc1_:KeywordsDataGridHeader = new KeywordsDataGridHeader();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 83 - 1 + 25);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.setStyle("borderVisible",false);
         _loc1_.id = "header";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.header = _loc1_;
         BindingManager.executeBindings(this,"header",this.header);
         return _loc1_;
      }
      
      private final function _KeywordsDataGrid_KeywordsDataGridList1_i() : KeywordsDataGridList
      {
         var _loc1_:KeywordsDataGridList = new KeywordsDataGridList();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 66) * 119 + 1 + 79);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.id = "keywordList";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.keywordList = _loc1_;
         BindingManager.executeBindings(this,"keywordList",this.keywordList);
         return _loc1_;
      }
      
      private final function _KeywordsDataGrid_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(80);
         if(_loc3_)
         {
            §§push(--(§§pop() * 10 + 4) - 117);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1) * 55 * 76 + 1 + 71);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 98 - 1 - 1);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(25);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 39 + 1 + 100);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_KeywordsDataGrid_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordsDataGrid_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordsDataGrid_Label1",this._KeywordsDataGrid_Label1);
         return _loc1_;
      }
      
      public final function ___KeywordsDataGrid_Group1_creationComplete(param1:FlexEvent) : void
      {
         this.creationCompleteHandler(param1);
      }
      
      private final function _KeywordsDataGrid_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 61 + 100 + 1) - 47);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return header.width - 1;
         },null,"keywordList.width");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 25 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return calcDataProvider(model.selectedKeywordCollection,model.selectedKeywordCollection.project.specialFilter);
         },null,"keywordList.dataProvider");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 1 + 16 + 1 + 1 - 38);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "Yikes!  None of your keywords match your filters." + "\n" + "Try adjusting up your filters to see keywords.";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordsDataGrid_Label1.text");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-§§pop() * 58 + 50);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection && §§pop() == §§pop() && §§pop() > §§pop();
         },null,"_KeywordsDataGrid_Label1.visible");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get header() : KeywordsDataGridHeader
      {
         return this._1221270899header;
      }
      
      public function set header(param1:KeywordsDataGridHeader) : void
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
      public function get keywordList() : KeywordsDataGridList
      {
         return this._1298782681keywordList;
      }
      
      public function set keywordList(param1:KeywordsDataGridList) : void
      {
         var _loc2_:Object = this._1298782681keywordList;
         if(_loc2_ !== param1)
         {
            this._1298782681keywordList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordList",_loc2_,param1));
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
   }
}
