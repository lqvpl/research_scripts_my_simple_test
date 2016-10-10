package spark.components.gridClasses
{
   import spark.layouts.supportClasses.LayoutBase;
   import mx.core.mx_internal;
   import mx.core.Singleton;
   import mx.core.IVisualElement;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import spark.collections.SubListView;
   import spark.components.Grid;
   import spark.layouts.supportClasses.DropLocation;
   import mx.collections.IList;
   import mx.core.IFactory;
   import mx.core.ClassFactory;
   import spark.components.DataGrid;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   import mx.events.PropertyChangeEvent;
   import mx.core.IVisualElementContainer;
   import mx.managers.ILayoutManagerClient;
   import spark.core.IGraphicElement;
   import mx.core.IInvalidating;
   import mx.managers.LayoutManager;
   
   use namespace mx_internal;
   
   public class GridViewLayout extends LayoutBase
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var _embeddedFontRegistryExists:Boolean = false;
      
      private static var embeddedFontRegistryExistsInitialized:Boolean = false;
      
      private static const MAX_ELEMENT_SIZE:Number = 8192;
      
      private static const ELEMENT_EDGE_PAD:Number = 512;
       
      
      private var visibleRowIndices:Vector.<int>;
      
      private var visibleColumnIndices:Vector.<int>;
      
      private var oldVisibleRowIndices:Vector.<int>;
      
      private var oldVisibleColumnIndices:Vector.<int>;
      
      private var visibleRowBackgrounds:Vector.<IVisualElement>;
      
      private var visibleRowSeparators:Vector.<IVisualElement>;
      
      private var visibleColumnSeparators:Vector.<IVisualElement>;
      
      private var visibleItemRenderers:Vector.<spark.components.gridClasses.IGridItemRenderer>;
      
      private var hoverIndicator:IVisualElement = null;
      
      private var caretIndicator:IVisualElement = null;
      
      private var editorIndicator:IVisualElement = null;
      
      private const visibleItemRenderersBounds:Rectangle = new Rectangle();
      
      private const visibleGridBounds:Rectangle = new Rectangle();
      
      private const freeElementMap:Dictionary = new Dictionary();
      
      private const elementToFactoryMap:Dictionary = new Dictionary();
      
      private var oldVerticalScrollPosition:Number = 0;
      
      private var oldHorizontalScrollPosition:Number = 0;
      
      private var _columnsView:SubListView = null;
      
      private var _dataProviderView:SubListView = null;
      
      private var _grid:Grid = null;
      
      private var _gridDimensionsView:spark.components.gridClasses.GridDimensionsView = null;
      
      private var _horizontalScrollingLocked:Boolean = false;
      
      private var _requestedColumnCount:int = 0;
      
      private var _requestedRowCount:int = 0;
      
      private var _verticalScrollingLocked:Boolean = false;
      
      private const gridItemRendererClassFactories:Dictionary = new Dictionary(true);
      
      private var visibleSelectionIndicators:Vector.<IVisualElement>;
      
      private var visibleRowSelectionIndices:Vector.<int>;
      
      private var visibleColumnSelectionIndices:Vector.<int>;
      
      private var mouseXOffset:Number = 0;
      
      private var mouseYOffset:Number = 0;
      
      private var createdGridElement:Boolean = false;
      
      public function GridViewLayout()
      {
         this.visibleRowIndices = new Vector.<int>(0);
         this.visibleColumnIndices = new Vector.<int>(0);
         this.oldVisibleRowIndices = new Vector.<int>(0);
         this.oldVisibleColumnIndices = new Vector.<int>(0);
         this.visibleRowBackgrounds = new Vector.<IVisualElement>(0);
         this.visibleRowSeparators = new Vector.<IVisualElement>(0);
         this.visibleColumnSeparators = new Vector.<IVisualElement>(0);
         this.visibleItemRenderers = new Vector.<spark.components.gridClasses.IGridItemRenderer>(0);
         this.visibleSelectionIndicators = new Vector.<IVisualElement>(0);
         this.visibleRowSelectionIndices = new Vector.<int>(0);
         this.visibleColumnSelectionIndices = new Vector.<int>(0);
         super();
      }
      
      private static function get embeddedFontRegistryExists() : Boolean
      {
         if(!embeddedFontRegistryExistsInitialized)
         {
            embeddedFontRegistryExistsInitialized = true;
            try
            {
               _embeddedFontRegistryExists = Singleton.getInstance("mx.core::IEmbeddedFontRegistry") != null;
            }
            catch(e:Error)
            {
               _embeddedFontRegistryExists = false;
            }
         }
         return _embeddedFontRegistryExists;
      }
      
      private static function clampColumnWidth(param1:Number, param2:GridColumn) : Number
      {
         var _loc3_:Number = param2.minWidth;
         var _loc4_:Number = param2.maxWidth;
         if(!isNaN(_loc3_))
         {
            param1 = Math.max(param1,_loc3_);
         }
         if(!isNaN(_loc4_))
         {
            param1 = Math.min(param1,_loc4_);
         }
         return param1;
      }
      
      private function dispatchChangeEvent(param1:String) : void
      {
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
      }
      
      [Bindable("columnsViewChanged")]
      public function get columnsView() : SubListView
      {
         return this._columnsView;
      }
      
      public function set columnsView(param1:SubListView) : void
      {
         if(param1 == this._columnsView)
         {
            return;
         }
         this._columnsView = param1;
         this.dispatchChangeEvent("columnsViewChanged");
      }
      
      [Bindable("dataProviderViewChanged")]
      public function get dataProviderView() : SubListView
      {
         return this._dataProviderView;
      }
      
      public function set dataProviderView(param1:SubListView) : void
      {
         if(param1 == this._dataProviderView)
         {
            return;
         }
         this._dataProviderView = param1;
         this.dispatchChangeEvent("dataProviderViewChanged");
      }
      
      public function get grid() : Grid
      {
         return this._grid;
      }
      
      public function set grid(param1:Grid) : void
      {
         if(this._grid == param1)
         {
            return;
         }
         if(this._grid)
         {
            this._grid.removeEventListener("dataProviderChanged",this.grid_dataProviderChangedHandler);
            this._grid.removeEventListener("columnsChanged",this.grid_columnsChangedHandler);
         }
         this._grid = param1;
         if(this._grid)
         {
            this.dataProviderView = new SubListView(this.grid.dataProvider);
            this.columnsView = new SubListView(this.grid.columns);
            this.gridDimensionsView = new spark.components.gridClasses.GridDimensionsView(this.grid.gridDimensions);
            this._grid.addEventListener("dataProviderChanged",this.grid_dataProviderChangedHandler);
            this._grid.addEventListener("columnsChanged",this.grid_columnsChangedHandler);
         }
         else
         {
            this.dataProviderView = null;
            this.columnsView = null;
            this.gridDimensionsView = null;
         }
      }
      
      private function grid_dataProviderChangedHandler(param1:Event) : void
      {
         this.dataProviderView = new SubListView(this.grid.dataProvider);
         this.dataProviderView.startIndex = this.viewRowIndex;
         this.dataProviderView.count = this.viewRowCount;
      }
      
      private function grid_columnsChangedHandler(param1:Event) : void
      {
         this.columnsView = new SubListView(this.grid.columns);
         this.columnsView.startIndex = this.viewColumnIndex;
         this.columnsView.count = this.viewColumnCount;
      }
      
      [Bindable("gridDimensionsViewChanged")]
      public function get gridDimensionsView() : spark.components.gridClasses.GridDimensionsView
      {
         return this._gridDimensionsView;
      }
      
      public function set gridDimensionsView(param1:spark.components.gridClasses.GridDimensionsView) : void
      {
         if(param1 == this._gridDimensionsView)
         {
            return;
         }
         this._gridDimensionsView = param1;
         this.dispatchChangeEvent("gridDimensionsViewChanged");
      }
      
      [Bindable("horizontalScrollingLockedChanged")]
      public function get horizontalScrollingLocked() : Boolean
      {
         return this._horizontalScrollingLocked;
      }
      
      public function set horizontalScrollingLocked(param1:Boolean) : void
      {
         if(param1 == this._horizontalScrollingLocked)
         {
            return;
         }
         this._horizontalScrollingLocked = param1;
         this.dispatchChangeEvent("horizontalScrollingLockedChanged");
      }
      
      [Bindable("requestedColumnCountChanged")]
      public function get requestedColumnCount() : int
      {
         return this._requestedColumnCount;
      }
      
      public function set requestedColumnCount(param1:int) : void
      {
         if(param1 == this._requestedColumnCount)
         {
            return;
         }
         this._requestedColumnCount = param1;
         this.dispatchChangeEvent("requestedColumnCountChanged");
      }
      
      [Bindable("requestedRowCountChanged")]
      public function get requestedRowCount() : int
      {
         return this._requestedRowCount;
      }
      
      public function set requestedRowCount(param1:int) : void
      {
         if(param1 == this._requestedRowCount)
         {
            return;
         }
         this._requestedRowCount = param1;
         this.dispatchChangeEvent("requestedRowCountChanged");
      }
      
      override public function get useVirtualLayout() : Boolean
      {
         return true;
      }
      
      override public function set useVirtualLayout(param1:Boolean) : void
      {
      }
      
      [Bindable("verticalScrollingLockedChanged")]
      public function get verticalScrollingLocked() : Boolean
      {
         return this._verticalScrollingLocked;
      }
      
      public function set verticalScrollingLocked(param1:Boolean) : void
      {
         if(param1 == this._verticalScrollingLocked)
         {
            return;
         }
         this._verticalScrollingLocked = param1;
         this.dispatchChangeEvent("verticalScrollingLockedChanged");
      }
      
      public function get viewColumnCount() : int
      {
         return this.gridDimensionsView.viewColumnCount;
      }
      
      public function set viewColumnCount(param1:int) : void
      {
         this.gridDimensionsView.viewColumnCount = param1;
         this.columnsView.count = param1;
      }
      
      public function get viewColumnIndex() : int
      {
         return this.gridDimensionsView.viewColumnIndex;
      }
      
      public function set viewColumnIndex(param1:int) : void
      {
         this.gridDimensionsView.viewColumnIndex = param1;
         this.columnsView.startIndex = param1;
      }
      
      public function get viewRowCount() : int
      {
         return this.gridDimensionsView.viewRowCount;
      }
      
      public function set viewRowCount(param1:int) : void
      {
         this.gridDimensionsView.viewRowCount = param1;
         this.dataProviderView.count = param1;
      }
      
      public function get viewRowIndex() : int
      {
         return this.gridDimensionsView.viewRowIndex;
      }
      
      public function set viewRowIndex(param1:int) : void
      {
         this.gridDimensionsView.viewRowIndex = param1;
         this.dataProviderView.startIndex = param1;
      }
      
      override protected function calculateDropIndex(param1:Number, param2:Number) : int
      {
         var _loc4_:Rectangle = null;
         var _loc3_:int = this.gridDimensionsView.getRowIndexAt(param1,param2);
         if(_loc3_ == -1)
         {
            _loc3_ = this.gridDimensionsView.rowCount;
         }
         else
         {
            _loc4_ = this.gridDimensionsView.getRowBounds(_loc3_);
            if(param2 > _loc4_.y + _loc4_.height / 2)
            {
               _loc3_++;
            }
         }
         return _loc3_ + this.gridDimensionsView.viewRowIndex;
      }
      
      override protected function calculateDropIndicatorBounds(param1:DropLocation) : Rectangle
      {
         var _loc2_:int = this.gridDimensionsView.getRowIndexAt(param1.dropPoint.x,param1.dropPoint.y);
         if(_loc2_ == -1)
         {
            if(this.grid.dataProvider && this.isCellVisible(this.grid.dataProvider.length - 1,-1))
            {
               _loc2_ = this.grid.dataProvider.length - 1;
            }
            else
            {
               return null;
            }
         }
         var _loc3_:Rectangle = this.gridDimensionsView.getRowBounds(_loc2_);
         if(param1.dropPoint.y > _loc3_.top + _loc3_.height * 1 / 2)
         {
            return new Rectangle(2,_loc3_.bottom - 2,_loc3_.width - 4,4);
         }
         return new Rectangle(2,Math.max(0,_loc3_.y - 2),_loc3_.width - 4,4);
      }
      
      override public function clearVirtualLayoutCache() : void
      {
         this.freeGridElements(this.visibleRowBackgrounds);
         this.freeGridElements(this.visibleRowSeparators);
         this.visibleRowIndices.length = 0;
         this.freeGridElements(this.visibleColumnSeparators);
         this.visibleColumnIndices.length = 0;
         this.freeItemRenderers(this.visibleItemRenderers);
         this.clearSelectionIndicators();
         this.freeGridElement(this.hoverIndicator);
         this.hoverIndicator = null;
         this.freeGridElement(this.caretIndicator);
         this.caretIndicator = null;
         this.freeGridElement(this.editorIndicator);
         this.editorIndicator = null;
         this.visibleItemRenderersBounds.setEmpty();
         this.visibleGridBounds.setEmpty();
      }
      
      override public function getElementBounds(param1:int) : Rectangle
      {
         var _loc3_:int = 0;
         var _loc2_:int = this.gridDimensionsView.columnCount;
         if(_loc2_ == -1)
         {
            return null;
         }
         _loc3_ = param1 / _loc2_;
         var _loc4_:int = param1 - _loc3_ * _loc2_;
         return this.gridDimensionsView.getCellBounds(_loc3_,_loc4_);
      }
      
      override protected function getElementBoundsAboveScrollRect(param1:Rectangle) : Rectangle
      {
         var _loc2_:int = 0;
         _loc2_ = Math.max(0,param1.top - 1);
         var _loc3_:int = this.gridDimensionsView.getRowIndexAt(param1.x,_loc2_);
         return this.gridDimensionsView.getRowBounds(_loc3_);
      }
      
      override protected function getElementBoundsBelowScrollRect(param1:Rectangle) : Rectangle
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = this.gridDimensionsView.rowCount;
         _loc3_ = Math.max(0,this.gridDimensionsView.getContentHeight(_loc2_) - 1);
         _loc4_ = Math.min(_loc3_,param1.bottom + 1);
         var _loc5_:int = this.gridDimensionsView.getRowIndexAt(param1.x,_loc4_);
         return this.gridDimensionsView.getRowBounds(_loc5_);
      }
      
      override protected function getElementBoundsLeftOfScrollRect(param1:Rectangle) : Rectangle
      {
         var _loc2_:int = 0;
         _loc2_ = Math.max(0,param1.left - 1);
         var _loc3_:int = this.gridDimensionsView.getColumnIndexAt(_loc2_,param1.y);
         return this.gridDimensionsView.getColumnBounds(_loc3_);
      }
      
      override protected function getElementBoundsRightOfScrollRect(param1:Rectangle) : Rectangle
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         _loc2_ = this.gridDimensionsView.columnCount;
         _loc3_ = Math.max(0,this.gridDimensionsView.getContentWidth(_loc2_) - 1);
         _loc4_ = Math.min(_loc3_,param1.right + 1);
         var _loc5_:int = this.gridDimensionsView.getColumnIndexAt(_loc4_,param1.y);
         return this.gridDimensionsView.getColumnBounds(_loc5_);
      }
      
      override protected function scrollPositionChanged() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:String = null;
         if(!this.grid)
         {
            return;
         }
         this.grid.hoverRowIndex = -1;
         this.grid.hoverColumnIndex = -1;
         super.scrollPositionChanged();
         var _loc1_:* = this.oldHorizontalScrollPosition != horizontalScrollPosition;
         var _loc2_:* = this.oldVerticalScrollPosition != verticalScrollPosition;
         this.oldHorizontalScrollPosition = horizontalScrollPosition;
         this.oldVerticalScrollPosition = verticalScrollPosition;
         var _loc3_:Boolean = false;
         if(this.visibleRowIndices.length == 0 || this.visibleColumnIndices.length == 0)
         {
            _loc3_ = true;
         }
         if(!_loc3_ && _loc2_)
         {
            _loc4_ = this.visibleRowIndices[0];
            _loc5_ = this.visibleRowIndices[this.visibleRowIndices.length - 1];
            _loc6_ = this.gridDimensionsView.getRowIndexAt(horizontalScrollPosition,verticalScrollPosition);
            _loc7_ = this.gridDimensionsView.getRowIndexAt(horizontalScrollPosition,verticalScrollPosition + target.height);
            if(_loc4_ != _loc6_ || _loc5_ != _loc7_)
            {
               _loc3_ = true;
            }
         }
         if(!_loc3_ && _loc1_)
         {
            _loc8_ = this.visibleColumnIndices[0];
            _loc9_ = this.visibleColumnIndices[this.visibleColumnIndices.length - 1];
            _loc10_ = this.gridDimensionsView.getColumnIndexAt(horizontalScrollPosition,verticalScrollPosition);
            _loc11_ = this.gridDimensionsView.getColumnIndexAt(horizontalScrollPosition + target.width,verticalScrollPosition);
            if(_loc8_ != _loc10_ || _loc9_ != _loc11_)
            {
               _loc3_ = true;
            }
         }
         if(_loc3_)
         {
            _loc12_ = "none";
            if(_loc2_ && _loc1_)
            {
               _loc12_ = "bothScrollPositions";
            }
            else if(_loc2_)
            {
               _loc12_ = "verticalScrollPosition";
            }
            else if(_loc1_)
            {
               _loc12_ = "horizontalScrollPosition";
            }
            this.grid.invalidateDisplayListFor(_loc12_);
         }
      }
      
      override public function measure() : void
      {
         var _loc1_:GridView = target as GridView;
         var _loc2_:Grid = this.grid;
         if(!_loc1_ || !_loc2_)
         {
            return;
         }
         this.updateTypicalCellSizes();
         var _loc3_:int = this.requestedRowCount;
         if(_loc3_ == -1)
         {
            _loc3_ = this.gridDimensionsView.rowCount;
            if(_loc2_.requestedMaxRowCount != -1)
            {
               _loc3_ = Math.min(_loc2_.requestedMaxRowCount,_loc3_);
            }
            if(_loc2_.requestedMinRowCount != -1)
            {
               _loc3_ = Math.max(_loc2_.requestedMinRowCount,_loc3_);
            }
         }
         var _loc4_:int = this.requestedColumnCount;
         if(_loc4_ == -1)
         {
            _loc4_ = this.getColumnsLength();
            if(_loc2_.requestedMinColumnCount != -1)
            {
               _loc4_ = Math.max(_loc2_.requestedMinColumnCount,_loc4_);
            }
         }
         var _loc5_:Number = this.gridDimensionsView.getTypicalContentWidth(_loc4_);
         var _loc6_:Number = this.gridDimensionsView.getTypicalContentHeight(_loc3_);
         var _loc7_:Number = this.gridDimensionsView.getTypicalContentWidth(_loc2_.requestedMinColumnCount);
         var _loc8_:Number = this.gridDimensionsView.getTypicalContentHeight(_loc2_.requestedMinRowCount);
         target.measuredWidth = Math.ceil(_loc5_);
         target.measuredHeight = Math.ceil(_loc6_);
         target.measuredMinWidth = Math.ceil(_loc7_);
         target.measuredMinHeight = Math.ceil(_loc8_);
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc4_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:Number = NaN;
         var _loc3_:Grid = this.grid;
         if(!_loc3_)
         {
            return;
         }
         _loc4_ = this.gridDimensionsView.columnCount;
         var _loc5_:int = _loc4_ > 0?int(this.getPreviousVisibleColumnIndex(_loc4_)):-1;
         if(_loc5_ < 0)
         {
            return;
         }
         var _loc6_:GridLayer = this.getLayer("backgroundLayer");
         var _loc7_:GridLayer = this.getLayer("selectionLayer");
         var _loc8_:GridLayer = this.getLayer("editorIndicatorLayer");
         var _loc9_:GridLayer = this.getLayer("rendererLayer");
         var _loc10_:GridLayer = this.getLayer("overlayLayer");
         var _loc11_:Boolean = _loc3_.isInvalidateDisplayListReason("verticalScrollPosition") || _loc3_.isInvalidateDisplayListReason("horizontalScrollPosition");
         if(_loc11_)
         {
            this.oldVisibleRowIndices = this.visibleRowIndices;
            this.oldVisibleColumnIndices = this.visibleColumnIndices;
            _loc12_ = Math.max(0,horizontalScrollPosition);
            _loc13_ = Math.max(0,verticalScrollPosition);
            this.visibleGridBounds.x = _loc12_;
            this.visibleGridBounds.y = _loc13_;
            this.visibleGridBounds.width = param1;
            this.visibleGridBounds.height = param2;
            this.layoutColumns(_loc12_,_loc13_,param1);
            this.layoutItemRenderers(_loc9_,_loc12_,_loc13_,param1,param2);
            _loc14_ = this.getColumnsLength();
            _loc15_ = this.gridDimensionsView.rowCount;
            _loc16_ = Math.ceil(this.gridDimensionsView.getContentWidth(_loc14_));
            _loc17_ = Math.ceil(this.gridDimensionsView.getContentHeight(_loc15_));
            target.setContentSize(_loc16_,_loc17_);
            _loc18_ = _loc15_;
            if(_loc13_ == 0 && _loc17_ < param2)
            {
               _loc21_ = param2 - this.gridDimensionsView.getContentHeight(_loc15_);
               _loc18_ = _loc18_ + Math.ceil(_loc21_ / this.gridDimensionsView.defaultRowHeight);
            }
            _loc19_ = _loc15_;
            while(_loc19_ < _loc18_)
            {
               this.visibleRowIndices.push(_loc19_);
               _loc19_++;
            }
            this.visibleRowBackgrounds = this.layoutLinearElements(_loc3_.rowBackground,_loc6_,this.visibleRowBackgrounds,this.oldVisibleRowIndices,this.visibleRowIndices,this.layoutRowBackground);
            _loc20_ = _loc18_ - 1;
            this.visibleRowSeparators = this.layoutLinearElements(_loc3_.rowSeparator,_loc10_,this.visibleRowSeparators,this.oldVisibleRowIndices,this.visibleRowIndices,this.layoutRowSeparator,_loc20_);
            this.visibleColumnSeparators = this.layoutLinearElements(_loc3_.columnSeparator,_loc10_,this.visibleColumnSeparators,this.oldVisibleColumnIndices,this.visibleColumnIndices,this.layoutColumnSeparator,_loc5_);
            this.oldVisibleRowIndices.length = 0;
            this.oldVisibleColumnIndices.length = 0;
         }
         if(_loc11_ || _loc3_.isInvalidateDisplayListReason("hoverIndicator"))
         {
            this.layoutHoverIndicator(_loc6_);
         }
         if(_loc11_ || _loc3_.isInvalidateDisplayListReason("selectionIndicator"))
         {
            this.layoutSelectionIndicators(_loc7_);
         }
         if(_loc11_ || _loc3_.isInvalidateDisplayListReason("caretIndicator"))
         {
            this.layoutCaretIndicator(_loc10_);
         }
         if(_loc11_ || _loc3_.isInvalidateDisplayListReason("editorIndicator"))
         {
            this.layoutEditorIndicator(_loc8_);
         }
         if(!_loc11_)
         {
            this.updateVisibleItemRenderers();
         }
         target.validateNow();
      }
      
      private function updateVisibleItemRenderers() : void
      {
         var _loc4_:spark.components.gridClasses.IGridItemRenderer = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc1_:Grid = this.grid;
         var _loc2_:Boolean = this.isRowSelectionMode();
         var _loc3_:Boolean = this.isCellSelectionMode();
         if(!_loc2_ && !_loc3_)
         {
            return;
         }
         for each(_loc4_ in this.visibleItemRenderers)
         {
            _loc5_ = _loc4_.rowIndex;
            _loc6_ = _loc4_.columnIndex;
            _loc7_ = _loc4_.selected;
            _loc8_ = _loc4_.showsCaret;
            _loc9_ = _loc4_.hovered;
            if(_loc2_)
            {
               _loc4_.selected = _loc1_.selectionContainsIndex(_loc5_);
               _loc4_.showsCaret = _loc1_.caretRowIndex == _loc5_;
               _loc4_.hovered = _loc1_.hoverRowIndex == _loc5_;
            }
            else if(_loc3_)
            {
               _loc4_.selected = _loc1_.selectionContainsCell(_loc5_,_loc6_);
               _loc4_.showsCaret = _loc1_.caretRowIndex == _loc5_ && _loc1_.caretColumnIndex == _loc6_;
               _loc4_.hovered = _loc1_.hoverRowIndex == _loc5_ && _loc1_.hoverColumnIndex == _loc6_;
            }
            if(_loc7_ != _loc4_.selected || _loc8_ != _loc4_.showsCaret || _loc9_ != _loc4_.hovered)
            {
               _loc4_.prepare(true);
            }
         }
      }
      
      private function gridRowIndexToViewIndex(param1:int) : int
      {
         return param1 == -1?-1:int(param1 - this.viewRowIndex);
      }
      
      private function gridColumnIndexToViewIndex(param1:int) : int
      {
         return param1 == -1?-1:int(param1 - this.viewColumnIndex);
      }
      
      private function getLayer(param1:String) : GridLayer
      {
         return target.getChildByName(param1) as GridLayer;
      }
      
      private function getGridColumn(param1:int) : GridColumn
      {
         var _loc2_:IList = this.columnsView;
         if(_loc2_ == null || param1 >= _loc2_.length || param1 < 0)
         {
            return null;
         }
         return _loc2_.getItemAt(param1) as GridColumn;
      }
      
      private function getColumnsLength() : int
      {
         return !!this.columnsView?int(this.columnsView.length):0;
      }
      
      private function getNextVisibleColumnIndex(param1:int = -1) : int
      {
         var _loc2_:IList = null;
         var _loc5_:GridColumn = null;
         if(param1 < -1)
         {
            return -1;
         }
         _loc2_ = this.columnsView;
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
      
      private function getPreviousVisibleColumnIndex(param1:int) : int
      {
         var _loc4_:GridColumn = null;
         var _loc2_:IList = this.columnsView;
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
      
      private function getDataProviderItem(param1:int) : Object
      {
         var _loc2_:IList = this.dataProviderView;
         if(_loc2_ == null || param1 >= _loc2_.length || param1 < 0)
         {
            return null;
         }
         return _loc2_.getItemAt(param1);
      }
      
      private function getDataProviderLength() : int
      {
         var _loc1_:IList = this.dataProviderView;
         return !!_loc1_?int(_loc1_.length):-1;
      }
      
      private function createTypicalItemRenderer(param1:int) : spark.components.gridClasses.IGridItemRenderer
      {
         var _loc4_:GridColumn = null;
         var _loc5_:IFactory = null;
         var _loc2_:GridLayer = this.getLayer("rendererLayer");
         if(!_loc2_)
         {
            return null;
         }
         var _loc3_:Object = this.grid.typicalItem;
         if(_loc3_ == null)
         {
            _loc3_ = this.getDataProviderItem(0);
         }
         _loc4_ = this.getGridColumn(param1);
         _loc5_ = this.itemToRenderer(_loc4_,_loc3_);
         var _loc6_:spark.components.gridClasses.IGridItemRenderer = this.allocateGridElement(_loc5_) as spark.components.gridClasses.IGridItemRenderer;
         _loc2_.addElement(_loc6_);
         this.initializeItemRenderer(_loc6_,0,param1,this.grid.typicalItem,false);
         var _loc7_:Number = _loc4_.width;
         if(isNaN(_loc7_))
         {
            if("explicitWidth" in _loc6_)
            {
               _loc7_ = Object(_loc6_).explicitWidth;
            }
         }
         if(isNaN(_loc7_))
         {
            _loc7_ = 4096;
         }
         this.layoutItemRenderer(_loc6_,0,0,_loc7_,NaN);
         return _loc6_;
      }
      
      private function updateVisibleTypicalCellSizes(param1:Number, param2:Number, param3:int) : void
      {
         var _loc8_:int = 0;
         var _loc9_:GridColumn = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:spark.components.gridClasses.IGridItemRenderer = null;
         var _loc4_:GridLayer = this.getLayer("rendererLayer");
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:int = this.getColumnsLength();
         var _loc6_:Number = this.gridDimensionsView.getCellX(0,param3);
         var _loc7_:int = this.gridDimensionsView.columnGap;
         var _loc10_:Number = 0;
         var _loc11_:Number = this.grid.contentWidth;
         var _loc12_:Number = this.grid.width;
         _loc8_ = 0;
         while(_loc8_ < _loc5_)
         {
            _loc9_ = this.getGridColumn(_loc8_);
            if(isNaN(_loc9_.width) && _loc9_.visible)
            {
               _loc10_ = _loc10_ + _loc9_.percentWidth;
            }
            else if(!isNaN(_loc9_.width) && _loc9_.visible)
            {
               _loc11_ = _loc11_ - _loc9_.width;
               _loc12_ = _loc12_ - _loc9_.width;
            }
            _loc8_++;
         }
         var _loc13_:Number = _loc12_ < 0?Number(_loc11_):Number(_loc12_);
         var _loc14_:Number = _loc13_;
         _loc8_ = param3;
         while(param1 > 0 && _loc8_ >= 0 && _loc8_ < _loc5_)
         {
            _loc15_ = this.gridDimensionsView.getTypicalCellHeight(_loc8_);
            _loc16_ = this.gridDimensionsView.getTypicalCellWidth(_loc8_);
            _loc9_ = this.getGridColumn(_loc8_);
            if(!isNaN(_loc9_.width))
            {
               _loc16_ = _loc9_.width;
               this.gridDimensionsView.setTypicalCellWidth(_loc8_,_loc16_);
            }
            else if(_loc10_ > 0)
            {
               _loc16_ = Math.round(_loc9_.percentWidth / _loc10_ * (_loc13_ > 0?_loc13_:0));
               if(_loc16_ < _loc9_.minWidth)
               {
                  _loc16_ = _loc9_.minWidth;
                  _loc14_ = _loc14_ - _loc16_;
               }
               else if(_loc16_ > _loc14_)
               {
                  _loc16_ = _loc14_;
                  _loc14_ = 0;
               }
               else
               {
                  _loc14_ = _loc14_ - _loc16_;
               }
               this.gridDimensionsView.setTypicalCellWidth(_loc8_,_loc16_);
            }
            if(isNaN(_loc16_) || isNaN(_loc15_))
            {
               _loc17_ = this.createTypicalItemRenderer(_loc8_);
               if(isNaN(_loc16_))
               {
                  _loc16_ = clampColumnWidth(_loc17_.getPreferredBoundsWidth(),_loc9_);
                  this.gridDimensionsView.setTypicalCellWidth(_loc8_,_loc16_);
               }
               if(isNaN(_loc15_))
               {
                  _loc15_ = _loc17_.getPreferredBoundsHeight();
                  this.gridDimensionsView.setTypicalCellHeight(_loc8_,_loc15_);
               }
               _loc4_.removeElement(_loc17_);
               this.freeGridElement(_loc17_);
            }
            if(_loc8_ == param3)
            {
               param1 = param1 - (_loc6_ + _loc16_ - param2);
            }
            else
            {
               param1 = param1 - (_loc16_ + _loc7_);
            }
            _loc8_ = this.getNextVisibleColumnIndex(_loc8_);
         }
      }
      
      private function updateTypicalCellSizes() : void
      {
         var _loc6_:int = 0;
         var _loc7_:GridColumn = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Boolean = false;
         var _loc16_:spark.components.gridClasses.IGridItemRenderer = null;
         var _loc1_:GridLayer = this.getLayer("rendererLayer");
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:int = this.getColumnsLength();
         var _loc3_:int = this.gridDimensionsView.columnGap;
         var _loc4_:int = this.grid.requestedColumnCount;
         var _loc5_:int = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = this.grid.contentWidth;
         var _loc10_:Number = this.grid.width;
         _loc6_ = 0;
         while(_loc6_ < _loc2_)
         {
            _loc7_ = this.getGridColumn(_loc6_);
            if(isNaN(_loc7_.width) && _loc7_.visible)
            {
               _loc8_ = _loc8_ + _loc7_.percentWidth;
            }
            else if(!isNaN(_loc7_.width) && _loc7_.visible)
            {
               _loc9_ = _loc9_ - _loc7_.width;
               _loc10_ = _loc10_ - _loc7_.width;
            }
            _loc6_++;
         }
         var _loc11_:Number = _loc10_ < 0?Number(_loc9_):Number(_loc10_);
         var _loc12_:Number = _loc11_;
         _loc6_ = 0;
         while(_loc6_ < _loc2_)
         {
            _loc13_ = this.gridDimensionsView.getTypicalCellHeight(_loc6_);
            _loc14_ = this.gridDimensionsView.getTypicalCellWidth(_loc6_);
            _loc7_ = this.getGridColumn(_loc6_);
            if(!_loc7_.visible)
            {
               this.gridDimensionsView.setTypicalCellWidth(_loc6_,0);
               this.gridDimensionsView.setTypicalCellHeight(_loc6_,0);
            }
            else
            {
               if(!isNaN(_loc7_.width))
               {
                  _loc14_ = _loc7_.width;
                  this.gridDimensionsView.setTypicalCellWidth(_loc6_,_loc14_);
               }
               else if(_loc8_ > 0)
               {
                  _loc14_ = Math.round(_loc7_.percentWidth / _loc8_ * (_loc11_ > 0?_loc11_:0));
                  if(_loc14_ < _loc7_.minWidth)
                  {
                     _loc14_ = _loc7_.minWidth;
                     _loc12_ = _loc12_ - _loc14_;
                  }
                  else if(_loc14_ > _loc12_)
                  {
                     _loc14_ = _loc12_;
                     _loc12_ = 0;
                  }
                  else
                  {
                     _loc12_ = _loc12_ - _loc14_;
                  }
                  this.gridDimensionsView.setTypicalCellWidth(_loc6_,_loc14_);
               }
               _loc15_ = _loc4_ == -1 || _loc5_ < _loc4_;
               if(_loc15_ && (isNaN(_loc14_) || isNaN(_loc13_)))
               {
                  _loc16_ = this.createTypicalItemRenderer(_loc6_);
                  if(isNaN(_loc14_))
                  {
                     _loc14_ = clampColumnWidth(_loc16_.getPreferredBoundsWidth(),_loc7_);
                     this.gridDimensionsView.setTypicalCellWidth(_loc6_,_loc14_);
                  }
                  if(isNaN(_loc13_))
                  {
                     _loc13_ = _loc16_.getPreferredBoundsHeight();
                     this.gridDimensionsView.setTypicalCellHeight(_loc6_,_loc13_);
                  }
                  _loc1_.removeElement(_loc16_);
                  this.freeGridElement(_loc16_);
               }
               _loc5_++;
            }
            _loc6_++;
         }
      }
      
      private function layoutColumns(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:GridColumn = null;
         var _loc14_:Number = NaN;
         var _loc4_:int = this.gridDimensionsView.columnCount;
         if(_loc4_ <= 0)
         {
            return;
         }
         _loc5_ = this.gridDimensionsView.getColumnIndexAt(param1,param2);
         this.updateVisibleTypicalCellSizes(param3,param1,_loc5_);
         var _loc6_:int = this.gridDimensionsView.columnGap;
         var _loc7_:Number = this.gridDimensionsView.getCellX(0,_loc5_);
         var _loc8_:Number = param3;
         var _loc9_:uint = 0;
         var _loc10_:int = _loc5_;
         while(_loc8_ > 0 && _loc10_ >= 0 && _loc10_ < _loc4_)
         {
            _loc12_ = this.gridDimensionsView.getTypicalCellWidth(_loc10_);
            _loc13_ = this.getGridColumn(_loc10_);
            if(isNaN(_loc13_.width))
            {
               _loc9_ = _loc9_ + 1;
               _loc12_ = clampColumnWidth(_loc12_,_loc13_);
            }
            else
            {
               _loc12_ = _loc13_.width;
            }
            this.gridDimensionsView.setColumnWidth(_loc10_,_loc12_);
            if(_loc10_ == _loc5_)
            {
               _loc8_ = _loc8_ - (_loc7_ + _loc12_ - param1);
            }
            else
            {
               _loc8_ = _loc8_ - (_loc12_ + _loc6_);
            }
            _loc10_ = this.getNextVisibleColumnIndex(_loc10_);
         }
         if(param1 != 0 || _loc8_ < 1 || _loc9_ == 0)
         {
            return;
         }
         var _loc11_:Number = Math.ceil(_loc8_ / _loc9_);
         _loc10_ = _loc5_;
         while(_loc10_ >= 0 && _loc10_ < _loc4_ && _loc8_ >= 1)
         {
            _loc13_ = this.getGridColumn(_loc10_);
            if(isNaN(_loc13_.width))
            {
               _loc14_ = this.gridDimensionsView.getColumnWidth(_loc10_);
               _loc12_ = _loc14_ + Math.min(_loc8_,_loc11_);
               _loc12_ = clampColumnWidth(_loc12_,_loc13_);
               this.gridDimensionsView.setColumnWidth(_loc10_,_loc12_);
               _loc8_ = _loc8_ - (_loc12_ - _loc14_);
            }
            _loc10_ = this.getNextVisibleColumnIndex(_loc10_);
         }
      }
      
      private function itemToRenderer(param1:GridColumn, param2:Object) : IFactory
      {
         var _loc3_:IFactory = param1.itemToRenderer(param2);
         var _loc4_:IFactory = null;
         if(embeddedFontRegistryExists && _loc3_ is ClassFactory)
         {
            _loc4_ = this.gridItemRendererClassFactories[_loc3_];
            if(!_loc4_)
            {
               _loc4_ = new GridItemRendererClassFactory(this.grid,ClassFactory(_loc3_));
               this.gridItemRendererClassFactories[_loc3_] = _loc4_;
            }
         }
         return !!_loc4_?_loc4_:_loc3_;
      }
      
      private function layoutItemRenderers(param1:GridLayer, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc18_:GridColumn = null;
         var _loc24_:spark.components.gridClasses.IGridItemRenderer = null;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         var _loc27_:Number = NaN;
         var _loc28_:spark.components.gridClasses.IGridItemRenderer = null;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:Object = null;
         var _loc32_:IFactory = null;
         var _loc33_:int = 0;
         var _loc34_:int = 0;
         var _loc35_:int = 0;
         var _loc36_:int = 0;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         var _loc39_:Number = NaN;
         var _loc40_:int = 0;
         var _loc41_:int = 0;
         var _loc42_:Rectangle = null;
         if(!param1)
         {
            return;
         }
         var _loc8_:int = this.gridDimensionsView.rowCount;
         var _loc9_:int = this.getColumnsLength();
         var _loc10_:int = this.gridDimensionsView.rowGap;
         var _loc11_:int = this.gridDimensionsView.columnGap;
         _loc12_ = this.gridDimensionsView.getColumnIndexAt(param2,param3);
         _loc13_ = this.gridDimensionsView.getRowIndexAt(param2,param3);
         var _loc14_:Number = this.gridDimensionsView.getCellX(_loc13_,_loc12_);
         var _loc15_:Number = this.gridDimensionsView.getCellY(_loc13_,_loc12_);
         var _loc16_:Vector.<int> = new Vector.<int>();
         var _loc17_:Number = param4;
         _loc7_ = _loc12_;
         while(_loc17_ > 0 && _loc7_ >= 0 && _loc7_ < _loc9_)
         {
            _loc16_.push(_loc7_);
            _loc25_ = this.gridDimensionsView.getColumnWidth(_loc7_);
            if(_loc7_ == _loc12_)
            {
               _loc17_ = _loc17_ - (_loc14_ + _loc25_ - param2);
            }
            else
            {
               _loc17_ = _loc17_ - (_loc25_ + _loc11_);
            }
            _loc7_ = this.getNextVisibleColumnIndex(_loc7_);
         }
         var _loc19_:Vector.<int> = new Vector.<int>();
         var _loc20_:Vector.<spark.components.gridClasses.IGridItemRenderer> = new Vector.<spark.components.gridClasses.IGridItemRenderer>();
         var _loc21_:Number = _loc14_;
         var _loc22_:Number = _loc15_;
         var _loc23_:Number = param5;
         _loc6_ = _loc13_;
         while(_loc23_ > 0 && _loc6_ >= 0 && _loc6_ < _loc8_)
         {
            _loc19_.push(_loc6_);
            _loc26_ = this.gridDimensionsView.getRowHeight(_loc6_);
            for each(_loc7_ in _loc16_)
            {
               _loc28_ = this.takeVisibleItemRenderer(_loc6_,_loc7_);
               if(!_loc28_)
               {
                  _loc31_ = this.getDataProviderItem(_loc6_);
                  _loc18_ = this.getGridColumn(_loc7_);
                  _loc32_ = this.itemToRenderer(_loc18_,_loc31_);
                  _loc28_ = this.allocateGridElement(_loc32_) as spark.components.gridClasses.IGridItemRenderer;
               }
               if(_loc28_.parent != param1)
               {
                  param1.addElement(_loc28_);
               }
               _loc20_.push(_loc28_);
               this.initializeItemRenderer(_loc28_,_loc6_,_loc7_);
               _loc29_ = this.gridDimensionsView.getColumnWidth(_loc7_);
               this.layoutItemRenderer(_loc28_,_loc21_,_loc22_,_loc29_,_loc26_);
               _loc30_ = _loc28_.getPreferredBoundsHeight();
               this.gridDimensionsView.setCellHeight(_loc6_,_loc7_,_loc30_);
               _loc21_ = _loc21_ + (_loc29_ + _loc11_);
            }
            _loc27_ = this.gridDimensionsView.getRowHeight(_loc6_);
            if(_loc26_ != _loc27_)
            {
               _loc33_ = _loc16_.length;
               _loc26_ = _loc27_;
               for each(_loc7_ in _loc16_)
               {
                  _loc34_ = _loc19_.indexOf(_loc6_);
                  _loc35_ = _loc16_.indexOf(_loc7_);
                  _loc36_ = _loc34_ * _loc33_ + _loc35_;
                  _loc28_ = _loc20_[_loc36_];
                  _loc37_ = _loc28_.getLayoutBoundsX();
                  _loc38_ = _loc28_.getLayoutBoundsY();
                  _loc39_ = _loc28_.getLayoutBoundsWidth();
                  this.layoutItemRenderer(_loc28_,_loc37_,_loc38_,_loc39_,_loc26_);
                  this.gridDimensionsView.setCellHeight(_loc6_,_loc7_,_loc28_.getPreferredBoundsHeight());
               }
            }
            _loc21_ = _loc14_;
            _loc22_ = _loc22_ + (_loc26_ + _loc10_);
            if(_loc6_ == _loc13_)
            {
               _loc23_ = _loc23_ - (_loc15_ + _loc26_ - param3);
            }
            else
            {
               _loc23_ = _loc23_ - (_loc26_ + _loc10_);
            }
            _loc6_++;
         }
         for each(_loc24_ in this.visibleItemRenderers)
         {
            this.freeItemRenderer(_loc24_);
         }
         if(_loc19_.length > 0 && _loc16_.length > 0)
         {
            _loc40_ = _loc19_[_loc19_.length - 1];
            _loc41_ = _loc16_[_loc16_.length - 1];
            _loc42_ = this.gridDimensionsView.getCellBounds(_loc40_,_loc41_);
            this.visibleItemRenderersBounds.x = _loc14_;
            this.visibleItemRenderersBounds.y = _loc15_;
            this.visibleItemRenderersBounds.width = _loc42_.x + _loc42_.width - _loc14_;
            this.visibleItemRenderersBounds.height = _loc42_.y + _loc42_.height - _loc15_;
         }
         else
         {
            this.visibleItemRenderersBounds.setEmpty();
         }
         this.visibleItemRenderers = _loc20_;
         this.visibleRowIndices = _loc19_;
         this.visibleColumnIndices = _loc16_;
      }
      
      public function invalidateCell(param1:int, param2:int) : void
      {
         var _loc3_:spark.components.gridClasses.IGridItemRenderer = this.getVisibleItemRenderer(param1,param2);
         if(!_loc3_)
         {
            return;
         }
         if(this.itemRendererFunctionValueChanged(_loc3_))
         {
            _loc3_.grid.invalidateDisplayList();
            return;
         }
         this.initializeItemRenderer(_loc3_,param1,param2);
         var _loc4_:Number = _loc3_.getLayoutBoundsX();
         var _loc5_:Number = _loc3_.getLayoutBoundsY();
         var _loc6_:Number = _loc3_.getLayoutBoundsWidth();
         var _loc7_:Number = _loc3_.getLayoutBoundsHeight();
         this.layoutItemRenderer(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_);
         var _loc8_:Number = _loc3_.getPreferredBoundsHeight();
         if(this.gridDimensionsView.variableRowHeight && _loc7_ != _loc8_)
         {
            this.grid.invalidateDisplayList();
         }
      }
      
      private function itemRendererFunctionValueChanged(param1:spark.components.gridClasses.IGridItemRenderer) : Boolean
      {
         var _loc2_:GridColumn = param1.column;
         if(!_loc2_ || _loc2_.itemRendererFunction === null)
         {
            return false;
         }
         var _loc3_:IFactory = this.itemToRenderer(_loc2_,param1.data);
         return _loc3_ !== this.elementToFactoryMap[param1];
      }
      
      private function getVisibleItemRendererIndex(param1:int, param2:int) : int
      {
         if(this.visibleRowIndices == null || this.visibleColumnIndices == null)
         {
            return -1;
         }
         var _loc3_:int = this.visibleRowIndices.indexOf(param1);
         var _loc4_:int = this.visibleColumnIndices.indexOf(param2);
         if(_loc3_ == -1 || _loc4_ == -1)
         {
            return -1;
         }
         var _loc5_:int = _loc3_ * this.visibleColumnIndices.length + _loc4_;
         return _loc5_;
      }
      
      public function getVisibleItemRenderer(param1:int, param2:int) : spark.components.gridClasses.IGridItemRenderer
      {
         var _loc3_:int = this.getVisibleItemRendererIndex(param1,param2);
         if(_loc3_ == -1 || _loc3_ >= this.visibleItemRenderers.length)
         {
            return null;
         }
         var _loc4_:spark.components.gridClasses.IGridItemRenderer = this.visibleItemRenderers[_loc3_];
         return _loc4_;
      }
      
      private function takeVisibleItemRenderer(param1:int, param2:int) : spark.components.gridClasses.IGridItemRenderer
      {
         var _loc3_:int = this.getVisibleItemRendererIndex(param1,param2);
         if(_loc3_ == -1 || _loc3_ >= this.visibleItemRenderers.length)
         {
            return null;
         }
         var _loc4_:spark.components.gridClasses.IGridItemRenderer = this.visibleItemRenderers[_loc3_];
         this.visibleItemRenderers[_loc3_] = null;
         if(_loc4_ && this.itemRendererFunctionValueChanged(_loc4_))
         {
            this.freeItemRenderer(_loc4_);
            return null;
         }
         return _loc4_;
      }
      
      private function initializeItemRenderer(param1:spark.components.gridClasses.IGridItemRenderer, param2:int, param3:int, param4:Object = null, param5:Boolean = true) : void
      {
         param1.visible = param5;
         var _loc6_:GridColumn = this.getGridColumn(param3);
         if(_loc6_)
         {
            param1.rowIndex = param2;
            param1.column = _loc6_;
            if(param4 == null)
            {
               param4 = this.getDataProviderItem(param2);
            }
            param1.label = _loc6_.itemToLabel(param4);
            if(this.isRowSelectionMode())
            {
               param1.selected = this.grid.selectionContainsIndex(param2);
               param1.showsCaret = this.grid.caretRowIndex == param2;
               param1.hovered = this.grid.hoverRowIndex == param2;
            }
            else if(this.isCellSelectionMode())
            {
               param1.selected = this.grid.selectionContainsCell(param2,param3);
               param1.showsCaret = this.grid.caretRowIndex == param2 && this.grid.caretColumnIndex == param3;
               param1.hovered = this.grid.hoverRowIndex == param2 && this.grid.hoverColumnIndex == param3;
            }
            param1.data = param4;
            if(this.grid.dataGrid)
            {
               param1.owner = this.grid.dataGrid;
            }
            param1.prepare(!this.createdGridElement);
         }
      }
      
      private function freeItemRenderer(param1:spark.components.gridClasses.IGridItemRenderer) : void
      {
         if(!param1)
         {
            return;
         }
         this.freeGridElement(param1);
         param1.discard(true);
      }
      
      private function freeItemRenderers(param1:Vector.<spark.components.gridClasses.IGridItemRenderer>) : void
      {
         var _loc2_:spark.components.gridClasses.IGridItemRenderer = null;
         for each(_loc2_ in param1)
         {
            this.freeItemRenderer(_loc2_);
         }
         param1.length = 0;
      }
      
      private function layoutLinearElements(param1:IFactory, param2:GridLayer, param3:Vector.<IVisualElement>, param4:Vector.<int>, param5:Vector.<int>, param6:Function, param7:int = -1) : Vector.<IVisualElement>
      {
         var _loc8_:uint = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:IVisualElement = null;
         if(!param2)
         {
            return new Vector.<IVisualElement>(0);
         }
         this.discardGridElementsIfFactoryChanged(param1,param2,param3);
         if(param1 == null)
         {
            return new Vector.<IVisualElement>(0);
         }
         this.freeLinearElements(param3,param4,param5,param7);
         _loc8_ = param5.length;
         var _loc9_:Vector.<IVisualElement> = new Vector.<IVisualElement>(_loc8_);
         var _loc10_:int = 0;
         while(_loc10_ < _loc8_)
         {
            _loc11_ = param5[_loc10_];
            if(_loc11_ == param7)
            {
               _loc9_.length = _loc10_;
               break;
            }
            _loc12_ = param4.indexOf(_loc11_);
            _loc13_ = _loc12_ != -1 && _loc12_ < param3.length?param3[_loc12_]:null;
            if(_loc13_ == null)
            {
               _loc13_ = this.allocateGridElement(param1);
            }
            _loc9_[_loc10_] = _loc13_;
            param2.addElement(_loc13_);
            _loc13_.visible = true;
            param6(_loc13_,_loc11_);
            _loc10_++;
         }
         return _loc9_;
      }
      
      private function layoutCellElements(param1:IFactory, param2:GridLayer, param3:Vector.<IVisualElement>, param4:Vector.<int>, param5:Vector.<int>, param6:Vector.<int>, param7:Vector.<int>, param8:Function) : Vector.<IVisualElement>
      {
         var _loc9_:uint = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:IVisualElement = null;
         if(!param2)
         {
            return new Vector.<IVisualElement>(0);
         }
         if(this.discardGridElementsIfFactoryChanged(param1,param2,param3))
         {
            param4.length = 0;
            param5.length = 0;
         }
         if(param1 == null)
         {
            return new Vector.<IVisualElement>(0);
         }
         _loc9_ = param6.length;
         var _loc10_:Vector.<IVisualElement> = new Vector.<IVisualElement>(_loc9_);
         this.freeCellElements(param3,_loc10_,param4,param6,param5,param7);
         var _loc11_:int = 0;
         while(_loc11_ < _loc9_)
         {
            _loc12_ = param6[_loc11_];
            _loc13_ = param7[_loc11_];
            _loc14_ = _loc10_[_loc11_];
            if(_loc14_ === null)
            {
               _loc14_ = this.allocateGridElement(param1);
               _loc10_[_loc11_] = _loc14_;
            }
            param2.addElement(_loc14_);
            _loc14_.visible = true;
            param8(_loc14_,_loc12_,_loc13_);
            _loc11_++;
         }
         return _loc10_;
      }
      
      private function discardGridElementsIfFactoryChanged(param1:IFactory, param2:GridLayer, param3:Vector.<IVisualElement>) : Boolean
      {
         var _loc4_:IVisualElement = null;
         if(param3.length > 0 && param1 != this.elementToFactoryMap[param3[0]])
         {
            for each(_loc4_ in param3)
            {
               param2.removeElement(_loc4_);
               this.freeGridElement(_loc4_);
            }
            param3.length = 0;
            return true;
         }
         return false;
      }
      
      private function freeLinearElements(param1:Vector.<IVisualElement>, param2:Vector.<int>, param3:Vector.<int>, param4:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:IVisualElement = null;
         var _loc5_:int = 0;
         while(_loc5_ < param1.length)
         {
            _loc6_ = param3.indexOf(param2[_loc5_]);
            if(param2[_loc5_] == param4 || _loc6_ == -1)
            {
               _loc7_ = param1[_loc5_];
               if(_loc7_)
               {
                  this.freeGridElement(_loc7_);
                  param1[_loc5_] = null;
               }
            }
            _loc5_++;
         }
      }
      
      private function freeCellElements(param1:Vector.<IVisualElement>, param2:Vector.<IVisualElement>, param3:Vector.<int>, param4:Vector.<int>, param5:Vector.<int>, param6:Vector.<int>) : void
      {
         var _loc11_:IVisualElement = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc7_:Boolean = true;
         var _loc8_:int = param4.length;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         while(_loc10_ < param1.length)
         {
            _loc11_ = param1[_loc10_];
            if(_loc11_ != null)
            {
               _loc12_ = param3[_loc10_];
               _loc13_ = param5[_loc10_];
               while(_loc9_ < _loc8_)
               {
                  _loc14_ = param4[_loc9_];
                  _loc15_ = param6[_loc9_];
                  if(_loc14_ == _loc12_)
                  {
                     if(_loc15_ == _loc13_)
                     {
                        param2[_loc9_] = _loc11_;
                        _loc7_ = false;
                        break;
                     }
                     if(_loc15_ > _loc13_)
                     {
                        break;
                     }
                  }
                  else if(_loc14_ > _loc12_)
                  {
                     break;
                  }
                  _loc9_++;
               }
               if(_loc7_)
               {
                  this.freeGridElement(_loc11_);
               }
               _loc7_ = true;
            }
            _loc10_++;
         }
         param1.length = 0;
      }
      
      private function layoutRowBackground(param1:IVisualElement, param2:int) : void
      {
         var _loc3_:int = 0;
         _loc3_ = this.gridDimensionsView.rowCount;
         var _loc4_:Rectangle = param2 < _loc3_?this.gridDimensionsView.getRowBounds(param2):this.gridDimensionsView.getPadRowBounds(param2);
         if(!_loc4_)
         {
            return;
         }
         if(param2 < _loc3_ && _loc4_.width == 0)
         {
            _loc4_.width = this.visibleGridBounds.width;
         }
         this.intializeGridVisualElement(param1,param2);
         this.layoutGridElementR(param1,_loc4_);
      }
      
      private function layoutRowSeparator(param1:IVisualElement, param2:int) : void
      {
         var _loc4_:int = 0;
         this.intializeGridVisualElement(param1,param2);
         var _loc3_:Number = param1.getPreferredBoundsHeight();
         _loc4_ = this.gridDimensionsView.rowCount;
         var _loc5_:Rectangle = param2 < _loc4_?this.gridDimensionsView.getRowBounds(param2):this.gridDimensionsView.getPadRowBounds(param2);
         if(!_loc5_)
         {
            return;
         }
         var _loc6_:Number = _loc5_.x;
         var _loc7_:Number = Math.max(_loc5_.width,this.visibleGridBounds.right);
         var _loc8_:Number = _loc5_.bottom;
         this.layoutGridElement(param1,_loc6_,_loc8_,_loc7_,_loc3_);
      }
      
      private function layoutColumnSeparator(param1:IVisualElement, param2:int) : void
      {
         var _loc3_:Rectangle = null;
         this.intializeGridVisualElement(param1,-1,param2);
         _loc3_ = this.visibleItemRenderersBounds;
         var _loc4_:Number = param1.getPreferredBoundsWidth();
         var _loc5_:Number = Math.max(_loc3_.height,this.visibleGridBounds.height);
         var _loc6_:Number = this.gridDimensionsView.getCellX(0,param2) + this.gridDimensionsView.getColumnWidth(param2);
         var _loc7_:Number = _loc3_.y;
         this.layoutGridElement(param1,_loc6_,_loc7_,_loc4_,_loc5_);
      }
      
      private function isRowSelectionMode() : Boolean
      {
         var _loc1_:String = this.grid.selectionMode;
         return _loc1_ == GridSelectionMode.SINGLE_ROW || _loc1_ == GridSelectionMode.MULTIPLE_ROWS;
      }
      
      private function isCellSelectionMode() : Boolean
      {
         var _loc1_:String = this.grid.selectionMode;
         return _loc1_ == GridSelectionMode.SINGLE_CELL || _loc1_ == GridSelectionMode.MULTIPLE_CELLS;
      }
      
      private function layoutSelectionIndicators(param1:GridLayer) : void
      {
         var _loc5_:Vector.<int> = null;
         var _loc6_:int = 0;
         var _loc7_:Vector.<int> = null;
         var _loc8_:int = 0;
         var _loc2_:IFactory = this.grid.selectionIndicator;
         var _loc3_:int = this.viewRowIndex;
         var _loc4_:int = this.viewColumnIndex;
         if(this.isRowSelectionMode())
         {
            if(this.visibleColumnSelectionIndices.length > 0)
            {
               this.clearSelectionIndicators();
            }
            _loc5_ = this.visibleRowSelectionIndices;
            this.visibleRowSelectionIndices = new Vector.<int>();
            for each(_loc6_ in this.visibleRowIndices)
            {
               if(this.grid.selectionContainsIndex(_loc6_ + _loc3_))
               {
                  this.visibleRowSelectionIndices.push(_loc6_);
               }
            }
            this.visibleSelectionIndicators = this.layoutLinearElements(_loc2_,param1,this.visibleSelectionIndicators,_loc5_,this.visibleRowSelectionIndices,this.layoutRowSelectionIndicator);
            return;
         }
         if(this.visibleRowSelectionIndices.length > 0 && this.visibleColumnSelectionIndices.length == 0)
         {
            this.clearSelectionIndicators();
         }
         if(this.isCellSelectionMode())
         {
            _loc5_ = this.visibleRowSelectionIndices;
            _loc7_ = this.visibleColumnSelectionIndices;
            this.visibleRowSelectionIndices = new Vector.<int>();
            this.visibleColumnSelectionIndices = new Vector.<int>();
            for each(_loc6_ in this.visibleRowIndices)
            {
               for each(_loc8_ in this.visibleColumnIndices)
               {
                  if(this.grid.selectionContainsCell(_loc6_ + _loc3_,_loc8_ + _loc4_))
                  {
                     this.visibleRowSelectionIndices.push(_loc6_);
                     this.visibleColumnSelectionIndices.push(_loc8_);
                  }
               }
            }
            this.visibleSelectionIndicators = this.layoutCellElements(_loc2_,param1,this.visibleSelectionIndicators,_loc5_,_loc7_,this.visibleRowSelectionIndices,this.visibleColumnSelectionIndices,this.layoutCellSelectionIndicator);
            return;
         }
         if(this.visibleColumnSelectionIndices.length > 0)
         {
            this.clearSelectionIndicators();
         }
      }
      
      private function layoutRowSelectionIndicator(param1:IVisualElement, param2:int) : void
      {
         this.intializeGridVisualElement(param1,param2);
         this.layoutGridElementR(param1,this.gridDimensionsView.getRowBounds(param2));
      }
      
      private function layoutCellSelectionIndicator(param1:IVisualElement, param2:int, param3:int) : void
      {
         this.intializeGridVisualElement(param1,param2,param3);
         this.layoutGridElementR(param1,this.gridDimensionsView.getCellBounds(param2,param3));
      }
      
      private function clearSelectionIndicators() : void
      {
         this.freeGridElements(this.visibleSelectionIndicators);
         this.visibleRowSelectionIndices.length = 0;
         this.visibleColumnSelectionIndices.length = 0;
      }
      
      private function layoutIndicator(param1:GridLayer, param2:IFactory, param3:IVisualElement, param4:int, param5:int) : IVisualElement
      {
         var _loc6_:Rectangle = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(!param1)
         {
            return null;
         }
         if(param3 && param2 != this.elementToFactoryMap[param3])
         {
            this.removeGridElement(param3);
            param3 = null;
            if(param2 == null)
            {
               return null;
            }
         }
         if(param4 == -1 || this.grid.selectionMode == GridSelectionMode.NONE || this.isCellSelectionMode() && this.getNextVisibleColumnIndex(param5 - 1) != param5)
         {
            if(param3)
            {
               param3.visible = false;
            }
            return param3;
         }
         if(!param3 && param2)
         {
            param3 = this.createGridElement(param2);
         }
         if(param3)
         {
            _loc6_ = !!this.isRowSelectionMode()?this.gridDimensionsView.getRowBounds(param4):this.gridDimensionsView.getCellBounds(param4,param5);
            this.intializeGridVisualElement(param3,param4,param5);
            if(param2 == this.grid.caretIndicator && _loc6_)
            {
               _loc7_ = this.getColumnsLength();
               if(this.isCellSelectionMode() && param5 < _loc7_ - 1)
               {
                  _loc6_.width = _loc6_.width + 1;
               }
               _loc8_ = this.getDataProviderLength();
               if(param4 < _loc8_ || this.visibleRowIndices.length > _loc8_)
               {
                  _loc6_.height = _loc6_.height + 1;
               }
            }
            this.layoutGridElementR(param3,_loc6_);
            param1.addElement(param3);
            param3.visible = true;
         }
         return param3;
      }
      
      private function layoutHoverIndicator(param1:GridLayer) : void
      {
         var _loc2_:int = this.gridRowIndexToViewIndex(this.grid.hoverRowIndex);
         var _loc3_:int = this.gridColumnIndexToViewIndex(this.grid.hoverColumnIndex);
         var _loc4_:IFactory = this.grid.hoverIndicator;
         this.hoverIndicator = this.layoutIndicator(param1,_loc4_,this.hoverIndicator,_loc2_,_loc3_);
      }
      
      private function layoutCaretIndicator(param1:GridLayer) : void
      {
         var _loc2_:int = this.gridRowIndexToViewIndex(this.grid.caretRowIndex);
         var _loc3_:int = this.gridColumnIndexToViewIndex(this.grid.caretColumnIndex);
         var _loc4_:IFactory = this.grid.caretIndicator;
         this.caretIndicator = this.layoutIndicator(param1,_loc4_,this.caretIndicator,_loc2_,_loc3_);
         if(this.caretIndicator && !this.grid.showCaret)
         {
            this.caretIndicator.visible = this.grid.showCaret;
         }
      }
      
      private function layoutEditorIndicator(param1:GridLayer) : void
      {
         var _loc6_:Rectangle = null;
         var _loc2_:DataGrid = this.grid.dataGrid;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:int = this.gridRowIndexToViewIndex(_loc2_.editorRowIndex);
         var _loc4_:int = this.gridColumnIndexToViewIndex(_loc2_.editorColumnIndex);
         var _loc5_:IFactory = _loc2_.editorIndicator;
         if(this.editorIndicator && _loc5_ != this.elementToFactoryMap[this.editorIndicator])
         {
            this.removeGridElement(this.editorIndicator);
            this.editorIndicator = null;
            if(_loc5_ == null)
            {
               return;
            }
         }
         if(_loc3_ == -1 || _loc4_ == -1)
         {
            if(this.editorIndicator)
            {
               this.editorIndicator.visible = false;
            }
            return;
         }
         if(!this.editorIndicator && _loc5_)
         {
            this.editorIndicator = this.createGridElement(_loc5_);
         }
         if(this.editorIndicator)
         {
            _loc6_ = this.gridDimensionsView.getCellBounds(_loc3_,_loc4_);
            this.intializeGridVisualElement(this.editorIndicator,_loc3_,_loc4_);
            this.layoutGridElementR(this.editorIndicator,_loc6_);
            param1.addElement(this.editorIndicator);
            this.editorIndicator.visible = true;
         }
      }
      
      public function dataProviderCollectionChanged(param1:CollectionEvent) : void
      {
         switch(param1.kind)
         {
            case CollectionEventKind.ADD:
               this.dataProviderCollectionAdd(param1);
               break;
            case CollectionEventKind.REMOVE:
               this.dataProviderCollectionRemove(param1);
               break;
            case CollectionEventKind.MOVE:
               break;
            case CollectionEventKind.REFRESH:
            case CollectionEventKind.RESET:
               this.dataProviderCollectionReset(param1);
               break;
            case CollectionEventKind.UPDATE:
               this.dataProviderCollectionUpdate(param1);
               break;
            case CollectionEventKind.REPLACE:
         }
      }
      
      private function dataProviderCollectionAdd(param1:CollectionEvent) : void
      {
         var _loc2_:int = param1.location - this.viewRowIndex;
         var _loc3_:int = param1.items.length;
         this.incrementIndicesGTE(this.visibleRowIndices,_loc2_,_loc3_);
         this.incrementIndicesGTE(this.visibleRowSelectionIndices,_loc2_,_loc3_);
      }
      
      private function dataProviderCollectionRemove(param1:CollectionEvent) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         _loc2_ = param1.items.length;
         _loc3_ = param1.location - this.viewRowIndex;
         var _loc4_:int = _loc3_ + _loc2_ - 1;
         var _loc5_:int = -1;
         var _loc6_:int = -1;
         var _loc7_:int = 0;
         while(_loc7_ < this.visibleRowIndices.length)
         {
            _loc8_ = this.visibleRowIndices[_loc7_];
            if(_loc8_ >= _loc3_ && _loc8_ <= _loc4_)
            {
               if(_loc5_ == -1)
               {
                  _loc5_ = _loc6_ = _loc7_;
               }
               else
               {
                  _loc6_ = _loc7_;
               }
            }
            else if(_loc8_ > _loc4_)
            {
               this.visibleRowIndices[_loc7_] = _loc8_ - _loc2_;
            }
            _loc7_++;
         }
         if(_loc5_ != -1 && _loc6_ != -1)
         {
            _loc9_ = _loc6_ - _loc5_ + 1;
            this.visibleRowIndices.splice(_loc5_,_loc9_);
            if(_loc6_ < this.visibleRowBackgrounds.length)
            {
               this.freeGridElements(this.visibleRowBackgrounds.splice(_loc5_,_loc9_));
            }
            if(_loc6_ < this.visibleRowSeparators.length)
            {
               this.freeGridElements(this.visibleRowSeparators.splice(_loc5_,_loc9_));
            }
            _loc10_ = this.visibleColumnIndices.length;
            _loc11_ = _loc5_ * _loc10_;
            this.freeItemRenderers(this.visibleItemRenderers.splice(_loc11_,_loc9_ * _loc10_));
         }
      }
      
      private function incrementIndicesGTE(param1:Vector.<int>, param2:int, param3:int) : void
      {
         var _loc6_:int = 0;
         var _loc4_:int = param1.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = param1[_loc5_];
            if(_loc6_ >= param2)
            {
               param1[_loc5_] = _loc6_ + param3;
            }
            _loc5_++;
         }
      }
      
      private function dataProviderCollectionReset(param1:CollectionEvent) : void
      {
         this.clearVirtualLayoutCache();
      }
      
      private function dataProviderCollectionUpdate(param1:CollectionEvent) : void
      {
         var _loc2_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:spark.components.gridClasses.IGridItemRenderer = null;
         var _loc3_:int = param1.items.length;
         var _loc4_:int = this.visibleItemRenderers.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc2_ = PropertyChangeEvent(param1.items[_loc5_]).source;
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = this.visibleItemRenderers[_loc6_] as spark.components.gridClasses.IGridItemRenderer;
               if(_loc7_ && _loc7_.data == _loc2_)
               {
                  this.freeItemRenderer(_loc7_);
                  this.visibleItemRenderers[_loc6_] = null;
               }
               _loc6_++;
            }
            _loc5_++;
         }
      }
      
      public function columnsCollectionChanged(param1:CollectionEvent) : void
      {
         switch(param1.kind)
         {
            case CollectionEventKind.UPDATE:
               this.clearVirtualLayoutCache();
               break;
            default:
               this.clearVirtualLayoutCache();
               if(this.grid)
               {
                  this.grid.setContentSize(0,0);
               }
         }
      }
      
      private function createGridElement(param1:IFactory) : IVisualElement
      {
         this.createdGridElement = true;
         var _loc2_:IVisualElement = param1.newInstance() as IVisualElement;
         this.elementToFactoryMap[_loc2_] = param1;
         return _loc2_;
      }
      
      private function allocateGridElement(param1:IFactory) : IVisualElement
      {
         var _loc3_:IVisualElement = null;
         this.createdGridElement = false;
         var _loc2_:Vector.<IVisualElement> = this.freeElementMap[param1] as Vector.<IVisualElement>;
         if(_loc2_)
         {
            _loc3_ = _loc2_.pop();
            if(_loc2_.length == 0)
            {
               delete this.freeElementMap[param1];
            }
            if(_loc3_)
            {
               return _loc3_;
            }
         }
         return this.createGridElement(param1);
      }
      
      private function freeGridElement(param1:IVisualElement) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         param1.visible = false;
         var _loc2_:IFactory = this.elementToFactoryMap[param1];
         if(!_loc2_)
         {
            return false;
         }
         var _loc3_:Vector.<IVisualElement> = this.freeElementMap[_loc2_];
         if(!_loc3_)
         {
            _loc3_ = new Vector.<IVisualElement>();
            this.freeElementMap[_loc2_] = _loc3_;
         }
         _loc3_.push(param1);
         return true;
      }
      
      private function freeGridElements(param1:Vector.<IVisualElement>) : void
      {
         var _loc2_:IVisualElement = null;
         for each(_loc2_ in param1)
         {
            this.freeGridElement(_loc2_);
         }
         param1.length = 0;
      }
      
      private function removeGridElement(param1:IVisualElement) : void
      {
         var _loc2_:IFactory = null;
         var _loc5_:int = 0;
         _loc2_ = this.elementToFactoryMap[param1];
         var _loc3_:Vector.<IVisualElement> = !!_loc2_?this.freeElementMap[_loc2_]:null;
         if(_loc3_)
         {
            _loc5_ = _loc3_.indexOf(param1);
            if(_loc5_ != -1)
            {
               _loc3_.splice(_loc5_,1);
            }
            if(_loc3_.length == 0)
            {
               delete this.freeElementMap[_loc2_];
            }
         }
         delete this.elementToFactoryMap[param1];
         param1.visible = false;
         var _loc4_:IVisualElementContainer = param1.parent as IVisualElementContainer;
         if(_loc4_)
         {
            _loc4_.removeElement(param1);
         }
      }
      
      private function layoutItemRenderer(param1:spark.components.gridClasses.IGridItemRenderer, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:ILayoutManagerClient = null;
         var _loc7_:IGraphicElement = null;
         var _loc8_:IInvalidating = null;
         if(!isNaN(param4) || !isNaN(param5))
         {
            if(param1 is ILayoutManagerClient)
            {
               _loc6_ = param1 as ILayoutManagerClient;
               LayoutManager.getInstance().validateClient(_loc6_,true);
            }
            else if(param1 is IGraphicElement)
            {
               _loc7_ = param1 as IGraphicElement;
               _loc7_.validateProperties();
               _loc7_.validateSize();
            }
            param1.setLayoutBoundsSize(param4,param5);
         }
         if(param1 is IInvalidating && !(param1 is IGraphicElement))
         {
            _loc8_ = param1 as IInvalidating;
            _loc8_.validateNow();
         }
         param1.setLayoutBoundsPosition(param2,param3);
      }
      
      private function layoutGridElementR(param1:IVisualElement, param2:Rectangle) : void
      {
         if(param2)
         {
            this.layoutGridElement(param1,param2.x,param2.y,param2.width,param2.height);
         }
      }
      
      private function layoutGridElement(param1:IVisualElement, param2:Number, param3:Number, param4:Number, param5:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(param4 > MAX_ELEMENT_SIZE)
         {
            _loc6_ = Math.max(0,horizontalScrollPosition);
            _loc7_ = target.getLayoutBoundsWidth();
            _loc8_ = Math.max(param2,_loc6_ - ELEMENT_EDGE_PAD);
            _loc9_ = Math.min(param2 + param4,_loc6_ + _loc7_ + ELEMENT_EDGE_PAD);
            param2 = _loc8_;
            param4 = _loc9_ - _loc8_;
         }
         if(param5 > MAX_ELEMENT_SIZE)
         {
            _loc10_ = Math.max(0,verticalScrollPosition);
            _loc11_ = target.getLayoutBoundsHeight();
            _loc12_ = Math.max(param3,_loc10_ - ELEMENT_EDGE_PAD);
            _loc13_ = Math.min(param3 + param5,_loc10_ + _loc11_ + ELEMENT_EDGE_PAD);
            param3 = _loc12_;
            param5 = _loc13_ - _loc12_;
         }
         param1.setLayoutBoundsSize(param4,param5);
         param1.setLayoutBoundsPosition(param2,param3);
      }
      
      private function intializeGridVisualElement(param1:IVisualElement, param2:int = -1, param3:int = -1) : void
      {
         var _loc4_:IGridVisualElement = param1 as IGridVisualElement;
         if(_loc4_)
         {
            _loc4_.prepareGridVisualElement(this.grid,param2,param3);
         }
      }
      
      public function getVisibleBounds() : Rectangle
      {
         var _loc1_:Number = this.gridDimensionsView.viewOriginX + target.horizontalScrollPosition;
         var _loc2_:Number = this.gridDimensionsView.viewOriginY + target.verticalScrollPosition;
         return new Rectangle(_loc1_,_loc2_,target.width,target.height);
      }
      
      public function getVisibleRowIndices() : Vector.<int>
      {
         var _loc1_:int = this.viewRowIndex;
         var _loc2_:Vector.<int> = this.visibleRowIndices.concat();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_] = _loc2_[_loc3_] + _loc1_;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getVisibleColumnIndices() : Vector.<int>
      {
         var _loc1_:int = this.viewColumnIndex;
         var _loc2_:Vector.<int> = this.visibleColumnIndices.concat();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc2_[_loc3_] = _loc2_[_loc3_] + _loc1_;
            _loc3_++;
         }
         return _loc2_;
      }
      
      public function getFirstFullyVisibleRowIndex() : int
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc1_:int = this.visibleRowIndices.length;
         if(_loc1_ == 0)
         {
            return -1;
         }
         _loc2_ = this.visibleRowIndices[0];
         _loc3_ = this.gridDimensionsView.getCellY(_loc2_,-1);
         var _loc4_:Boolean = _loc3_ < verticalScrollPosition && _loc1_ > 1;
         return this.viewRowIndex + (!!_loc4_?this.visibleRowIndices[1]:_loc2_);
      }
      
      public function getLastFullyVisibleRowIndex() : int
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc1_:int = this.visibleRowIndices.length;
         if(_loc1_ == 0)
         {
            return -1;
         }
         _loc2_ = this.visibleRowIndices[_loc1_ - 1];
         _loc3_ = this.gridDimensionsView.getCellY(_loc2_,-1) + this.gridDimensionsView.getRowHeight(_loc2_);
         _loc4_ = verticalScrollPosition + target.getLayoutBoundsHeight();
         var _loc5_:Boolean = _loc3_ > _loc4_ && _loc1_ > 1;
         return this.viewRowIndex + (!!_loc5_?this.visibleRowIndices[_loc1_ - 2]:_loc2_);
      }
      
      public function getItemRendererAt(param1:int, param2:int) : spark.components.gridClasses.IGridItemRenderer
      {
         var _loc7_:IFactory = null;
         param1 = this.gridRowIndexToViewIndex(param1);
         param2 = this.gridColumnIndexToViewIndex(param2);
         var _loc3_:spark.components.gridClasses.IGridItemRenderer = this.getVisibleItemRenderer(param1,param2);
         if(_loc3_)
         {
            return _loc3_;
         }
         var _loc4_:GridLayer = this.getLayer("rendererLayer");
         if(!_loc4_)
         {
            return null;
         }
         var _loc5_:Object = this.getDataProviderItem(param1);
         var _loc6_:GridColumn = this.getGridColumn(param2);
         if(_loc5_ == null || _loc6_ == null)
         {
            return null;
         }
         if(!_loc6_.visible)
         {
            return null;
         }
         _loc7_ = this.itemToRenderer(_loc6_,_loc5_);
         var _loc8_:spark.components.gridClasses.IGridItemRenderer = _loc7_.newInstance() as spark.components.gridClasses.IGridItemRenderer;
         this.createdGridElement = true;
         _loc4_.addElement(_loc8_);
         this.initializeItemRenderer(_loc8_,param1,param2,_loc5_,false);
         var _loc9_:Rectangle = this.gridDimensionsView.getCellBounds(param1,param2);
         if(_loc9_ == null)
         {
            return null;
         }
         this.layoutItemRenderer(_loc8_,_loc9_.x,_loc9_.y,_loc9_.width,_loc9_.height);
         _loc4_.removeElement(_loc8_);
         _loc8_.visible = false;
         return _loc8_;
      }
      
      public function isCellVisible(param1:int, param2:int) : Boolean
      {
         if(param1 == -1 && param2 == -1)
         {
            return false;
         }
         param1 = this.gridRowIndexToViewIndex(param1);
         param2 = this.gridColumnIndexToViewIndex(param2);
         return (param1 == -1 || this.visibleRowIndices.indexOf(param1) != -1) && (param2 == -1 || this.visibleColumnIndices.indexOf(param2) != -1);
      }
   }
}

import mx.core.ClassFactory;
import spark.components.Grid;
import mx.core.IFlexModuleFactory;
import flash.utils.getQualifiedClassName;

class GridItemRendererClassFactory extends ClassFactory
{
    
   
   public var grid:Grid;
   
   public var factory:ClassFactory;
   
   function GridItemRendererClassFactory(param1:Grid, param2:ClassFactory)
   {
      super(param2.generator);
      this.grid = param1;
      this.factory = param2;
   }
   
   override public function newInstance() : *
   {
      var _loc2_:IFlexModuleFactory = null;
      var _loc5_:* = null;
      var _loc1_:Class = this.factory.generator;
      _loc2_ = this.grid.moduleFactory;
      var _loc3_:Object = !!_loc2_?_loc2_.create(getQualifiedClassName(_loc1_)):new _loc1_();
      var _loc4_:Object = this.factory.properties;
      if(_loc4_)
      {
         for(_loc5_ in _loc4_)
         {
            _loc3_[_loc5_] = _loc4_[_loc5_];
         }
      }
      return _loc3_;
   }
}
