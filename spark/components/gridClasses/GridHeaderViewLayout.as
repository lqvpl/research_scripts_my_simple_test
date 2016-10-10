package spark.components.gridClasses
{
   import spark.layouts.supportClasses.LayoutBase;
   import spark.components.Group;
   import flash.geom.Rectangle;
   import mx.core.IVisualElement;
   import flash.utils.Dictionary;
   import mx.collections.IList;
   import mx.events.CollectionEvent;
   import spark.components.Grid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.supportClasses.GroupBase;
   import mx.core.IFactory;
   import mx.core.mx_internal;
   import spark.components.DataGrid;
   import mx.events.CollectionEventKind;
   
   use namespace mx_internal;
   
   public class GridHeaderViewLayout extends LayoutBase
   {
       
      
      private var rendererLayer:Group;
      
      private var overlayLayer:Group;
      
      private const rendererHeights:Array = [];
      
      private var maxRendererHeight:Number = 0;
      
      private const visibleRenderersBounds:Rectangle = new Rectangle();
      
      private const visibleHeaderRenderers:Vector.<spark.components.gridClasses.IGridItemRenderer> = new Vector.<spark.components.gridClasses.IGridItemRenderer>();
      
      private const visibleHeaderSeparators:Vector.<IVisualElement> = new Vector.<IVisualElement>();
      
      private var freeElementMap:Dictionary;
      
      private var elementToFactoryMap:Dictionary;
      
      private var _columnsView:IList;
      
      private var _gridColumnHeaderGroup:GridColumnHeaderGroup = null;
      
      private var _gridView:spark.components.gridClasses.GridView = null;
      
      private var createdVisualElement:Boolean = false;
      
      public function GridHeaderViewLayout()
      {
         this.freeElementMap = new Dictionary();
         this.elementToFactoryMap = new Dictionary();
         super();
      }
      
      private function get columnsView() : IList
      {
         var _loc1_:spark.components.gridClasses.GridView = null;
         _loc1_ = this.gridView;
         var _loc2_:IList = !!_loc1_?_loc1_.gridViewLayout.columnsView:null;
         if(_loc2_ != this._columnsView)
         {
            if(this._columnsView)
            {
               this._columnsView.removeEventListener(CollectionEvent.COLLECTION_CHANGE,this.columns_collectionChangeHandler);
            }
            this._columnsView = _loc2_;
            if(this._columnsView)
            {
               this._columnsView.addEventListener(CollectionEvent.COLLECTION_CHANGE,this.columns_collectionChangeHandler);
            }
         }
         return this._columnsView;
      }
      
      private function get grid() : Grid
      {
         var _loc1_:spark.components.gridClasses.GridView = this.gridView;
         return !!_loc1_?_loc1_.parent as Grid:null;
      }
      
      public function get gridColumnHeaderGroup() : GridColumnHeaderGroup
      {
         return this._gridColumnHeaderGroup;
      }
      
      public function set gridColumnHeaderGroup(param1:GridColumnHeaderGroup) : void
      {
         if(param1 == this._gridColumnHeaderGroup)
         {
            return;
         }
         this._gridColumnHeaderGroup = param1;
      }
      
      public function get gridView() : spark.components.gridClasses.GridView
      {
         return this._gridView;
      }
      
      public function set gridView(param1:spark.components.gridClasses.GridView) : void
      {
         if(param1 == this._gridView)
         {
            return;
         }
         this._gridView = param1;
      }
      
      override public function set target(param1:GroupBase) : void
      {
         super.target = param1;
         var _loc2_:Group = param1 as Group;
         if(!_loc2_)
         {
            return;
         }
         this.rendererLayer = new Group();
         this.rendererLayer.layout = new LayoutBase();
         _loc2_.addElement(this.rendererLayer);
         this.overlayLayer = new Group();
         this.overlayLayer.layout = new LayoutBase();
         _loc2_.addElement(this.overlayLayer);
      }
      
      override public function get useVirtualLayout() : Boolean
      {
         return true;
      }
      
      override public function set useVirtualLayout(param1:Boolean) : void
      {
      }
      
      override public function clearVirtualLayoutCache() : void
      {
         this.freeRenderers(this.visibleHeaderRenderers);
         this.visibleHeaderRenderers.length = 0;
         this.freeVisualElements(this.visibleHeaderSeparators);
         this.visibleHeaderSeparators.length = 0;
         this.rendererHeights.length = 0;
         this.visibleRenderersBounds.setEmpty();
         this.elementToFactoryMap = new Dictionary();
         this.freeElementMap = new Dictionary();
         if(this.gridColumnHeaderGroup)
         {
            this.gridColumnHeaderGroup.visibleSortIndicatorIndices = null;
         }
      }
      
      override protected function scrollPositionChanged() : void
      {
         var _loc1_:GroupBase = this.target;
         if(!_loc1_)
         {
            return;
         }
         super.scrollPositionChanged();
         var _loc2_:Rectangle = _loc1_.scrollRect;
         if(_loc2_ && !this.visibleRenderersBounds.containsRect(_loc2_))
         {
            _loc1_.invalidateDisplayList();
         }
      }
      
      override public function measure() : void
      {
         var _loc1_:GroupBase = null;
         _loc1_ = this.target;
         if(!_loc1_)
         {
            return;
         }
         this.updateRendererHeights();
         var _loc2_:Number = Math.max(0,_loc1_.minWidth);
         var _loc3_:Number = Math.max(this.maxRendererHeight,_loc1_.minHeight);
         _loc1_.measuredWidth = Math.ceil(_loc2_);
         _loc1_.measuredHeight = Math.ceil(_loc3_);
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc6_:Vector.<int> = null;
         var _loc7_:int = 0;
         var _loc14_:spark.components.gridClasses.IGridItemRenderer = null;
         var _loc15_:IVisualElement = null;
         var _loc16_:GridColumn = null;
         var _loc18_:IList = null;
         var _loc19_:GridViewLayout = null;
         var _loc20_:int = 0;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:int = 0;
         var _loc27_:* = false;
         var _loc28_:int = 0;
         var _loc29_:Number = NaN;
         var _loc30_:Number = NaN;
         var _loc31_:IFactory = null;
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc3_:GroupBase = this.target;
         var _loc4_:GridColumnHeaderGroup = this.gridColumnHeaderGroup;
         var _loc5_:spark.components.gridClasses.GridView = this.gridView;
         if(!_loc3_ || !_loc4_ || !_loc5_)
         {
            return;
         }
         _loc6_ = _loc5_.gridViewLayout.getVisibleColumnIndices();
         _loc7_ = _loc6_.length;
         var _loc8_:int = _loc7_ > 0?int(_loc6_[0]):-1;
         var _loc9_:int = _loc7_ > 0?int(_loc6_[_loc7_ - 1]):-1;
         var _loc10_:Array = [];
         var _loc11_:Group = this.rendererLayer;
         var _loc12_:Group = this.overlayLayer;
         var _loc13_:IFactory = _loc4_.columnSeparator;
         var _loc17_:int = -1;
         for each(_loc14_ in this.visibleHeaderRenderers)
         {
            _loc16_ = _loc14_.column;
            _loc17_ = !!_loc16_?int(_loc16_.columnIndex):-1;
            if(_loc6_.indexOf(_loc17_) != -1 && _loc10_[_loc17_] == null)
            {
               _loc10_[_loc17_] = _loc14_;
            }
            else
            {
               this.freeRenderer(_loc14_);
            }
         }
         this.visibleHeaderRenderers.length = 0;
         this.freeVisualElements(this.visibleHeaderSeparators);
         this.visibleHeaderSeparators.length = 0;
         _loc18_ = this.grid.columns;
         _loc19_ = _loc5_.layout as GridViewLayout;
         _loc20_ = _loc19_.viewColumnIndex + _loc19_.columnsView.length;
         _loc21_ = 0;
         _loc22_ = param2;
         _loc23_ = _loc3_.horizontalScrollPosition + param1;
         _loc24_ = 0;
         _loc25_ = 0;
         _loc26_ = 0;
         while(true)
         {
            if(_loc26_ < _loc6_.length)
            {
               _loc17_ = _loc6_[_loc26_];
            }
            else
            {
               _loc17_ = this.grid.getNextVisibleColumnIndex(_loc17_);
            }
            if(_loc17_ < 0 || _loc17_ >= _loc20_)
            {
               break;
            }
            _loc16_ = _loc18_.getItemAt(_loc17_) as GridColumn;
            _loc14_ = _loc10_[_loc17_];
            delete _loc10_[_loc17_];
            if(!_loc14_)
            {
               _loc31_ = _loc16_.headerRenderer;
               if(!_loc31_)
               {
                  _loc31_ = _loc4_.headerRenderer;
               }
               _loc14_ = this.allocateVisualElement(_loc31_) as spark.components.gridClasses.IGridItemRenderer;
            }
            this.visibleHeaderRenderers.push(_loc14_);
            this.initializeItemRenderer(_loc14_,_loc17_,_loc16_,true);
            if(_loc14_.parent != _loc11_)
            {
               _loc11_.addElement(_loc14_);
            }
            _loc27_ = _loc17_ == _loc9_;
            _loc28_ = _loc17_ - _loc19_.viewColumnIndex;
            _loc29_ = _loc19_.gridDimensionsView.getCellX(0,_loc28_);
            _loc30_ = this.grid.getColumnWidth(_loc17_);
            if(_loc27_)
            {
               _loc30_ = horizontalScrollPosition + param1 - _loc29_ - 1;
            }
            _loc14_.setLayoutBoundsSize(_loc30_,_loc22_);
            _loc14_.setLayoutBoundsPosition(_loc29_,_loc21_);
            if(_loc26_ == 0)
            {
               _loc24_ = _loc29_;
            }
            _loc25_ = _loc29_ + _loc30_;
            _loc14_.prepare(!this.createdVisualElement);
            if(_loc27_ || _loc29_ + _loc30_ >= _loc23_)
            {
               break;
            }
            if(_loc13_ && !_loc27_)
            {
               _loc15_ = this.allocateVisualElement(_loc13_);
               this.visibleHeaderSeparators.push(_loc15_);
               _loc15_.visible = true;
               if(_loc15_.parent != _loc12_)
               {
                  _loc12_.addElement(_loc15_);
               }
               _loc32_ = _loc15_.getPreferredBoundsWidth();
               _loc33_ = _loc29_ + _loc30_;
               _loc15_.setLayoutBoundsSize(_loc32_,_loc22_);
               _loc15_.setLayoutBoundsPosition(_loc33_,_loc21_);
            }
            _loc26_++;
         }
         _loc3_.setContentSize(this.grid.contentWidth,_loc22_);
         this.visibleRenderersBounds.left = _loc24_;
         this.visibleRenderersBounds.right = _loc25_ = 0;
         this.visibleRenderersBounds.top = _loc21_;
         this.visibleRenderersBounds.height = _loc22_;
         _loc3_.validateNow();
         this.updateRendererHeights(true);
      }
      
      public function getHeaderIndexAt(param1:Number, param2:Number) : int
      {
         return this.gridView.gridViewLayout.gridDimensionsView.getColumnIndexAt(param1,param2);
      }
      
      public function getSeparatorIndexAt(param1:Number, param2:Number) : int
      {
         var _loc3_:GridDimensionsView = null;
         var _loc7_:Number = NaN;
         _loc3_ = this.gridView.gridViewLayout.gridDimensionsView;
         var _loc4_:int = _loc3_.getColumnIndexAt(param1,param2);
         if(_loc4_ == -1)
         {
            return -1;
         }
         var _loc5_:* = _loc4_ == this.gridView.getNextVisibleColumnIndex(-1);
         var _loc6_:Boolean = false;
         _loc7_ = _loc3_.getCellX(0,_loc4_);
         var _loc8_:Number = _loc7_ + _loc3_.getColumnWidth(_loc4_);
         var _loc9_:Number = this.gridColumnHeaderGroup.getStyle("separatorAffordance");
         if(!_loc5_ && param1 > _loc7_ - _loc9_ && param1 < _loc7_ + _loc9_)
         {
            return this.grid.getPreviousVisibleColumnIndex(_loc4_);
         }
         if(!_loc6_ && param1 > _loc8_ - _loc9_ && param1 < _loc8_ + _loc9_)
         {
            return _loc4_;
         }
         return -1;
      }
      
      public function getHeaderBounds(param1:int) : Rectangle
      {
         var _loc4_:IList = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc2_:GridColumnHeaderGroup = this.gridColumnHeaderGroup;
         var _loc3_:Grid = this.grid;
         if(!_loc2_ || !_loc3_)
         {
            return null;
         }
         _loc4_ = this.columnsView;
         var _loc5_:int = !!_loc4_?int(_loc4_.length):0;
         if(param1 >= _loc5_)
         {
            return null;
         }
         var _loc6_:GridColumn = _loc4_.getItemAt(param1) as GridColumn;
         if(!_loc6_.visible)
         {
            return null;
         }
         var _loc7_:Number = _loc2_.getStyle("paddingLeft");
         var _loc8_:Number = _loc2_.getStyle("paddingRight");
         _loc9_ = _loc2_.getStyle("paddingTop");
         _loc10_ = _loc2_.getStyle("paddingBottom");
         var _loc11_:* = param1 == _loc3_.getPreviousVisibleColumnIndex(_loc5_);
         var _loc12_:Number = _loc3_.getCellX(0,param1) + _loc7_;
         var _loc13_:Number = _loc9_;
         var _loc14_:Number = _loc3_.getColumnWidth(param1);
         var _loc15_:Number = _loc2_.height - _loc9_ - _loc10_;
         if(_loc11_)
         {
            _loc14_ = horizontalScrollPosition + _loc2_.width - _loc12_ - _loc8_;
         }
         return new Rectangle(_loc12_,_loc13_,_loc14_,_loc15_);
      }
      
      public function getHeaderRendererAt(param1:int) : spark.components.gridClasses.IGridItemRenderer
      {
         var _loc5_:Vector.<int> = null;
         var _loc11_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:spark.components.gridClasses.IGridItemRenderer = null;
         var _loc2_:GridColumnHeaderGroup = this.gridColumnHeaderGroup;
         var _loc3_:Grid = this.grid;
         if(!_loc2_ || !_loc3_ || param1 < 0)
         {
            return null;
         }
         var _loc4_:Group = this.rendererLayer;
         _loc5_ = _loc3_.getVisibleColumnIndices();
         var _loc6_:int = _loc5_.indexOf(param1);
         if(_loc6_ != -1)
         {
            _loc20_ = _loc4_.numElements;
            _loc21_ = 0;
            while(_loc21_ < _loc20_)
            {
               _loc22_ = _loc4_.getElementAt(_loc21_) as spark.components.gridClasses.IGridItemRenderer;
               if(_loc22_ && _loc22_.visible && _loc22_.column && _loc22_.column.columnIndex == param1)
               {
                  return _loc22_;
               }
               _loc21_++;
            }
            return null;
         }
         var _loc7_:IList = this.columnsView;
         if(!_loc7_ || _loc7_.length <= param1)
         {
            return null;
         }
         var _loc8_:GridColumn = _loc7_.getItemAt(param1) as GridColumn;
         if(!_loc8_.visible)
         {
            return null;
         }
         var _loc9_:IFactory = _loc8_.headerRenderer;
         if(!_loc9_)
         {
            _loc9_ = _loc2_.headerRenderer;
         }
         var _loc10_:spark.components.gridClasses.IGridItemRenderer = this.allocateVisualElement(_loc9_) as spark.components.gridClasses.IGridItemRenderer;
         _loc4_.addElement(_loc10_);
         this.initializeItemRenderer(_loc10_,param1,_loc8_,_loc10_.visible);
         _loc11_ = _loc2_.getStyle("paddingLeft");
         var _loc12_:Number = _loc2_.getStyle("paddingRight");
         _loc13_ = _loc2_.getStyle("paddingTop");
         _loc14_ = _loc2_.getStyle("paddingBottom");
         var _loc15_:* = param1 == _loc3_.getPreviousVisibleColumnIndex(_loc7_.length);
         var _loc16_:Number = _loc3_.getCellX(0,param1) + _loc11_;
         var _loc17_:Number = _loc13_;
         var _loc18_:Number = _loc2_.height - _loc13_ - _loc14_;
         var _loc19_:Number = _loc3_.getColumnWidth(param1);
         if(_loc15_)
         {
            _loc19_ = horizontalScrollPosition + _loc2_.width - _loc16_ - _loc12_;
         }
         _loc10_.setLayoutBoundsSize(_loc19_,_loc18_);
         _loc10_.setLayoutBoundsPosition(_loc16_,_loc17_);
         _loc4_.removeElement(_loc10_);
         _loc10_.visible = false;
         return _loc10_;
      }
      
      private function initializeItemRenderer(param1:spark.components.gridClasses.IGridItemRenderer, param2:int, param3:GridColumn, param4:Boolean = true) : void
      {
         var _loc5_:GridColumnHeaderGroup = null;
         param1.visible = param4;
         param1.column = param3;
         param1.label = param3.headerText;
         _loc5_ = this.gridColumnHeaderGroup;
         var _loc6_:DataGrid = _loc5_.dataGrid;
         if(_loc6_)
         {
            param1.owner = _loc6_;
         }
         param1.hovered = param2 == _loc5_.hoverColumnIndex;
         param1.selected = param2 == _loc5_.selectedColumnIndex;
         param1.down = param2 == _loc5_.downColumnIndex;
      }
      
      private function createVisualElement(param1:IFactory) : IVisualElement
      {
         this.createdVisualElement = true;
         var _loc2_:IVisualElement = param1.newInstance() as IVisualElement;
         this.elementToFactoryMap[_loc2_] = param1;
         return _loc2_;
      }
      
      private function allocateVisualElement(param1:IFactory) : IVisualElement
      {
         var _loc3_:IVisualElement = null;
         this.createdVisualElement = false;
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
         return this.createVisualElement(param1);
      }
      
      private function freeVisualElement(param1:IVisualElement) : void
      {
         var _loc2_:IFactory = this.elementToFactoryMap[param1];
         var _loc3_:Vector.<IVisualElement> = this.freeElementMap[_loc2_];
         if(!_loc3_)
         {
            _loc3_ = new Vector.<IVisualElement>();
            this.freeElementMap[_loc2_] = _loc3_;
         }
         _loc3_.push(param1);
         param1.visible = false;
      }
      
      private function freeVisualElements(param1:Vector.<IVisualElement>) : void
      {
         var _loc2_:IVisualElement = null;
         for each(_loc2_ in param1)
         {
            this.freeVisualElement(_loc2_);
         }
         param1.length = 0;
      }
      
      private function freeRenderer(param1:spark.components.gridClasses.IGridItemRenderer) : void
      {
         this.freeVisualElement(param1 as IVisualElement);
         param1.discard(true);
      }
      
      private function freeRenderers(param1:Vector.<spark.components.gridClasses.IGridItemRenderer>) : void
      {
         var _loc2_:spark.components.gridClasses.IGridItemRenderer = null;
         for each(_loc2_ in param1)
         {
            this.freeRenderer(_loc2_);
         }
         param1.length = 0;
      }
      
      private function updateRendererHeights(param1:Boolean = false) : void
      {
         var _loc4_:spark.components.gridClasses.IGridItemRenderer = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc2_:IList = this.columnsView;
         this.rendererHeights.length = !!_loc2_?uint(_loc2_.length):uint(0);
         var _loc3_:Number = 0;
         for each(_loc4_ in this.visibleHeaderRenderers)
         {
            _loc5_ = _loc4_.getPreferredBoundsHeight();
            this.rendererHeights[_loc4_.column.columnIndex] = _loc5_;
            if(_loc5_ > _loc3_)
            {
               _loc3_ = _loc5_;
            }
         }
         if(_loc3_ == this.maxRendererHeight)
         {
            return;
         }
         if(_loc3_ < this.maxRendererHeight)
         {
            for each(_loc6_ in this.rendererHeights)
            {
               if(!isNaN(_loc6_) && _loc6_ > _loc3_)
               {
                  _loc3_ = _loc6_;
               }
            }
         }
         this.maxRendererHeight = _loc3_;
         if(param1)
         {
            this.gridColumnHeaderGroup.invalidateSize();
         }
      }
      
      private function columns_collectionChangeHandler(param1:CollectionEvent) : void
      {
         switch(param1.kind)
         {
            case CollectionEventKind.ADD:
               this.columns_collectionChangeAdd(param1);
               break;
            case CollectionEventKind.REMOVE:
               this.columns_collectionChangeRemove(param1);
               break;
            case CollectionEventKind.MOVE:
               this.columns_collectionChangeMove(param1);
               break;
            case CollectionEventKind.REPLACE:
            case CollectionEventKind.UPDATE:
               break;
            case CollectionEventKind.REFRESH:
            case CollectionEventKind.RESET:
               this.clearVirtualLayoutCache();
         }
      }
      
      private function columns_collectionChangeAdd(param1:CollectionEvent) : void
      {
         var _loc3_:GridColumnHeaderGroup = null;
         var _loc4_:Vector.<int> = null;
         var _loc2_:int = param1.items.length;
         if(_loc2_ <= 0)
         {
            return;
         }
         _loc3_ = this.gridColumnHeaderGroup;
         _loc4_ = _loc3_.visibleSortIndicatorIndices;
         var _loc5_:int = _loc4_.length;
         var _loc6_:int = param1.location;
         var _loc7_:int = 0;
         while(_loc7_ < _loc5_)
         {
            if(_loc4_[_loc7_] >= _loc6_)
            {
               _loc4_[_loc7_] = _loc4_[_loc7_] + _loc2_;
            }
            _loc7_++;
         }
         _loc3_.visibleSortIndicatorIndices = _loc4_;
      }
      
      private function columns_collectionChangeRemove(param1:CollectionEvent) : void
      {
         var _loc3_:GridColumnHeaderGroup = null;
         var _loc4_:Vector.<int> = null;
         var _loc6_:int = 0;
         var _loc9_:int = 0;
         var _loc2_:int = param1.items.length;
         if(_loc2_ <= 0)
         {
            return;
         }
         _loc3_ = this.gridColumnHeaderGroup;
         _loc4_ = _loc3_.visibleSortIndicatorIndices;
         var _loc5_:int = _loc4_.length;
         _loc6_ = param1.location;
         var _loc7_:int = _loc6_ + _loc2_;
         var _loc8_:Vector.<int> = new Vector.<int>();
         for each(_loc9_ in _loc4_)
         {
            if(_loc9_ < _loc6_)
            {
               _loc8_.push(_loc9_);
            }
            else if(_loc9_ >= _loc7_)
            {
               _loc8_.push(_loc9_ - _loc7_);
            }
         }
         _loc3_.visibleSortIndicatorIndices = _loc8_;
      }
      
      private function columns_collectionChangeMove(param1:CollectionEvent) : void
      {
         var _loc3_:GridColumnHeaderGroup = null;
         var _loc4_:Vector.<int> = null;
         var _loc10_:int = 0;
         var _loc2_:int = param1.items.length;
         if(_loc2_ <= 0)
         {
            return;
         }
         _loc3_ = this.gridColumnHeaderGroup;
         _loc4_ = _loc3_.visibleSortIndicatorIndices;
         var _loc5_:int = _loc4_.length;
         var _loc6_:int = param1.oldLocation;
         var _loc7_:int = param1.oldLocation + _loc2_;
         var _loc8_:int = param1.location;
         var _loc9_:int = param1.location + _loc2_;
         var _loc11_:int = 0;
         while(_loc11_ < _loc5_)
         {
            _loc10_ = _loc4_[_loc11_];
            if(_loc10_ >= _loc6_ && _loc10_ < _loc7_)
            {
               _loc4_[_loc11_] = _loc8_ + (_loc10_ - _loc6_);
            }
            else if(_loc8_ > _loc6_)
            {
               if(_loc10_ >= _loc7_ && _loc10_ < _loc9_)
               {
                  _loc4_[_loc11_] = _loc4_[_loc11_] - _loc2_;
               }
            }
            else if(_loc8_ < _loc6_)
            {
               if(_loc10_ >= _loc8_ && _loc10_ < _loc6_)
               {
                  _loc4_[_loc11_] = _loc4_[_loc11_] + _loc2_;
               }
            }
            _loc11_++;
         }
         _loc3_.visibleSortIndicatorIndices = _loc4_;
      }
   }
}
