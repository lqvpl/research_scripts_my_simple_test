package spark.components.gridClasses
{
   import mx.core.mx_internal;
   import flash.utils.Timer;
   import flash.events.Event;
   import mx.core.IVisualElement;
   import spark.components.DataGrid;
   import spark.components.Grid;
   import mx.managers.IFocusManagerComponent;
   import mx.core.IInvalidating;
   import mx.core.IIMESupport;
   import mx.managers.IFocusManager;
   import flash.events.FocusEvent;
   import spark.events.GridItemEditorEvent;
   import flash.events.KeyboardEvent;
   import spark.events.GridEvent;
   import flash.events.MouseEvent;
   import mx.events.SandboxMouseEvent;
   import flash.display.DisplayObject;
   import mx.core.IFactory;
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import mx.core.ClassFactory;
   import mx.styles.ISimpleStyleClient;
   import mx.managers.FocusManager;
   import flash.display.DisplayObjectContainer;
   import flash.ui.Keyboard;
   import mx.core.EventPriority;
   import mx.events.FlexEvent;
   import mx.core.IUIComponent;
   import flash.display.InteractiveObject;
   import flash.events.TimerEvent;
   
   use namespace mx_internal;
   
   public class DataGridEditor
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      private var doubleClickTimer:Timer;
      
      private var gotDoubleClickEvent:Boolean;
      
      private var gotFlexEnterEvent:Boolean;
      
      private var lastEvent:Event;
      
      private var lastItemClickedPosition:Object;
      
      private var lastItemDown:IVisualElement;
      
      private var lastEditedItemPosition;
      
      private var restoreFocusableChildren:Boolean = true;
      
      private var saveDataGridHasFocusableChildren:Boolean;
      
      private var saveScrollerHasFocusableChildren:Boolean;
      
      private var _dataGrid:DataGrid;
      
      private var _editedItemPosition:Object;
      
      private var inEndEdit:Boolean = false;
      
      public var itemEditorInstance:spark.components.gridClasses.IGridItemEditor;
      
      private var _editedItemRenderer:IVisualElement;
      
      public function DataGridEditor(param1:DataGrid)
      {
         super();
         this._dataGrid = param1;
      }
      
      public function get dataGrid() : DataGrid
      {
         return this._dataGrid;
      }
      
      public function get grid() : Grid
      {
         return this._dataGrid.grid;
      }
      
      public function get editedItemPosition() : Object
      {
         if(this._editedItemPosition)
         {
            return {
               "rowIndex":this._editedItemPosition.rowIndex,
               "columnIndex":this._editedItemPosition.columnIndex
            };
         }
         return this._editedItemPosition;
      }
      
      public function set editedItemPosition(param1:Object) : void
      {
         if(!param1)
         {
            this.setEditedItemPosition(null);
            return;
         }
         var _loc2_:Object = {
            "rowIndex":param1.rowIndex,
            "columnIndex":param1.columnIndex
         };
         this.setEditedItemPosition(_loc2_);
      }
      
      private function setEditedItemPosition(param1:Object) : void
      {
         if(!this.grid.enabled || !this.dataGrid.editable)
         {
            return;
         }
         if(!this.grid.dataProvider || this.grid.dataProvider.length == 0)
         {
            return;
         }
         if(this.itemEditorInstance && param1 && this.itemEditorInstance is IFocusManagerComponent && this._editedItemPosition.rowIndex == param1.rowIndex && this._editedItemPosition.columnIndex == param1.columnIndex)
         {
            IFocusManagerComponent(this.itemEditorInstance).setFocus();
            return;
         }
         if(this.itemEditorInstance)
         {
            if(!this.dataGrid.endItemEditorSession())
            {
               return;
            }
         }
         this._editedItemPosition = param1;
         if(!param1)
         {
            return;
         }
         var _loc2_:int = param1.rowIndex;
         var _loc3_:int = param1.columnIndex;
         this.dataGrid.ensureCellIsVisible(_loc2_,_loc3_);
         this.createItemEditor(_loc2_,_loc3_);
         if(this.itemEditorInstance is IInvalidating)
         {
            IInvalidating(this.itemEditorInstance).validateNow();
         }
         var _loc4_:GridColumn = this.dataGrid.columns.getItemAt(_loc3_) as GridColumn;
         if(this.itemEditorInstance is IIMESupport)
         {
            IIMESupport(this.itemEditorInstance).imeMode = _loc4_.imeMode == null?this.dataGrid.imeMode:_loc4_.imeMode;
         }
         var _loc5_:IFocusManager = this.grid.focusManager;
         if(this.itemEditorInstance is IFocusManagerComponent)
         {
            this.itemEditorInstance.removeEventListener(FocusEvent.FOCUS_OUT,this.editor_focusOutHandler);
            _loc5_.setFocus(IFocusManagerComponent(this.itemEditorInstance));
            this.itemEditorInstance.addEventListener(FocusEvent.FOCUS_OUT,this.editor_focusOutHandler);
         }
         this.lastEditedItemPosition = this._editedItemPosition;
         var _loc6_:GridItemEditorEvent = null;
         if(_loc4_.rendererIsEditable == false)
         {
            _loc6_ = new GridItemEditorEvent(GridItemEditorEvent.GRID_ITEM_EDITOR_SESSION_START);
         }
         if(_loc6_)
         {
            _loc6_.columnIndex = this.editedItemPosition.columnIndex;
            _loc6_.column = _loc4_;
            _loc6_.rowIndex = this.editedItemPosition.rowIndex;
            this.dataGrid.dispatchEvent(_loc6_);
         }
      }
      
      public function get editedItemRenderer() : IVisualElement
      {
         return this._editedItemRenderer;
      }
      
      public function get editorColumnIndex() : int
      {
         if(this.editedItemPosition)
         {
            return this.editedItemPosition.columnIndex;
         }
         return -1;
      }
      
      public function get editorRowIndex() : int
      {
         if(this.editedItemPosition)
         {
            return this.editedItemPosition.rowIndex;
         }
         return -1;
      }
      
      public function initialize() : void
      {
         var _loc1_:Grid = this.dataGrid.grid;
         this.dataGrid.addEventListener(KeyboardEvent.KEY_DOWN,this.dataGrid_keyboardDownHandler);
         _loc1_.addEventListener(GridEvent.GRID_MOUSE_DOWN,this.grid_gridMouseDownHandler,false,1000);
         _loc1_.addEventListener(GridEvent.GRID_MOUSE_UP,this.grid_gridMouseUpHandler,false,1000);
         _loc1_.addEventListener(GridEvent.GRID_DOUBLE_CLICK,this.grid_gridDoubleClickHandler);
         _loc1_.addEventListener(MouseEvent.MOUSE_WHEEL,this.grid_gridMouseWheelHandler,false,0);
      }
      
      public function uninitialize() : void
      {
         this.grid.removeEventListener(KeyboardEvent.KEY_DOWN,this.dataGrid_keyboardDownHandler);
         this.grid.removeEventListener(GridEvent.GRID_MOUSE_DOWN,this.grid_gridMouseDownHandler);
         this.grid.removeEventListener(GridEvent.GRID_MOUSE_UP,this.grid_gridMouseUpHandler);
         this.grid.removeEventListener(GridEvent.GRID_DOUBLE_CLICK,this.grid_gridDoubleClickHandler);
         this.grid.removeEventListener(MouseEvent.MOUSE_WHEEL,this.grid_gridMouseWheelHandler);
      }
      
      mx_internal function destroyItemEditor() : void
      {
         var _loc1_:IVisualElement = null;
         if(this.grid.root)
         {
            this.grid.systemManager.removeEventListener(Event.DEACTIVATE,this.deactivateHandler);
         }
         this.grid.systemManager.getSandboxRoot().removeEventListener(MouseEvent.MOUSE_DOWN,this.sandBoxRoot_mouseDownHandler,true);
         this.grid.systemManager.getSandboxRoot().removeEventListener(SandboxMouseEvent.MOUSE_DOWN_SOMEWHERE,this.sandBoxRoot_mouseDownHandler);
         this.grid.systemManager.removeEventListener(Event.RESIZE,this.editorAncestorResizeHandler);
         this.dataGrid.removeEventListener(Event.RESIZE,this.editorAncestorResizeHandler);
         if(this.itemEditorInstance || this.editedItemRenderer)
         {
            if(this.itemEditorInstance)
            {
               this.itemEditorInstance.discard();
            }
            _loc1_ = !!this.itemEditorInstance?this.itemEditorInstance:this.editedItemRenderer;
            _loc1_.removeEventListener(KeyboardEvent.KEY_DOWN,this.editor_keyDownHandler);
            _loc1_.removeEventListener(FocusEvent.FOCUS_OUT,this.editor_focusOutHandler);
            _loc1_.removeEventListener(Event.REMOVED_FROM_STAGE,this.editor_removedFromStageHandler);
            _loc1_.removeEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.editor_keyFocusChangeHandler);
            this.addRemoveFlexEventEnterListener(DisplayObject(_loc1_),false);
            if(this.grid.focusManager)
            {
               this.grid.focusManager.defaultButtonEnabled = true;
            }
            this.dataGrid.setFocus();
            if(this.itemEditorInstance)
            {
               this.grid.removeElement(this.itemEditorInstance);
            }
            else
            {
               this.grid.invalidateDisplayList();
            }
            if(this.restoreFocusableChildren)
            {
               this.restoreFocusableChildrenFlags();
            }
            this.itemEditorInstance = null;
            this._editedItemRenderer = null;
            this._editedItemPosition = null;
         }
      }
      
      mx_internal function createItemEditor(param1:int, param2:int) : void
      {
         var _loc7_:IFactory = null;
         var _loc8_:Class = null;
         var _loc9_:IEventDispatcher = null;
         if(param2 >= this.grid.columns.length)
         {
            return;
         }
         var _loc3_:GridColumn = this.grid.columns.getItemAt(param2) as GridColumn;
         var _loc4_:IGridItemRenderer = this.grid.getItemRendererAt(param1,param2);
         var _loc5_:Rectangle = this.grid.getCellBounds(param1,param2);
         var _loc6_:Point = _loc5_.topLeft;
         this._editedItemRenderer = _loc4_;
         if(this.restoreFocusableChildren)
         {
            this.saveDataGridHasFocusableChildren = this.dataGrid.hasFocusableChildren;
         }
         this.dataGrid.hasFocusableChildren = true;
         if(this.dataGrid.scroller)
         {
            _loc6_.x = _loc6_.x - this.grid.horizontalScrollPosition;
            _loc6_.y = _loc6_.y - this.grid.verticalScrollPosition;
            if(this.restoreFocusableChildren)
            {
               this.saveScrollerHasFocusableChildren = this.dataGrid.scroller.hasFocusableChildren;
            }
            this.dataGrid.scroller.hasFocusableChildren = true;
         }
         this.restoreFocusableChildren = true;
         if(!_loc3_.rendererIsEditable)
         {
            _loc7_ = _loc3_.itemEditor;
            if(!_loc7_)
            {
               _loc7_ = this.dataGrid.itemEditor;
            }
            if(!_loc7_)
            {
               _loc7_ = GridColumn.defaultItemEditorFactory;
            }
            if(_loc7_ == GridColumn.defaultItemEditorFactory)
            {
               _loc8_ = this.dataGrid.getStyle("defaultDataGridItemEditor");
               if(_loc8_)
               {
                  _loc7_ = _loc3_.itemEditor = new ClassFactory(_loc8_);
               }
            }
            this.itemEditorInstance = _loc7_.newInstance();
            this.itemEditorInstance.owner = this.dataGrid;
            this.itemEditorInstance.rowIndex = param1;
            this.itemEditorInstance.column = _loc3_;
            this.itemEditorInstance.hasFocusableChildren = true;
            if(this.itemEditorInstance is ISimpleStyleClient)
            {
               ISimpleStyleClient(this.itemEditorInstance).styleName = _loc4_;
            }
            this.grid.addElement(this.itemEditorInstance);
            this.itemEditorInstance.data = _loc4_.data;
            this.itemEditorInstance.width = _loc5_.width + 1;
            this.itemEditorInstance.height = _loc5_.height + 1;
            this.itemEditorInstance.setLayoutBoundsPosition(_loc6_.x,_loc6_.y);
            if(this.itemEditorInstance is IInvalidating)
            {
               IInvalidating(this.itemEditorInstance).validateNow();
            }
            this.itemEditorInstance.prepare();
            this.itemEditorInstance.visible = true;
         }
         else
         {
            this.setFocusInItemRenderer(_loc4_);
         }
         if(this.itemEditorInstance || this.editedItemRenderer)
         {
            _loc9_ = !!this.itemEditorInstance?this.itemEditorInstance:this.editedItemRenderer;
            _loc9_.addEventListener(FocusEvent.FOCUS_OUT,this.editor_focusOutHandler);
            _loc9_.addEventListener(Event.REMOVED_FROM_STAGE,this.editor_removedFromStageHandler);
            _loc9_.addEventListener(KeyboardEvent.KEY_DOWN,this.editor_keyDownHandler);
            _loc9_.addEventListener(FocusEvent.KEY_FOCUS_CHANGE,this.editor_keyFocusChangeHandler,false,1000);
            this.addRemoveFlexEventEnterListener(DisplayObject(_loc9_),true);
         }
         if(this.grid.focusManager)
         {
            this.grid.focusManager.defaultButtonEnabled = false;
         }
         this.grid.invalidateDisplayList();
         if(this.grid.root)
         {
            this.grid.systemManager.addEventListener(Event.DEACTIVATE,this.deactivateHandler,false,0,true);
         }
         this.grid.systemManager.getSandboxRoot().addEventListener(MouseEvent.MOUSE_DOWN,this.sandBoxRoot_mouseDownHandler,true,0,true);
         this.grid.systemManager.getSandboxRoot().addEventListener(SandboxMouseEvent.MOUSE_DOWN_SOMEWHERE,this.sandBoxRoot_mouseDownHandler,false,0,true);
         this.grid.systemManager.addEventListener(Event.RESIZE,this.editorAncestorResizeHandler);
         this.grid.addEventListener(Event.RESIZE,this.editorAncestorResizeHandler);
      }
      
      private function setFocusInItemRenderer(param1:IGridItemRenderer) : void
      {
         var _loc2_:FocusManager = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         var _loc5_:Boolean = false;
         var _loc6_:DisplayObject = null;
         if(this.grid.focusManager && this.grid.focusManager is FocusManager)
         {
            _loc2_ = this.grid.focusManager as FocusManager;
            _loc3_ = param1 as DisplayObject;
            _loc4_ = null;
            _loc5_ = false;
            do
            {
               _loc2_.fauxFocus = _loc3_;
               _loc3_ = _loc2_.getNextFocusManagerComponent(false) as DisplayObject;
               if(_loc3_ == param1 || param1 is DisplayObjectContainer && DisplayObjectContainer(param1).contains(_loc3_))
               {
                  _loc5_ = true;
                  break;
               }
               if(!_loc4_)
               {
                  _loc4_ = _loc3_;
               }
               else if(_loc4_ == _loc3_)
               {
                  break;
               }
            }
            while(_loc3_ && this.dataGrid.contains(_loc3_));
            
            if(_loc5_ && this.wasLastEventMovingBackward())
            {
               _loc6_ = _loc3_;
               do
               {
                  _loc2_.fauxFocus = _loc3_;
                  _loc6_ = _loc3_;
                  _loc3_ = _loc2_.getNextFocusManagerComponent(false) as DisplayObject;
               }
               while(_loc3_ && DisplayObjectContainer(param1).contains(_loc3_));
               
               _loc3_ = _loc6_;
            }
            _loc2_.fauxFocus = null;
            if(_loc5_)
            {
               _loc2_.setFocus(IFocusManagerComponent(_loc3_));
               _loc2_.showFocus();
            }
         }
      }
      
      private function wasLastEventMovingBackward() : Boolean
      {
         if(this.lastEvent)
         {
            if(this.lastEvent.type == FocusEvent.KEY_FOCUS_CHANGE && FocusEvent(this.lastEvent).shiftKey)
            {
               return true;
            }
            if(this.lastEvent.type == KeyboardEvent.KEY_DOWN && KeyboardEvent(this.lastEvent).keyCode == Keyboard.TAB && KeyboardEvent(this.lastEvent).shiftKey)
            {
               return true;
            }
         }
         return false;
      }
      
      public function startItemEditorSession(param1:int, param2:int) : Boolean
      {
         if(!this.isValidCellPosition(param1,param2))
         {
            return false;
         }
         this.dataGrid.addEventListener(GridItemEditorEvent.GRID_ITEM_EDITOR_SESSION_STARTING,this.dataGrid_gridItemEditorSessionStartingHandler,false,EventPriority.DEFAULT_HANDLER);
         var _loc3_:GridColumn = this.grid.columns.getItemAt(param2) as GridColumn;
         if(!_loc3_ || !_loc3_.visible)
         {
            return false;
         }
         var _loc4_:GridItemEditorEvent = new GridItemEditorEvent(GridItemEditorEvent.GRID_ITEM_EDITOR_SESSION_STARTING,false,true);
         _loc4_.rowIndex = Math.min(param1,this.grid.dataProvider.length - 1);
         _loc4_.columnIndex = Math.min(param2,this.grid.columns.length - 1);
         _loc4_.column = _loc3_;
         var _loc5_:Boolean = false;
         if(_loc3_.rendererIsEditable == true)
         {
            this.dataGrid_gridItemEditorSessionStartingHandler(_loc4_);
            _loc5_ = true;
         }
         else
         {
            _loc5_ = this.dataGrid.dispatchEvent(_loc4_);
         }
         if(_loc5_)
         {
            this.lastEditedItemPosition = {
               "columnIndex":param2,
               "rowIndex":param1
            };
            this.dataGrid.grid.caretRowIndex = param1;
            this.dataGrid.grid.caretColumnIndex = param2;
         }
         this.restoreFocusableChildren = true;
         this.dataGrid.removeEventListener(GridItemEditorEvent.GRID_ITEM_EDITOR_SESSION_STARTING,this.dataGrid_gridItemEditorSessionStartingHandler);
         return _loc5_;
      }
      
      public function endItemEditorSession(param1:Boolean = false) : Boolean
      {
         if(param1)
         {
            this.cancelEdit();
            return false;
         }
         return this.endEdit();
      }
      
      mx_internal function cancelEdit() : Boolean
      {
         if(this.itemEditorInstance)
         {
            if(this.itemEditorInstance.cancel())
            {
               this.dispatchCancelEvent();
               this.destroyItemEditor();
            }
            else
            {
               return false;
            }
         }
         else if(this.editedItemRenderer)
         {
            this.destroyItemEditor();
         }
         return true;
      }
      
      private function dispatchCancelEvent() : void
      {
         var _loc1_:GridItemEditorEvent = new GridItemEditorEvent(GridItemEditorEvent.GRID_ITEM_EDITOR_SESSION_CANCEL);
         _loc1_.columnIndex = this.editedItemPosition.columnIndex;
         _loc1_.column = this.itemEditorInstance.column;
         _loc1_.rowIndex = this.editedItemPosition.rowIndex;
         this.dataGrid.dispatchEvent(_loc1_);
      }
      
      private function endEdit() : Boolean
      {
         if(!this.itemEditorInstance && this.editedItemRenderer)
         {
            this.inEndEdit = true;
            this.destroyItemEditor();
            this.inEndEdit = false;
            return true;
         }
         if(!this.itemEditorInstance)
         {
            return false;
         }
         this.inEndEdit = true;
         var _loc1_:Object = this.editedItemPosition;
         if(!this.saveItemEditorSession())
         {
            if(this.itemEditorInstance.cancel())
            {
               this.dispatchCancelEvent();
            }
            this.inEndEdit = false;
            return false;
         }
         var _loc2_:GridItemEditorEvent = new GridItemEditorEvent(GridItemEditorEvent.GRID_ITEM_EDITOR_SESSION_SAVE);
         _loc2_.columnIndex = _loc1_.columnIndex;
         _loc2_.column = this.dataGrid.columns.getItemAt(_loc1_.columnIndex) as GridColumn;
         _loc2_.rowIndex = _loc1_.rowIndex;
         this.dataGrid.dispatchEvent(_loc2_);
         this.inEndEdit = false;
         return true;
      }
      
      private function saveItemEditorSession() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this.itemEditorInstance)
         {
            _loc1_ = this.itemEditorInstance.save();
            if(_loc1_)
            {
               this.destroyItemEditor();
            }
         }
         return _loc1_;
      }
      
      private function openEditorInNextEditableCell(param1:int, param2:int, param3:Boolean) : Boolean
      {
         var _loc4_:Point = new Point(param1,param2);
         var _loc5_:Boolean = false;
         do
         {
            _loc4_ = this.getNextEditableCell(_loc4_.x,_loc4_.y,param3);
            if(_loc4_)
            {
               _loc5_ = this.dataGrid.startItemEditorSession(_loc4_.x,_loc4_.y);
            }
         }
         while(_loc4_ && !_loc5_);
         
         return _loc5_;
      }
      
      private function getNextEditableCell(param1:int, param2:int, param3:Boolean) : Point
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:int = !!param3?-1:1;
         while(true)
         {
            _loc5_ = param2 + _loc4_;
            if(_loc5_ >= 0 && _loc5_ < this.dataGrid.columns.length)
            {
               param2 = param2 + _loc4_;
            }
            else
            {
               param2 = !!param3?int(this.dataGrid.grid.columns.length - 1):0;
               _loc6_ = param1 + _loc4_;
               if(_loc6_ >= 0 && _loc6_ < this.dataGrid.dataProvider.length)
               {
                  param1 = param1 + _loc4_;
               }
               else
               {
                  break;
               }
            }
            if(this.canEditColumn(param2))
            {
               return new Point(param1,param2);
            }
         }
         return null;
      }
      
      private function canEditColumn(param1:int) : Boolean
      {
         var _loc2_:GridColumn = this.grid.columns.getItemAt(param1) as GridColumn;
         return this.dataGrid.editable && _loc2_.editable && _loc2_.visible;
      }
      
      private function wasCellPreviouslySelected(param1:int, param2:int) : Boolean
      {
         if(this.dataGrid.isRowSelectionMode())
         {
            return this.dataGrid.selectionContainsIndex(param1);
         }
         if(this.dataGrid.isCellSelectionMode())
         {
            return this.dataGrid.selectionContainsCell(param1,param2);
         }
         return false;
      }
      
      private function isValidCellPosition(param1:int, param2:int) : Boolean
      {
         if(param1 >= 0 && param1 < this.dataGrid.dataProvider.length && param2 >= 0 && param2 < this.dataGrid.columns.length)
         {
            return true;
         }
         return false;
      }
      
      private function addRemoveFlexEventEnterListener(param1:DisplayObject, param2:Boolean) : void
      {
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:DisplayObject = null;
         if(param2)
         {
            param1.addEventListener(FlexEvent.ENTER,this.editor_enterHandler);
         }
         else
         {
            param1.removeEventListener(FlexEvent.ENTER,this.editor_enterHandler);
         }
         if(param1 is DisplayObjectContainer)
         {
            _loc3_ = DisplayObjectContainer(param1);
            _loc4_ = _loc3_.numChildren;
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc6_ = _loc3_.getChildAt(_loc5_);
               if(_loc6_ is DisplayObjectContainer)
               {
                  this.addRemoveFlexEventEnterListener(_loc6_,param2);
               }
               else if(param2)
               {
                  _loc6_.addEventListener(FlexEvent.ENTER,this.editor_enterHandler);
               }
               else
               {
                  _loc6_.removeEventListener(FlexEvent.ENTER,this.editor_enterHandler);
               }
               _loc5_++;
            }
         }
      }
      
      private function editorOwnsClick(param1:Event) : Boolean
      {
         var _loc2_:IUIComponent = null;
         if(param1 is MouseEvent)
         {
            _loc2_ = this.getIUIComponent(DisplayObject(param1.target));
            if(_loc2_)
            {
               return this.editorOwns(_loc2_);
            }
         }
         return false;
      }
      
      private function editorOwns(param1:IUIComponent) : Boolean
      {
         return this.itemEditorInstance && (this.itemEditorInstance == param1 || IUIComponent(this.itemEditorInstance).owns(DisplayObject(param1))) || this.editedItemRenderer && (this.editedItemRenderer == param1 || IUIComponent(this.editedItemRenderer).owns(DisplayObject(param1)));
      }
      
      private function getIUIComponent(param1:DisplayObject) : IUIComponent
      {
         if(param1 is IUIComponent)
         {
            return IUIComponent(param1);
         }
         var _loc2_:DisplayObject = param1.parent;
         while(_loc2_)
         {
            if(_loc2_ is IUIComponent)
            {
               return IUIComponent(_loc2_);
            }
            _loc2_ = _loc2_.parent;
         }
         return null;
      }
      
      private function restoreFocusableChildrenFlags() : void
      {
         this.dataGrid.hasFocusableChildren = this.saveDataGridHasFocusableChildren;
         if(this.dataGrid.scroller)
         {
            this.dataGrid.scroller.hasFocusableChildren = this.saveScrollerHasFocusableChildren;
         }
      }
      
      private function getEditorActivationMouseEvent(param1:int) : String
      {
         var _loc3_:GridColumn = null;
         var _loc2_:String = null;
         if(param1 >= 0 && param1 < this.dataGrid.columns.length)
         {
            _loc3_ = this.grid.columns.getItemAt(param1) as GridColumn;
            _loc2_ = _loc3_.editorActivationMouseEvent;
         }
         if(!_loc2_)
         {
            _loc2_ = this.dataGrid.editorActivationMouseEvent;
         }
         return _loc2_;
      }
      
      private function dataGrid_gridItemEditorSessionStartingHandler(param1:GridItemEditorEvent) : void
      {
         if(!param1.isDefaultPrevented())
         {
            this.setEditedItemPosition({
               "columnIndex":param1.column.columnIndex,
               "rowIndex":param1.rowIndex
            });
         }
         else if(!this.itemEditorInstance)
         {
            this._editedItemPosition = null;
            this.dataGrid.setFocus();
         }
      }
      
      private function dataGrid_keyboardDownHandler(param1:KeyboardEvent) : void
      {
         var _loc2_:Point = null;
         var _loc3_:int = 0;
         if(!this.dataGrid.editable || this.dataGrid.selectionMode == GridSelectionMode.NONE)
         {
            return;
         }
         if(param1.isDefaultPrevented())
         {
            return;
         }
         this.lastEvent = param1;
         if(param1.keyCode == this.dataGrid.editKey)
         {
            if(this.itemEditorInstance)
            {
               return;
            }
            _loc2_ = null;
            if(this.dataGrid.isRowSelectionMode())
            {
               _loc3_ = !!this.lastEditedItemPosition?int(this.lastEditedItemPosition.columnIndex):0;
               this.openEditorInNextEditableCell(this.dataGrid.grid.caretRowIndex,_loc3_ - 1,false);
               return;
            }
            if(this.canEditColumn(this.grid.caretColumnIndex))
            {
               this.dataGrid.startItemEditorSession(this.grid.caretRowIndex,this.grid.caretColumnIndex);
            }
         }
      }
      
      private function grid_gridMouseDownHandler(param1:GridEvent) : void
      {
         this.gotDoubleClickEvent = false;
         if(!this.dataGrid.editable || this.editorOwnsClick(param1))
         {
            return;
         }
         if(!this.isValidCellPosition(param1.rowIndex,param1.columnIndex))
         {
            return;
         }
         this.lastEvent = param1;
         var _loc2_:int = param1.rowIndex;
         var _loc3_:int = param1.columnIndex;
         var _loc4_:IGridItemRenderer = param1.itemRenderer;
         this.lastItemDown = null;
         if(param1.shiftKey || param1.ctrlKey)
         {
            return;
         }
         if(this.itemEditorInstance)
         {
            if(!this.dataGrid.endItemEditorSession())
            {
               this.dataGrid.endItemEditorSession(true);
            }
            return;
         }
         var _loc5_:String = this.getEditorActivationMouseEvent(_loc3_);
         if(_loc5_ != GridItemEditorActivationMouseEvent.SINGLE_CLICK && _loc5_ != GridItemEditorActivationMouseEvent.SINGLE_CLICK_ON_SELECTED_CELL)
         {
            return;
         }
         var _loc6_:GridColumn = this.dataGrid.columns.getItemAt(_loc3_) as GridColumn;
         if(_loc4_ && (_loc6_.rendererIsEditable || this.wasCellPreviouslySelected(_loc2_,_loc3_) && _loc5_ == GridItemEditorActivationMouseEvent.SINGLE_CLICK_ON_SELECTED_CELL || _loc5_ == GridItemEditorActivationMouseEvent.SINGLE_CLICK))
         {
            this.lastItemDown = _loc4_;
         }
      }
      
      private function grid_gridMouseUpHandler(param1:GridEvent) : void
      {
         if(!this.dataGrid.editable)
         {
            return;
         }
         if(!this.isValidCellPosition(param1.rowIndex,param1.columnIndex))
         {
            return;
         }
         this.lastEvent = param1;
         var _loc2_:int = param1.rowIndex;
         var _loc3_:int = param1.columnIndex;
         if(this.dataGrid.selectionLength != 1)
         {
            return;
         }
         var _loc4_:int = _loc2_;
         var _loc5_:int = _loc3_;
         var _loc6_:String = this.getEditorActivationMouseEvent(_loc5_);
         if(_loc6_ != GridItemEditorActivationMouseEvent.SINGLE_CLICK && _loc6_ != GridItemEditorActivationMouseEvent.SINGLE_CLICK_ON_SELECTED_CELL)
         {
            return;
         }
         var _loc7_:IVisualElement = param1.itemRenderer;
         if(_loc7_ && _loc7_ != this.editedItemRenderer && this.lastItemDown && this.lastItemDown == _loc7_)
         {
            if(_loc5_ >= 0)
            {
               if(this.grid.columns.getItemAt(_loc5_).editable)
               {
                  if(this.doubleClickTimer)
                  {
                     if(_loc4_ == this.lastItemClickedPosition.rowIndex && _loc5_ == this.lastItemClickedPosition.columnIndex)
                     {
                        this.lastItemDown == null;
                        return;
                     }
                     this.doubleClickTimer.stop();
                     this.doubleClickTimer = null;
                  }
                  this.lastItemClickedPosition = {
                     "columnIndex":_loc5_,
                     "rowIndex":_loc4_
                  };
                  if(this.dataGrid.editOnDoubleClick || InteractiveObject(this.lastItemDown).doubleClickEnabled == false)
                  {
                     this.dataGrid.startItemEditorSession(_loc4_,_loc5_);
                  }
                  else
                  {
                     this.doubleClickTimer = new Timer(this.dataGrid.doubleClickTime,1);
                     this.doubleClickTimer.addEventListener(TimerEvent.TIMER,this.doubleClickTimerHandler);
                     this.doubleClickTimer.start();
                  }
               }
            }
         }
         this.lastItemDown = null;
      }
      
      protected function grid_gridMouseWheelHandler(param1:MouseEvent) : void
      {
         this.endEdit();
      }
      
      private function grid_gridDoubleClickHandler(param1:GridEvent) : void
      {
         if(!this.dataGrid.editable)
         {
            return;
         }
         if(!this.isValidCellPosition(param1.rowIndex,param1.columnIndex))
         {
            return;
         }
         this.lastEvent = param1;
         this.gotDoubleClickEvent = true;
         var _loc2_:String = this.getEditorActivationMouseEvent(param1.columnIndex);
         if(_loc2_ == GridItemEditorActivationMouseEvent.DOUBLE_CLICK)
         {
            this.dataGrid.startItemEditorSession(param1.rowIndex,param1.columnIndex);
         }
      }
      
      private function doubleClickTimerHandler(param1:TimerEvent) : void
      {
         this.doubleClickTimer.removeEventListener(TimerEvent.TIMER,this.doubleClickTimerHandler);
         this.doubleClickTimer = null;
         if(!this.gotDoubleClickEvent)
         {
            this.dataGrid.startItemEditorSession(this.lastItemClickedPosition.rowIndex,this.lastItemClickedPosition.columnIndex);
         }
         this.gotDoubleClickEvent = false;
      }
      
      private function deactivateHandler(param1:Event) : void
      {
         if(this.itemEditorInstance || this.editedItemRenderer)
         {
            if(!this.dataGrid.endItemEditorSession())
            {
               this.dataGrid.endItemEditorSession(true);
            }
            this.dataGrid.setFocus();
         }
      }
      
      private function editor_removedFromStageHandler(param1:Event) : void
      {
         if(this.itemEditorInstance || this.editedItemRenderer)
         {
            if(!this.dataGrid.endItemEditorSession())
            {
               this.dataGrid.endItemEditorSession(true);
            }
         }
      }
      
      private function editor_focusOutHandler(param1:FocusEvent) : void
      {
         var _loc2_:IUIComponent = null;
         if(param1.relatedObject)
         {
            _loc2_ = this.getIUIComponent(param1.relatedObject);
            if(_loc2_ && this.editorOwns(_loc2_))
            {
               return;
            }
         }
         if(!param1.relatedObject)
         {
            return;
         }
         if(this.itemEditorInstance || this.editedItemRenderer)
         {
            if(!this.dataGrid.endItemEditorSession())
            {
               this.dataGrid.endItemEditorSession(true);
            }
         }
      }
      
      private function editor_enterHandler(param1:Event) : void
      {
         if(param1 is FlexEvent)
         {
            this.gotFlexEnterEvent = true;
         }
      }
      
      private function editor_keyDownHandler(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1.isDefaultPrevented())
         {
            if(!(param1.charCode == Keyboard.ENTER && this.gotFlexEnterEvent))
            {
               this.gotFlexEnterEvent = false;
               return;
            }
         }
         this.gotFlexEnterEvent = false;
         if(param1.keyCode == Keyboard.ESCAPE)
         {
            this.cancelEdit();
         }
         else if(param1.ctrlKey && param1.charCode == 46)
         {
            this.cancelEdit();
         }
         else if(param1.charCode == Keyboard.ENTER && param1.keyCode != 229)
         {
            if(!this._editedItemPosition)
            {
               return;
            }
            if(param1.ctrlKey || param1.ctrlKey && param1.shiftKey)
            {
               this.restoreFocusableChildren = false;
            }
            if(this.dataGrid.endItemEditorSession())
            {
               if(this.grid.focusManager)
               {
                  this.grid.focusManager.defaultButtonEnabled = false;
               }
               if(param1.ctrlKey || param1.ctrlKey && param1.shiftKey)
               {
                  _loc2_ = !!this.lastEditedItemPosition?int(this.lastEditedItemPosition.rowIndex):0;
                  _loc3_ = !!this.lastEditedItemPosition?int(this.lastEditedItemPosition.columnIndex):0;
                  if(param1.shiftKey)
                  {
                     _loc2_--;
                  }
                  else
                  {
                     _loc2_ = _loc2_ + 1;
                  }
                  if(_loc2_ >= 0 && _loc2_ < this.dataGrid.dataProvider.length)
                  {
                     if(!this.openEditorInNextEditableCell(_loc2_,_loc3_ - 1,false))
                     {
                        this.restoreFocusableChildren = true;
                        this.restoreFocusableChildrenFlags();
                     }
                  }
               }
            }
         }
         if(!param1.ctrlKey)
         {
            param1.stopPropagation();
         }
      }
      
      private function editor_keyFocusChangeHandler(param1:FocusEvent) : void
      {
         var _loc2_:IFocusManagerComponent = null;
         this.lastEvent = param1;
         if(this.itemEditorInstance || this.editedItemRenderer)
         {
            if(param1.isDefaultPrevented())
            {
               return;
            }
            _loc2_ = this.grid.focusManager.getNextFocusManagerComponent(param1.shiftKey);
            if(_loc2_ == this.itemEditorInstance || this.itemEditorInstance && !DisplayObjectContainer(this.itemEditorInstance).contains(DisplayObject(_loc2_)) || !this.itemEditorInstance && (_loc2_ == this.editedItemRenderer || this.editedItemRenderer && !DisplayObjectContainer(this.editedItemRenderer).contains(DisplayObject(_loc2_))))
            {
               param1.preventDefault();
               this.restoreFocusableChildren = false;
               this.dataGrid.endItemEditorSession();
               if(!this.openEditorInNextEditableCell(this.lastEditedItemPosition.rowIndex,this.lastEditedItemPosition.columnIndex,param1.shiftKey))
               {
                  this.restoreFocusableChildren = true;
                  this.restoreFocusableChildrenFlags();
               }
            }
         }
      }
      
      private function editorAncestorResizeHandler(param1:Event) : void
      {
         if(!this.dataGrid.endItemEditorSession())
         {
            this.dataGrid.endItemEditorSession(true);
         }
      }
      
      private function sandBoxRoot_mouseDownHandler(param1:Event) : void
      {
         if(this.editorOwnsClick(param1))
         {
            return;
         }
         if(this.dataGrid.scroller && this.dataGrid.scroller.contains(DisplayObject(param1.target)) && !this.grid.contains(DisplayObject(param1.target)))
         {
            return;
         }
         if(!this.dataGrid.endItemEditorSession())
         {
            this.dataGrid.endItemEditorSession(true);
         }
         if(!this.itemEditorInstance)
         {
            this.dataGrid.setFocus();
         }
      }
   }
}
