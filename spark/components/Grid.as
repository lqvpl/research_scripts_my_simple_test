package spark.components
{
   import spark.components.gridClasses.IDataGridElement;
   import spark.components.supportClasses.IDataProviderEnhance;
   import mx.core.mx_internal;
   import mx.events.CollectionEvent;
   import spark.components.gridClasses.GridView;
   import spark.components.gridClasses.GridLayout;
   import flash.events.Event;
   import mx.events.FlexEvent;
   import spark.components.gridClasses.GridSelectionMode;
   import mx.core.IFactory;
   import spark.components.gridClasses.GridViewLayout;
   import mx.collections.IList;
   import spark.components.gridClasses.GridColumn;
   import mx.collections.ArrayList;
   import mx.utils.ObjectUtil;
   import spark.components.gridClasses.GridDoubleClickMode;
   import spark.components.gridClasses.GridDimensions;
   import spark.components.gridClasses.GridSelection;
   import spark.components.gridClasses.CellPosition;
   import mx.core.UIComponentGlobals;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import spark.components.gridClasses.IGridItemRenderer;
   import mx.core.IVisualElement;
   import spark.components.supportClasses.RegExPatterns;
   import flash.events.MouseEvent;
   import spark.components.gridClasses.GridDimensionsView;
   import spark.events.GridEvent;
   import flash.utils.getTimer;
   import flash.display.InteractiveObject;
   import mx.events.CollectionEventKind;
   import mx.events.PropertyChangeEvent;
   import spark.events.GridCaretEvent;
   import spark.utils.MouseEventUtil;
   
   use namespace mx_internal;
   
   public class Grid extends Group implements IDataGridElement, IDataProviderEnhance
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const invalidateDisplayListReasonBits:Object = {
         "verticalScrollPosition":uint(1 << 0),
         "horizontalScrollPosition":uint(1 << 1),
         "bothScrollPositions":uint(1 << 0) | uint(1 << 1),
         "hoverIndicator":uint(1 << 2),
         "caretIndicator":uint(1 << 3),
         "selectionIndicator":uint(1 << 4),
         "editorIndicator":uint(1 << 5),
         "none":uint(~0)
      };
       
      
      private const deferredOperations:Vector.<Function> = new Vector.<Function>();
      
      private var caretSelectedItem:Object = null;
      
      private var updateCaretForDataProviderChanged:Boolean = false;
      
      private var updateCaretForDataProviderChangeLastEvent:CollectionEvent;
      
      mx_internal var inUpdateDisplayList:Boolean = false;
      
      private var dragInProgress:Boolean = false;
      
      private var generatedColumns:Boolean = false;
      
      private var _anchorColumnIndex:int = 0;
      
      private var anchorChanged:Boolean = false;
      
      private var _anchorRowIndex:int = 0;
      
      private var _caretIndicator:IFactory = null;
      
      private var _caretColumnIndex:int = -1;
      
      private var _oldCaretColumnIndex:int = -1;
      
      private var caretChanged:Boolean = false;
      
      private var _caretRowIndex:int = -1;
      
      private var _oldCaretRowIndex:int = -1;
      
      private var _clipAndEnableScrolling:Boolean = false;
      
      private var _horizontalScrollPosition:Number = 0;
      
      private var _verticalScrollPosition:Number = 0;
      
      private var _hoverIndicator:IFactory = null;
      
      private var _hoverColumnIndex:int = -1;
      
      private var _hoverRowIndex:int = -1;
      
      private var _columns:IList = null;
      
      private var columnsChanged:Boolean = false;
      
      private var _dataProvider:IList = null;
      
      private var dataProviderChanged:Boolean;
      
      private var _dataTipField:String = null;
      
      private var _dataTipFunction:Function = null;
      
      private var _doubleClickMode:String = "row";
      
      private var _gridDimensions:GridDimensions = null;
      
      private var _itemRenderer:IFactory = null;
      
      private var itemRendererChanged:Boolean = false;
      
      private var _columnSeparator:IFactory = null;
      
      private var _gridSelection:GridSelection;
      
      private var _dataGrid:spark.components.DataGrid = null;
      
      private var _lockedColumnCount:int = 0;
      
      private var _lockedColumnsSeparator:IFactory = null;
      
      private var _lockedRowCount:int = 0;
      
      private var _lockedRowsSeparator:IFactory = null;
      
      private var _requestedMaxRowCount:int = 10;
      
      private var _requestedMinRowCount:int = -1;
      
      private var _requestedRowCount:int = -1;
      
      private var _requestedMinColumnCount:int = -1;
      
      private var _requestedColumnCount:int = -1;
      
      private var _resizableColumns:Boolean = true;
      
      private var _rowBackground:IFactory = null;
      
      private var _rowHeight:Number = NaN;
      
      private var rowHeightChanged:Boolean;
      
      private var _rowSeparator:IFactory = null;
      
      private var _selectionIndicator:IFactory = null;
      
      private var _showCaret:Boolean = false;
      
      private var _showDataTips:Boolean = false;
      
      private var _typicalItem:Object = null;
      
      private var typicalItemChanged:Boolean = false;
      
      private var _variableRowHeight:Boolean = false;
      
      private var variableRowHeightChanged:Boolean = false;
      
      private var _gridView:IFactory = null;
      
      private var invalidateDisplayListReasonsMask:uint = 0;
      
      private var clearInvalidateDisplayListReasons:Boolean = false;
      
      private var rollRowIndex:int = -1;
      
      private var rollColumnIndex:int = -1;
      
      private var mouseDownRowIndex:int = -1;
      
      private var mouseDownColumnIndex:int = -1;
      
      private var lastClickedColumnIndex:int = -1;
      
      private var lastClickedRowIndex:int = -1;
      
      private var lastClickTime:Number;
      
      mx_internal var DOUBLE_CLICK_TIME:Number = 480;
      
      public function Grid()
      {
         super();
         layout = new GridLayout();
         MouseEventUtil.addDownDragUpListeners(this,this.grid_mouseDownDragUpHandler,this.grid_mouseDownDragUpHandler,this.grid_mouseDownDragUpHandler);
         addEventListener(MouseEvent.MOUSE_UP,this.grid_mouseUpHandler);
         addEventListener(MouseEvent.MOUSE_MOVE,this.grid_mouseMoveHandler);
         addEventListener(MouseEvent.ROLL_OUT,this.grid_mouseRollOutHandler);
      }
      
      private function getGridViewAt(param1:int, param2:int) : GridView
      {
         if(param1 < 0 && param2 < 0)
         {
            return null;
         }
         var _loc3_:GridLayout = layout as GridLayout;
         if(param1 >= this.lockedRowCount || param1 == -1)
         {
            if(param2 >= this.lockedColumnCount || param2 == -1)
            {
               return _loc3_.centerGridView;
            }
            return _loc3_.leftGridView;
         }
         return param2 < this.lockedColumnCount?_loc3_.topLeftGridView:_loc3_.topGridView;
      }
      
      private function dispatchChangeEvent(param1:String) : void
      {
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
      }
      
      private function dispatchFlexEvent(param1:String) : void
      {
         if(hasEventListener(param1))
         {
            dispatchEvent(new FlexEvent(param1));
         }
      }
      
      [Bindable("anchorColumnIndexChanged")]
      public function get anchorColumnIndex() : int
      {
         return this._anchorColumnIndex;
      }
      
      public function set anchorColumnIndex(param1:int) : void
      {
         if(this._anchorColumnIndex == param1 || this.selectionMode == GridSelectionMode.SINGLE_ROW || this.selectionMode == GridSelectionMode.MULTIPLE_ROWS)
         {
            return;
         }
         this._anchorColumnIndex = param1;
         this.anchorChanged = true;
         invalidateProperties();
         this.dispatchChangeEvent("anchorColumnIndexChanged");
      }
      
      [Bindable("anchorRowIndexChanged")]
      public function get anchorRowIndex() : int
      {
         return this._anchorRowIndex;
      }
      
      public function set anchorRowIndex(param1:int) : void
      {
         if(this._anchorRowIndex == param1)
         {
            return;
         }
         this._anchorRowIndex = param1;
         this.anchorChanged = true;
         invalidateProperties();
         this.dispatchChangeEvent("anchorRowIndexChanged");
      }
      
      [Bindable("caretIndicatorChanged")]
      public function get caretIndicator() : IFactory
      {
         return this._caretIndicator;
      }
      
      public function set caretIndicator(param1:IFactory) : void
      {
         if(this._caretIndicator == param1)
         {
            return;
         }
         this._caretIndicator = param1;
         this.invalidateDisplayListFor("caretIndicator");
         this.dispatchChangeEvent("caretIndicatorChanged");
      }
      
      [Bindable("caretColumnIndexChanged")]
      public function get caretColumnIndex() : int
      {
         return this._caretColumnIndex;
      }
      
      public function set caretColumnIndex(param1:int) : void
      {
         if(this._caretColumnIndex == param1 || param1 < -1)
         {
            return;
         }
         this._caretColumnIndex = param1;
         this.caretChanged = true;
         invalidateProperties();
         this.invalidateDisplayListFor("caretIndicator");
         this.dispatchChangeEvent("caretColumnIndexChanged");
      }
      
      [Bindable("caretRowIndexChanged")]
      public function get caretRowIndex() : int
      {
         return this._caretRowIndex;
      }
      
      public function set caretRowIndex(param1:int) : void
      {
         if(this._caretRowIndex == param1 || param1 < -1)
         {
            return;
         }
         this._caretRowIndex = param1;
         this.caretChanged = true;
         invalidateProperties();
         this.invalidateDisplayListFor("caretIndicator");
         this.dispatchChangeEvent("caretRowIndexChanged");
      }
      
      override public function get clipAndEnableScrolling() : Boolean
      {
         return this._clipAndEnableScrolling;
      }
      
      override public function set clipAndEnableScrolling(param1:Boolean) : void
      {
         var _loc2_:GridLayout = null;
         if(param1 == this._clipAndEnableScrolling)
         {
            return;
         }
         this._clipAndEnableScrolling = param1;
         _loc2_ = layout as GridLayout;
         var _loc3_:GridView = _loc2_.topGridView;
         var _loc4_:GridView = _loc2_.leftGridView;
         var _loc5_:GridView = _loc2_.centerGridView;
         if(_loc3_)
         {
            _loc3_.clipAndEnableScrolling = param1;
         }
         if(_loc4_)
         {
            _loc4_.clipAndEnableScrolling = param1;
         }
         if(_loc5_)
         {
            _loc5_.clipAndEnableScrolling = param1;
         }
      }
      
      override public function get contentHeight() : Number
      {
         return Math.ceil(this.gridDimensions.getContentHeight());
      }
      
      override public function get contentWidth() : Number
      {
         return Math.ceil(this.gridDimensions.getContentWidth());
      }
      
      [Bindable(event="propertyChange")]
      override public function get horizontalScrollPosition() : Number
      {
         return this._horizontalScrollPosition;
      }
      
      public function set _754184102horizontalScrollPosition(param1:Number) : void
      {
         var _loc2_:GridLayout = null;
         var _loc5_:GridViewLayout = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         if(this._horizontalScrollPosition == param1)
         {
            return;
         }
         _loc2_ = layout as GridLayout;
         var _loc3_:GridView = _loc2_.topGridView;
         var _loc4_:GridView = _loc2_.centerGridView;
         if(_loc4_)
         {
            _loc5_ = _loc4_.gridViewLayout;
            _loc6_ = this.contentWidth - width;
            _loc7_ = Math.ceil(_loc5_.gridDimensionsView.getContentWidth());
            _loc8_ = _loc7_ - _loc4_.width;
            _loc9_ = _loc6_ > 0?Number(_loc8_ / _loc6_ * param1):Number(0);
            _loc4_.horizontalScrollPosition = _loc9_;
            if(_loc3_)
            {
               _loc3_.horizontalScrollPosition = _loc9_;
            }
         }
         this._horizontalScrollPosition = param1;
      }
      
      public function get isFirstRow() : Boolean
      {
         if(this.dataProvider && this.dataProvider.length > 0)
         {
            if(this.selectedIndex == 0)
            {
               return true;
            }
            return false;
         }
         return false;
      }
      
      public function get isLastRow() : Boolean
      {
         if(this.dataProvider && this.dataProvider.length > 0)
         {
            if(this.selectedIndex == this.dataProvider.length - 1)
            {
               return true;
            }
            return false;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      override public function get verticalScrollPosition() : Number
      {
         return this._verticalScrollPosition;
      }
      
      public function set _1010846676verticalScrollPosition(param1:Number) : void
      {
         var _loc2_:GridLayout = null;
         var _loc5_:GridViewLayout = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         if(this._verticalScrollPosition == param1)
         {
            return;
         }
         _loc2_ = layout as GridLayout;
         var _loc3_:GridView = _loc2_.leftGridView;
         var _loc4_:GridView = _loc2_.centerGridView;
         if(_loc4_)
         {
            _loc5_ = _loc4_.gridViewLayout;
            _loc6_ = this.contentHeight - height;
            _loc7_ = Math.ceil(_loc5_.gridDimensionsView.getContentHeight());
            _loc8_ = _loc7_ - _loc4_.height;
            _loc9_ = _loc6_ > 0?Number(_loc8_ / _loc6_ * param1):Number(0);
            _loc4_.verticalScrollPosition = _loc9_;
            if(_loc3_)
            {
               _loc3_.verticalScrollPosition = _loc9_;
            }
         }
         this._verticalScrollPosition = param1;
      }
      
      [Bindable("hoverIndicatorChanged")]
      public function get hoverIndicator() : IFactory
      {
         return this._hoverIndicator;
      }
      
      public function set hoverIndicator(param1:IFactory) : void
      {
         if(this._hoverIndicator == param1)
         {
            return;
         }
         this._hoverIndicator = param1;
         this.invalidateDisplayListFor("hoverIndicator");
         this.dispatchChangeEvent("hoverIndicatorChanged");
      }
      
      [Bindable("hoverColumnIndexChanged")]
      public function get hoverColumnIndex() : int
      {
         return this._hoverColumnIndex;
      }
      
      public function set hoverColumnIndex(param1:int) : void
      {
         if(this._hoverColumnIndex == param1)
         {
            return;
         }
         this._hoverColumnIndex = param1;
         this.invalidateDisplayListFor("hoverIndicator");
         this.dispatchChangeEvent("hoverColumnIndexChanged");
      }
      
      [Bindable("hoverRowIndexChanged")]
      public function get hoverRowIndex() : int
      {
         return this._hoverRowIndex;
      }
      
      public function set hoverRowIndex(param1:int) : void
      {
         if(this._hoverRowIndex == param1)
         {
            return;
         }
         this._hoverRowIndex = param1;
         this.invalidateDisplayListFor("hoverIndicator");
         this.dispatchChangeEvent("hoverRowIndexChanged");
      }
      
      [Bindable("columnsChanged")]
      public function get columns() : IList
      {
         return this._columns;
      }
      
      public function set columns(param1:IList) : void
      {
         var _loc4_:int = 0;
         var _loc5_:GridColumn = null;
         var _loc6_:GridColumn = null;
         if(this._columns == param1)
         {
            return;
         }
         var _loc2_:IList = this._columns;
         if(_loc2_)
         {
            _loc2_.removeEventListener(CollectionEvent.COLLECTION_CHANGE,this.columns_collectionChangeHandler);
            _loc4_ = 0;
            while(_loc4_ < _loc2_.length)
            {
               _loc5_ = GridColumn(_loc2_.getItemAt(_loc4_));
               _loc5_.setGrid(null);
               _loc5_.setColumnIndex(-1);
               _loc4_++;
            }
         }
         this._columns = param1;
         var _loc3_:IList = this._columns;
         if(_loc3_)
         {
            _loc3_.addEventListener(CollectionEvent.COLLECTION_CHANGE,this.columns_collectionChangeHandler,false,0,true);
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc6_ = GridColumn(_loc3_.getItemAt(_loc4_));
               _loc6_.setGrid(this);
               _loc6_.setColumnIndex(_loc4_);
               _loc4_++;
            }
         }
         this.columnsChanged = true;
         this.generatedColumns = false;
         invalidateProperties();
         this.invalidateSize();
         this.invalidateDisplayList();
         this.dispatchChangeEvent("columnsChanged");
      }
      
      private function getColumnsLength() : uint
      {
         var _loc1_:IList = this.columns;
         return !!_loc1_?uint(_loc1_.length):uint(0);
      }
      
      private function generateColumns() : IList
      {
         var _loc3_:Object = null;
         var _loc4_:QName = null;
         var _loc5_:GridColumn = null;
         var _loc1_:Object = this.typicalItem;
         if(!_loc1_ && this.dataProvider && this.dataProvider.length > 0)
         {
            _loc1_ = this.dataProvider.getItemAt(0);
         }
         var _loc2_:IList = null;
         if(_loc1_)
         {
            _loc2_ = new ArrayList();
            _loc3_ = ObjectUtil.getClassInfo(_loc1_,["uid","mx_internal_uid"]);
            if(_loc3_)
            {
               for each(_loc4_ in _loc3_.properties)
               {
                  _loc5_ = new GridColumn();
                  _loc5_.dataField = _loc4_.localName;
                  _loc2_.addItem(_loc5_);
               }
            }
         }
         return _loc2_;
      }
      
      [Bindable("dataProviderChanged")]
      public function get dataProvider() : IList
      {
         return this._dataProvider;
      }
      
      public function set dataProvider(param1:IList) : void
      {
         if(this._dataProvider == param1)
         {
            return;
         }
         var _loc2_:IList = this.dataProvider;
         if(_loc2_)
         {
            _loc2_.removeEventListener(CollectionEvent.COLLECTION_CHANGE,this.dataProvider_collectionChangeHandler);
         }
         this._dataProvider = param1;
         var _loc3_:IList = this.dataProvider;
         if(_loc3_)
         {
            _loc3_.addEventListener(CollectionEvent.COLLECTION_CHANGE,this.dataProvider_collectionChangeHandler,false,0,true);
         }
         this.dataProviderChanged = true;
         invalidateProperties();
         this.invalidateSize();
         this.invalidateDisplayList();
         this.dispatchChangeEvent("dataProviderChanged");
      }
      
      [Bindable("dataTipFieldChanged")]
      public function get dataTipField() : String
      {
         return this._dataTipField;
      }
      
      public function set dataTipField(param1:String) : void
      {
         if(this._dataTipField == param1)
         {
            return;
         }
         this._dataTipField = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("dataTipFieldChanged");
      }
      
      [Bindable("dataTipFunctionChanged")]
      public function get dataTipFunction() : Function
      {
         return this._dataTipFunction;
      }
      
      public function set dataTipFunction(param1:Function) : void
      {
         if(this._dataTipFunction == param1)
         {
            return;
         }
         this._dataTipFunction = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("dataTipFunctionChanged");
      }
      
      [Bindable("doubleClickModeChanged")]
      public function get doubleClickMode() : String
      {
         return this._doubleClickMode;
      }
      
      public function set doubleClickMode(param1:String) : void
      {
         if(param1 == this._doubleClickMode)
         {
            return;
         }
         switch(param1)
         {
            case GridDoubleClickMode.CELL:
            case GridDoubleClickMode.GRID:
            case GridDoubleClickMode.ROW:
               this._doubleClickMode = param1;
               this.dispatchChangeEvent("doubleClickModeChanged");
         }
      }
      
      mx_internal function get gridDimensions() : GridDimensions
      {
         if(!this._gridDimensions)
         {
            this._gridDimensions = new GridDimensions();
         }
         return this._gridDimensions;
      }
      
      [Bindable("itemRendererChanged")]
      public function get itemRenderer() : IFactory
      {
         return this._itemRenderer;
      }
      
      public function set itemRenderer(param1:IFactory) : void
      {
         if(this._itemRenderer == param1)
         {
            return;
         }
         this._itemRenderer = param1;
         this.itemRendererChanged = true;
         invalidateProperties();
         this.invalidateSize();
         this.invalidateDisplayList();
         this.dispatchChangeEvent("itemRendererChanged");
      }
      
      [Bindable("columnSeparatorChanged")]
      public function get columnSeparator() : IFactory
      {
         return this._columnSeparator;
      }
      
      public function set columnSeparator(param1:IFactory) : void
      {
         if(this._columnSeparator == param1)
         {
            return;
         }
         this._columnSeparator = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("columnSeparatorChanged");
      }
      
      mx_internal function get gridSelection() : GridSelection
      {
         if(!this._gridSelection)
         {
            this._gridSelection = this.createGridSelection();
         }
         return this._gridSelection;
      }
      
      mx_internal function set gridSelection(param1:GridSelection) : void
      {
         this._gridSelection = param1;
      }
      
      [Bindable("dataGridChanged")]
      public function get dataGrid() : spark.components.DataGrid
      {
         return this._dataGrid;
      }
      
      public function set dataGrid(param1:spark.components.DataGrid) : void
      {
         if(this._dataGrid == param1)
         {
            return;
         }
         this._dataGrid = param1;
         this.dispatchChangeEvent("dataGridChanged");
      }
      
      [Bindable("lockedColumnCountChanged")]
      public function get lockedColumnCount() : int
      {
         return this._lockedColumnCount;
      }
      
      public function set lockedColumnCount(param1:int) : void
      {
         if(this._lockedColumnCount == param1)
         {
            return;
         }
         invalidateProperties();
         this.invalidateSize();
         this.invalidateDisplayList();
         this._lockedColumnCount = param1;
         this.dispatchChangeEvent("lockedColumnCountChanged");
      }
      
      [Bindable("lockedColumnsSeparatorChanged")]
      public function get lockedColumnsSeparator() : IFactory
      {
         return this._lockedColumnsSeparator;
      }
      
      public function set lockedColumnsSeparator(param1:IFactory) : void
      {
         if(this._lockedColumnsSeparator == param1)
         {
            return;
         }
         this._lockedColumnsSeparator = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("lockedColumnsSeparatorChanged");
      }
      
      [Bindable("lockedRowCountChanged")]
      public function get lockedRowCount() : int
      {
         return this._lockedRowCount;
      }
      
      public function set lockedRowCount(param1:int) : void
      {
         if(this._lockedRowCount == param1)
         {
            return;
         }
         invalidateProperties();
         this.invalidateSize();
         this.invalidateDisplayList();
         this._lockedRowCount = param1;
         this.dispatchChangeEvent("lockedRowCountChanged");
      }
      
      [Bindable("lockedRowsSeparatorChanged")]
      public function get lockedRowsSeparator() : IFactory
      {
         return this._lockedRowsSeparator;
      }
      
      public function set lockedRowsSeparator(param1:IFactory) : void
      {
         if(this._lockedRowsSeparator == param1)
         {
            return;
         }
         this._lockedRowsSeparator = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("lockedRowsSeparatorChanged");
      }
      
      public function get preserveSelection() : Boolean
      {
         return this.gridSelection.preserveSelection;
      }
      
      public function set preserveSelection(param1:Boolean) : void
      {
         this.gridSelection.preserveSelection = param1;
      }
      
      public function get requestedMaxRowCount() : int
      {
         return this._requestedMaxRowCount;
      }
      
      public function set requestedMaxRowCount(param1:int) : void
      {
         if(this._requestedMaxRowCount == param1)
         {
            return;
         }
         this._requestedMaxRowCount = param1;
         this.invalidateSize();
      }
      
      public function get requestedMinRowCount() : int
      {
         return this._requestedMinRowCount;
      }
      
      public function set requestedMinRowCount(param1:int) : void
      {
         if(this._requestedMinRowCount == param1)
         {
            return;
         }
         this._requestedMinRowCount = param1;
         this.invalidateSize();
      }
      
      public function get requestedRowCount() : int
      {
         return this._requestedRowCount;
      }
      
      public function set requestedRowCount(param1:int) : void
      {
         if(this._requestedRowCount == param1)
         {
            return;
         }
         this._requestedRowCount = param1;
         this.invalidateSize();
      }
      
      public function get requestedMinColumnCount() : int
      {
         return this._requestedMinColumnCount;
      }
      
      public function set requestedMinColumnCount(param1:int) : void
      {
         if(this._requestedMinColumnCount == param1)
         {
            return;
         }
         this._requestedMinColumnCount = param1;
         this.invalidateSize();
      }
      
      public function get requestedColumnCount() : int
      {
         return this._requestedColumnCount;
      }
      
      public function set requestedColumnCount(param1:int) : void
      {
         if(this._requestedColumnCount == param1)
         {
            return;
         }
         this._requestedColumnCount = param1;
         this.invalidateSize();
      }
      
      public function get requireSelection() : Boolean
      {
         return this.gridSelection.requireSelection;
      }
      
      public function set requireSelection(param1:Boolean) : void
      {
         this.gridSelection.requireSelection = param1;
         if(param1)
         {
            this.invalidateDisplayListFor("selectionIndicator");
         }
      }
      
      [Bindable("resizableColumnsChanged")]
      public function get resizableColumns() : Boolean
      {
         return this._resizableColumns;
      }
      
      public function set resizableColumns(param1:Boolean) : void
      {
         if(param1 == this.resizableColumns)
         {
            return;
         }
         this._resizableColumns = param1;
         this.dispatchChangeEvent("resizableColumnsChanged");
      }
      
      [Bindable("rowBackgroundChanged")]
      public function get rowBackground() : IFactory
      {
         return this._rowBackground;
      }
      
      public function set rowBackground(param1:IFactory) : void
      {
         if(this._rowBackground == param1)
         {
            return;
         }
         this._rowBackground = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("rowBackgroundChanged");
      }
      
      [Bindable("rowHeightChanged")]
      public function get rowHeight() : Number
      {
         return this._rowHeight;
      }
      
      public function set rowHeight(param1:Number) : void
      {
         if(this._rowHeight == param1)
         {
            return;
         }
         this._rowHeight = param1;
         this.rowHeightChanged = true;
         invalidateProperties();
         this.dispatchChangeEvent("rowHeightChanged");
      }
      
      private function setFixedRowHeight(param1:Number) : void
      {
         if(this._rowHeight == param1)
         {
            return;
         }
         this._rowHeight = param1;
         this.dispatchChangeEvent("rowHeightChanged");
      }
      
      [Bindable("rowSeparatorChanged")]
      public function get rowSeparator() : IFactory
      {
         return this._rowSeparator;
      }
      
      public function set rowSeparator(param1:IFactory) : void
      {
         if(this._rowSeparator == param1)
         {
            return;
         }
         this._rowSeparator = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("rowSeparatorChanged");
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedCell() : CellPosition
      {
         var _loc1_:Vector.<CellPosition> = this.gridSelection.allCells();
         return !!_loc1_.length?_loc1_[0]:null;
      }
      
      public function set selectedCell(param1:CellPosition) : void
      {
         var rowIndex:int = 0;
         var columnIndex:int = 0;
         var f:Function = null;
         var value:CellPosition = param1;
         rowIndex = !!value?int(value.rowIndex):-1;
         columnIndex = !!value?int(value.columnIndex):-1;
         if(!initialized)
         {
            f = function():void
            {
               if(rowIndex != -1 && columnIndex != -1)
               {
                  setSelectedCell(rowIndex,columnIndex);
               }
               else
               {
                  clearSelection();
               }
            };
            this.deferredOperations.push(f);
            invalidateProperties();
         }
         else if(rowIndex != -1 && columnIndex != -1)
         {
            this.setSelectedCell(rowIndex,columnIndex);
         }
         else
         {
            this.clearSelection();
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedCells() : Vector.<CellPosition>
      {
         return this.gridSelection.allCells();
      }
      
      public function set selectedCells(param1:Vector.<CellPosition>) : void
      {
         var valueCopy:Vector.<CellPosition> = null;
         var cell:CellPosition = null;
         var f:Function = null;
         var value:Vector.<CellPosition> = param1;
         valueCopy = new Vector.<CellPosition>(0);
         if(value)
         {
            for each(cell in value)
            {
               valueCopy.push(new CellPosition(cell.rowIndex,cell.columnIndex));
            }
         }
         if(!initialized)
         {
            f = function():void
            {
               doSetSelectedCells(valueCopy);
            };
            this.deferredOperations.push(f);
            invalidateProperties();
         }
         else
         {
            this.doSetSelectedCells(valueCopy);
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedIndex() : int
      {
         var _loc1_:Vector.<int> = this.gridSelection.allRows();
         return _loc1_.length > 0?int(_loc1_[0]):-1;
      }
      
      public function set selectedIndex(param1:int) : void
      {
         var f:Function = null;
         var value:int = param1;
         if(!initialized)
         {
            f = function():void
            {
               if(value != -1)
               {
                  setSelectedIndex(value);
               }
               else
               {
                  clearSelection();
               }
            };
            this.deferredOperations.push(f);
            invalidateProperties();
         }
         else if(value != -1)
         {
            this.setSelectedIndex(value);
         }
         else
         {
            this.clearSelection();
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedIndices() : Vector.<int>
      {
         return this.gridSelection.allRows();
      }
      
      public function set selectedIndices(param1:Vector.<int>) : void
      {
         var valueCopy:Vector.<int> = null;
         var f:Function = null;
         var value:Vector.<int> = param1;
         valueCopy = !!value?value.concat():new Vector.<int>(0);
         if(!initialized)
         {
            f = function():void
            {
               doSetSelectedIndices(valueCopy);
            };
            this.deferredOperations.push(f);
            invalidateProperties();
         }
         else
         {
            this.doSetSelectedIndices(valueCopy);
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedItem() : Object
      {
         var _loc1_:int = this.selectedIndex;
         if(_loc1_ == -1)
         {
            return undefined;
         }
         return this.getDataProviderItem(_loc1_);
      }
      
      public function set selectedItem(param1:Object) : void
      {
         var f:Function = null;
         var rowIndex:int = 0;
         var value:Object = param1;
         if(!initialized)
         {
            f = function():void
            {
               if(!dataProvider)
               {
                  return;
               }
               var _loc1_:int = dataProvider.getItemIndex(value);
               if(_loc1_ == -1)
               {
                  clearSelection();
               }
               else
               {
                  setSelectedIndex(_loc1_);
               }
            };
            this.deferredOperations.push(f);
            invalidateProperties();
         }
         else
         {
            if(!this.dataProvider)
            {
               return;
            }
            rowIndex = this.dataProvider.getItemIndex(value);
            if(rowIndex == -1)
            {
               this.clearSelection();
            }
            else
            {
               this.setSelectedIndex(rowIndex);
            }
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedItems() : Vector.<Object>
      {
         var _loc3_:int = 0;
         var _loc1_:Vector.<int> = this.selectedIndices;
         if(_loc1_.length == 0)
         {
            return undefined;
         }
         var _loc2_:Vector.<Object> = new Vector.<Object>();
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push(this.dataProvider.getItemAt(_loc3_));
         }
         return _loc2_;
      }
      
      public function set selectedItems(param1:Vector.<Object>) : void
      {
         var valueCopy:Vector.<Object> = null;
         var f:Function = null;
         var value:Vector.<Object> = param1;
         valueCopy = !!value?value.concat():new Vector.<Object>(0);
         if(!initialized)
         {
            f = function():void
            {
               doSetSelectedItems(valueCopy);
            };
            this.deferredOperations.push(f);
            invalidateProperties();
         }
         else
         {
            this.doSetSelectedItems(valueCopy);
         }
      }
      
      [Bindable("selectionIndicatorChanged")]
      public function get selectionIndicator() : IFactory
      {
         return this._selectionIndicator;
      }
      
      public function set selectionIndicator(param1:IFactory) : void
      {
         if(this._selectionIndicator == param1)
         {
            return;
         }
         this._selectionIndicator = param1;
         this.invalidateDisplayListFor("selectionIndicator");
         this.dispatchChangeEvent("selectionIndicatorChanged");
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectionLength() : int
      {
         return this.gridSelection.selectionLength;
      }
      
      [Bindable("selectionModeChanged")]
      public function get selectionMode() : String
      {
         return this.gridSelection.selectionMode;
      }
      
      public function set selectionMode(param1:String) : void
      {
         if(this.selectionMode == param1)
         {
            return;
         }
         this.gridSelection.selectionMode = param1;
         if(this.selectionMode != param1)
         {
            return;
         }
         this.initializeAnchorPosition();
         if(!this.requireSelection)
         {
            this.initializeCaretPosition();
         }
         this.invalidateDisplayListFor("selectionIndicator");
         this.dispatchChangeEvent("selectionModeChanged");
      }
      
      [Bindable("showCaretChanged")]
      public function get showCaret() : Boolean
      {
         return this._showCaret;
      }
      
      public function set showCaret(param1:Boolean) : void
      {
         if(this._showCaret == param1)
         {
            return;
         }
         this._showCaret = param1;
         this.invalidateDisplayListFor("caretIndicator");
         this.dispatchChangeEvent("showCaretChanged");
      }
      
      [Bindable("showDataTipsChanged")]
      public function get showDataTips() : Boolean
      {
         return this._showDataTips;
      }
      
      public function set showDataTips(param1:Boolean) : void
      {
         if(this._showDataTips == param1)
         {
            return;
         }
         this._showDataTips = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("showDataTipsChanged");
      }
      
      [Bindable("typicalItemChanged")]
      public function get typicalItem() : Object
      {
         return this._typicalItem;
      }
      
      public function set typicalItem(param1:Object) : void
      {
         if(this._typicalItem == param1)
         {
            return;
         }
         this._typicalItem = param1;
         this.invalidateTypicalItemRenderer();
         this.dispatchChangeEvent("typicalItemChanged");
      }
      
      public function invalidateTypicalItemRenderer() : void
      {
         this.typicalItemChanged = true;
         invalidateProperties();
         this.invalidateSize();
         this.invalidateDisplayList();
      }
      
      [Bindable("variableRowHeightChanged")]
      public function get variableRowHeight() : Boolean
      {
         return this._variableRowHeight;
      }
      
      public function set variableRowHeight(param1:Boolean) : void
      {
         if(param1 == this.variableRowHeight)
         {
            return;
         }
         this._variableRowHeight = param1;
         this.variableRowHeightChanged = true;
         invalidateProperties();
         this.dispatchChangeEvent("variableRowHeightChanged");
      }
      
      [Bindable("gridViewChanged")]
      public function get gridView() : IFactory
      {
         return this._gridView;
      }
      
      public function set gridView(param1:IFactory) : void
      {
         if(param1 == this._gridView)
         {
            return;
         }
         this._gridView = param1;
         invalidateProperties();
         this.dispatchChangeEvent("gridViewChanged");
      }
      
      public function selectAll() : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc1_:Boolean = this.gridSelection.selectAll();
         if(_loc1_)
         {
            this.initializeCaretPosition();
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         return _loc1_;
      }
      
      public function clearSelection() : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc1_:Boolean = this.gridSelection.removeAll();
         if(_loc1_)
         {
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         this.initializeCaretPosition();
         this.initializeAnchorPosition();
         return _loc1_;
      }
      
      public function selectionContainsIndex(param1:int) : Boolean
      {
         return this.gridSelection.containsRow(param1);
      }
      
      public function selectionContainsIndices(param1:Vector.<int>) : Boolean
      {
         return this.gridSelection.containsRows(param1);
      }
      
      public function setSelectedIndex(param1:int) : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc2_:Boolean = this.gridSelection.setRow(param1);
         if(_loc2_)
         {
            this.caretRowIndex = param1;
            this.caretColumnIndex = -1;
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         return _loc2_;
      }
      
      public function addSelectedIndex(param1:int) : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc2_:Boolean = this.gridSelection.addRow(param1);
         if(_loc2_)
         {
            this.caretRowIndex = param1;
            this.caretColumnIndex = -1;
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         return _loc2_;
      }
      
      public function removeSelectedIndex(param1:int) : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc2_:Boolean = this.gridSelection.removeRow(param1);
         if(_loc2_)
         {
            this.caretRowIndex = param1;
            this.caretColumnIndex = -1;
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         return _loc2_;
      }
      
      public function selectIndices(param1:int, param2:int) : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc3_:Boolean = this.gridSelection.setRows(param1,param2);
         if(_loc3_)
         {
            this.caretRowIndex = param1 + param2 - 1;
            this.caretColumnIndex = -1;
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         return _loc3_;
      }
      
      public function selectionContainsCell(param1:int, param2:int) : Boolean
      {
         return this.gridSelection.containsCell(param1,param2);
      }
      
      public function selectionContainsCellRegion(param1:int, param2:int, param3:int, param4:int) : Boolean
      {
         return this.gridSelection.containsCellRegion(param1,param2,param3,param4);
      }
      
      public function setSelectedCell(param1:int, param2:int) : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc3_:Boolean = this.gridSelection.setCell(param1,param2);
         if(_loc3_)
         {
            this.caretRowIndex = param1;
            this.caretColumnIndex = param2;
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         return _loc3_;
      }
      
      public function addSelectedCell(param1:int, param2:int) : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc3_:Boolean = this.gridSelection.addCell(param1,param2);
         if(_loc3_)
         {
            this.caretRowIndex = param1;
            this.caretColumnIndex = param2;
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         return _loc3_;
      }
      
      public function removeSelectedCell(param1:int, param2:int) : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc3_:Boolean = this.gridSelection.removeCell(param1,param2);
         if(_loc3_)
         {
            this.caretRowIndex = param1;
            this.caretColumnIndex = param2;
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         return _loc3_;
      }
      
      public function selectCellRegion(param1:int, param2:int, param3:uint, param4:uint) : Boolean
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc5_:Boolean = this.gridSelection.setCellRegion(param1,param2,param3,param4);
         if(_loc5_)
         {
            this.caretRowIndex = param1 + param3 - 1;
            this.caretColumnIndex = param2 + param4 - 1;
            this.invalidateDisplayListFor("selectionIndicator");
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
         return _loc5_;
      }
      
      private function doSetSelectedCells(param1:Vector.<CellPosition>) : void
      {
         var _loc2_:CellPosition = null;
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         this.gridSelection.removeAll();
         for each(_loc2_ in param1)
         {
            this.gridSelection.addCell(_loc2_.rowIndex,_loc2_.columnIndex);
         }
         this.doFinalizeSetSelection(!!_loc2_?int(_loc2_.rowIndex):-1,!!_loc2_?int(_loc2_.columnIndex):-1);
      }
      
      private function doSetSelectedIndices(param1:Vector.<int>) : void
      {
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc2_:int = -1;
         this.gridSelection.removeAll();
         for each(_loc2_ in param1)
         {
            this.gridSelection.addRow(_loc2_);
         }
         this.doFinalizeSetSelection(_loc2_,-1);
      }
      
      private function doSetSelectedItems(param1:Vector.<Object>) : void
      {
         var _loc3_:Object = null;
         if(!this.dataProvider)
         {
            return;
         }
         if(invalidatePropertiesFlag)
         {
            UIComponentGlobals.layoutManager.validateClient(this,false);
         }
         var _loc2_:int = -1;
         this.gridSelection.removeAll();
         for each(_loc3_ in param1)
         {
            _loc2_ = this.dataProvider.getItemIndex(_loc3_);
            this.gridSelection.addRow(_loc2_);
         }
         this.doFinalizeSetSelection(_loc2_,-1);
      }
      
      private function doFinalizeSetSelection(param1:int, param2:int) : void
      {
         this.initializeAnchorPosition();
         this.caretRowIndex = param1;
         this.caretColumnIndex = param2;
         this.invalidateDisplayListFor("selectionIndicator");
         this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
      }
      
      private function scrollToIndex(param1:GridView, param2:int, param3:Boolean, param4:Boolean) : Boolean
      {
         var _loc5_:Point = param1.gridViewLayout.getScrollPositionDeltaToElement(param2);
         if(!_loc5_)
         {
            return false;
         }
         if(_loc5_.y != 0 && param1.gridViewLayout.verticalScrollingLocked)
         {
            return false;
         }
         if(_loc5_.x != 0 && param1.gridViewLayout.horizontalScrollingLocked)
         {
            return false;
         }
         var _loc6_:* = false;
         if(param3)
         {
            this.horizontalScrollPosition = this.horizontalScrollPosition + _loc5_.x;
            _loc6_ = _loc5_.x != 0;
         }
         if(param4)
         {
            this.verticalScrollPosition = this.verticalScrollPosition + _loc5_.y;
            _loc6_ = Boolean(_loc6_ || _loc5_.y != 0);
         }
         return _loc6_;
      }
      
      public function ensureCellIsVisible(param1:int = -1, param2:int = -1) : void
      {
         var _loc7_:GridViewLayout = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc13_:Vector.<int> = null;
         var _loc3_:IList = this.columns;
         if(!_loc3_ || param2 < -1 || param2 >= _loc3_.length || !this.dataProvider || param1 < -1 || param1 >= this.dataProvider.length || param2 == -1 && param1 == -1)
         {
            return;
         }
         if(param2 == -1 && this.getNextVisibleColumnIndex(-1) == -1 || param2 != -1 && !GridColumn(_loc3_.getItemAt(param2)).visible)
         {
            return;
         }
         var _loc4_:* = param2 != -1;
         var _loc5_:* = param1 != -1;
         if(param2 < this.lockedColumnCount && param1 < this.lockedRowCount)
         {
            return;
         }
         if(!_loc5_ && param2 < this.lockedColumnCount)
         {
            return;
         }
         if(!_loc4_ && param1 < this.lockedRowCount)
         {
            return;
         }
         if(this.getVisibleRowIndices().length == 0 || this.getVisibleColumnIndices().length == 0)
         {
            validateNow();
         }
         if(!_loc4_)
         {
            param2 = 0;
         }
         var _loc6_:GridView = this.getGridViewAt(param1,param2);
         if(!_loc6_ || _loc6_.getLayoutBoundsX() >= getLayoutBoundsWidth() || _loc6_.getLayoutBoundsY() >= getLayoutBoundsHeight())
         {
            return;
         }
         if(!_loc5_)
         {
            _loc13_ = _loc6_.gridViewLayout.getVisibleRowIndices();
            param1 = _loc13_.length > 0?int(_loc13_[0]):0;
         }
         _loc7_ = _loc6_.gridViewLayout;
         _loc8_ = param1 - _loc7_.viewRowIndex;
         _loc9_ = param2 - _loc7_.viewColumnIndex;
         var _loc10_:int = _loc8_ * _loc7_.columnsView.length + _loc9_;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         while(true)
         {
            _loc11_ = this.scrollToIndex(_loc6_,_loc10_,_loc4_,_loc5_);
            if(!this.variableRowHeight && !_loc4_)
            {
               break;
            }
            if(!_loc12_ && !_loc11_)
            {
               return;
            }
            validateNow();
            _loc12_ = false;
            if(this.isCellVisible(!!_loc5_?int(param1):-1,!!_loc4_?int(param2):-1))
            {
               this.scrollToIndex(_loc6_,_loc10_,_loc4_,_loc5_);
               return;
            }
         }
      }
      
      public function getVisibleRowIndices() : Vector.<int>
      {
         var _loc1_:GridLayout = null;
         _loc1_ = layout as GridLayout;
         var _loc2_:GridView = _loc1_.topGridView;
         var _loc3_:GridView = _loc1_.centerGridView;
         if(!_loc3_)
         {
            return new Vector.<int>(0);
         }
         var _loc4_:Vector.<int> = _loc3_.gridViewLayout.getVisibleRowIndices();
         if(!_loc2_)
         {
            return _loc4_;
         }
         var _loc5_:Vector.<int> = _loc2_.gridViewLayout.getVisibleRowIndices();
         return _loc5_.concat(_loc4_);
      }
      
      public function getVisibleColumnIndices() : Vector.<int>
      {
         var _loc1_:GridLayout = null;
         var _loc3_:GridView = null;
         _loc1_ = layout as GridLayout;
         var _loc2_:GridView = _loc1_.leftGridView;
         _loc3_ = _loc1_.centerGridView;
         var _loc4_:Vector.<int> = _loc3_.gridViewLayout.getVisibleColumnIndices();
         if(!_loc2_)
         {
            return _loc4_;
         }
         var _loc5_:Vector.<int> = _loc2_.gridViewLayout.getVisibleColumnIndices();
         return _loc5_.concat(_loc4_);
      }
      
      public function getCellBounds(param1:int, param2:int) : Rectangle
      {
         return this.gridDimensions.getCellBounds(param1,param2);
      }
      
      public function getRowBounds(param1:int) : Rectangle
      {
         return this.gridDimensions.getRowBounds(param1);
      }
      
      public function getColumnBounds(param1:int) : Rectangle
      {
         return this.gridDimensions.getColumnBounds(param1);
      }
      
      public function getRowIndexAt(param1:Number, param2:Number) : int
      {
         return this.gridDimensions.getRowIndexAt(param1,param2);
      }
      
      public function getColumnIndexAt(param1:Number, param2:Number) : int
      {
         return this.gridDimensions.getColumnIndexAt(param1,param2);
      }
      
      public function getColumnWidth(param1:int) : Number
      {
         var _loc2_:GridColumn = this.getGridColumn(param1);
         return _loc2_ && !isNaN(_loc2_.width)?Number(_loc2_.width):Number(this.gridDimensions.getColumnWidth(param1));
      }
      
      public function getCellAt(param1:Number, param2:Number) : CellPosition
      {
         var _loc3_:int = this.gridDimensions.getRowIndexAt(param1,param2);
         var _loc4_:int = this.gridDimensions.getColumnIndexAt(param1,param2);
         if(_loc3_ == -1 || _loc4_ == -1)
         {
            return null;
         }
         return new CellPosition(_loc3_,_loc4_);
      }
      
      public function getCellsAt(param1:Number, param2:Number, param3:Number, param4:Number) : Vector.<CellPosition>
      {
         var _loc9_:int = 0;
         var _loc5_:Vector.<CellPosition> = new Vector.<CellPosition>();
         if(param3 <= 0 || param4 <= 0)
         {
            return _loc5_;
         }
         var _loc6_:CellPosition = this.getCellAt(param1,param2);
         var _loc7_:CellPosition = this.getCellAt(param1 + param3,param2 + param4);
         if(!_loc6_ || !_loc7_)
         {
            return _loc5_;
         }
         var _loc8_:int = _loc6_.rowIndex;
         while(_loc8_ <= _loc7_.rowIndex)
         {
            _loc9_ = _loc6_.columnIndex;
            while(_loc9_ <= _loc7_.columnIndex)
            {
               _loc5_.push(new CellPosition(_loc8_,_loc9_));
               _loc9_++;
            }
            _loc8_++;
         }
         return _loc5_;
      }
      
      public function getCellX(param1:int, param2:int) : Number
      {
         return this.gridDimensions.getCellX(param1,param2);
      }
      
      public function getCellY(param1:int, param2:int) : Number
      {
         return this.gridDimensions.getCellY(param1,param2);
      }
      
      public function getItemRendererAt(param1:int, param2:int) : IGridItemRenderer
      {
         var _loc3_:GridView = this.getGridViewAt(param1,param2);
         if(!_loc3_)
         {
            return null;
         }
         return _loc3_.gridViewLayout.getItemRendererAt(param1,param2);
      }
      
      public function isCellVisible(param1:int = -1, param2:int = -1) : Boolean
      {
         var _loc3_:GridView = this.getGridViewAt(param1,param2);
         return _loc3_ && _loc3_.gridViewLayout.isCellVisible(param1,param2);
      }
      
      private function setInvalidateDisplayListReason(param1:String) : void
      {
         if(this.clearInvalidateDisplayListReasons)
         {
            this.invalidateDisplayListReasonsMask = 0;
            this.clearInvalidateDisplayListReasons = false;
         }
         this.invalidateDisplayListReasonsMask = this.invalidateDisplayListReasonsMask | invalidateDisplayListReasonBits[param1];
      }
      
      mx_internal function isInvalidateDisplayListReason(param1:String) : Boolean
      {
         var _loc2_:uint = invalidateDisplayListReasonBits[param1];
         return (this.invalidateDisplayListReasonsMask & _loc2_) == _loc2_;
      }
      
      override public function getHorizontalScrollPositionDelta(param1:uint) : Number
      {
         var _loc2_:GridLayout = null;
         _loc2_ = layout as GridLayout;
         var _loc3_:GridView = _loc2_.centerGridView;
         return !!_loc3_?Number(_loc3_.getHorizontalScrollPositionDelta(param1)):Number(0);
      }
      
      override public function getVerticalScrollPositionDelta(param1:uint) : Number
      {
         var _loc2_:GridLayout = null;
         _loc2_ = layout as GridLayout;
         var _loc3_:GridView = _loc2_.centerGridView;
         return !!_loc3_?Number(_loc3_.getVerticalScrollPositionDelta(param1)):Number(0);
      }
      
      override public function invalidateSize() : void
      {
         var _loc1_:GridView = null;
         if(!this.inUpdateDisplayList)
         {
            super.invalidateSize();
            for each(_loc1_ in this.allGridViews)
            {
               if(_loc1_)
               {
                  _loc1_.invalidateSize();
               }
            }
            this.dispatchChangeEvent("invalidateSize");
         }
      }
      
      override public function invalidateDisplayList() : void
      {
         var _loc1_:GridView = null;
         if(!this.inUpdateDisplayList)
         {
            this.setInvalidateDisplayListReason("none");
            super.invalidateDisplayList();
            for each(_loc1_ in this.allGridViews)
            {
               if(_loc1_)
               {
                  _loc1_.invalidateDisplayList();
               }
            }
            this.dispatchChangeEvent("invalidateDisplayList");
         }
      }
      
      private function get allGridViews() : Array
      {
         var _loc1_:GridLayout = layout as GridLayout;
         return !!_loc1_?[_loc1_.topLeftGridView,_loc1_.topGridView,_loc1_.leftGridView,_loc1_.centerGridView]:[];
      }
      
      private function createGridView() : GridView
      {
         var _loc1_:GridView = this.gridView.newInstance() as GridView;
         addElement(_loc1_);
         return _loc1_;
      }
      
      private function configureGridView(param1:GridView, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:GridViewLayout = param1.gridViewLayout;
         _loc6_.grid = this;
         _loc6_.viewRowIndex = param2;
         _loc6_.viewColumnIndex = param3;
         _loc6_.viewRowCount = param4;
         _loc6_.viewColumnCount = param5;
      }
      
      private function configureGridViews() : void
      {
         var _loc1_:int = this.columns.length;
         var _loc2_:int = !!this.dataProvider?int(this.dataProvider.length):0;
         this.lockedColumnCount = Math.min(this.lockedColumnCount,_loc1_);
         this.lockedRowCount = Math.min(this.lockedRowCount,_loc2_);
         var _loc3_:int = Math.max(0,_loc2_ - this.lockedRowCount);
         var _loc4_:int = Math.max(0,_loc1_ - this.lockedColumnCount);
         var _loc5_:GridLayout = layout as GridLayout;
         var _loc6_:GridView = _loc5_.topLeftGridView;
         var _loc7_:GridView = _loc5_.topGridView;
         var _loc8_:GridView = _loc5_.leftGridView;
         var _loc9_:GridView = _loc5_.centerGridView;
         var _loc10_:IVisualElement = _loc5_.lockedRowsSeparatorElement;
         var _loc11_:IVisualElement = _loc5_.lockedColumnsSeparatorElement;
         var _loc12_:Boolean = false;
         if(_loc9_ == null)
         {
            _loc5_.centerGridView = _loc9_ = this.createGridView();
            _loc12_ = true;
         }
         this.configureGridView(_loc9_,this.lockedRowCount,this.lockedColumnCount,-1,-1);
         _loc9_.gridViewLayout.requestedRowCount = this.requestedRowCount - this.lockedRowCount;
         _loc9_.gridViewLayout.requestedColumnCount = this.requestedColumnCount - this.lockedColumnCount;
         if(this.lockedRowCount > 0 && this.lockedColumnCount > 0)
         {
            if(!_loc6_)
            {
               _loc5_.topLeftGridView = _loc6_ = this.createGridView();
               _loc6_.gridViewLayout.verticalScrollingLocked = true;
               _loc6_.gridViewLayout.horizontalScrollingLocked = true;
               _loc12_ = true;
            }
         }
         else if(_loc6_)
         {
            removeElement(_loc6_);
            _loc5_.topLeftGridView = _loc6_ = null;
            _loc12_ = true;
         }
         if(_loc6_)
         {
            this.configureGridView(_loc6_,0,0,this.lockedRowCount,this.lockedColumnCount);
         }
         if(this.lockedRowCount > 0)
         {
            if(!_loc7_)
            {
               _loc5_.topGridView = _loc7_ = this.createGridView();
               _loc7_.gridViewLayout.verticalScrollingLocked = true;
               _loc12_ = true;
            }
            if(this.lockedRowsSeparator && !_loc10_)
            {
               _loc5_.lockedRowsSeparatorElement = _loc10_ = this.lockedRowsSeparator.newInstance() as IVisualElement;
               addElement(_loc10_);
            }
         }
         else
         {
            if(_loc7_)
            {
               removeElement(_loc7_);
               _loc5_.topGridView = _loc7_ = null;
               _loc12_ = true;
            }
            if(_loc10_)
            {
               removeElement(_loc10_);
               _loc5_.lockedRowsSeparatorElement = _loc10_ = null;
            }
         }
         if(_loc7_)
         {
            this.configureGridView(_loc7_,0,this.lockedColumnCount,this.lockedRowCount,_loc4_);
         }
         if(this.lockedColumnCount > 0)
         {
            if(!_loc8_)
            {
               _loc5_.leftGridView = _loc8_ = this.createGridView();
               _loc8_.gridViewLayout.horizontalScrollingLocked = true;
               _loc12_ = true;
            }
            if(this.lockedColumnsSeparator && !_loc11_)
            {
               _loc5_.lockedColumnsSeparatorElement = _loc11_ = this.lockedColumnsSeparator.newInstance() as IVisualElement;
               addElement(_loc11_);
            }
         }
         else
         {
            if(_loc8_)
            {
               removeElement(_loc8_);
               _loc5_.leftGridView = _loc8_ = null;
               _loc12_ = true;
            }
            if(_loc11_)
            {
               removeElement(_loc11_);
               _loc5_.lockedColumnsSeparatorElement = _loc11_ = null;
            }
         }
         if(_loc8_)
         {
            this.configureGridView(_loc8_,this.lockedRowCount,0,_loc3_,this.lockedColumnCount);
         }
         if(_loc12_)
         {
            this.dispatchChangeEvent("gridViewsChanged");
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:IList = null;
         var _loc2_:Boolean = false;
         var _loc3_:Function = null;
         if(this.variableRowHeightChanged || this.rowHeightChanged)
         {
            if(this.rowHeightChanged)
            {
               this.gridDimensions.defaultRowHeight = this._rowHeight;
            }
            this.gridDimensions.variableRowHeight = this.variableRowHeight;
            if(!this.variableRowHeight && this.rowHeightChanged || this.variableRowHeightChanged)
            {
               this.clearGridLayoutCache(false);
               this.invalidateSize();
               this.invalidateDisplayList();
            }
            this.rowHeightChanged = false;
            this.variableRowHeightChanged = false;
         }
         if(this.itemRendererChanged || this.typicalItemChanged)
         {
            this.clearGridLayoutCache(true);
            this.itemRendererChanged = false;
         }
         if(!this.columns || this.generatedColumns && (this.typicalItemChanged || !this.typicalItem && this.dataProviderChanged))
         {
            _loc1_ = this.columns;
            this.columns = this.generateColumns();
            this.generatedColumns = this.columns != null;
            this.columnsChanged = this.columns != _loc1_;
         }
         this.typicalItemChanged = false;
         if(this.dataProviderChanged || this.columnsChanged)
         {
            if(this.gridSelection)
            {
               _loc2_ = this.gridSelection.requireSelection;
               this.gridSelection.requireSelection = false;
               this.gridSelection.removeAll();
               this.gridSelection.requireSelection = _loc2_;
            }
            if(this.columnsChanged)
            {
               this.gridDimensions.columnCount = !!this._columns?int(this._columns.length):0;
            }
            if(this.typicalItem != null && !this.columnsChanged)
            {
               this.clearGridLayoutCache(false);
            }
            else
            {
               this.clearGridLayoutCache(true);
            }
            if(!this.caretChanged)
            {
               this.initializeCaretPosition();
            }
            if(!this.anchorChanged)
            {
               this.initializeAnchorPosition();
            }
            this.dataProviderChanged = false;
            this.columnsChanged = false;
         }
         this.anchorChanged = false;
         if(this.gridView && this.columns)
         {
            this.configureGridViews();
         }
         if(this.dataProvider)
         {
            for each(_loc3_ in this.deferredOperations)
            {
               _loc3_();
            }
            this.deferredOperations.length = 0;
         }
         if(this.caretChanged)
         {
            if(this._dataProvider && this.caretRowIndex >= this._dataProvider.length)
            {
               this._caretRowIndex = this._dataProvider.length - 1;
            }
            if(this._columns && this.caretColumnIndex >= this._columns.length)
            {
               this._caretColumnIndex = this.getPreviousVisibleColumnIndex(this._columns.length - 1);
            }
            this.caretSelectedItem = this._dataProvider && this._caretRowIndex >= 0?this._dataProvider.getItemAt(this._caretRowIndex):null;
            this.dispatchCaretChangeEvent();
            this._oldCaretRowIndex = this._caretRowIndex;
            this._oldCaretColumnIndex = this._caretColumnIndex;
            this.caretChanged = false;
         }
         if(this.updateCaretForDataProviderChanged)
         {
            this.updateCaretForDataProviderChanged = false;
            this.updateCaretForDataProviderChange(this.updateCaretForDataProviderChangeLastEvent);
            this.updateCaretForDataProviderChangeLastEvent = null;
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         this.inUpdateDisplayList = true;
         super.updateDisplayList(param1,param2);
         this.inUpdateDisplayList = false;
         this.clearInvalidateDisplayListReasons = true;
         if(!this.variableRowHeight)
         {
            this.setFixedRowHeight(this.gridDimensions.getRowHeight(0));
         }
      }
      
      mx_internal function invalidateDisplayListFor(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:GridLayout = null;
         var _loc6_:GridView = null;
         var _loc7_:GridView = null;
         var _loc8_:GridView = null;
         var _loc9_:GridView = null;
         if(!this.inUpdateDisplayList)
         {
            this.setInvalidateDisplayListReason(param1);
            super.invalidateDisplayList();
            _loc2_ = param1 == "verticalScrollPosition";
            _loc3_ = param1 == "horizontalScrollPosition";
            _loc4_ = param1 == "bothScrollPositions";
            _loc5_ = layout as GridLayout;
            _loc6_ = _loc5_.topLeftGridView;
            _loc7_ = _loc5_.topGridView;
            _loc8_ = _loc5_.leftGridView;
            _loc9_ = _loc5_.centerGridView;
            if(_loc6_ && !_loc2_ && !_loc3_ && !_loc4_)
            {
               _loc6_.invalidateDisplayList();
            }
            if(_loc7_ && !_loc2_)
            {
               _loc7_.invalidateDisplayList();
            }
            if(_loc8_ && !_loc3_)
            {
               _loc8_.invalidateDisplayList();
            }
            if(_loc9_)
            {
               _loc9_.invalidateDisplayList();
            }
            this.dispatchChangeEvent("invalidateDisplayList");
         }
      }
      
      public function invalidateCell(param1:int, param2:int) : void
      {
         var _loc6_:Vector.<int> = null;
         var _loc7_:int = 0;
         var _loc8_:Vector.<int> = null;
         var _loc9_:int = 0;
         if(param1 == -1 && param2 == -1)
         {
            this.invalidateDisplayList();
            return;
         }
         var _loc3_:GridView = this.getGridViewAt(param1,param2);
         if(!this.dataProvider || !_loc3_)
         {
            return;
         }
         var _loc4_:GridViewLayout = _loc3_.gridViewLayout;
         var _loc5_:int = this.dataProvider.length;
         if(!_loc4_ || param1 >= this.dataProvider.length)
         {
            return;
         }
         if(!this.isCellVisible(param1,param2))
         {
            return;
         }
         if(invalidateDisplayListFlag || invalidateSizeFlag)
         {
            return;
         }
         if(param1 >= 0 && param2 >= 0)
         {
            _loc4_.invalidateCell(param1,param2);
         }
         else if(param1 >= 0)
         {
            _loc6_ = this.getVisibleColumnIndices();
            for each(_loc7_ in _loc6_)
            {
               _loc4_.invalidateCell(param1,_loc7_);
               if(invalidateDisplayListFlag || invalidateSizeFlag)
               {
                  break;
               }
            }
         }
         else if(param2 >= 0)
         {
            _loc8_ = this.getVisibleRowIndices();
            for each(_loc9_ in _loc8_)
            {
               if(_loc9_ >= _loc5_)
               {
                  break;
               }
               _loc4_.invalidateCell(_loc9_,param2);
               if(invalidateDisplayListFlag || invalidateSizeFlag)
               {
                  break;
               }
            }
         }
      }
      
      mx_internal function createGridSelection() : GridSelection
      {
         return new GridSelection();
      }
      
      public function findRowIndex(param1:String, param2:String, param3:int = 0, param4:String = "exact") : int
      {
         var _loc5_:RegExp = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:int = param3;
         _loc5_ = RegExPatterns.createRegExp(param2,param4);
         if(this.dataProvider && this.dataProvider.length > 0)
         {
            _loc7_ = this.dataProvider.length;
            if(param3 >= _loc7_)
            {
               return -1;
            }
            while(_loc8_ < _loc7_)
            {
               _loc6_ = this.dataProvider.getItemAt(_loc8_);
               if(_loc6_.hasOwnProperty(param1) == true && _loc6_[param1].search(_loc5_) != -1)
               {
                  return _loc8_;
               }
               _loc8_++;
            }
         }
         return -1;
      }
      
      public function findRowIndices(param1:String, param2:Array, param3:String = "exact") : Array
      {
         var _loc4_:Object = null;
         var _loc5_:Array = [];
         var _loc6_:Array = [];
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         if(this.dataProvider != null && this.dataProvider.length > 0 && param2 != null && param2.length > 0)
         {
            _loc7_ = this.dataProvider.length;
            _loc8_ = param2.length;
            _loc10_ = 0;
            while(_loc10_ < _loc8_)
            {
               _loc5_.push(RegExPatterns.createRegExp(param2[_loc10_],param3));
               _loc10_++;
            }
            while(_loc9_ < _loc7_)
            {
               _loc4_ = this.dataProvider.getItemAt(_loc9_);
               if(_loc4_.hasOwnProperty(param1) != false)
               {
                  _loc10_ = 0;
                  while(_loc10_ < _loc8_)
                  {
                     if(_loc4_[param1].search(_loc5_[_loc10_]) != -1)
                     {
                        _loc6_.push(_loc9_);
                        break;
                     }
                     _loc10_++;
                  }
               }
               _loc9_++;
            }
         }
         return _loc6_;
      }
      
      public function moveIndexFindRow(param1:String, param2:String, param3:int = 0, param4:String = "exact") : Boolean
      {
         var _loc5_:int = -1;
         _loc5_ = this.findRowIndex(param1,param2,param3,param4);
         if(_loc5_ != -1)
         {
            this.selectedIndex = _loc5_;
            return true;
         }
         return false;
      }
      
      public function moveIndexFirstRow() : void
      {
         if(this.dataProvider && this.dataProvider.length > 0)
         {
            this.selectedIndex = 0;
         }
      }
      
      public function moveIndexLastRow() : void
      {
         if(this.dataProvider && this.dataProvider.length > 0)
         {
            this.selectedIndex = this.dataProvider.length - 1;
         }
      }
      
      public function moveIndexNextRow() : void
      {
         if(this.dataProvider && this.dataProvider.length > 0 && this.selectedIndex >= 0)
         {
            if(this.isLastRow == false)
            {
               this.selectedIndex = this.selectedIndex + 1;
            }
         }
      }
      
      public function moveIndexPreviousRow() : void
      {
         if(this.dataProvider && this.dataProvider.length > 0 && this.selectedIndex >= 0)
         {
            if(this.isFirstRow == false)
            {
               this.selectedIndex = this.selectedIndex - 1;
            }
         }
      }
      
      private function getGridColumn(param1:int) : GridColumn
      {
         var _loc2_:IList = this.columns;
         if(_loc2_ == null || param1 < 0 || param1 >= _loc2_.length)
         {
            return null;
         }
         return _loc2_.getItemAt(param1) as GridColumn;
      }
      
      mx_internal function getDataProviderItem(param1:int) : Object
      {
         var _loc2_:IList = this.dataProvider;
         if(_loc2_ == null || param1 >= _loc2_.length)
         {
            return null;
         }
         return _loc2_.getItemAt(param1);
      }
      
      private function getVisibleItemRenderer(param1:int, param2:int) : IGridItemRenderer
      {
         var _loc4_:GridViewLayout = null;
         var _loc3_:GridView = this.getGridViewAt(param1,param2);
         if(!_loc3_)
         {
            return null;
         }
         _loc4_ = _loc3_.gridViewLayout;
         var _loc5_:int = param1 - _loc4_.viewRowIndex;
         var _loc6_:int = param2 - _loc4_.viewColumnIndex;
         return _loc4_.getVisibleItemRenderer(_loc5_,_loc6_);
      }
      
      private function mouseEventGridView(param1:MouseEvent) : GridView
      {
         var _loc2_:GridLayout = null;
         _loc2_ = layout as GridLayout;
         var _loc3_:GridView = _loc2_.centerGridView;
         if(_loc3_ && _loc3_.containsMouseEvent(param1))
         {
            return _loc3_;
         }
         var _loc4_:GridView = _loc2_.leftGridView;
         if(_loc4_ && _loc4_.containsMouseEvent(param1))
         {
            return _loc4_;
         }
         var _loc5_:GridView = _loc2_.topGridView;
         if(_loc5_ && _loc5_.containsMouseEvent(param1))
         {
            return _loc5_;
         }
         var _loc6_:GridView = _loc2_.topLeftGridView;
         if(_loc6_ && _loc6_.containsMouseEvent(param1))
         {
            return _loc6_;
         }
         return null;
      }
      
      private function eventToGridLocations(param1:MouseEvent, param2:CellPosition, param3:Point) : void
      {
         var _loc4_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:GridViewLayout = null;
         var _loc9_:GridDimensionsView = null;
         _loc4_ = new Point(param1.stageX,param1.stageY);
         var _loc5_:Point = globalToLocal(_loc4_);
         param3.x = _loc5_.x;
         param3.y = _loc5_.y;
         var _loc6_:GridView = this.mouseEventGridView(param1);
         if(_loc6_)
         {
            _loc7_ = _loc6_.globalToLocal(_loc4_);
            _loc8_ = _loc6_.gridViewLayout;
            _loc9_ = _loc8_.gridDimensionsView;
            param2.rowIndex = _loc9_.getRowIndexAt(_loc7_.x,_loc7_.y) + _loc8_.viewRowIndex;
            param2.columnIndex = _loc9_.getColumnIndexAt(_loc7_.x,_loc7_.y) + _loc8_.viewColumnIndex;
            param3.x = _loc7_.x + _loc9_.viewOriginX;
            param3.y = _loc7_.y + _loc9_.viewOriginY;
         }
         else
         {
            param2.rowIndex = -1;
            param2.columnIndex = -1;
         }
      }
      
      protected function grid_mouseDownDragUpHandler(param1:MouseEvent) : void
      {
         var _loc2_:CellPosition = null;
         var _loc6_:String = null;
         _loc2_ = new CellPosition();
         var _loc3_:Point = new Point();
         this.eventToGridLocations(param1,_loc2_,_loc3_);
         var _loc4_:int = _loc2_.rowIndex;
         var _loc5_:int = _loc2_.columnIndex;
         switch(param1.type)
         {
            case MouseEvent.MOUSE_MOVE:
               _loc6_ = GridEvent.GRID_MOUSE_DRAG;
               break;
            case MouseEvent.MOUSE_UP:
               _loc6_ = GridEvent.GRID_MOUSE_UP;
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc6_ = GridEvent.GRID_MOUSE_DOWN;
               this.mouseDownRowIndex = _loc4_;
               this.mouseDownColumnIndex = _loc5_;
               this.dragInProgress = true;
         }
         this.dispatchGridEvent(param1,_loc6_,_loc3_,_loc4_,_loc5_);
         if(_loc6_ == GridEvent.GRID_MOUSE_UP)
         {
            this.dispatchGridClickEvents(param1,_loc3_,_loc4_,_loc5_);
         }
      }
      
      protected function grid_mouseMoveHandler(param1:MouseEvent) : void
      {
         var _loc2_:CellPosition = null;
         _loc2_ = new CellPosition();
         var _loc3_:Point = new Point();
         this.eventToGridLocations(param1,_loc2_,_loc3_);
         var _loc4_:int = _loc2_.rowIndex;
         var _loc5_:int = _loc2_.columnIndex;
         if(_loc4_ != this.rollRowIndex || _loc5_ != this.rollColumnIndex)
         {
            if(this.rollRowIndex != -1 || this.rollColumnIndex != -1)
            {
               this.dispatchGridEvent(param1,GridEvent.GRID_ROLL_OUT,_loc3_,this.rollRowIndex,this.rollColumnIndex);
            }
            if(_loc4_ != -1 && _loc5_ != -1)
            {
               this.dispatchGridEvent(param1,GridEvent.GRID_ROLL_OVER,_loc3_,_loc4_,_loc5_);
            }
            this.rollRowIndex = _loc4_;
            this.rollColumnIndex = _loc5_;
         }
      }
      
      protected function grid_mouseRollOutHandler(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Point = null;
         if(this.rollRowIndex != -1 || this.rollColumnIndex != -1)
         {
            _loc2_ = new Point(param1.stageX,param1.stageY);
            _loc3_ = globalToLocal(_loc2_);
            this.dispatchGridEvent(param1,GridEvent.GRID_ROLL_OUT,_loc3_,this.rollRowIndex,this.rollColumnIndex);
            this.rollRowIndex = -1;
            this.rollColumnIndex = -1;
         }
      }
      
      protected function grid_mouseUpHandler(param1:MouseEvent) : void
      {
         var _loc2_:CellPosition = null;
         if(this.dragInProgress)
         {
            this.dragInProgress = false;
            return;
         }
         _loc2_ = new CellPosition();
         var _loc3_:Point = new Point();
         this.eventToGridLocations(param1,_loc2_,_loc3_);
         var _loc4_:int = _loc2_.rowIndex;
         var _loc5_:int = _loc2_.columnIndex;
         this.dispatchGridEvent(param1,GridEvent.GRID_MOUSE_UP,_loc3_,_loc4_,_loc5_);
         this.dispatchGridClickEvents(param1,_loc3_,_loc4_,_loc5_);
      }
      
      private function dispatchGridClickEvents(param1:MouseEvent, param2:Point, param3:int, param4:int) : void
      {
         var _loc5_:Boolean = param3 == this.mouseDownRowIndex && param4 == this.mouseDownColumnIndex;
         var _loc6_:Number = getTimer();
         var _loc7_:Boolean = false;
         if(doubleClickEnabled && _loc5_ && !isNaN(this.lastClickTime) && _loc6_ - this.lastClickTime <= this.DOUBLE_CLICK_TIME)
         {
            switch(this._doubleClickMode)
            {
               case GridDoubleClickMode.CELL:
                  if(param3 != -1 && param4 != -1 && param3 == this.lastClickedRowIndex && param4 == this.lastClickedColumnIndex)
                  {
                     _loc7_ = true;
                  }
                  break;
               case GridDoubleClickMode.GRID:
                  _loc7_ = true;
                  break;
               case GridDoubleClickMode.ROW:
                  if(param3 != -1 && param3 == this.lastClickedRowIndex)
                  {
                     _loc7_ = true;
                  }
            }
            if(_loc7_ == true)
            {
               this.dispatchGridEvent(param1,GridEvent.GRID_DOUBLE_CLICK,param2,param3,param4);
               this.lastClickTime = NaN;
               this.lastClickedColumnIndex = -1;
               this.lastClickedRowIndex = -1;
               _loc7_ = false;
               return;
            }
         }
         if(_loc5_)
         {
            this.dispatchGridEvent(param1,GridEvent.GRID_CLICK,param2,param3,param4);
            this.lastClickTime = _loc6_;
            this.lastClickedColumnIndex = param4;
            this.lastClickedRowIndex = param3;
            _loc7_ = false;
         }
      }
      
      private function dispatchGridEvent(param1:MouseEvent, param2:String, param3:Point, param4:int, param5:int) : void
      {
         var _loc8_:IGridItemRenderer = null;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:InteractiveObject = null;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:int = 0;
         var _loc6_:GridColumn = param5 >= 0?this.getGridColumn(param5):null;
         var _loc7_:Object = param4 >= 0?this.getDataProviderItem(param4):null;
         _loc8_ = this.getVisibleItemRenderer(param4,param5);
         _loc9_ = param1.bubbles;
         _loc10_ = param1.cancelable;
         _loc11_ = param1.relatedObject;
         _loc12_ = param1.ctrlKey;
         _loc13_ = param1.altKey;
         _loc14_ = param1.shiftKey;
         _loc15_ = param1.buttonDown;
         _loc16_ = param1.delta;
         var _loc17_:GridEvent = new GridEvent(param2,_loc9_,_loc10_,param3.x,param3.y,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,_loc16_,param4,param5,_loc6_,_loc7_,_loc8_);
         dispatchEvent(_loc17_);
      }
      
      private function updateCaretForDataProviderChange(param1:CollectionEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:int = 0;
         var _loc2_:int = this.caretRowIndex;
         var _loc3_:int = param1.location;
         var _loc4_:int = !!param1.items?int(param1.items.length):0;
         switch(param1.kind)
         {
            case CollectionEventKind.ADD:
               if(_loc2_ >= _loc3_)
               {
                  this.caretRowIndex = this.caretRowIndex + param1.items.length;
               }
               break;
            case CollectionEventKind.REMOVE:
               if(_loc2_ >= _loc3_)
               {
                  if(_loc2_ < _loc3_ + _loc4_)
                  {
                     this.caretRowIndex = -1;
                  }
                  else
                  {
                     this.caretRowIndex = this.caretRowIndex - _loc4_;
                  }
               }
               break;
            case CollectionEventKind.MOVE:
               _loc6_ = param1.oldLocation;
               if(_loc2_ >= _loc6_ && _loc2_ < _loc6_ + _loc4_)
               {
                  this.caretRowIndex = this.caretRowIndex + (_loc3_ - _loc6_);
               }
               break;
            case CollectionEventKind.REPLACE:
            case CollectionEventKind.UPDATE:
               break;
            case CollectionEventKind.REFRESH:
               _loc5_ = !!this.caretSelectedItem?int(this._dataProvider.getItemIndex(this.caretSelectedItem)):-1;
               if(_loc5_ != -1)
               {
                  this.caretRowIndex = _loc5_;
                  this.ensureCellIsVisible(this.caretRowIndex,-1);
               }
               else
               {
                  _loc7_ = this.verticalScrollPosition;
                  validateNow();
                  _loc8_ = Math.ceil(this.gridDimensions.getContentHeight());
                  _loc9_ = Math.max(_loc8_ - height,0);
                  this.verticalScrollPosition = _loc7_ > _loc9_?Number(_loc9_):Number(_loc7_);
               }
               break;
            case CollectionEventKind.RESET:
               _loc5_ = !!this.caretSelectedItem?int(this._dataProvider.getItemIndex(this.caretSelectedItem)):-1;
               if(_loc5_ != -1)
               {
                  this.caretRowIndex = _loc5_;
                  this.ensureCellIsVisible(this.caretRowIndex,-1);
               }
               else
               {
                  this.caretRowIndex = this._dataProvider.length > 0?0:-1;
                  GridLayout(layout).centerGridView.validateSize();
                  this.verticalScrollPosition = 0;
               }
         }
      }
      
      private function updateCaretForColumnsChange(param1:CollectionEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:PropertyChangeEvent = null;
         var _loc7_:int = 0;
         var _loc8_:GridColumn = null;
         var _loc2_:int = this.caretColumnIndex;
         var _loc3_:int = param1.location;
         var _loc4_:int = !!param1.items?int(param1.items.length):0;
         switch(param1.kind)
         {
            case CollectionEventKind.ADD:
               if(_loc2_ >= _loc3_)
               {
                  this.caretColumnIndex = this.caretColumnIndex + _loc4_;
               }
               break;
            case CollectionEventKind.REMOVE:
               if(_loc2_ >= _loc3_)
               {
                  if(_loc2_ < _loc3_ + _loc4_)
                  {
                     this.caretColumnIndex = this._columns.length > 0?0:-1;
                  }
                  else
                  {
                     this.caretColumnIndex = this.caretColumnIndex - _loc4_;
                  }
               }
               break;
            case CollectionEventKind.MOVE:
               _loc5_ = param1.oldLocation;
               if(_loc2_ >= _loc5_ && _loc2_ < _loc5_ + _loc4_)
               {
                  this.caretColumnIndex = this.caretColumnIndex + (_loc3_ - _loc5_);
               }
               break;
            case CollectionEventKind.REPLACE:
               break;
            case CollectionEventKind.UPDATE:
               if(this.selectionMode == GridSelectionMode.SINGLE_CELL || this.selectionMode == GridSelectionMode.MULTIPLE_CELLS)
               {
                  _loc7_ = 0;
                  while(_loc7_ < _loc4_)
                  {
                     _loc6_ = param1.items[_loc7_] as PropertyChangeEvent;
                     if(_loc6_ && _loc6_.property == "visible")
                     {
                        _loc8_ = _loc6_.source as GridColumn;
                        if(!(!_loc8_ || _loc8_.visible))
                        {
                           if(_loc8_.columnIndex == this.caretColumnIndex)
                           {
                              this.initializeCaretPosition(true);
                           }
                           if(_loc8_.columnIndex == this.anchorColumnIndex)
                           {
                              this.initializeAnchorPosition(true);
                           }
                        }
                     }
                     _loc7_++;
                  }
               }
               break;
            case CollectionEventKind.REFRESH:
            case CollectionEventKind.RESET:
               this.initializeCaretPosition(true);
               this.horizontalScrollPosition = 0;
         }
      }
      
      private function updateHoverForDataProviderChange(param1:CollectionEvent) : void
      {
         var _loc2_:int = this.hoverRowIndex;
         var _loc3_:int = param1.location;
         switch(param1.kind)
         {
            case CollectionEventKind.ADD:
            case CollectionEventKind.REMOVE:
            case CollectionEventKind.REPLACE:
            case CollectionEventKind.UPDATE:
            case CollectionEventKind.MOVE:
               if(_loc2_ >= _loc3_)
               {
                  this.hoverRowIndex = this.gridDimensions.getRowIndexAt(mouseX,mouseY);
               }
               break;
            case CollectionEventKind.REFRESH:
            case CollectionEventKind.RESET:
               this.hoverRowIndex = this.gridDimensions.getRowIndexAt(mouseX,mouseY);
         }
      }
      
      private function updateHoverForColumnsChange(param1:CollectionEvent) : void
      {
         switch(param1.kind)
         {
            case CollectionEventKind.ADD:
            case CollectionEventKind.REMOVE:
            case CollectionEventKind.REPLACE:
            case CollectionEventKind.UPDATE:
            case CollectionEventKind.MOVE:
               if(this.hoverColumnIndex >= param1.location)
               {
                  this.hoverColumnIndex = this.gridDimensions.getColumnIndexAt(mouseX,mouseY);
               }
               break;
            case CollectionEventKind.REFRESH:
            case CollectionEventKind.RESET:
               this.hoverColumnIndex = this.gridDimensions.getColumnIndexAt(mouseX,mouseY);
         }
      }
      
      private function dataProvider_collectionChangeHandler(param1:CollectionEvent) : void
      {
         var _loc4_:GridView = null;
         var _loc2_:Boolean = false;
         if(!this.columns && this.dataProvider.length > 0)
         {
            this.columns = this.generateColumns();
            this.generatedColumns = this.columns != null;
            this.gridDimensions.columnCount = !!this.generatedColumns?int(this.columns.length):0;
         }
         var _loc3_:GridDimensions = this.gridDimensions;
         if(_loc3_)
         {
            _loc3_.dataProviderCollectionChanged(param1);
            _loc3_.rowCount = this.dataProvider.length;
         }
         for each(_loc4_ in this.allGridViews)
         {
            if(_loc4_)
            {
               _loc4_.gridViewLayout.dataProviderCollectionChanged(param1);
            }
         }
         if(this.gridSelection)
         {
            _loc2_ = this.gridSelection.dataProviderCollectionChanged(param1);
         }
         if(_loc3_ && this.hoverRowIndex != -1)
         {
            this.updateHoverForDataProviderChange(param1);
         }
         this.invalidateSize();
         this.invalidateDisplayList();
         if(this.caretRowIndex != -1)
         {
            if(param1.kind == CollectionEventKind.RESET)
            {
               this.updateCaretForDataProviderChanged = true;
               this.updateCaretForDataProviderChangeLastEvent = param1;
               invalidateProperties();
            }
            else
            {
               this.updateCaretForDataProviderChange(param1);
            }
         }
         if(_loc2_)
         {
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
      }
      
      private function columns_collectionChangeHandler(param1:CollectionEvent) : void
      {
         var _loc2_:GridColumn = null;
         var _loc4_:int = 0;
         var _loc6_:GridView = null;
         var _loc7_:int = 0;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc3_:int = param1.location;
         var _loc5_:Boolean = false;
         switch(param1.kind)
         {
            case CollectionEventKind.ADD:
               while(_loc3_ < this.columns.length)
               {
                  _loc2_ = GridColumn(this.columns.getItemAt(_loc3_));
                  _loc2_.setGrid(this);
                  _loc2_.setColumnIndex(_loc3_);
                  _loc3_++;
               }
               break;
            case CollectionEventKind.MOVE:
               _loc3_ = Math.min(param1.oldLocation,param1.location);
               _loc7_ = Math.max(param1.oldLocation,param1.location);
               while(_loc3_ <= _loc7_)
               {
                  _loc2_ = GridColumn(this.columns.getItemAt(_loc3_));
                  _loc2_.setColumnIndex(_loc3_);
                  _loc3_++;
               }
               break;
            case CollectionEventKind.REPLACE:
               _loc8_ = param1.items;
               _loc9_ = _loc8_.length;
               _loc4_ = 0;
               while(_loc4_ < _loc9_)
               {
                  if(_loc8_[_loc4_].oldValue is GridColumn)
                  {
                     _loc2_ = GridColumn(_loc8_[_loc4_].oldValue);
                     _loc2_.setGrid(null);
                     _loc2_.setColumnIndex(-1);
                  }
                  if(_loc8_[_loc4_].newValue is GridColumn)
                  {
                     _loc2_ = GridColumn(_loc8_[_loc4_].newValue);
                     _loc2_.setGrid(this);
                     _loc2_.setColumnIndex(_loc3_);
                  }
                  _loc4_++;
               }
               break;
            case CollectionEventKind.UPDATE:
               break;
            case CollectionEventKind.REFRESH:
               _loc3_ = 0;
               while(_loc3_ < this.columns.length)
               {
                  _loc2_ = GridColumn(this.columns.getItemAt(_loc3_));
                  _loc2_.setColumnIndex(_loc3_);
                  _loc3_++;
               }
               break;
            case CollectionEventKind.REMOVE:
               _loc10_ = param1.items.length;
               _loc4_ = 0;
               while(_loc4_ < _loc10_)
               {
                  _loc2_ = GridColumn(param1.items[_loc4_]);
                  _loc2_.setGrid(null);
                  _loc2_.setColumnIndex(-1);
                  _loc4_++;
               }
               while(_loc3_ < this.columns.length)
               {
                  _loc2_ = GridColumn(this.columns.getItemAt(_loc3_));
                  _loc2_.setColumnIndex(_loc3_);
                  _loc3_++;
               }
               break;
            case CollectionEventKind.RESET:
               _loc3_ = 0;
               while(_loc3_ < this.columns.length)
               {
                  _loc2_ = GridColumn(this.columns.getItemAt(_loc3_));
                  _loc2_.setGrid(this);
                  _loc2_.setColumnIndex(_loc3_);
                  _loc3_++;
               }
         }
         if(this.gridDimensions)
         {
            this.gridDimensions.columnsCollectionChanged(param1);
         }
         for each(_loc6_ in this.allGridViews)
         {
            if(_loc6_)
            {
               _loc6_.gridViewLayout.columnsCollectionChanged(param1);
            }
         }
         if(this.gridSelection)
         {
            _loc5_ = this.gridSelection.columnsCollectionChanged(param1);
         }
         if(this.caretColumnIndex != -1)
         {
            this.updateCaretForColumnsChange(param1);
         }
         if(this.gridDimensions && this.hoverColumnIndex != -1)
         {
            this.updateHoverForColumnsChange(param1);
         }
         this.invalidateSize();
         this.invalidateDisplayList();
         if(_loc5_)
         {
            this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         }
      }
      
      mx_internal function clearGridLayoutCache(param1:Boolean) : void
      {
         var _loc2_:GridView = null;
         var _loc3_:GridDimensions = null;
         for each(_loc2_ in this.allGridViews)
         {
            if(_loc2_)
            {
               _loc2_.gridViewLayout.clearVirtualLayoutCache();
            }
         }
         _loc3_ = this.gridDimensions;
         if(_loc3_)
         {
            if(param1)
            {
               _loc3_.clearTypicalCellWidthsAndHeights();
               _loc3_.clearColumns(0,_loc3_.columnCount);
            }
            _loc3_.clearHeights();
            _loc3_.rowCount = !!this._dataProvider?int(this._dataProvider.length):0;
         }
         setContentSize(0,0);
      }
      
      mx_internal function getNextVisibleColumnIndex(param1:int = -1) : int
      {
         var _loc2_:IList = null;
         var _loc5_:GridColumn = null;
         if(param1 < -1)
         {
            return -1;
         }
         _loc2_ = this.columns;
         var _loc3_:int = !!_loc2_?int(_loc2_.length):0;
         var _loc4_:int = param1 + 1;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_.getItemAt(_loc4_) as GridColumn;
            if(_loc5_ && _loc5_.visible)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      mx_internal function getPreviousVisibleColumnIndex(param1:int) : int
      {
         var _loc4_:GridColumn = null;
         var _loc2_:IList = this.columns;
         if(!_loc2_ || param1 > _loc2_.length)
         {
            return -1;
         }
         var _loc3_:int = param1 - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = _loc2_.getItemAt(_loc3_) as GridColumn;
            if(_loc4_ && _loc4_.visible)
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      private function initializeAnchorPosition(param1:Boolean = false) : void
      {
         if(!param1)
         {
            this.anchorRowIndex = this._dataProvider && this._dataProvider.length > 0?0:-1;
         }
         this.anchorColumnIndex = this.getNextVisibleColumnIndex();
      }
      
      private function initializeCaretPosition(param1:Boolean = false) : void
      {
         if(!param1)
         {
            this.caretRowIndex = this._dataProvider && this._dataProvider.length > 0?0:-1;
         }
         this.caretColumnIndex = this.getNextVisibleColumnIndex();
      }
      
      private function dispatchCaretChangeEvent() : void
      {
         var _loc1_:GridCaretEvent = null;
         if(hasEventListener(GridCaretEvent.CARET_CHANGE))
         {
            _loc1_ = new GridCaretEvent(GridCaretEvent.CARET_CHANGE);
            _loc1_.oldRowIndex = this._oldCaretRowIndex;
            _loc1_.oldColumnIndex = this._oldCaretColumnIndex;
            _loc1_.newRowIndex = this._caretRowIndex;
            _loc1_.newColumnIndex = this._caretColumnIndex;
            dispatchEvent(_loc1_);
         }
      }
      
      override public function set verticalScrollPosition(param1:Number) : void
      {
         var _loc2_:Object = this.verticalScrollPosition;
         if(_loc2_ !== param1)
         {
            this._1010846676verticalScrollPosition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"verticalScrollPosition",_loc2_,param1));
            }
         }
      }
      
      override public function set horizontalScrollPosition(param1:Number) : void
      {
         var _loc2_:Object = this.horizontalScrollPosition;
         if(_loc2_ !== param1)
         {
            this._754184102horizontalScrollPosition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"horizontalScrollPosition",_loc2_,param1));
            }
         }
      }
   }
}
