package spark.components
{
   import spark.components.supportClasses.SkinnableContainerBase;
   import spark.components.supportClasses.IDataProviderEnhance;
   import mx.managers.IFocusManagerComponent;
   import mx.core.IIMESupport;
   import mx.core.mx_internal;
   import mx.collections.ISortField;
   import spark.components.gridClasses.GridSortField;
   import flash.geom.Point;
   import flash.display.DisplayObject;
   import mx.core.IFactory;
   import spark.components.gridClasses.DataGridEditor;
   import flash.events.Event;
   import mx.events.FlexEvent;
   import mx.collections.IList;
   import spark.components.gridClasses.GridColumn;
   import spark.components.gridClasses.GridSelection;
   import spark.components.gridClasses.IGridItemEditor;
   import spark.components.gridClasses.GridSelectionMode;
   import mx.events.DragEvent;
   import mx.core.EventPriority;
   import mx.core.UIComponent;
   import flash.display.Graphics;
   import mx.core.ScrollPolicy;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import spark.events.GridSelectionEventKind;
   import spark.core.NavigationUnit;
   import flash.events.FocusEvent;
   import spark.components.gridClasses.IDataGridElement;
   import spark.events.GridEvent;
   import spark.events.GridCaretEvent;
   import spark.components.gridClasses.CellPosition;
   import spark.events.GridSelectionEvent;
   import spark.components.gridClasses.CellRegion;
   import spark.events.GridSortEvent;
   import mx.styles.AdvancedStyleClient;
   import mx.collections.ICollectionView;
   import mx.collections.ISort;
   import spark.collections.Sort;
   import spark.components.gridClasses.GridLayout;
   import spark.components.gridClasses.GridView;
   import flash.geom.Rectangle;
   import mx.core.InteractionMode;
   import mx.events.SandboxMouseEvent;
   import mx.core.LayoutDirection;
   import mx.managers.CursorManagerPriority;
   import mx.core.DragSource;
   import mx.managers.DragManager;
   import mx.core.IFlexDisplayObject;
   import mx.core.IVisualElement;
   import flash.events.MouseEvent;
   import spark.layouts.supportClasses.DropLocation;
   import mx.events.TouchInteractionEvent;
   import mx.collections.ArrayCollection;
   import mx.utils.ObjectUtil;
   import mx.core.IUID;
   import mx.utils.UIDUtil;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class DataGrid extends SkinnableContainerBase implements IDataProviderEnhance, IFocusManagerComponent, IIMESupport
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      private static const factorySkinPartNames:Array = ["alternatingRowColorsBackground","caretIndicator","columnSeparator","headerColumnSeparator","hoverIndicator","lockedRowsSeparator","lockedColumnsSeparator","rowBackground","rowSeparator","selectionIndicator"];
      
      private static const partPropertyBits:Object = {
         "columns":uint(1 << 0),
         "dataProvider":uint(1 << 1),
         "itemRenderer":uint(1 << 2),
         "requestedRowCount":uint(1 << 3),
         "requestedColumnCount":uint(1 << 4),
         "requestedMaxRowCount":uint(1 << 5),
         "requestedMinRowCount":uint(1 << 6),
         "requestedMinColumnCount":uint(1 << 7),
         "rowHeight":uint(1 << 8),
         "showDataTips":uint(1 << 9),
         "typicalItem":uint(1 << 10),
         "variableRowHeight":uint(1 << 11),
         "dataTipField":uint(1 << 12),
         "dataTipFunction":uint(1 << 13),
         "resizableColumns":uint(1 << 14),
         "lockedColumnCount":uint(1 << 15),
         "lockedRowCount":uint(1 << 16)
      };
      
      private static const gridPropertyDefaults:Object = {
         "columns":null,
         "dataProvider":null,
         "itemRenderer":null,
         "resizableColumns":true,
         "requestedRowCount":int(-1),
         "requestedMaxRowCount":int(10),
         "requestedMinRowCount":int(-1),
         "requestedColumnCount":int(-1),
         "requestedMinColumnCount":int(-1),
         "rowHeight":NaN,
         "showDataTips":false,
         "typicalItem":null,
         "variableRowHeight":false,
         "dataTipField":null,
         "dataTipFunction":null,
         "lockedColumnCount":int(0),
         "lockedRowCount":int(0)
      };
      
      private static const GRID_FOCUS_OWNER:int = 0;
      
      private static const HEADER_FOCUS_OWNER:int = 1;
      
      private static const NO_FOCUS_OWNER:int = -1;
       
      
      private var updateHoverOnRollOver:Boolean = true;
      
      private var mouseDownPoint:Point;
      
      private var mouseDownRowIndex:int = -1;
      
      private var mouseDownColumnIndex:int = -1;
      
      private var mouseDownObject:DisplayObject;
      
      private var pendingSelectionOnMouseUp:Boolean = false;
      
      private var pendingSelectionShiftKey:Boolean;
      
      private var pendingSelectionCtrlKey:Boolean;
      
      private var _1277490047alternatingRowColorsBackground:IFactory;
      
      private var _502679092caretIndicator:IFactory;
      
      private var _1482148164columnHeaderGroup:spark.components.GridColumnHeaderGroup;
      
      private var _237342767columnSeparator:IFactory;
      
      [SkinPart(type="flash.display.DisplayObject",required="false")]
      public var dropIndicator:IFactory;
      
      private var _1555036382editorIndicator:IFactory;
      
      private var _3181382grid:spark.components.Grid;
      
      private var _1933789133hoverIndicator:IFactory;
      
      private var _136898894lockedColumnsSeparator:IFactory;
      
      private var _1257946590lockedRowsSeparator:IFactory;
      
      private var _367467864rowBackground:IFactory;
      
      private var _1763950123rowSeparator:IFactory;
      
      private var _402164678scroller:spark.components.Scroller;
      
      private var _627206627selectionIndicator:IFactory;
      
      private const deferredGridOperations:Vector.<Function> = new Vector.<Function>();
      
      private var gridProperties:Object;
      
      mx_internal var doubleClickTime:Number = 620;
      
      mx_internal var editKey:uint = 113;
      
      mx_internal var editOnDoubleClick:Boolean = false;
      
      mx_internal var editor:DataGridEditor;
      
      private var _draggableColumns:Boolean = false;
      
      private var _editable:Boolean = false;
      
      private var _editorActivationMouseEvent:String = "singleClickOnSelectedCell";
      
      private var _multiColumnSortingEnabled:Boolean = false;
      
      private var _gridSelection:GridSelection = null;
      
      private var _imeMode:String = null;
      
      private var _internalFocusOwner:int = -1;
      
      private var _itemEditor:IFactory = null;
      
      private var _sortableColumns:Boolean = true;
      
      private var _dragEnabled:Boolean = false;
      
      private var _dragMoveEnabled:Boolean = false;
      
      private var _dropEnabled:Boolean = false;
      
      mx_internal var focusOwner:UIComponent;
      
      private var focusOwnerWidth:Number = 1;
      
      private var focusOwnerHeight:Number = 1;
      
      private var scrollerEvent:KeyboardEvent = null;
      
      private var stretchCursorID:int = 0;
      
      private var resizeColumn:GridColumn = null;
      
      private var resizeAnchorX:Number = NaN;
      
      private var resizeColumnWidth:Number = NaN;
      
      private var nextColumn:GridColumn = null;
      
      private var nextColumnWidth:Number = NaN;
      
      public function DataGrid()
      {
         this.gridProperties = {};
         super();
         addEventListener(Event.SELECT_ALL,this.selectAllHandler);
         addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.keyFocusChangeHandler,false,EventPriority.DEFAULT_HANDLER);
      }
      
      private static function getPartProperty(param1:Object, param2:Object, param3:String, param4:Object) : *
      {
         if(param1)
         {
            return param1[param3];
         }
         var _loc5_:* = param2[param3];
         return _loc5_ === undefined?param4[param3]:_loc5_;
      }
      
      private static function setPartProperty(param1:Object, param2:Object, param3:String, param4:*, param5:Object) : Boolean
      {
         if(getPartProperty(param1,param2,param3,param5) === param4)
         {
            return false;
         }
         var _loc6_:* = param5[param3];
         if(param1)
         {
            param1[param3] = param4;
            if(param4 === _loc6_)
            {
               param2.propertyBits = param2.propertyBits & ~partPropertyBits[param3];
            }
            else
            {
               param2.propertyBits = param2.propertyBits | partPropertyBits[param3];
            }
         }
         else if(param4 === _loc6_)
         {
            delete param2[param3];
         }
         else
         {
            param2[param3] = param4;
         }
         return true;
      }
      
      private static function findSortField(param1:String, param2:Array, param3:Boolean) : ISortField
      {
         var _loc4_:ISortField = null;
         var _loc5_:String = null;
         if(param1 == null)
         {
            return null;
         }
         for each(_loc4_ in param2)
         {
            _loc5_ = _loc4_.name;
            if(param3 && _loc4_ is GridSortField)
            {
               _loc5_ = GridSortField(_loc4_).dataFieldPath;
            }
            if(_loc5_ == param1)
            {
               return _loc4_;
            }
         }
         return null;
      }
      
      private function initializeGridRowBackground() : void
      {
         if(!this.grid)
         {
            return;
         }
         if(getStyle("alternatingRowColors") as Array && this.alternatingRowColorsBackground)
         {
            this.grid.rowBackground = this.alternatingRowColorsBackground;
         }
         else
         {
            this.grid.rowBackground = this.rowBackground;
         }
      }
      
      private function getGridProperty(param1:String) : *
      {
         return getPartProperty(this.grid,this.gridProperties,param1,gridPropertyDefaults);
      }
      
      private function setGridProperty(param1:String, param2:*) : Boolean
      {
         return setPartProperty(this.grid,this.gridProperties,param1,param2,gridPropertyDefaults);
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
      
      [Bindable("columnsChanged")]
      public function get columns() : IList
      {
         return this.getGridProperty("columns");
      }
      
      public function set columns(param1:IList) : void
      {
         if(this.setGridProperty("columns",param1))
         {
            if(this.columnHeaderGroup)
            {
               this.columnHeaderGroup.layout.clearVirtualLayoutCache();
               this.columnHeaderGroup.invalidateSize();
               this.columnHeaderGroup.invalidateDisplayList();
            }
            this.dispatchChangeEvent("columnsChanged");
         }
      }
      
      private function getColumnAt(param1:int) : GridColumn
      {
         var _loc2_:spark.components.Grid = this.grid;
         if(!_loc2_ || !_loc2_.columns)
         {
            return null;
         }
         var _loc3_:IList = _loc2_.columns;
         return param1 >= 0 && param1 < _loc3_.length?_loc3_.getItemAt(param1) as GridColumn:null;
      }
      
      public function get columnsLength() : int
      {
         var _loc1_:IList = this.columns;
         return !!_loc1_?int(_loc1_.length):0;
      }
      
      [Bindable("dataProviderChanged")]
      public function get dataProvider() : IList
      {
         return this.getGridProperty("dataProvider");
      }
      
      public function set dataProvider(param1:IList) : void
      {
         if(this.setGridProperty("dataProvider",param1))
         {
            this.dispatchChangeEvent("dataProviderChanged");
         }
      }
      
      public function get dataProviderLength() : int
      {
         var _loc1_:IList = this.dataProvider;
         return !!_loc1_?int(_loc1_.length):0;
      }
      
      [Bindable("dataTipFieldChanged")]
      public function get dataTipField() : String
      {
         return this.getGridProperty("dataTipField");
      }
      
      public function set dataTipField(param1:String) : void
      {
         if(this.setGridProperty("dataTipField",param1))
         {
            this.dispatchChangeEvent("dataTipFieldChanged");
         }
      }
      
      [Bindable("dataTipFunctionChanged")]
      public function get dataTipFunction() : Function
      {
         return this.getGridProperty("dataTipFunction");
      }
      
      public function set dataTipFunction(param1:Function) : void
      {
         if(this.setGridProperty("dataTipFunction",param1))
         {
            this.dispatchChangeEvent("dataTipFunctionChanged");
         }
      }
      
      [Bindable("doubleClickModeChanged")]
      public function get doubleClickMode() : String
      {
         return this.grid.doubleClickMode;
      }
      
      public function set doubleClickMode(param1:String) : void
      {
         if(this.grid.doubleClickMode == param1)
         {
            return;
         }
         this.grid.doubleClickMode = param1;
         this.dispatchChangeEvent("doubleClickModeChanged");
      }
      
      [Bindable("draggableColumnsChanged")]
      public function get draggableColumns() : Boolean
      {
         return this._draggableColumns;
      }
      
      public function set draggableColumns(param1:Boolean) : void
      {
         if(param1 == this._draggableColumns)
         {
            return;
         }
         this._draggableColumns = param1;
         this.dispatchChangeEvent("draggableColumnsChanged");
      }
      
      public function get editable() : Boolean
      {
         return this._editable;
      }
      
      public function set editable(param1:Boolean) : void
      {
         this._editable = param1;
      }
      
      [Bindable("editorActivationMouseEventChanged")]
      public function get editorActivationMouseEvent() : String
      {
         return this._editorActivationMouseEvent;
      }
      
      public function set editorActivationMouseEvent(param1:String) : void
      {
         if(this._editorActivationMouseEvent == param1)
         {
            return;
         }
         this._editorActivationMouseEvent = param1;
         this.dispatchChangeEvent("editorActivationMouseEventChanged");
      }
      
      public function get editorColumnIndex() : int
      {
         if(this.editor)
         {
            return this.editor.editorColumnIndex;
         }
         return -1;
      }
      
      public function get editorRowIndex() : int
      {
         if(this.editor)
         {
            return this.editor.editorRowIndex;
         }
         return -1;
      }
      
      public function get enableIME() : Boolean
      {
         return false;
      }
      
      public function get isFirstRow() : Boolean
      {
         if(this.grid)
         {
            return this.grid.isFirstRow;
         }
         return false;
      }
      
      public function get isLastRow() : Boolean
      {
         if(this.grid)
         {
            return this.grid.isLastRow;
         }
         return false;
      }
      
      [Bindable("multiColumnSortingEnabledChanged")]
      public function get multiColumnSortingEnabled() : Boolean
      {
         return this._multiColumnSortingEnabled;
      }
      
      public function set multiColumnSortingEnabled(param1:Boolean) : void
      {
         if(this._multiColumnSortingEnabled == param1)
         {
            return;
         }
         this._multiColumnSortingEnabled = param1;
         this.dispatchChangeEvent("multiColumnSortingEnabledChanged");
      }
      
      protected function get gridSelection() : GridSelection
      {
         if(!this._gridSelection)
         {
            this._gridSelection = this.createGridSelection();
         }
         return this._gridSelection;
      }
      
      public function get imeMode() : String
      {
         return this._imeMode;
      }
      
      public function set imeMode(param1:String) : void
      {
         this._imeMode = param1;
      }
      
      [Bindable("internalFocusOwnerChanged")]
      private function get internalFocusOwner() : int
      {
         return this._internalFocusOwner;
      }
      
      private function set internalFocusOwner(param1:int) : void
      {
         if(this._internalFocusOwner == param1)
         {
            return;
         }
         this._internalFocusOwner = param1;
         if(this.columnHeaderGroup)
         {
            this.columnHeaderGroup.highlightSelectedColumn = param1 == HEADER_FOCUS_OWNER;
         }
         if(this.grid)
         {
            this.grid.showCaret = param1 == GRID_FOCUS_OWNER;
         }
         this.dispatchChangeEvent("internalFocusOwnerChanged");
      }
      
      [Bindable("itemEditorChanged")]
      public function get itemEditor() : IFactory
      {
         return this._itemEditor;
      }
      
      public function set itemEditor(param1:IFactory) : void
      {
         if(this._itemEditor == param1)
         {
            return;
         }
         this._itemEditor = param1;
         this.dispatchChangeEvent("itemEditorChanged");
      }
      
      public function get itemEditorInstance() : IGridItemEditor
      {
         if(this.editor)
         {
            return this.editor.itemEditorInstance;
         }
         return null;
      }
      
      [Bindable("itemRendererChanged")]
      public function get itemRenderer() : IFactory
      {
         return this.getGridProperty("itemRenderer");
      }
      
      public function set itemRenderer(param1:IFactory) : void
      {
         if(this.setGridProperty("itemRenderer",param1))
         {
            this.dispatchChangeEvent("itemRendererChanged");
         }
      }
      
      [Bindable("lockedColumnCountChanged")]
      public function get lockedColumnCount() : int
      {
         return this.getGridProperty("lockedColumnCount");
      }
      
      public function set lockedColumnCount(param1:int) : void
      {
         if(this.setGridProperty("lockedColumnCount",param1))
         {
            this.dispatchChangeEvent("lockedColumnCountChanged");
         }
      }
      
      [Bindable("lockedRowCountChanged")]
      public function get lockedRowCount() : int
      {
         return this.getGridProperty("lockedRowCount");
      }
      
      public function set lockedRowCount(param1:int) : void
      {
         if(this.setGridProperty("lockedRowCount",param1))
         {
            this.dispatchChangeEvent("lockedRowCountChanged");
         }
      }
      
      public function get preserveSelection() : Boolean
      {
         if(this.grid)
         {
            return this.grid.preserveSelection;
         }
         return this.gridSelection.preserveSelection;
      }
      
      public function set preserveSelection(param1:Boolean) : void
      {
         if(this.grid)
         {
            this.grid.preserveSelection = param1;
         }
         else
         {
            this.gridSelection.preserveSelection = param1;
         }
      }
      
      public function get requireSelection() : Boolean
      {
         if(this.grid)
         {
            return this.grid.requireSelection;
         }
         return this.gridSelection.requireSelection;
      }
      
      public function set requireSelection(param1:Boolean) : void
      {
         if(this.grid)
         {
            this.grid.requireSelection = param1;
         }
         else
         {
            this.gridSelection.requireSelection = param1;
         }
      }
      
      public function get requestedRowCount() : int
      {
         return this.getGridProperty("requestedRowCount");
      }
      
      public function set requestedRowCount(param1:int) : void
      {
         this.setGridProperty("requestedRowCount",param1);
      }
      
      public function get requestedColumnCount() : int
      {
         return this.getGridProperty("requestedColumnCount");
      }
      
      public function set requestedColumnCount(param1:int) : void
      {
         this.setGridProperty("requestedColumnCount",param1);
      }
      
      public function get requestedMaxRowCount() : int
      {
         return this.getGridProperty("requestedMaxRowCount");
      }
      
      public function set requestedMaxRowCount(param1:int) : void
      {
         this.setGridProperty("requestedMaxRowCount",param1);
      }
      
      public function get requestedMinRowCount() : int
      {
         return this.getGridProperty("requestedMinRowCount");
      }
      
      public function set requestedMinRowCount(param1:int) : void
      {
         this.setGridProperty("requestedMinRowCount",param1);
      }
      
      public function get requestedMinColumnCount() : int
      {
         return this.getGridProperty("requestedMinColumnCount");
      }
      
      public function set requestedMinColumnCount(param1:int) : void
      {
         this.setGridProperty("requestedMinColumnCount",param1);
      }
      
      [Bindable("resizableColumnsChanged")]
      public function get resizableColumns() : Boolean
      {
         return this.getGridProperty("resizableColumns");
      }
      
      public function set resizableColumns(param1:Boolean) : void
      {
         if(this.setGridProperty("resizableColumns",param1))
         {
            this.dispatchChangeEvent("resizableColumnsChanged");
         }
      }
      
      [Bindable("rowHeightChanged")]
      public function get rowHeight() : Number
      {
         return this.getGridProperty("rowHeight");
      }
      
      public function set rowHeight(param1:Number) : void
      {
         if(this.setGridProperty("rowHeight",param1))
         {
            this.dispatchChangeEvent("rowHeightChanged");
         }
      }
      
      [Bindable("selectionModeChanged")]
      public function get selectionMode() : String
      {
         if(this.grid)
         {
            return this.grid.selectionMode;
         }
         return this.gridSelection.selectionMode;
      }
      
      public function set selectionMode(param1:String) : void
      {
         if(this.selectionMode == param1)
         {
            return;
         }
         if(this.grid)
         {
            this.grid.selectionMode = param1;
         }
         else
         {
            this.gridSelection.selectionMode = param1;
         }
         if(this.grid)
         {
            this.grid.showCaret = param1 != GridSelectionMode.NONE && this == getFocus() && this.internalFocusOwner == GRID_FOCUS_OWNER;
         }
         this.dispatchChangeEvent("selectionModeChanged");
      }
      
      mx_internal function isRowSelectionMode() : Boolean
      {
         var _loc1_:String = this.selectionMode;
         return _loc1_ == GridSelectionMode.SINGLE_ROW || _loc1_ == GridSelectionMode.MULTIPLE_ROWS;
      }
      
      mx_internal function isCellSelectionMode() : Boolean
      {
         var _loc1_:String = this.selectionMode;
         return _loc1_ == GridSelectionMode.SINGLE_CELL || _loc1_ == GridSelectionMode.MULTIPLE_CELLS;
      }
      
      [Bindable("showDataTipsChanged")]
      public function get showDataTips() : Boolean
      {
         return this.getGridProperty("showDataTips");
      }
      
      public function set showDataTips(param1:Boolean) : void
      {
         if(this.setGridProperty("showDataTips",param1))
         {
            this.dispatchChangeEvent("showDataTipsChanged");
         }
      }
      
      [Bindable("sortableColumnsChanged")]
      public function get sortableColumns() : Boolean
      {
         return this._sortableColumns;
      }
      
      public function set sortableColumns(param1:Boolean) : void
      {
         if(this._sortableColumns == param1)
         {
            return;
         }
         this._sortableColumns = param1;
         this.dispatchChangeEvent("sortableColumnsChanged");
      }
      
      [Bindable("typicalItemChanged")]
      public function get typicalItem() : Object
      {
         return this.getGridProperty("typicalItem");
      }
      
      public function set typicalItem(param1:Object) : void
      {
         if(this.setGridProperty("typicalItem",param1))
         {
            this.dispatchChangeEvent("typicalItemChanged");
         }
      }
      
      public function invalidateTypicalItem() : void
      {
         if(this.grid)
         {
            this.grid.invalidateTypicalItemRenderer();
         }
      }
      
      [Bindable("variableRowHeightChanged")]
      public function get variableRowHeight() : Boolean
      {
         return this.getGridProperty("variableRowHeight");
      }
      
      public function set variableRowHeight(param1:Boolean) : void
      {
         if(this.setGridProperty("variableRowHeight",param1))
         {
            this.dispatchChangeEvent("variableRowHeightChanged");
         }
      }
      
      public function get dragEnabled() : Boolean
      {
         return this._dragEnabled;
      }
      
      public function set dragEnabled(param1:Boolean) : void
      {
         if(param1 == this._dragEnabled)
         {
            return;
         }
         this._dragEnabled = param1;
         if(this._dragEnabled)
         {
            addEventListener(DragEvent.DRAG_START,this.dragStartHandler,false,EventPriority.DEFAULT_HANDLER);
            addEventListener(DragEvent.DRAG_COMPLETE,this.dragCompleteHandler,false,EventPriority.DEFAULT_HANDLER);
         }
         else
         {
            removeEventListener(DragEvent.DRAG_START,this.dragStartHandler,false);
            removeEventListener(DragEvent.DRAG_COMPLETE,this.dragCompleteHandler,false);
         }
      }
      
      public function get dragMoveEnabled() : Boolean
      {
         return this._dragMoveEnabled;
      }
      
      public function set dragMoveEnabled(param1:Boolean) : void
      {
         this._dragMoveEnabled = param1;
      }
      
      public function get dropEnabled() : Boolean
      {
         return this._dropEnabled;
      }
      
      public function set dropEnabled(param1:Boolean) : void
      {
         if(param1 == this._dropEnabled)
         {
            return;
         }
         this._dropEnabled = param1;
         if(this._dropEnabled)
         {
            addEventListener(DragEvent.DRAG_ENTER,this.dragEnterHandler,false,EventPriority.DEFAULT_HANDLER);
            addEventListener(DragEvent.DRAG_EXIT,this.dragExitHandler,false,EventPriority.DEFAULT_HANDLER);
            addEventListener(DragEvent.DRAG_OVER,this.dragOverHandler,false,EventPriority.DEFAULT_HANDLER);
            addEventListener(DragEvent.DRAG_DROP,this.dragDropHandler,false,EventPriority.DEFAULT_HANDLER);
         }
         else
         {
            removeEventListener(DragEvent.DRAG_ENTER,this.dragEnterHandler,false);
            removeEventListener(DragEvent.DRAG_EXIT,this.dragExitHandler,false);
            removeEventListener(DragEvent.DRAG_OVER,this.dragOverHandler,false);
            removeEventListener(DragEvent.DRAG_DROP,this.dragDropHandler,false);
         }
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         this.focusOwner = new UIComponent();
         var _loc1_:Graphics = this.focusOwner.graphics;
         _loc1_.clear();
         _loc1_.lineStyle(0,0,0);
         _loc1_.drawRect(0,0,this.focusOwnerWidth,this.focusOwnerHeight);
         $addChild(this.focusOwner);
         this.focusOwner.tabEnabled = true;
         this.focusOwner.tabIndex = tabIndex;
         this.focusOwner.$visible = true;
      }
      
      override public function set nestLevel(param1:int) : void
      {
         super.nestLevel = param1;
         if(this.grid)
         {
            this.initializeDataGridElement(this.columnHeaderGroup);
         }
      }
      
      override public function set tabIndex(param1:int) : void
      {
         super.tabIndex = param1;
         if(this.focusOwner)
         {
            this.focusOwner.tabIndex = param1;
         }
      }
      
      override public function set accessibilityDescription(param1:String) : void
      {
         super.accessibilityDescription = param1;
         if(this.focusOwner)
         {
            this.focusOwner.accessibilityDescription = param1;
         }
      }
      
      override public function set accessibilityShortcut(param1:String) : void
      {
         super.accessibilityShortcut = param1;
         if(this.focusOwner)
         {
            this.focusOwner.accessibilityShortcut = param1;
         }
      }
      
      override protected function initializeAccessibility() : void
      {
         if(DataGrid.createAccessibilityImplementation != null)
         {
            DataGrid.createAccessibilityImplementation(this);
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc3_:Graphics = null;
         super.updateDisplayList(param1,param2);
         if(this.focusOwner && (this.focusOwnerWidth != param1 || this.focusOwnerHeight != param2))
         {
            this.focusOwnerWidth = param1;
            this.focusOwnerHeight = param2;
            _loc3_ = this.focusOwner.graphics;
            _loc3_.clear();
            _loc3_.lineStyle(0,0,0);
            _loc3_.drawRect(0,0,this.focusOwnerWidth,this.focusOwnerHeight);
         }
      }
      
      override public function setFocus() : void
      {
         if(this.grid)
         {
            this.focusOwner.setFocus();
         }
      }
      
      override protected function isOurFocus(param1:DisplayObject) : Boolean
      {
         return param1 == this.focusOwner || super.isOurFocus(param1);
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         super.styleChanged(param1);
         var _loc2_:Boolean = param1 == null || param1 == "styleName";
         if(this.grid)
         {
            if(_loc2_ || styleManager.isSizeInvalidatingStyle(param1))
            {
               if(this.grid)
               {
                  this.grid.invalidateSize();
                  this.grid.clearGridLayoutCache(true);
               }
               if(this.columnHeaderGroup)
               {
                  this.columnHeaderGroup.layout.clearVirtualLayoutCache();
                  this.columnHeaderGroup.invalidateSize();
               }
            }
            if(_loc2_ || param1 == "alternatingRowColors")
            {
               this.initializeGridRowBackground();
               if(this.grid && this.grid.layout)
               {
                  this.grid.layout.clearVirtualLayoutCache();
               }
            }
            if(this.grid)
            {
               this.grid.invalidateDisplayList();
            }
            if(this.columnHeaderGroup)
            {
               this.columnHeaderGroup.invalidateDisplayList();
            }
         }
         if(this.scroller)
         {
            _loc3_ = getStyle("verticalScrollPolicy");
            if(param1 == "verticalScrollPolicy")
            {
               this.scroller.setStyle("verticalScrollPolicy",_loc3_);
            }
            else if(_loc2_ && _loc3_ && _loc3_ !== ScrollPolicy.AUTO)
            {
               this.scroller.setStyle("verticalScrollPolicy",_loc3_);
            }
            _loc4_ = getStyle("horizontalScrollPolicy");
            if(param1 == "horizontalScrollPolicy")
            {
               this.scroller.setStyle("horizontalScrollPolicy",_loc4_);
            }
            else if(_loc2_ && _loc4_ && _loc4_ !== ScrollPolicy.AUTO)
            {
               this.scroller.setStyle("horizontalScrollPolicy",_loc4_);
            }
         }
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         if(!this.grid || param1.isDefaultPrevented())
         {
            return;
         }
         if(param1 == this.scrollerEvent)
         {
            this.scrollerEvent = null;
            param1.preventDefault();
            return;
         }
         if(!this.isOurFocus(DisplayObject(param1.target)))
         {
            return;
         }
         if(param1.keyCode == Keyboard.A && param1.ctrlKey)
         {
            this.selectAllFromKeyboard();
            param1.preventDefault();
            return;
         }
         if(this.selectionMode == GridSelectionMode.NONE || this.grid.caretRowIndex < 0 || this.grid.caretRowIndex >= this.dataProviderLength || this.isCellSelectionMode() && (this.grid.caretColumnIndex < 0 || this.grid.caretColumnIndex >= this.columnsLength))
         {
            if(this.scroller && this.scrollerEvent != param1)
            {
               this.scrollerEvent = param1.clone() as KeyboardEvent;
               this.scroller.dispatchEvent(this.scrollerEvent);
            }
            return;
         }
         switch(this.internalFocusOwner)
         {
            case GRID_FOCUS_OWNER:
               this.handleGridKeyEvent(param1);
               break;
            case HEADER_FOCUS_OWNER:
               this.handleHeaderKeyEvent(param1);
         }
      }
      
      private function handleGridKeyEvent(param1:KeyboardEvent) : void
      {
         var _loc2_:String = null;
         if(param1.keyCode == Keyboard.SPACE)
         {
            if(param1.ctrlKey)
            {
               if(this.toggleSelection(this.grid.caretRowIndex,this.grid.caretColumnIndex))
               {
                  this.grid.anchorRowIndex = this.grid.caretRowIndex;
                  this.grid.anchorColumnIndex = this.grid.caretColumnIndex;
                  param1.preventDefault();
               }
            }
            else if(param1.shiftKey)
            {
               if(this.extendSelection(this.grid.caretRowIndex,this.grid.caretColumnIndex))
               {
                  param1.preventDefault();
               }
            }
            else if(this.grid.caretRowIndex != -1)
            {
               if(this.isRowSelectionMode())
               {
                  _loc2_ = this.selectionMode == GridSelectionMode.SINGLE_ROW?GridSelectionEventKind.SET_ROW:GridSelectionEventKind.ADD_ROW;
                  if(!this.commitInteractiveSelection(_loc2_,this.grid.caretRowIndex,this.grid.caretColumnIndex))
                  {
                     return;
                  }
                  param1.preventDefault();
               }
               else if(this.isCellSelectionMode() && this.grid.caretColumnIndex != -1)
               {
                  _loc2_ = this.selectionMode == GridSelectionMode.SINGLE_CELL?GridSelectionEventKind.SET_CELL:GridSelectionEventKind.ADD_CELL;
                  if(!this.commitInteractiveSelection(_loc2_,this.grid.caretRowIndex,this.grid.caretColumnIndex))
                  {
                     return;
                  }
                  param1.preventDefault();
               }
            }
            return;
         }
         this.adjustSelectionUponNavigation(param1);
      }
      
      private function handleHeaderKeyEvent(param1:KeyboardEvent) : void
      {
         var _loc7_:GridColumn = null;
         var _loc8_:Boolean = false;
         if(!this.columnHeaderGroup)
         {
            return;
         }
         var _loc2_:int = this.columnHeaderGroup.selectedColumnIndex;
         if(_loc2_ == -1)
         {
            return;
         }
         if(param1.keyCode == Keyboard.SPACE || param1.keyCode == Keyboard.ENTER)
         {
            _loc7_ = this.getColumnAt(_loc2_);
            _loc8_ = param1.ctrlKey;
            this.interactiveSortByColumns(_loc7_,_loc8_);
            if(!_loc8_ && this.grid)
            {
               this.internalFocusOwner = GRID_FOCUS_OWNER;
            }
            return;
         }
         if(!NavigationUnit.isNavigationUnit(param1.keyCode))
         {
            return;
         }
         var _loc3_:uint = mapKeycodeForLayoutDirection(param1);
         var _loc4_:int = this.grid.getNextVisibleColumnIndex(-1);
         var _loc5_:int = this.grid.getPreviousVisibleColumnIndex(this.columns.length);
         var _loc6_:int = _loc2_;
         switch(_loc3_)
         {
            case NavigationUnit.HOME:
               _loc6_ = _loc4_;
               break;
            case NavigationUnit.END:
               _loc6_ = _loc5_;
               break;
            case NavigationUnit.LEFT:
               if(param1.ctrlKey && !param1.shiftKey)
               {
                  this.moveColumnPosition(_loc2_,-1);
               }
               else if(param1.ctrlKey && param1.shiftKey)
               {
                  this.changeColumnWidth(_loc2_,-3);
               }
               else if(_loc2_ <= _loc4_)
               {
                  _loc6_ = _loc4_;
               }
               else
               {
                  _loc6_ = this.grid.getPreviousVisibleColumnIndex(_loc2_);
               }
               break;
            case NavigationUnit.RIGHT:
               if(param1.ctrlKey && !param1.shiftKey)
               {
                  this.moveColumnPosition(_loc2_,1);
               }
               else if(param1.ctrlKey && param1.shiftKey)
               {
                  this.changeColumnWidth(_loc2_,3);
               }
               else if(_loc2_ >= _loc5_)
               {
                  _loc6_ = _loc5_;
               }
               else
               {
                  _loc6_ = this.grid.getNextVisibleColumnIndex(_loc2_);
               }
         }
         if(_loc6_ != _loc2_)
         {
            this.columnHeaderGroup.selectedColumnIndex = _loc6_;
            this.ensureCellIsVisible(-1,_loc6_);
         }
      }
      
      private function moveColumnPosition(param1:int, param2:int) : void
      {
         var _loc3_:GridColumn = this.getColumnAt(param1);
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:int = -1;
         if(param2 == 1)
         {
            _loc4_ = this.grid.getNextVisibleColumnIndex(param1);
         }
         else if(param2 == -1)
         {
            _loc4_ = this.grid.getPreviousVisibleColumnIndex(param1);
         }
         if(_loc4_ != -1)
         {
            this.columns.removeItemAt(param1);
            this.columns.addItemAt(_loc3_,_loc4_);
            this.columnHeaderGroup.selectedColumnIndex = _loc4_;
            this.grid.ensureCellIsVisible(-1,_loc4_);
         }
      }
      
      private function changeColumnWidth(param1:int, param2:Number) : void
      {
         var _loc3_:GridColumn = this.getColumnAt(param1);
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:Number = _loc3_.width;
         if(isNaN(_loc4_))
         {
            _loc4_ = this.grid.getColumnWidth(param1);
         }
         _loc4_ = Math.max(1,_loc4_ + param2);
         if(!isNaN(_loc3_.maxWidth))
         {
            _loc4_ = Math.min(_loc4_,_loc3_.maxWidth);
         }
         if(!isNaN(_loc3_.minWidth))
         {
            _loc4_ = Math.max(_loc4_,_loc3_.minWidth);
         }
         _loc3_.width = _loc4_;
      }
      
      protected function keyFocusChangeHandler(param1:FocusEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         if(this.editor && this.editor.editorRowIndex != -1 && this.editor.editorColumnIndex != -1)
         {
            return;
         }
         if(this.internalFocusOwner == GRID_FOCUS_OWNER && !param1.shiftKey && this.columnHeaderGroup)
         {
            this.internalFocusOwner = HEADER_FOCUS_OWNER;
            param1.preventDefault();
         }
         else if(this.internalFocusOwner == HEADER_FOCUS_OWNER && param1.shiftKey && this.grid)
         {
            this.internalFocusOwner = GRID_FOCUS_OWNER;
            param1.preventDefault();
         }
         else
         {
            this.internalFocusOwner = this.internalFocusOwner == GRID_FOCUS_OWNER?int(HEADER_FOCUS_OWNER):int(GRID_FOCUS_OWNER);
         }
      }
      
      protected function selectAllHandler(param1:Event) : void
      {
         if(!this.grid || param1.isDefaultPrevented() || !this.isOurFocus(DisplayObject(param1.target)))
         {
            return;
         }
         this.selectAllFromKeyboard();
      }
      
      private function selectAllFromKeyboard() : void
      {
         if(this.selectionMode == GridSelectionMode.MULTIPLE_CELLS || this.selectionMode == GridSelectionMode.MULTIPLE_ROWS)
         {
            if(this.commitInteractiveSelection(GridSelectionEventKind.SELECT_ALL,0,0,this.dataProvider.length,this.columns.length))
            {
               this.grid.anchorRowIndex = 0;
               this.grid.anchorColumnIndex = 0;
            }
         }
      }
      
      override protected function findSkinParts() : void
      {
         var _loc1_:String = null;
         super.findSkinParts();
         for each(_loc1_ in factorySkinPartNames)
         {
            if(_loc1_ in skin && skin[_loc1_])
            {
               this.partAdded(_loc1_,skin[_loc1_]);
            }
         }
      }
      
      private function initializeDataGridElement(param1:IDataGridElement) : void
      {
         if(!param1)
         {
            return;
         }
         param1.dataGrid = this;
         if(param1.nestLevel <= this.grid.nestLevel)
         {
            param1.validateNow();
            param1.nestLevel = this.grid.nestLevel + 1;
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Function = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         super.partAdded(param1,param2);
         if(param2 == this.grid)
         {
            this.gridSelection.grid = this.grid;
            this.grid.gridSelection = this.gridSelection;
            this.grid.dataGrid = this;
            _loc3_ = this.gridProperties;
            this.gridProperties = {"propertyBits":0};
            for(_loc4_ in _loc3_)
            {
               if(_loc4_ != "propertyBits")
               {
                  this.setGridProperty(_loc4_,_loc3_[_loc4_]);
               }
            }
            this.initializeGridRowBackground();
            this.grid.columnSeparator = this.columnSeparator;
            this.grid.rowSeparator = this.rowSeparator;
            this.grid.hoverIndicator = this.hoverIndicator;
            this.grid.caretIndicator = this.caretIndicator;
            this.grid.selectionIndicator = this.selectionIndicator;
            this.grid.lockedColumnsSeparator = this.lockedColumnsSeparator;
            this.grid.lockedRowsSeparator = this.lockedRowsSeparator;
            this.grid.addEventListener(GridEvent.GRID_MOUSE_DOWN,this.grid_mouseDownHandler,false,EventPriority.DEFAULT_HANDLER);
            this.grid.addEventListener(GridEvent.GRID_MOUSE_UP,this.grid_mouseUpHandler,false,EventPriority.DEFAULT_HANDLER);
            this.grid.addEventListener(GridEvent.GRID_ROLL_OVER,this.grid_rollOverHandler,false,EventPriority.DEFAULT_HANDLER);
            this.grid.addEventListener(GridEvent.GRID_ROLL_OUT,this.grid_rollOutHandler,false,EventPriority.DEFAULT_HANDLER);
            this.grid.addEventListener(GridCaretEvent.CARET_CHANGE,this.grid_caretChangeHandler);
            this.grid.addEventListener(FlexEvent.VALUE_COMMIT,this.grid_valueCommitHandler);
            this.grid.addEventListener("invalidateSize",this.grid_invalidateSizeHandler);
            this.grid.addEventListener("invalidateDisplayList",this.grid_invalidateDisplayListHandler);
            this.grid.addEventListener("gridViewsChanged",this.grid_gridViewsChangedHandler);
            for each(_loc5_ in this.deferredGridOperations)
            {
               _loc5_(this.grid);
            }
            this.deferredGridOperations.length = 0;
            this.initializeDataGridElement(this.columnHeaderGroup);
            this.editor = this.createEditor();
            this.editor.initialize();
         }
         if(param2 == this.alternatingRowColorsBackground)
         {
            this.initializeGridRowBackground();
         }
         if(this.grid)
         {
            if(param2 == this.columnSeparator)
            {
               this.grid.columnSeparator = this.columnSeparator;
            }
            if(param2 == this.rowSeparator)
            {
               this.grid.rowSeparator = this.rowSeparator;
            }
            if(param2 == this.lockedColumnsSeparator)
            {
               this.grid.lockedColumnsSeparator = this.lockedColumnsSeparator;
            }
            if(param2 == this.lockedRowsSeparator)
            {
               this.grid.lockedRowsSeparator = this.lockedRowsSeparator;
            }
            if(param2 == this.hoverIndicator)
            {
               this.grid.hoverIndicator = this.hoverIndicator;
            }
            if(param2 == this.caretIndicator)
            {
               this.grid.caretIndicator = this.caretIndicator;
               addEventListener(FocusEvent.FOCUS_IN,this.dataGrid_focusHandler);
               addEventListener(FocusEvent.FOCUS_OUT,this.dataGrid_focusHandler);
               if(this.grid)
               {
                  this.grid.showCaret = false;
               }
            }
            if(param2 == this.rowBackground)
            {
               this.grid.rowBackground = this.rowBackground;
            }
            if(param2 == this.selectionIndicator)
            {
               this.grid.selectionIndicator = this.selectionIndicator;
            }
         }
         if(param2 == this.columnHeaderGroup)
         {
            if(this.grid)
            {
               this.initializeDataGridElement(this.columnHeaderGroup);
            }
            this.columnHeaderGroup.addEventListener(GridEvent.GRID_CLICK,this.columnHeaderGroup_clickHandler);
            this.columnHeaderGroup.addEventListener(GridEvent.GRID_ROLL_OVER,this.columnHeaderGroup_rollOverHandler);
            this.columnHeaderGroup.addEventListener(GridEvent.GRID_ROLL_OUT,this.columnHeaderGroup_rollOutHandler);
            this.columnHeaderGroup.addEventListener(GridEvent.SEPARATOR_ROLL_OVER,this.separator_rollOverHandler);
            this.columnHeaderGroup.addEventListener(GridEvent.SEPARATOR_ROLL_OUT,this.separator_rollOutHandler);
            this.columnHeaderGroup.addEventListener(GridEvent.SEPARATOR_MOUSE_DOWN,this.separator_mouseDownHandler);
            this.columnHeaderGroup.addEventListener(GridEvent.SEPARATOR_MOUSE_DRAG,this.separator_mouseDragHandler);
            this.columnHeaderGroup.addEventListener(GridEvent.SEPARATOR_MOUSE_UP,this.separator_mouseUpHandler);
         }
         if(param2 == this.scroller)
         {
            _loc6_ = getStyle("verticalScrollPolicy");
            if(_loc6_ && _loc6_ !== ScrollPolicy.AUTO)
            {
               this.scroller.setStyle("verticalScrollPolicy",_loc6_);
            }
            _loc7_ = getStyle("horizontalScrollPolicy");
            if(_loc7_ && _loc7_ !== ScrollPolicy.AUTO)
            {
               this.scroller.setStyle("horizontalScrollPolicy",_loc7_);
            }
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:* = null;
         var _loc5_:uint = 0;
         super.partRemoved(param1,param2);
         if(param2 == this.grid)
         {
            this.gridSelection.grid = null;
            this.grid.gridSelection = null;
            this.grid.dataGrid = null;
            this.grid.removeEventListener("gridViewsChanged",this.grid_gridViewsChangedHandler);
            this.grid.removeEventListener("invalidateSize",this.grid_invalidateSizeHandler);
            this.grid.removeEventListener("invalidateDisplayList",this.grid_invalidateDisplayListHandler);
            this.grid.removeEventListener(GridEvent.GRID_MOUSE_DOWN,this.grid_mouseDownHandler);
            this.grid.removeEventListener(GridEvent.GRID_MOUSE_UP,this.grid_mouseUpHandler);
            this.grid.removeEventListener(GridEvent.GRID_ROLL_OVER,this.grid_rollOverHandler);
            this.grid.removeEventListener(GridEvent.GRID_ROLL_OUT,this.grid_rollOutHandler);
            this.grid.removeEventListener(GridCaretEvent.CARET_CHANGE,this.grid_caretChangeHandler);
            this.grid.removeEventListener(FlexEvent.VALUE_COMMIT,this.grid_valueCommitHandler);
            _loc3_ = this.gridProperties.propertyBits;
            this.gridProperties = {};
            for(_loc4_ in gridPropertyDefaults)
            {
               _loc5_ = partPropertyBits[_loc4_];
               if((_loc5_ & _loc3_) == _loc5_)
               {
                  this.gridProperties[_loc4_] = this.getGridProperty(_loc4_);
               }
            }
            this.grid.rowBackground = null;
            this.grid.columnSeparator = null;
            this.grid.rowSeparator = null;
            this.grid.hoverIndicator = null;
            this.grid.caretIndicator = null;
            this.grid.selectionIndicator = null;
            if(this.columnHeaderGroup)
            {
               this.columnHeaderGroup.dataGrid = null;
            }
            if(this.editor)
            {
               this.editor.uninitialize();
               this.editor = null;
            }
            if(this.internalFocusOwner == GRID_FOCUS_OWNER)
            {
               this.internalFocusOwner = NO_FOCUS_OWNER;
            }
         }
         if(this.grid)
         {
            if(param2 == this.columnSeparator)
            {
               this.grid.columnSeparator = null;
            }
            if(param2 == this.rowSeparator)
            {
               this.grid.rowSeparator = null;
            }
            if(param2 == this.lockedColumnsSeparator)
            {
               this.grid.lockedColumnsSeparator = null;
            }
            if(param2 == this.lockedRowsSeparator)
            {
               this.grid.lockedRowsSeparator = null;
            }
            if(param2 == this.hoverIndicator)
            {
               this.grid.hoverIndicator = null;
            }
            if(param2 == this.caretIndicator)
            {
               this.grid.caretIndicator = null;
               removeEventListener(FocusEvent.FOCUS_IN,this.dataGrid_focusHandler);
               removeEventListener(FocusEvent.FOCUS_OUT,this.dataGrid_focusHandler);
            }
            if(param2 == this.selectionIndicator)
            {
               this.grid.selectionIndicator = null;
            }
            if(param2 == this.rowBackground)
            {
               this.grid.rowBackground = null;
            }
         }
         if(param2 == this.columnHeaderGroup)
         {
            this.columnHeaderGroup.dataGrid = null;
            this.columnHeaderGroup.removeEventListener(GridEvent.GRID_CLICK,this.columnHeaderGroup_clickHandler);
            this.columnHeaderGroup.removeEventListener(GridEvent.GRID_ROLL_OVER,this.columnHeaderGroup_rollOverHandler);
            this.columnHeaderGroup.removeEventListener(GridEvent.GRID_ROLL_OUT,this.columnHeaderGroup_rollOutHandler);
            this.columnHeaderGroup.removeEventListener(GridEvent.SEPARATOR_ROLL_OVER,this.separator_rollOverHandler);
            this.columnHeaderGroup.removeEventListener(GridEvent.SEPARATOR_ROLL_OUT,this.separator_rollOutHandler);
            this.columnHeaderGroup.removeEventListener(GridEvent.SEPARATOR_MOUSE_DOWN,this.separator_mouseDownHandler);
            this.columnHeaderGroup.removeEventListener(GridEvent.SEPARATOR_MOUSE_DRAG,this.separator_mouseDragHandler);
            this.columnHeaderGroup.removeEventListener(GridEvent.SEPARATOR_MOUSE_UP,this.separator_mouseUpHandler);
            if(this.internalFocusOwner == HEADER_FOCUS_OWNER)
            {
               this.internalFocusOwner = NO_FOCUS_OWNER;
            }
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedCell() : CellPosition
      {
         if(this.grid)
         {
            return this.grid.selectedCell;
         }
         return !!this.selectedCells.length?this.selectedCells[0]:null;
      }
      
      public function set selectedCell(param1:CellPosition) : void
      {
         var valueCopy:CellPosition = null;
         var f:Function = null;
         var value:CellPosition = param1;
         if(this.grid)
         {
            this.grid.selectedCell = value;
         }
         else
         {
            valueCopy = !!value?new CellPosition(value.rowIndex,value.columnIndex):null;
            f = function(param1:Grid):void
            {
               param1.selectedCell = valueCopy;
            };
            this.deferredGridOperations.push(f);
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedCells() : Vector.<CellPosition>
      {
         return !!this.grid?this.grid.selectedCells:this.gridSelection.allCells();
      }
      
      public function set selectedCells(param1:Vector.<CellPosition>) : void
      {
         var valueCopy:Vector.<CellPosition> = null;
         var f:Function = null;
         var value:Vector.<CellPosition> = param1;
         if(this.grid)
         {
            this.grid.selectedCells = value;
         }
         else
         {
            valueCopy = !!value?value.concat():null;
            f = function(param1:Grid):void
            {
               param1.selectedCells = valueCopy;
            };
            this.deferredGridOperations.push(f);
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedIndex() : int
      {
         if(this.grid)
         {
            return this.grid.selectedIndex;
         }
         return this.selectedIndices.length > 0?int(this.selectedIndices[0]):-1;
      }
      
      public function set selectedIndex(param1:int) : void
      {
         var f:Function = null;
         var value:int = param1;
         if(this.grid)
         {
            this.grid.selectedIndex = value;
         }
         else
         {
            f = function(param1:Grid):void
            {
               param1.selectedIndex = value;
            };
            this.deferredGridOperations.push(f);
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedIndices() : Vector.<int>
      {
         return !!this.grid?this.grid.selectedIndices:this.gridSelection.allRows();
      }
      
      public function set selectedIndices(param1:Vector.<int>) : void
      {
         var valueCopy:Vector.<int> = null;
         var f:Function = null;
         var value:Vector.<int> = param1;
         if(this.grid)
         {
            this.grid.selectedIndices = value;
         }
         else
         {
            valueCopy = !!value?value.concat():null;
            f = function(param1:Grid):void
            {
               param1.selectedIndices = valueCopy;
            };
            this.deferredGridOperations.push(f);
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedItem() : Object
      {
         if(this.grid)
         {
            return this.grid.selectedItem;
         }
         return this.dataProvider && this.selectedIndex > 0?this.dataProvider.getItemAt(this.selectedIndex):undefined;
      }
      
      public function set selectedItem(param1:Object) : void
      {
         var f:Function = null;
         var value:Object = param1;
         if(this.grid)
         {
            this.grid.selectedItem = value;
         }
         else
         {
            f = function(param1:Grid):void
            {
               param1.selectedItem = value;
            };
            this.deferredGridOperations.push(f);
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectedItems() : Vector.<Object>
      {
         if(this.grid)
         {
            return this.grid.selectedItems;
         }
         var _loc1_:Vector.<Object> = new Vector.<Object>();
         var _loc2_:int = 0;
         while(_loc2_ < this.selectedIndices.length)
         {
            _loc1_.push(this.selectedIndices[_loc2_]);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function set selectedItems(param1:Vector.<Object>) : void
      {
         var valueCopy:Vector.<Object> = null;
         var f:Function = null;
         var value:Vector.<Object> = param1;
         if(this.grid)
         {
            this.grid.selectedItems = value;
         }
         else
         {
            valueCopy = value.concat();
            f = function(param1:Grid):void
            {
               param1.selectedItems = valueCopy;
            };
            this.deferredGridOperations.push(f);
         }
      }
      
      [Bindable("valueCommit")]
      [Bindable("selectionChange")]
      public function get selectionLength() : int
      {
         return !!this.grid?int(this.grid.selectionLength):int(this.gridSelection.selectionLength);
      }
      
      public function findRowIndex(param1:String, param2:String, param3:int = 0, param4:String = "exact") : int
      {
         if(this.grid)
         {
            return this.grid.findRowIndex(param1,param2,param3,param4);
         }
         return -1;
      }
      
      public function findRowIndices(param1:String, param2:Array, param3:String = "exact") : Array
      {
         if(this.grid)
         {
            return this.grid.findRowIndices(param1,param2,param3);
         }
         return [];
      }
      
      public function invalidateCell(param1:int, param2:int) : void
      {
         if(this.grid)
         {
            this.grid.invalidateCell(param1,param2);
         }
      }
      
      public function moveIndexFindRow(param1:String, param2:String, param3:int = 0, param4:String = "exact") : Boolean
      {
         if(this.grid)
         {
            return this.grid.moveIndexFindRow(param1,param2,param3,param4);
         }
         return false;
      }
      
      public function moveIndexFirstRow() : void
      {
         if(this.grid)
         {
            this.grid.moveIndexFirstRow();
         }
      }
      
      public function moveIndexLastRow() : void
      {
         if(this.grid)
         {
            this.grid.moveIndexLastRow();
         }
      }
      
      public function moveIndexNextRow() : void
      {
         if(this.grid)
         {
            this.grid.moveIndexNextRow();
         }
      }
      
      public function moveIndexPreviousRow() : void
      {
         if(this.grid)
         {
            this.grid.moveIndexPreviousRow();
         }
      }
      
      public function selectAll() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this.grid)
         {
            _loc1_ = this.grid.selectAll();
         }
         else
         {
            _loc1_ = this.gridSelection.selectAll();
            if(_loc1_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc1_;
      }
      
      public function clearSelection() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this.grid)
         {
            _loc1_ = this.grid.clearSelection();
         }
         else
         {
            _loc1_ = this.gridSelection.removeAll();
            if(_loc1_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc1_;
      }
      
      public function selectionContainsIndex(param1:int) : Boolean
      {
         if(this.grid)
         {
            return this.grid.selectionContainsIndex(param1);
         }
         return this.gridSelection.containsRow(param1);
      }
      
      public function selectionContainsIndices(param1:Vector.<int>) : Boolean
      {
         if(this.grid)
         {
            return this.grid.selectionContainsIndices(param1);
         }
         return this.gridSelection.containsRows(param1);
      }
      
      public function setSelectedIndex(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         if(this.grid)
         {
            _loc2_ = this.grid.setSelectedIndex(param1);
         }
         else
         {
            _loc2_ = this.gridSelection.setRow(param1);
            if(_loc2_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc2_;
      }
      
      public function addSelectedIndex(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         if(this.grid)
         {
            _loc2_ = this.grid.addSelectedIndex(param1);
         }
         else
         {
            _loc2_ = this.gridSelection.addRow(param1);
            if(_loc2_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc2_;
      }
      
      public function removeSelectedIndex(param1:int) : Boolean
      {
         var _loc2_:Boolean = false;
         if(this.grid)
         {
            _loc2_ = this.grid.removeSelectedIndex(param1);
         }
         else
         {
            _loc2_ = this.gridSelection.removeRow(param1);
            if(_loc2_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc2_;
      }
      
      public function selectIndices(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.grid)
         {
            _loc3_ = this.grid.selectIndices(param1,param2);
         }
         else
         {
            _loc3_ = this.gridSelection.setRows(param1,param2);
            if(_loc3_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc3_;
      }
      
      public function selectionContainsCell(param1:int, param2:int) : Boolean
      {
         if(this.grid)
         {
            return this.grid.selectionContainsCell(param1,param2);
         }
         return this.gridSelection.containsCell(param1,param2);
      }
      
      public function selectionContainsCellRegion(param1:int, param2:int, param3:int, param4:int) : Boolean
      {
         if(this.grid)
         {
            return this.grid.selectionContainsCellRegion(param1,param2,param3,param4);
         }
         return this.gridSelection.containsCellRegion(param1,param2,param3,param4);
      }
      
      public function setSelectedCell(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.grid)
         {
            _loc3_ = this.grid.setSelectedCell(param1,param2);
         }
         else
         {
            _loc3_ = this.gridSelection.setCell(param1,param2);
            if(_loc3_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc3_;
      }
      
      public function addSelectedCell(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.grid)
         {
            _loc3_ = this.grid.addSelectedCell(param1,param2);
         }
         else
         {
            _loc3_ = this.gridSelection.addCell(param1,param2);
            if(_loc3_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc3_;
      }
      
      public function removeSelectedCell(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.grid)
         {
            _loc3_ = this.grid.removeSelectedCell(param1,param2);
         }
         else
         {
            _loc3_ = this.gridSelection.removeCell(param1,param2);
            if(_loc3_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc3_;
      }
      
      public function selectCellRegion(param1:int, param2:int, param3:uint, param4:uint) : Boolean
      {
         var _loc5_:Boolean = false;
         if(this.grid)
         {
            _loc5_ = this.grid.selectCellRegion(param1,param2,param3,param4);
         }
         else
         {
            _loc5_ = this.gridSelection.setCellRegion(param1,param2,param3,param4);
            if(_loc5_)
            {
               this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
            }
         }
         return _loc5_;
      }
      
      protected function commitInteractiveSelection(param1:String, param2:int, param3:int, param4:int = 1, param5:int = 1) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:GridSelectionEvent = null;
         var _loc9_:GridSelectionEvent = null;
         if(!this.grid)
         {
            return false;
         }
         var _loc6_:CellRegion = new CellRegion(param2,param3,param4,param5);
         if(!this.doesChangeCurrentSelection(param1,_loc6_))
         {
            return true;
         }
         if(hasEventListener(GridSelectionEvent.SELECTION_CHANGING))
         {
            _loc8_ = new GridSelectionEvent(GridSelectionEvent.SELECTION_CHANGING,false,true,param1,_loc6_);
            if(!dispatchEvent(_loc8_))
            {
               return false;
            }
         }
         switch(param1)
         {
            case GridSelectionEventKind.SET_ROW:
               _loc7_ = this.grid.gridSelection.setRow(param2);
               break;
            case GridSelectionEventKind.ADD_ROW:
               _loc7_ = this.grid.gridSelection.addRow(param2);
               break;
            case GridSelectionEventKind.REMOVE_ROW:
               _loc7_ = this.grid.gridSelection.removeRow(param2);
               break;
            case GridSelectionEventKind.SET_ROWS:
               _loc7_ = this.grid.gridSelection.setRows(param2,param4);
               break;
            case GridSelectionEventKind.SET_CELL:
               _loc7_ = this.grid.gridSelection.setCell(param2,param3);
               break;
            case GridSelectionEventKind.ADD_CELL:
               _loc7_ = this.grid.gridSelection.addCell(param2,param3);
               break;
            case GridSelectionEventKind.REMOVE_CELL:
               _loc7_ = this.grid.gridSelection.removeCell(param2,param3);
               break;
            case GridSelectionEventKind.SET_CELL_REGION:
               _loc7_ = this.grid.gridSelection.setCellRegion(param2,param3,param4,param5);
               break;
            case GridSelectionEventKind.SELECT_ALL:
               _loc7_ = this.grid.gridSelection.selectAll();
         }
         if(!_loc7_)
         {
            return false;
         }
         this.grid.invalidateDisplayListFor("selectionIndicator");
         if(hasEventListener(GridSelectionEvent.SELECTION_CHANGE))
         {
            _loc9_ = new GridSelectionEvent(GridSelectionEvent.SELECTION_CHANGE,false,true,param1,_loc6_);
            dispatchEvent(_loc9_);
            if(this.grid.hasEventListener(GridSelectionEvent.SELECTION_CHANGE))
            {
               this.grid.dispatchEvent(_loc9_);
            }
         }
         this.dispatchFlexEvent(FlexEvent.VALUE_COMMIT);
         return true;
      }
      
      protected function commitCaretPosition(param1:int, param2:int) : void
      {
         this.grid.caretRowIndex = param1;
         this.grid.caretColumnIndex = param2;
      }
      
      mx_internal function createGridSelection() : GridSelection
      {
         return new GridSelection();
      }
      
      protected function selectionContainsOnlyIndex(param1:int) : Boolean
      {
         if(this.grid)
         {
            return this.grid.selectionContainsIndex(param1) && this.grid.selectionLength == 1;
         }
         return this.gridSelection.containsRow(param1) && this.gridSelection.selectionLength == 1;
      }
      
      protected function selectionContainsOnlyIndices(param1:CellRegion) : Boolean
      {
         var _loc2_:int = !!this.grid?int(this.grid.selectionLength):int(this.gridSelection.selectionLength);
         if(param1.rowCount != _loc2_)
         {
            return false;
         }
         var _loc3_:int = param1.rowIndex + param1.rowCount;
         var _loc4_:int = param1.rowIndex;
         while(_loc4_ < _loc3_)
         {
            if(this.grid)
            {
               if(!this.grid.selectionContainsIndex(_loc4_))
               {
                  return false;
               }
            }
            else if(!this.gridSelection.containsRow(_loc4_))
            {
               return false;
            }
            _loc4_++;
         }
         return true;
      }
      
      private function selectionContainsOnlyCell(param1:int, param2:int) : Boolean
      {
         if(this.grid)
         {
            return this.grid.selectionContainsCell(param1,param2) && this.grid.selectionLength == 1;
         }
         return this.gridSelection.containsCell(param1,param2) && this.gridSelection.selectionLength == 1;
      }
      
      private function selectionContainsOnlyCellRegion(param1:int, param2:int, param3:int, param4:int) : Boolean
      {
         if(this.grid)
         {
            return this.grid.selectionContainsCellRegion(param1,param2,param3,param4) && this.grid.selectionLength == param3 * param4;
         }
         return this.gridSelection.containsCellRegion(param1,param2,param3,param4) && this.gridSelection.selectionLength == param3 * param4;
      }
      
      protected function isCellEditable(param1:int, param2:int) : Boolean
      {
         var dataItem:Object = null;
         var column:GridColumn = null;
         var dataField:String = null;
         var rowIndex:int = param1;
         var columnIndex:int = param2;
         try
         {
            dataItem = this.dataProvider.getItemAt(rowIndex);
            column = GridColumn(this.columns.getItemAt(columnIndex));
            dataField = column.dataField;
         }
         catch(e:RangeError)
         {
            return false;
         }
         return this.isDataEditable(dataItem,dataField);
      }
      
      protected function isDataEditable(param1:Object, param2:String) : Boolean
      {
         return param1 != null;
      }
      
      public function startItemEditorSession(param1:int, param2:int) : Boolean
      {
         if(this.editor && this.isCellEditable(param1,param2))
         {
            return this.editor.startItemEditorSession(param1,param2);
         }
         return false;
      }
      
      public function endItemEditorSession(param1:Boolean = false) : Boolean
      {
         if(this.editor)
         {
            return this.editor.endItemEditorSession(param1);
         }
         return false;
      }
      
      mx_internal function createEditor() : DataGridEditor
      {
         return new DataGridEditor(this);
      }
      
      public function sortByColumns(param1:Vector.<int>, param2:Boolean = false) : Boolean
      {
         var _loc7_:ISortField = null;
         var _loc8_:GridSortEvent = null;
         var _loc9_:ISortField = null;
         var _loc10_:AdvancedStyleClient = null;
         var _loc11_:AdvancedStyleClient = null;
         var _loc12_:GridSortEvent = null;
         var _loc3_:ICollectionView = this.dataProvider as ICollectionView;
         if(!_loc3_)
         {
            return false;
         }
         var _loc4_:ISort = _loc3_.sort;
         if(_loc4_)
         {
            _loc4_.compareFunction = null;
         }
         else
         {
            _loc4_ = new Sort();
         }
         var _loc5_:Array = this.createSortFields(param1,_loc4_.fields);
         if(!_loc5_ || _loc5_.length == 0)
         {
            return false;
         }
         var _loc6_:Array = !!_loc3_.sort?_loc3_.sort.fields:null;
         if(param2)
         {
            if(_loc6_)
            {
               _loc6_ = _loc6_.concat();
            }
            if(hasEventListener(GridSortEvent.SORT_CHANGING))
            {
               _loc8_ = new GridSortEvent(GridSortEvent.SORT_CHANGING,false,true,param1,_loc6_,_loc5_);
               if(!dispatchEvent(_loc8_))
               {
                  return false;
               }
               param1 = _loc8_.columnIndices;
               if(!param1)
               {
                  return false;
               }
               _loc5_ = _loc8_.newSortFields;
               if(!_loc5_)
               {
                  return false;
               }
            }
         }
         if(_loc6_)
         {
            for each(_loc9_ in _loc6_)
            {
               _loc10_ = _loc9_ as AdvancedStyleClient;
               if(!(!_loc10_ || _loc10_.styleParent != this || _loc5_.indexOf(_loc10_) != -1))
               {
                  removeStyleClient(_loc10_);
               }
            }
         }
         for each(_loc7_ in _loc5_)
         {
            _loc11_ = _loc7_ as AdvancedStyleClient;
            if(!(!_loc11_ || _loc11_.styleParent == this))
            {
               addStyleClient(_loc11_);
            }
         }
         _loc4_.fields = _loc5_;
         _loc3_.sort = _loc4_;
         _loc3_.refresh();
         if(param2)
         {
            if(hasEventListener(GridSortEvent.SORT_CHANGE))
            {
               _loc12_ = new GridSortEvent(GridSortEvent.SORT_CHANGE,false,true,param1,_loc6_,_loc5_);
               dispatchEvent(_loc12_);
            }
            if(this.columnHeaderGroup)
            {
               this.columnHeaderGroup.visibleSortIndicatorIndices = param1;
            }
         }
         return true;
      }
      
      private function createSortFields(param1:Vector.<int>, param2:Array) : Array
      {
         var _loc4_:int = 0;
         var _loc5_:GridColumn = null;
         var _loc6_:String = null;
         var _loc7_:Boolean = false;
         var _loc8_:ISortField = null;
         var _loc3_:Array = [];
         for each(_loc4_ in param1)
         {
            _loc5_ = this.getColumnAt(_loc4_);
            if(!_loc5_ || !_loc5_.dataField && _loc5_.labelFunction == null && _loc5_.sortCompareFunction == null)
            {
               return null;
            }
            _loc6_ = _loc5_.dataField;
            _loc7_ = _loc6_ && _loc6_.indexOf(".") != -1;
            _loc8_ = findSortField(_loc6_,param2,_loc7_);
            if(!_loc8_)
            {
               _loc8_ = _loc5_.sortField;
            }
            else
            {
               _loc8_.descending = _loc5_.sortDescending;
            }
            _loc3_.push(_loc8_);
         }
         return _loc3_;
      }
      
      private function isAnchorSet() : Boolean
      {
         if(!this.grid)
         {
            return false;
         }
         if(this.isRowSelectionMode())
         {
            return this.grid.anchorRowIndex != -1;
         }
         return this.grid.anchorRowIndex != -1 && this.grid.anchorRowIndex != -1;
      }
      
      private function toggleSelection(param1:int, param2:int) : Boolean
      {
         var _loc3_:String = null;
         if(this.isRowSelectionMode())
         {
            if(this.grid.selectionContainsIndex(param1))
            {
               _loc3_ = GridSelectionEventKind.REMOVE_ROW;
            }
            else if(this.selectionMode == GridSelectionMode.MULTIPLE_ROWS)
            {
               _loc3_ = GridSelectionEventKind.ADD_ROW;
            }
            else
            {
               _loc3_ = GridSelectionEventKind.SET_ROW;
            }
         }
         else if(this.isCellSelectionMode())
         {
            if(this.grid.selectionContainsCell(param1,param2))
            {
               _loc3_ = GridSelectionEventKind.REMOVE_CELL;
            }
            else if(this.selectionMode == GridSelectionMode.MULTIPLE_CELLS)
            {
               _loc3_ = GridSelectionEventKind.ADD_CELL;
            }
            else
            {
               _loc3_ = GridSelectionEventKind.SET_CELL;
            }
         }
         var _loc4_:Boolean = this.commitInteractiveSelection(_loc3_,param1,param2);
         if(_loc4_)
         {
            this.commitCaretPosition(param1,param2);
         }
         return _loc4_;
      }
      
      private function extendSelection(param1:int, param2:int) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(!this.isAnchorSet())
         {
            return false;
         }
         var _loc3_:int = Math.min(this.grid.anchorRowIndex,param1);
         var _loc4_:int = Math.max(this.grid.anchorRowIndex,param1);
         if(this.selectionMode == GridSelectionMode.MULTIPLE_ROWS)
         {
            _loc5_ = this.commitInteractiveSelection(GridSelectionEventKind.SET_ROWS,_loc3_,-1,_loc4_ - _loc3_ + 1,0);
         }
         else if(this.selectionMode == GridSelectionMode.SINGLE_ROW)
         {
            _loc5_ = this.commitInteractiveSelection(GridSelectionEventKind.SET_ROW,param1,-1,1,0);
         }
         else if(this.selectionMode == GridSelectionMode.MULTIPLE_CELLS)
         {
            _loc6_ = _loc4_ - _loc3_ + 1;
            _loc7_ = Math.min(this.grid.anchorColumnIndex,param2);
            _loc8_ = Math.max(this.grid.anchorColumnIndex,param2);
            _loc9_ = _loc8_ - _loc7_ + 1;
            _loc5_ = this.commitInteractiveSelection(GridSelectionEventKind.SET_CELL_REGION,_loc3_,_loc7_,_loc6_,_loc9_);
         }
         else if(this.selectionMode == GridSelectionMode.SINGLE_CELL)
         {
            _loc5_ = this.commitInteractiveSelection(GridSelectionEventKind.SET_CELL,param1,param2,1,1);
         }
         if(_loc5_)
         {
            this.commitCaretPosition(param1,param2);
         }
         return _loc5_;
      }
      
      private function setSelectionAnchorCaret(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         if(this.isRowSelectionMode())
         {
            _loc3_ = this.commitInteractiveSelection(GridSelectionEventKind.SET_ROW,param1,param2);
         }
         else if(this.isCellSelectionMode())
         {
            _loc3_ = this.commitInteractiveSelection(GridSelectionEventKind.SET_CELL,param1,param2);
         }
         if(_loc3_)
         {
            this.commitCaretPosition(param1,param2);
            this.grid.anchorRowIndex = param1;
            this.grid.anchorColumnIndex = param2;
         }
         return _loc3_;
      }
      
      private function setCaretToNavigationDestination(param1:uint) : CellPosition
      {
         var _loc6_:GridLayout = null;
         var _loc9_:GridView = null;
         var _loc10_:int = 0;
         var _loc11_:Rectangle = null;
         var _loc12_:Rectangle = null;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         var _loc2_:int = this.grid.caretRowIndex;
         var _loc3_:int = this.grid.caretColumnIndex;
         var _loc4_:int = this.dataProviderLength;
         var _loc5_:int = this.columnsLength;
         _loc6_ = this.grid.layout as GridLayout;
         var _loc7_:GridView = _loc6_.centerGridView;
         var _loc8_:GridView = _loc6_.topGridView;
         switch(param1)
         {
            case NavigationUnit.LEFT:
               if(this.isCellSelectionMode())
               {
                  if(this.grid.caretColumnIndex > 0)
                  {
                     _loc3_ = this.grid.getPreviousVisibleColumnIndex(_loc3_);
                  }
               }
               break;
            case NavigationUnit.RIGHT:
               if(this.isCellSelectionMode())
               {
                  if(this.grid.caretColumnIndex + 1 < _loc5_)
                  {
                     _loc3_ = this.grid.getNextVisibleColumnIndex(_loc3_);
                  }
               }
               break;
            case NavigationUnit.UP:
               if(this.grid.caretRowIndex > 0)
               {
                  _loc2_--;
               }
               break;
            case NavigationUnit.DOWN:
               if(this.grid.caretRowIndex + 1 < _loc4_)
               {
                  _loc2_++;
               }
               break;
            case NavigationUnit.PAGE_UP:
               _loc9_ = this.lockedRowCount > 0 && _loc2_ <= this.lockedRowCount?_loc8_:_loc7_;
               _loc10_ = _loc9_.gridViewLayout.getFirstFullyVisibleRowIndex();
               if(_loc2_ > _loc10_)
               {
                  _loc2_ = _loc10_;
               }
               else if(_loc2_ >= this.lockedRowCount)
               {
                  _loc11_ = this.grid.getRowBounds(_loc2_);
                  _loc12_ = _loc7_.gridViewLayout.getVisibleBounds();
                  _loc13_ = _loc12_.bottom - _loc11_.bottom;
                  this.grid.verticalScrollPosition = this.grid.verticalScrollPosition - _loc13_;
                  validateNow();
                  _loc2_ = _loc7_.gridViewLayout.getFirstFullyVisibleRowIndex();
               }
               break;
            case NavigationUnit.PAGE_DOWN:
               _loc9_ = this.lockedRowCount > 0 && _loc2_ < this.lockedRowCount - 1?_loc8_:_loc7_;
               _loc14_ = _loc9_.gridViewLayout.getLastFullyVisibleRowIndex();
               if(this.lockedRowCount > 0 && _loc4_ > this.lockedRowCount && _loc2_ == this.lockedRowCount - 1)
               {
                  _loc2_ = this.lockedRowCount;
               }
               else if(_loc2_ < _loc14_)
               {
                  _loc2_ = _loc14_;
               }
               else if(_loc2_ >= this.lockedRowCount)
               {
                  this.grid.verticalScrollPosition = this.grid.getRowBounds(_loc2_).y;
                  validateNow();
                  _loc2_ = _loc7_.gridViewLayout.getLastFullyVisibleRowIndex();
               }
               break;
            case NavigationUnit.HOME:
               _loc2_ = 0;
               _loc3_ = !!this.isCellSelectionMode()?int(this.grid.getNextVisibleColumnIndex(-1)):-1;
               break;
            case NavigationUnit.END:
               _loc2_ = _loc4_ - 1;
               _loc3_ = !!this.isCellSelectionMode()?int(this.grid.getPreviousVisibleColumnIndex(_loc5_)):-1;
               this.grid.verticalScrollPosition = this.grid.contentHeight;
               validateNow();
               if(this.grid.contentHeight != this.grid.verticalScrollPosition)
               {
                  this.grid.verticalScrollPosition = this.grid.contentHeight;
                  validateNow();
               }
               break;
            default:
               return null;
         }
         return new CellPosition(_loc2_,_loc3_);
      }
      
      public function ensureCellIsVisible(param1:int, param2:int = -1) : void
      {
         if(this.grid)
         {
            this.grid.ensureCellIsVisible(param1,param2);
         }
      }
      
      protected function adjustSelectionUponNavigation(param1:KeyboardEvent) : Boolean
      {
         var _loc2_:uint = 0;
         if(!NavigationUnit.isNavigationUnit(param1.keyCode))
         {
            return false;
         }
         _loc2_ = mapKeycodeForLayoutDirection(param1);
         var _loc3_:CellPosition = this.setCaretToNavigationDestination(_loc2_);
         if(!_loc3_)
         {
            return false;
         }
         param1.preventDefault();
         var _loc4_:Boolean = false;
         if(param1.shiftKey)
         {
            _loc4_ = this.extendSelection(_loc3_.rowIndex,_loc3_.columnIndex);
         }
         else if(param1.ctrlKey)
         {
            this.commitCaretPosition(_loc3_.rowIndex,_loc3_.columnIndex);
         }
         else
         {
            this.setSelectionAnchorCaret(_loc3_.rowIndex,_loc3_.columnIndex);
         }
         this.ensureCellIsVisible(_loc3_.rowIndex,_loc3_.columnIndex);
         return true;
      }
      
      private function doesChangeCurrentSelection(param1:String, param2:CellRegion) : Boolean
      {
         var _loc3_:* = false;
         var _loc4_:int = param2.rowIndex;
         var _loc5_:int = param2.columnIndex;
         var _loc6_:int = param2.rowCount;
         var _loc7_:int = param2.columnCount;
         switch(param1)
         {
            case GridSelectionEventKind.SET_ROW:
               _loc3_ = !this.selectionContainsOnlyIndex(_loc4_);
               break;
            case GridSelectionEventKind.ADD_ROW:
               _loc3_ = !this.grid.selectionContainsIndex(_loc4_);
               break;
            case GridSelectionEventKind.REMOVE_ROW:
               _loc3_ = Boolean(!!this.requireSelection?!this.selectionContainsOnlyIndex(_loc4_):Boolean(this.grid.selectionContainsIndex(_loc4_)));
               break;
            case GridSelectionEventKind.SET_ROWS:
               _loc3_ = !this.selectionContainsOnlyIndices(param2);
               break;
            case GridSelectionEventKind.SET_CELL:
               _loc3_ = !this.selectionContainsOnlyCell(_loc4_,_loc5_);
               break;
            case GridSelectionEventKind.ADD_CELL:
               _loc3_ = !this.grid.selectionContainsCell(_loc4_,_loc5_);
               break;
            case GridSelectionEventKind.REMOVE_CELL:
               _loc3_ = Boolean(!!this.requireSelection?!this.selectionContainsOnlyCell(_loc4_,_loc5_):Boolean(this.grid.selectionContainsCell(_loc4_,_loc5_)));
               break;
            case GridSelectionEventKind.SET_CELL_REGION:
               _loc3_ = !this.selectionContainsOnlyCellRegion(_loc4_,_loc5_,_loc6_,_loc7_);
               break;
            case GridSelectionEventKind.SELECT_ALL:
               _loc3_ = true;
         }
         return _loc3_;
      }
      
      protected function grid_rollOverHandler(param1:GridEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         if(param1.buttonDown && param1.relatedObject != this.grid)
         {
            this.updateHoverOnRollOver = false;
         }
         this.grid.hoverRowIndex = !!this.updateHoverOnRollOver?int(param1.rowIndex):-1;
         this.grid.hoverColumnIndex = !!this.updateHoverOnRollOver?int(param1.columnIndex):-1;
         param1.updateAfterEvent();
      }
      
      protected function grid_rollOutHandler(param1:GridEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         this.grid.hoverRowIndex = -1;
         this.grid.hoverColumnIndex = -1;
         this.updateHoverOnRollOver = true;
         param1.updateAfterEvent();
      }
      
      protected function grid_mouseUpHandler(param1:GridEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         if(!this.updateHoverOnRollOver)
         {
            this.grid.hoverRowIndex = param1.rowIndex;
            this.grid.hoverColumnIndex = param1.columnIndex;
            this.updateHoverOnRollOver = true;
         }
      }
      
      protected function grid_mouseDownHandler(param1:GridEvent) : void
      {
         var _loc2_:Boolean = false;
         if(param1.isDefaultPrevented())
         {
            return;
         }
         _loc2_ = this.isCellSelectionMode();
         var _loc3_:int = param1.rowIndex;
         var _loc4_:int = !!_loc2_?int(param1.columnIndex):-1;
         if(_loc3_ == -1 || _loc2_ && _loc4_ == -1)
         {
            return;
         }
         if(this.dragEnabled && this.isRowSelectionMode() && this.selectionContainsIndex(_loc3_))
         {
            this.pendingSelectionOnMouseUp = true;
            this.pendingSelectionShiftKey = param1.shiftKey;
            this.pendingSelectionCtrlKey = param1.ctrlKey;
         }
         else if(param1.ctrlKey)
         {
            if(!this.toggleSelection(_loc3_,_loc4_))
            {
               return;
            }
            this.grid.anchorRowIndex = _loc3_;
            this.grid.anchorColumnIndex = _loc4_;
         }
         else if(param1.shiftKey)
         {
            if(this.grid.selectionMode == GridSelectionMode.MULTIPLE_ROWS || this.grid.selectionMode == GridSelectionMode.MULTIPLE_CELLS)
            {
               if(!this.extendSelection(_loc3_,_loc4_))
               {
                  return;
               }
            }
         }
         else
         {
            this.setSelectionAnchorCaret(_loc3_,_loc4_);
         }
         if(!this.pendingSelectionOnMouseUp)
         {
            validateProperties();
         }
         this.mouseDownPoint = param1.target.localToGlobal(new Point(param1.localX,param1.localY));
         this.mouseDownObject = param1.target as DisplayObject;
         this.mouseDownRowIndex = _loc3_;
         this.mouseDownColumnIndex = _loc4_;
         var _loc5_:Boolean = this.dragEnabled && getStyle("interactionMode") == InteractionMode.MOUSE && this.selectedIndices && this.selectedIndices.indexOf(_loc3_) != -1;
         if(_loc5_)
         {
            this.grid.addEventListener(GridEvent.GRID_MOUSE_DRAG,this.grid_mouseDragHandler);
         }
         if(this.pendingSelectionOnMouseUp || _loc5_)
         {
            systemManager.getSandboxRoot().addEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,this.sandbox_mouseUpHandler,false,0,true);
         }
      }
      
      protected function grid_caretChangeHandler(param1:GridCaretEvent) : void
      {
         if(hasEventListener(GridCaretEvent.CARET_CHANGE))
         {
            dispatchEvent(param1);
         }
      }
      
      protected function grid_valueCommitHandler(param1:FlexEvent) : void
      {
         if(hasEventListener(FlexEvent.VALUE_COMMIT))
         {
            dispatchEvent(param1);
         }
      }
      
      private function grid_invalidateDisplayListHandler(param1:Event) : void
      {
         if(this.columnHeaderGroup && this.grid.isInvalidateDisplayListReason("horizontalScrollPosition"))
         {
            this.columnHeaderGroup.invalidateDisplayList();
         }
      }
      
      private function grid_invalidateSizeHandler(param1:Event) : void
      {
         if(this.columnHeaderGroup)
         {
            this.columnHeaderGroup.invalidateSize();
         }
      }
      
      private function grid_gridViewsChangedHandler(param1:Event) : void
      {
         if(this.columnHeaderGroup)
         {
            this.columnHeaderGroup.configureGridColumnHeaderViews();
         }
      }
      
      private function interactiveSortByColumns(param1:GridColumn, param2:Boolean) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:Vector.<int> = null;
         var _loc6_:Vector.<int> = null;
         if(!enabled || !this.sortableColumns || !param1 || !param1.sortable || !this.columnHeaderGroup)
         {
            return false;
         }
         _loc3_ = param1.columnIndex;
         _loc4_ = this.columnHeaderGroup.visibleSortIndicatorIndices;
         var _loc5_:* = _loc4_.indexOf(_loc3_) != -1;
         if(param2 && this.multiColumnSortingEnabled)
         {
            _loc6_ = _loc4_;
            if(!_loc5_)
            {
               _loc6_.push(_loc3_);
            }
         }
         else
         {
            _loc6_ = new <int>[_loc3_];
         }
         if(_loc5_)
         {
            param1.sortDescending = !param1.sortDescending;
         }
         if(!this.sortByColumns(_loc6_,true) && _loc5_)
         {
            param1.sortDescending = !param1.sortDescending;
            return false;
         }
         this.columnHeaderGroup.selectedColumnIndex = param1.columnIndex;
         return true;
      }
      
      protected function columnHeaderGroup_clickHandler(param1:GridEvent) : void
      {
         this.interactiveSortByColumns(param1.column,param1.ctrlKey);
      }
      
      protected function columnHeaderGroup_rollOverHandler(param1:GridEvent) : void
      {
         if(this.resizeColumn || !enabled)
         {
            return;
         }
         this.columnHeaderGroup.hoverColumnIndex = param1.columnIndex;
      }
      
      protected function columnHeaderGroup_rollOutHandler(param1:GridEvent) : void
      {
         if(!enabled)
         {
            return;
         }
         this.columnHeaderGroup.hoverColumnIndex = -1;
      }
      
      protected function separator_mouseDownHandler(param1:GridEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:GridColumn = null;
         var _loc2_:GridColumn = param1.column;
         if(!enabled || !this.grid.resizableColumns || !_loc2_ || !_loc2_.resizable)
         {
            return;
         }
         this.resizeColumn = param1.column;
         this.resizeAnchorX = param1.localX;
         this.resizeColumnWidth = this.grid.getColumnWidth(this.resizeColumn.columnIndex);
         if(isNaN(explicitWidth) && layoutDirection == LayoutDirection.RTL)
         {
            _loc5_ = this.grid.getNextVisibleColumnIndex(this.resizeColumn.columnIndex);
            this.nextColumn = this.getColumnAt(_loc5_);
            this.nextColumnWidth = Math.ceil(this.grid.getColumnWidth(_loc5_));
         }
         else
         {
            this.nextColumn = null;
            this.nextColumnWidth = NaN;
         }
         var _loc3_:int = this.resizeColumn.columnIndex;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc6_ = this.getColumnAt(_loc4_);
            if(_loc6_.visible && isNaN(_loc6_.width))
            {
               _loc6_.width = this.grid.getColumnWidth(_loc4_);
            }
            _loc4_++;
         }
      }
      
      protected function separator_mouseDragHandler(param1:GridEvent) : void
      {
         var _loc6_:Number = NaN;
         if(!this.resizeColumn)
         {
            return;
         }
         var _loc2_:Number = param1.localX - this.resizeAnchorX;
         var _loc3_:Number = !!isNaN(this.resizeColumn.minWidth)?Number(0):Number(this.resizeColumn.minWidth);
         var _loc4_:Number = this.resizeColumn.maxWidth;
         var _loc5_:Number = Math.ceil(this.resizeColumnWidth + _loc2_);
         if(this.nextColumn)
         {
            _loc6_ = !!isNaN(this.nextColumn.minWidth)?Number(0):Number(this.nextColumn.minWidth);
            if(Math.ceil(this.nextColumnWidth - _loc2_) <= _loc6_)
            {
               return;
            }
            if(Math.ceil(this.resizeColumnWidth + _loc2_) <= _loc3_)
            {
               return;
            }
            this.nextColumn.width = this.nextColumnWidth - _loc2_;
         }
         _loc5_ = Math.max(_loc5_,_loc3_);
         if(!isNaN(_loc4_))
         {
            _loc5_ = Math.min(_loc5_,_loc4_);
         }
         this.resizeColumn.width = _loc5_;
         validateNow();
         param1.updateAfterEvent();
      }
      
      protected function separator_mouseUpHandler(param1:GridEvent) : void
      {
         if(!this.resizeColumn)
         {
            return;
         }
         this.resizeColumn = null;
         cursorManager.removeCursor(this.stretchCursorID);
      }
      
      protected function separator_rollOverHandler(param1:GridEvent) : void
      {
         var _loc2_:GridColumn = param1.column;
         if(this.resizeColumn || !enabled || !this.grid.resizableColumns || !_loc2_ || !_loc2_.resizable)
         {
            return;
         }
         var _loc3_:Class = getStyle("stretchCursor") as Class;
         if(_loc3_)
         {
            this.stretchCursorID = cursorManager.setCursor(_loc3_,CursorManagerPriority.HIGH,0,0);
         }
      }
      
      protected function separator_rollOutHandler(param1:GridEvent) : void
      {
         if(!enabled || this.resizeColumn)
         {
            return;
         }
         cursorManager.removeCursor(this.stretchCursorID);
      }
      
      protected function dataGrid_focusHandler(param1:FocusEvent) : void
      {
         if(!this.grid)
         {
            return;
         }
         var _loc2_:* = param1.type == FocusEvent.FOCUS_IN;
         var _loc3_:* = param1.type == FocusEvent.FOCUS_OUT;
         if(this.isOurFocus(DisplayObject(param1.target)))
         {
            this.grid.showCaret = _loc2_ && this.selectionMode != GridSelectionMode.NONE;
         }
         if(_loc2_)
         {
            this.internalFocusOwner = GRID_FOCUS_OWNER;
         }
         else if(_loc3_)
         {
            this.internalFocusOwner = NO_FOCUS_OWNER;
         }
      }
      
      protected function dragStartHandler(param1:DragEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         var _loc2_:DragSource = new DragSource();
         this.addDragData(_loc2_);
         DragManager.doDrag(this,_loc2_,param1,this.createDragIndicator(),0,0,0.5,this.dragMoveEnabled);
      }
      
      private function compareValues(param1:int, param2:int) : int
      {
         return param1 - param2;
      }
      
      protected function dragCompleteHandler(param1:DragEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         if(!this.dragMoveEnabled || param1.action != DragManager.MOVE || param1.relatedObject == this)
         {
            return;
         }
         var _loc2_:Vector.<int> = this.selectedIndices;
         this.selectedIndices = new Vector.<int>();
         validateProperties();
         _loc2_.sort(this.compareValues);
         var _loc3_:int = _loc2_.length;
         var _loc4_:int = _loc3_ - 1;
         while(_loc4_ >= 0)
         {
            this.dataProvider.removeItemAt(_loc2_[_loc4_]);
            _loc4_--;
         }
      }
      
      public function createDragIndicator() : IFlexDisplayObject
      {
         var _loc1_:IFlexDisplayObject = null;
         var _loc2_:Class = Class(getStyle("dragIndicatorClass"));
         if(_loc2_)
         {
            _loc1_ = new _loc2_();
            if(_loc1_ is IVisualElement)
            {
               IVisualElement(_loc1_).owner = this;
            }
         }
         return _loc1_;
      }
      
      public function addDragData(param1:DragSource) : void
      {
         param1.addHandler(this.copySelectedItemsForDragDrop,"itemsByIndex");
         var _loc2_:int = 0;
         var _loc3_:Vector.<int> = this.selectedIndices;
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(this.mouseDownRowIndex > _loc3_[_loc5_])
            {
               _loc2_++;
            }
            _loc5_++;
         }
         param1.addData(_loc2_,"caretIndex");
      }
      
      private function copySelectedItemsForDragDrop() : Vector.<Object>
      {
         var _loc1_:Vector.<int> = this.selectedIndices.slice(0,this.selectedIndices.length);
         var _loc2_:Vector.<Object> = new Vector.<Object>(_loc1_.length);
         _loc1_.sort(this.compareValues);
         var _loc3_:int = _loc1_.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc2_[_loc4_] = this.dataProvider.getItemAt(_loc1_[_loc4_]);
            _loc4_++;
         }
         return _loc2_;
      }
      
      protected function grid_mouseDragHandler(param1:MouseEvent) : void
      {
         var _loc4_:DragEvent = null;
         var _loc5_:Point = null;
         var _loc6_:GridEvent = null;
         if(!this.mouseDownPoint || !this.dragEnabled)
         {
            return;
         }
         var _loc2_:Point = new Point(param1.localX,param1.localY);
         _loc2_ = DisplayObject(param1.target).localToGlobal(_loc2_);
         var _loc3_:int = 5;
         if(Math.abs(this.mouseDownPoint.x - _loc2_.x) > _loc3_ || Math.abs(this.mouseDownPoint.y - _loc2_.y) > _loc3_)
         {
            _loc4_ = new DragEvent(DragEvent.DRAG_START);
            _loc4_.dragInitiator = this;
            _loc5_ = this.globalToLocal(this.mouseDownPoint);
            _loc4_.localX = _loc5_.x;
            _loc4_.localY = _loc5_.y;
            _loc4_.buttonDown = true;
            dispatchEvent(_loc4_);
            _loc6_ = new GridEvent(GridEvent.GRID_MOUSE_UP,false,false,param1.localX,param1.localY,param1.relatedObject,param1.ctrlKey,param1.altKey,param1.shiftKey,param1.buttonDown,param1.delta);
            this.removeMouseHandlersForDragStart(_loc6_);
         }
      }
      
      private function removeMouseHandlersForDragStart(param1:GridEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(this.pendingSelectionOnMouseUp && !DragManager.isDragging)
         {
            _loc2_ = this.mouseDownRowIndex;
            _loc3_ = this.mouseDownColumnIndex;
            if(param1.ctrlKey)
            {
               if(!this.toggleSelection(_loc2_,_loc3_))
               {
                  return;
               }
               this.grid.anchorRowIndex = _loc2_;
               this.grid.anchorColumnIndex = _loc3_;
            }
            else if(param1.shiftKey)
            {
               if(this.grid.selectionMode == GridSelectionMode.MULTIPLE_ROWS || this.grid.selectionMode == GridSelectionMode.MULTIPLE_CELLS)
               {
                  if(!this.extendSelection(_loc2_,_loc3_))
                  {
                     return;
                  }
               }
            }
            else
            {
               this.setSelectionAnchorCaret(_loc2_,_loc3_);
            }
         }
         this.pendingSelectionOnMouseUp = false;
         this.mouseDownPoint = null;
         this.mouseDownObject = null;
         this.mouseDownRowIndex = -1;
         this.mouseDownColumnIndex = -1;
         this.grid.removeEventListener(GridEvent.GRID_MOUSE_DRAG,this.grid_mouseDragHandler);
         systemManager.getSandboxRoot().removeEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,this.sandbox_mouseUpHandler,false);
      }
      
      protected function sandbox_mouseUpHandler(param1:SandboxMouseEvent) : void
      {
         var _loc2_:SandboxMouseEvent = SandboxMouseEvent(param1);
         var _loc3_:GridEvent = new GridEvent(GridEvent.GRID_MOUSE_UP,false,false,NaN,NaN,null,_loc2_.ctrlKey,_loc2_.altKey,_loc2_.shiftKey,_loc2_.buttonDown,0);
         this.removeMouseHandlersForDragStart(_loc3_);
      }
      
      private function calculateDropLocation(param1:DragEvent) : DropLocation
      {
         if(!enabled || !param1.dragSource.hasFormat("itemsByIndex"))
         {
            return null;
         }
         var _loc2_:DropLocation = this.grid.layout.calculateDropLocation(param1);
         if(_loc2_.dropIndex > this.dataProvider.length)
         {
            _loc2_.dropIndex = this.dataProvider.length;
         }
         return _loc2_;
      }
      
      public function createDropIndicator() : DisplayObject
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:Class = null;
         if(this.grid.layout.dropIndicator)
         {
            return this.grid.layout.dropIndicator;
         }
         if(this.dropIndicator)
         {
            _loc1_ = DisplayObject(createDynamicPartInstance("dropIndicator"));
         }
         else
         {
            _loc2_ = Class(getStyle("dropIndicatorSkin"));
            if(_loc2_)
            {
               _loc1_ = new _loc2_();
            }
         }
         if(_loc1_ is IVisualElement)
         {
            IVisualElement(_loc1_).owner = this;
         }
         this.grid.layout.dropIndicator = _loc1_;
         return _loc1_;
      }
      
      public function destroyDropIndicator() : DisplayObject
      {
         var _loc1_:DisplayObject = this.grid.layout.dropIndicator;
         if(!_loc1_)
         {
            return null;
         }
         this.grid.layout.dropIndicator = null;
         var _loc2_:int = numDynamicParts("dropIndicator");
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(_loc1_ == getDynamicPartAt("dropIndicator",_loc3_))
            {
               removeDynamicPartInstance("dropIndicator",_loc1_);
               break;
            }
            _loc3_++;
         }
         return _loc1_;
      }
      
      protected function dragEnterHandler(param1:DragEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         var _loc2_:DropLocation = this.calculateDropLocation(param1);
         if(_loc2_)
         {
            DragManager.acceptDragDrop(this);
            this.createDropIndicator();
            drawFocusAnyway = true;
            drawFocus(true);
            DragManager.showFeedback(!!param1.ctrlKey?DragManager.COPY:DragManager.MOVE);
            this.grid.layout.showDropIndicator(_loc2_);
         }
         else
         {
            DragManager.showFeedback(DragManager.NONE);
         }
      }
      
      protected function dragOverHandler(param1:DragEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         var _loc2_:DropLocation = this.calculateDropLocation(param1);
         if(_loc2_)
         {
            drawFocusAnyway = true;
            drawFocus(true);
            DragManager.showFeedback(!!param1.ctrlKey?DragManager.COPY:DragManager.MOVE);
            this.grid.layout.showDropIndicator(_loc2_);
         }
         else
         {
            this.grid.layout.hideDropIndicator();
            drawFocus(false);
            drawFocusAnyway = false;
            DragManager.showFeedback(DragManager.NONE);
         }
      }
      
      protected function dragExitHandler(param1:DragEvent) : void
      {
         if(param1.isDefaultPrevented())
         {
            return;
         }
         this.grid.layout.hideDropIndicator();
         drawFocus(false);
         drawFocusAnyway = false;
         this.destroyDropIndicator();
      }
      
      private function touchInteractionStartHandler(param1:TouchInteractionEvent) : void
      {
         this.mouseDownRowIndex = -1;
         this.mouseDownColumnIndex = -1;
         this.mouseDownObject = null;
         this.mouseDownPoint = null;
         this.pendingSelectionOnMouseUp = false;
      }
      
      protected function dragDropHandler(param1:DragEvent) : void
      {
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         if(param1.isDefaultPrevented())
         {
            return;
         }
         this.grid.layout.hideDropIndicator();
         this.destroyDropIndicator();
         drawFocus(false);
         drawFocusAnyway = false;
         var _loc2_:DropLocation = this.calculateDropLocation(param1);
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:int = _loc2_.dropIndex;
         DragManager.showFeedback(!!param1.ctrlKey?DragManager.COPY:DragManager.MOVE);
         var _loc4_:DragSource = param1.dragSource;
         var _loc5_:Vector.<Object> = _loc4_.dataForFormat("itemsByIndex") as Vector.<Object>;
         var _loc6_:int = -1;
         if(_loc4_.hasFormat("caretIndex"))
         {
            _loc6_ = param1.dragSource.dataForFormat("caretIndex") as int;
         }
         var _loc7_:Vector.<int> = this.selectedIndices;
         this.clearSelection();
         validateProperties();
         if(this.dragMoveEnabled && param1.action == DragManager.MOVE && param1.dragInitiator == this)
         {
            _loc7_.sort(this.compareValues);
            _loc10_ = _loc7_.length - 1;
            while(_loc10_ >= 0)
            {
               if(_loc7_[_loc10_] < _loc3_)
               {
                  _loc3_--;
               }
               this.dataProvider.removeItemAt(_loc7_[_loc10_]);
               _loc10_--;
            }
         }
         var _loc8_:Vector.<int> = new Vector.<int>();
         if(_loc6_ != -1)
         {
            _loc8_.push(_loc3_ + _loc6_);
         }
         if(!this.dataProvider)
         {
            this.dataProvider = new ArrayCollection();
         }
         var _loc9_:* = param1.action == DragManager.COPY;
         _loc10_ = 0;
         while(_loc10_ < _loc5_.length)
         {
            _loc11_ = _loc5_[_loc10_];
            if(_loc9_)
            {
               _loc11_ = this.copyItemWithUID(_loc11_);
            }
            this.dataProvider.addItemAt(_loc11_,_loc3_ + _loc10_);
            if(_loc10_ != _loc6_)
            {
               _loc8_.push(_loc3_ + _loc10_);
            }
            _loc10_++;
         }
         this.selectedIndices = _loc8_;
         if(_loc6_ != -1)
         {
            this.ensureCellIsVisible(_loc3_ + _loc5_.length);
         }
      }
      
      protected function copyItemWithUID(param1:Object) : Object
      {
         var _loc2_:Object = ObjectUtil.copy(param1);
         if(_loc2_ is IUID)
         {
            IUID(_loc2_).uid = UIDUtil.createUID();
         }
         else if(_loc2_ is Object && "mx_internal_uid" in _loc2_)
         {
            _loc2_.mx_internal_uid = UIDUtil.createUID();
         }
         return _loc2_;
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get alternatingRowColorsBackground() : IFactory
      {
         return this._1277490047alternatingRowColorsBackground;
      }
      
      [SkinPart(required="false")]
      public function set alternatingRowColorsBackground(param1:IFactory) : void
      {
         var _loc2_:Object = this._1277490047alternatingRowColorsBackground;
         if(_loc2_ !== param1)
         {
            this._1277490047alternatingRowColorsBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"alternatingRowColorsBackground",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get caretIndicator() : IFactory
      {
         return this._502679092caretIndicator;
      }
      
      [SkinPart(required="false")]
      public function set caretIndicator(param1:IFactory) : void
      {
         var _loc2_:Object = this._502679092caretIndicator;
         if(_loc2_ !== param1)
         {
            this._502679092caretIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"caretIndicator",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(required="false")]
      [Bindable(event="propertyChange")]
      public function get columnHeaderGroup() : spark.components.GridColumnHeaderGroup
      {
         return this._1482148164columnHeaderGroup;
      }
      
      [SkinPart(required="false")]
      public function set columnHeaderGroup(param1:spark.components.GridColumnHeaderGroup) : void
      {
         var _loc2_:Object = this._1482148164columnHeaderGroup;
         if(_loc2_ !== param1)
         {
            this._1482148164columnHeaderGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"columnHeaderGroup",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get columnSeparator() : IFactory
      {
         return this._237342767columnSeparator;
      }
      
      [SkinPart(required="false")]
      public function set columnSeparator(param1:IFactory) : void
      {
         var _loc2_:Object = this._237342767columnSeparator;
         if(_loc2_ !== param1)
         {
            this._237342767columnSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"columnSeparator",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get editorIndicator() : IFactory
      {
         return this._1555036382editorIndicator;
      }
      
      [SkinPart(required="false")]
      public function set editorIndicator(param1:IFactory) : void
      {
         var _loc2_:Object = this._1555036382editorIndicator;
         if(_loc2_ !== param1)
         {
            this._1555036382editorIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"editorIndicator",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(required="false")]
      [Bindable(event="propertyChange")]
      public function get grid() : spark.components.Grid
      {
         return this._3181382grid;
      }
      
      [SkinPart(required="false")]
      public function set grid(param1:spark.components.Grid) : void
      {
         var _loc2_:Object = this._3181382grid;
         if(_loc2_ !== param1)
         {
            this._3181382grid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grid",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get hoverIndicator() : IFactory
      {
         return this._1933789133hoverIndicator;
      }
      
      [SkinPart(required="false")]
      public function set hoverIndicator(param1:IFactory) : void
      {
         var _loc2_:Object = this._1933789133hoverIndicator;
         if(_loc2_ !== param1)
         {
            this._1933789133hoverIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hoverIndicator",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get lockedColumnsSeparator() : IFactory
      {
         return this._136898894lockedColumnsSeparator;
      }
      
      [SkinPart(required="false")]
      public function set lockedColumnsSeparator(param1:IFactory) : void
      {
         var _loc2_:Object = this._136898894lockedColumnsSeparator;
         if(_loc2_ !== param1)
         {
            this._136898894lockedColumnsSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedColumnsSeparator",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get lockedRowsSeparator() : IFactory
      {
         return this._1257946590lockedRowsSeparator;
      }
      
      [SkinPart(required="false")]
      public function set lockedRowsSeparator(param1:IFactory) : void
      {
         var _loc2_:Object = this._1257946590lockedRowsSeparator;
         if(_loc2_ !== param1)
         {
            this._1257946590lockedRowsSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedRowsSeparator",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get rowBackground() : IFactory
      {
         return this._367467864rowBackground;
      }
      
      [SkinPart(required="false")]
      public function set rowBackground(param1:IFactory) : void
      {
         var _loc2_:Object = this._367467864rowBackground;
         if(_loc2_ !== param1)
         {
            this._367467864rowBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rowBackground",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get rowSeparator() : IFactory
      {
         return this._1763950123rowSeparator;
      }
      
      [SkinPart(required="false")]
      public function set rowSeparator(param1:IFactory) : void
      {
         var _loc2_:Object = this._1763950123rowSeparator;
         if(_loc2_ !== param1)
         {
            this._1763950123rowSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rowSeparator",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(required="false")]
      [Bindable(event="propertyChange")]
      public function get scroller() : spark.components.Scroller
      {
         return this._402164678scroller;
      }
      
      [SkinPart(required="false")]
      public function set scroller(param1:spark.components.Scroller) : void
      {
         var _loc2_:Object = this._402164678scroller;
         if(_loc2_ !== param1)
         {
            this._402164678scroller = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scroller",_loc2_,param1));
            }
         }
      }
      
      [SkinPart(type="mx.core.IVisualElement",required="false")]
      [Bindable(event="propertyChange")]
      public function get selectionIndicator() : IFactory
      {
         return this._627206627selectionIndicator;
      }
      
      [SkinPart(required="false")]
      public function set selectionIndicator(param1:IFactory) : void
      {
         var _loc2_:Object = this._627206627selectionIndicator;
         if(_loc2_ !== param1)
         {
            this._627206627selectionIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectionIndicator",_loc2_,param1));
            }
         }
      }
   }
}
