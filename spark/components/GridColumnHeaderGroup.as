package spark.components
{
   import spark.components.gridClasses.IDataGridElement;
   import mx.core.mx_internal;
   import flash.events.Event;
   import mx.core.IFactory;
   import mx.events.PropertyChangeEvent;
   import spark.components.gridClasses.GridHeaderLayout;
   import spark.components.gridClasses.GridColumnHeaderView;
   import spark.components.gridClasses.GridLayout;
   import spark.components.gridClasses.GridHeaderViewLayout;
   import spark.components.gridClasses.IGridItemRenderer;
   import flash.geom.Rectangle;
   import flash.events.MouseEvent;
   import spark.components.gridClasses.CellPosition;
   import flash.geom.Point;
   import spark.components.gridClasses.GridDimensionsView;
   import spark.events.GridEvent;
   import spark.components.gridClasses.GridColumn;
   import flash.display.InteractiveObject;
   import mx.collections.IList;
   import spark.utils.MouseEventUtil;
   
   use namespace mx_internal;
   
   public class GridColumnHeaderGroup extends Group implements IDataGridElement
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      private var _columnSeparator:IFactory = null;
      
      private var _dataGrid:spark.components.DataGrid = null;
      
      private var lockedColumnCountChanged:Boolean = false;
      
      private var _downColumnIndex:int = -1;
      
      private var _headerRenderer:IFactory = null;
      
      private var _hoverColumnIndex:int = -1;
      
      private var _selectedColumnIndex:int = -1;
      
      private var _highlightSelectedColumn:Boolean = false;
      
      private var _visibleSortIndicatorIndices:Vector.<int>;
      
      private var rollColumnIndex:int = -1;
      
      private var rollSeparatorIndex:int = -1;
      
      private var pressColumnIndex:int = -1;
      
      private var pressSeparatorIndex:int = -1;
      
      public function GridColumnHeaderGroup()
      {
         this._visibleSortIndicatorIndices = new Vector.<int>();
         super();
         layout = new GridHeaderLayout();
         MouseEventUtil.addDownDragUpListeners(this,this.gchg_mouseDownDragUpHandler,this.gchg_mouseDownDragUpHandler,this.gchg_mouseDownDragUpHandler);
         addEventListener(MouseEvent.MOUSE_MOVE,this.gchg_mouseMoveHandler);
         addEventListener(MouseEvent.ROLL_OUT,this.gchg_mouseRollOutHandler);
         addEventListener(MouseEvent.CLICK,this.gchg_clickHandler);
         addEventListener(MouseEvent.DOUBLE_CLICK,this.gchg_doubleClickHandler);
      }
      
      private function dispatchChangeEvent(param1:String) : void
      {
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
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
         if(this._dataGrid && this._dataGrid.grid)
         {
            this._dataGrid.grid.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE,this.grid_propertyChangeHandler);
            this._dataGrid.grid.removeEventListener("columnsChanged",this.grid_propertyChangeHandler);
            this._dataGrid.grid.removeEventListener("lockedColumnCountChanged",this.grid_propertyChangeHandler);
         }
         this._dataGrid = param1;
         if(this._dataGrid && this._dataGrid.grid)
         {
            this._dataGrid.grid.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE,this.grid_propertyChangeHandler);
            this._dataGrid.grid.addEventListener("columnsChanged",this.grid_propertyChangeHandler);
            this._dataGrid.grid.addEventListener("lockedColumnCountChanged",this.grid_propertyChangeHandler);
         }
         layout.clearVirtualLayoutCache();
         this.invalidateSize();
         this.invalidateDisplayList();
         this.dispatchChangeEvent("dataGridChanged");
      }
      
      private function grid_propertyChangeHandler(param1:Event) : void
      {
         var _loc2_:GridHeaderLayout = layout as GridHeaderLayout;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:PropertyChangeEvent = param1 as PropertyChangeEvent;
         if(_loc3_ && _loc3_.property == "horizontalScrollPosition")
         {
            _loc2_.centerGridColumnHeaderView.horizontalScrollPosition = Number(_loc3_.newValue);
         }
         else if(param1.type == "columnsChanged" || param1.type == "lockedColumnCountChanged")
         {
            invalidateProperties();
         }
      }
      
      [Bindable("downColumnIndexChanged")]
      public function get downColumnIndex() : int
      {
         return this._downColumnIndex;
      }
      
      public function set downColumnIndex(param1:int) : void
      {
         if(this._downColumnIndex == param1)
         {
            return;
         }
         this._downColumnIndex = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("downColumnIndexChanged");
      }
      
      [Bindable("headerRendererChanged")]
      public function get headerRenderer() : IFactory
      {
         return this._headerRenderer;
      }
      
      public function set headerRenderer(param1:IFactory) : void
      {
         if(param1 == this._headerRenderer)
         {
            return;
         }
         this._headerRenderer = param1;
         layout.clearVirtualLayoutCache();
         this.invalidateSize();
         this.invalidateDisplayList();
         this.dispatchChangeEvent("headerRendererChanged");
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
         this.invalidateDisplayList();
         this.dispatchChangeEvent("hoverColumnIndexChanged");
      }
      
      [Bindable("selectedColumnIndexChanged")]
      public function get selectedColumnIndex() : int
      {
         return this._selectedColumnIndex;
      }
      
      public function set selectedColumnIndex(param1:int) : void
      {
         if(this._selectedColumnIndex == param1)
         {
            return;
         }
         this._selectedColumnIndex = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("selectedColumnIndexChanged");
      }
      
      [Bindable("highlightSelectedColumnChanged")]
      public function get highlightSelectedColumn() : Boolean
      {
         return this._highlightSelectedColumn;
      }
      
      public function set highlightSelectedColumn(param1:Boolean) : void
      {
         var _loc2_:Vector.<int> = null;
         if(this._highlightSelectedColumn == param1)
         {
            return;
         }
         if(param1)
         {
            if(this.selectedColumnIndex == -1 && this.hoverColumnIndex != 1)
            {
               this.selectedColumnIndex = this.hoverColumnIndex;
            }
            if(this.dataGrid.grid && !this.dataGrid.grid.isCellVisible(-1,this.selectedColumnIndex))
            {
               _loc2_ = this.dataGrid.grid.getVisibleColumnIndices();
               this.selectedColumnIndex = _loc2_.length > 0?int(_loc2_[0]):-1;
            }
         }
         this._highlightSelectedColumn = param1;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("highlightSelectedColumnChanged");
      }
      
      [Bindable("visibleSortIndicatorIndicesChanged")]
      public function get visibleSortIndicatorIndices() : Vector.<int>
      {
         return this._visibleSortIndicatorIndices.concat();
      }
      
      public function set visibleSortIndicatorIndices(param1:Vector.<int>) : void
      {
         var _loc2_:Vector.<int> = !!param1?param1.concat():new Vector.<int>();
         this._visibleSortIndicatorIndices = _loc2_;
         this.invalidateDisplayList();
         this.dispatchChangeEvent("visibleSortIndicatorIndicesChanged");
      }
      
      public function isSortIndicatorVisible(param1:int) : Boolean
      {
         return this._visibleSortIndicatorIndices.indexOf(param1) != -1;
      }
      
      private function createGridColumnHeaderView() : Group
      {
         var _loc1_:GridColumnHeaderView = new GridColumnHeaderView();
         _loc1_.gridColumnHeaderGroup = this;
         addElement(_loc1_);
         return _loc1_;
      }
      
      public function configureGridColumnHeaderViews() : void
      {
         var _loc1_:GridHeaderLayout = layout as GridHeaderLayout;
         if(!_loc1_)
         {
            return;
         }
         if(_loc1_.centerGridColumnHeaderView == null)
         {
            _loc1_.centerGridColumnHeaderView = this.createGridColumnHeaderView();
         }
         if(this.dataGrid.lockedColumnCount > 0)
         {
            _loc1_.leftGridColumnHeaderView = this.createGridColumnHeaderView();
         }
         else if(_loc1_.leftGridColumnHeaderView)
         {
            removeElement(_loc1_.leftGridColumnHeaderView);
            _loc1_.leftGridColumnHeaderView = null;
         }
         var _loc2_:GridLayout = this.dataGrid.grid.layout as GridLayout;
         GridHeaderViewLayout(_loc1_.centerGridColumnHeaderView.layout).gridView = _loc2_.centerGridView;
         if(_loc1_.leftGridColumnHeaderView)
         {
            GridHeaderViewLayout(_loc1_.leftGridColumnHeaderView.layout).gridView = _loc2_.leftGridView;
         }
      }
      
      public function getHeaderIndexAt(param1:Number, param2:Number) : int
      {
         var _loc3_:Group = this.getColumnHeaderViewAtX(param1);
         return GridHeaderViewLayout(_loc3_.layout).getHeaderIndexAt(param1,param2);
      }
      
      public function getSeparatorIndexAt(param1:Number, param2:Number) : int
      {
         var _loc3_:Group = this.getColumnHeaderViewAtX(param1);
         return GridHeaderViewLayout(_loc3_.layout).getSeparatorIndexAt(param1,param2);
      }
      
      public function getHeaderRendererAt(param1:int) : IGridItemRenderer
      {
         var _loc2_:Group = this.getColumnHeaderViewAtIndex(param1);
         return GridHeaderViewLayout(_loc2_.layout).getHeaderRendererAt(param1);
      }
      
      public function getHeaderBounds(param1:int) : Rectangle
      {
         var _loc2_:Group = this.getColumnHeaderViewAtIndex(param1);
         return GridHeaderViewLayout(_loc2_.layout).getHeaderBounds(param1);
      }
      
      override public function invalidateSize() : void
      {
         super.invalidateSize();
         var _loc1_:GridHeaderLayout = layout as GridHeaderLayout;
         if(!_loc1_)
         {
            return;
         }
         if(_loc1_.leftGridColumnHeaderView)
         {
            _loc1_.leftGridColumnHeaderView.invalidateSize();
         }
         if(_loc1_.centerGridColumnHeaderView)
         {
            _loc1_.centerGridColumnHeaderView.invalidateSize();
         }
      }
      
      override public function invalidateDisplayList() : void
      {
         super.invalidateDisplayList();
         var _loc1_:GridHeaderLayout = layout as GridHeaderLayout;
         if(!_loc1_)
         {
            return;
         }
         if(_loc1_.leftGridColumnHeaderView)
         {
            _loc1_.leftGridColumnHeaderView.invalidateDisplayList();
         }
         if(_loc1_.centerGridColumnHeaderView)
         {
            _loc1_.centerGridColumnHeaderView.invalidateDisplayList();
         }
      }
      
      private function mouseEventHeaderView(param1:MouseEvent) : GridColumnHeaderView
      {
         var _loc2_:GridHeaderLayout = null;
         _loc2_ = layout as GridHeaderLayout;
         var _loc3_:GridColumnHeaderView = GridColumnHeaderView(_loc2_.centerGridColumnHeaderView);
         if(_loc3_ && _loc3_.containsMouseEvent(param1))
         {
            return _loc3_;
         }
         var _loc4_:GridColumnHeaderView = GridColumnHeaderView(_loc2_.leftGridColumnHeaderView);
         if(_loc4_ && _loc4_.containsMouseEvent(param1))
         {
            return _loc4_;
         }
         return null;
      }
      
      private function eventToHeaderLocations(param1:MouseEvent, param2:CellPosition, param3:Point) : Boolean
      {
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         var _loc7_:GridHeaderViewLayout = null;
         var _loc4_:Group = this.mouseEventHeaderView(param1);
         if(!_loc4_)
         {
            return false;
         }
         _loc5_ = new Point(param1.stageX,param1.stageY);
         _loc6_ = _loc4_.globalToLocal(_loc5_);
         _loc7_ = _loc4_.layout as GridHeaderViewLayout;
         var _loc8_:GridDimensionsView = _loc7_.gridView.gridViewLayout.gridDimensionsView;
         var _loc9_:int = _loc7_.getSeparatorIndexAt(_loc6_.x,0);
         param2.rowIndex = _loc9_ != -1?int(_loc9_ + _loc8_.viewColumnIndex):-1;
         param2.columnIndex = _loc9_ == -1?int(_loc7_.getHeaderIndexAt(_loc6_.x,0) + _loc8_.viewColumnIndex):-1;
         param3.x = _loc6_.x + _loc8_.viewOriginX;
         param3.y = _loc6_.y;
         return true;
      }
      
      protected function gchg_mouseDownDragUpHandler(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc6_:String = null;
         var _loc2_:CellPosition = new CellPosition();
         var _loc3_:Point = new Point();
         if(param1.type != MouseEvent.MOUSE_UP && !this.eventToHeaderLocations(param1,_loc2_,_loc3_))
         {
            return;
         }
         _loc4_ = _loc2_.rowIndex;
         var _loc5_:int = _loc4_ == -1?int(_loc2_.columnIndex):-1;
         switch(param1.type)
         {
            case MouseEvent.MOUSE_MOVE:
               _loc6_ = this.pressSeparatorIndex != -1?GridEvent.SEPARATOR_MOUSE_DRAG:GridEvent.GRID_MOUSE_DRAG;
               break;
            case MouseEvent.MOUSE_UP:
               _loc6_ = this.pressSeparatorIndex != -1?GridEvent.SEPARATOR_MOUSE_UP:GridEvent.GRID_MOUSE_UP;
               this.downColumnIndex = -1;
               break;
            case MouseEvent.MOUSE_DOWN:
               if(_loc4_ != -1)
               {
                  _loc6_ = GridEvent.SEPARATOR_MOUSE_DOWN;
                  this.pressSeparatorIndex = _loc4_;
                  this.pressColumnIndex = -1;
                  this.downColumnIndex = -1;
               }
               else
               {
                  _loc6_ = GridEvent.GRID_MOUSE_DOWN;
                  this.pressSeparatorIndex = -1;
                  this.pressColumnIndex = _loc5_;
                  this.downColumnIndex = _loc5_;
               }
         }
         var _loc7_:int = this.pressSeparatorIndex != -1?int(this.pressSeparatorIndex):int(_loc5_);
         this.dispatchGridEvent(param1,_loc6_,_loc3_,_loc7_);
      }
      
      protected function gchg_mouseMoveHandler(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:CellPosition = new CellPosition();
         var _loc3_:Point = new Point();
         if(!this.eventToHeaderLocations(param1,_loc2_,_loc3_))
         {
            return;
         }
         _loc4_ = _loc2_.rowIndex;
         var _loc5_:int = _loc4_ == -1?int(_loc2_.columnIndex):-1;
         if(_loc4_ != this.rollSeparatorIndex)
         {
            if(this.rollSeparatorIndex != -1)
            {
               this.dispatchGridEvent(param1,GridEvent.SEPARATOR_ROLL_OUT,_loc3_,this.rollSeparatorIndex);
            }
            if(_loc4_ != -1)
            {
               this.dispatchGridEvent(param1,GridEvent.SEPARATOR_ROLL_OVER,_loc3_,_loc4_);
            }
         }
         if(_loc5_ != this.rollColumnIndex)
         {
            if(this.rollColumnIndex != -1)
            {
               this.dispatchGridEvent(param1,GridEvent.GRID_ROLL_OUT,_loc3_,this.rollColumnIndex);
            }
            if(_loc5_ != -1)
            {
               this.dispatchGridEvent(param1,GridEvent.GRID_ROLL_OVER,_loc3_,_loc5_);
            }
         }
         this.rollColumnIndex = _loc5_;
         this.rollSeparatorIndex = _loc4_;
      }
      
      protected function gchg_mouseRollOutHandler(param1:MouseEvent) : void
      {
         var _loc2_:Point = globalToLocal(new Point(param1.stageX,param1.stageY));
         if(this.rollSeparatorIndex != -1)
         {
            this.dispatchGridEvent(param1,GridEvent.SEPARATOR_ROLL_OUT,_loc2_,this.rollSeparatorIndex);
         }
         else if(this.rollColumnIndex != -1)
         {
            this.dispatchGridEvent(param1,GridEvent.GRID_ROLL_OUT,_loc2_,this.rollColumnIndex);
         }
         this.rollColumnIndex = -1;
         this.rollSeparatorIndex = -1;
      }
      
      protected function gchg_clickHandler(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:CellPosition = new CellPosition();
         var _loc3_:Point = new Point();
         if(!this.eventToHeaderLocations(param1,_loc2_,_loc3_))
         {
            return;
         }
         _loc4_ = _loc2_.rowIndex;
         var _loc5_:int = _loc4_ == -1?int(_loc2_.columnIndex):-1;
         if(_loc4_ != -1 && this.pressSeparatorIndex == _loc4_)
         {
            this.dispatchGridEvent(param1,GridEvent.SEPARATOR_CLICK,_loc3_,_loc4_);
         }
         else if(_loc5_ != -1 && this.pressColumnIndex == _loc5_)
         {
            this.dispatchGridEvent(param1,GridEvent.GRID_CLICK,_loc3_,_loc5_);
         }
      }
      
      protected function gchg_doubleClickHandler(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:CellPosition = new CellPosition();
         var _loc3_:Point = new Point();
         if(!this.eventToHeaderLocations(param1,_loc2_,_loc3_))
         {
            return;
         }
         _loc4_ = _loc2_.rowIndex;
         var _loc5_:int = _loc4_ == -1?int(_loc2_.columnIndex):-1;
         if(_loc4_ != -1 && this.pressSeparatorIndex == _loc4_)
         {
            this.dispatchGridEvent(param1,GridEvent.SEPARATOR_DOUBLE_CLICK,_loc3_,_loc4_);
         }
      }
      
      private function dispatchGridEvent(param1:MouseEvent, param2:String, param3:Point, param4:int) : void
      {
         var _loc5_:GridColumn = null;
         var _loc6_:Object = null;
         var _loc7_:IGridItemRenderer = null;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:InteractiveObject = null;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         var _loc15_:int = 0;
         _loc5_ = this.getColumnAt(param4);
         _loc6_ = null;
         _loc7_ = this.getHeaderRendererAt(param4);
         _loc8_ = param1.bubbles;
         _loc9_ = param1.cancelable;
         _loc10_ = param1.relatedObject;
         _loc11_ = param1.ctrlKey;
         _loc12_ = param1.altKey;
         _loc13_ = param1.shiftKey;
         _loc14_ = param1.buttonDown;
         _loc15_ = param1.delta;
         var _loc16_:GridEvent = new GridEvent(param2,_loc8_,_loc9_,param3.x,param3.y,_loc10_,_loc11_,_loc12_,_loc13_,_loc14_,_loc15_,-1,param4,_loc5_,_loc6_,_loc7_);
         dispatchEvent(_loc16_);
      }
      
      private function getColumnAt(param1:int) : GridColumn
      {
         var _loc2_:Grid = !!this.dataGrid?this.dataGrid.grid:null;
         if(!_loc2_ || !_loc2_.columns)
         {
            return null;
         }
         var _loc3_:IList = _loc2_.columns;
         return param1 >= 0 && param1 < _loc3_.length?_loc3_.getItemAt(param1) as GridColumn:null;
      }
      
      private function getColumnHeaderViewAtX(param1:Number) : Group
      {
         var _loc2_:GridHeaderLayout = layout as GridHeaderLayout;
         if(_loc2_.leftGridColumnHeaderView && param1 < _loc2_.centerGridColumnHeaderView.getLayoutBoundsX())
         {
            return _loc2_.leftGridColumnHeaderView;
         }
         return _loc2_.centerGridColumnHeaderView;
      }
      
      private function getColumnHeaderViewAtIndex(param1:int) : Group
      {
         var _loc2_:GridHeaderLayout = layout as GridHeaderLayout;
         if(_loc2_.leftGridColumnHeaderView && param1 < this.dataGrid.lockedColumnCount)
         {
            return _loc2_.leftGridColumnHeaderView;
         }
         return _loc2_.centerGridColumnHeaderView;
      }
   }
}
