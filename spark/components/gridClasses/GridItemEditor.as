package spark.components.gridClasses
{
   import spark.components.Group;
   import mx.core.mx_internal;
   import spark.components.DataGrid;
   import mx.core.IIMESupport;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.collections.ISort;
   import mx.collections.ICollectionView;
   import flash.utils.describeType;
   import mx.core.IVisualElementContainer;
   import mx.core.IVisualElement;
   import mx.validators.IValidatorListener;
   import mx.core.IInvalidating;
   import flash.geom.Point;
   
   use namespace mx_internal;
   
   public class GridItemEditor extends Group implements IGridItemEditor
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      private var _column:spark.components.gridClasses.GridColumn;
      
      private var _data:Object = null;
      
      private var _imeMode:String = null;
      
      private var _itemRenderer:spark.components.gridClasses.IGridItemRenderer;
      
      private var _rowIndex:int;
      
      private var _value:Object;
      
      public function GridItemEditor()
      {
         super();
      }
      
      public function get column() : spark.components.gridClasses.GridColumn
      {
         return this._column;
      }
      
      public function set column(param1:spark.components.gridClasses.GridColumn) : void
      {
         this._column = param1;
      }
      
      public function get columnIndex() : int
      {
         return this.column.columnIndex;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:Array = null;
         this._data = param1;
         if(this._data && this.column.dataField)
         {
            _loc2_ = this.column.dataFieldPath;
            this.value = this.column.dataFieldPath.length == 1?this._data[this.column.dataField]:this.column.itemToString(this._data,_loc2_,null,null);
         }
      }
      
      public function get dataGrid() : DataGrid
      {
         return DataGrid(owner);
      }
      
      public function get enableIME() : Boolean
      {
         return true;
      }
      
      public function get imeMode() : String
      {
         return this._imeMode;
      }
      
      public function set imeMode(param1:String) : void
      {
         var _loc4_:IIMESupport = null;
         this._imeMode = param1;
         var _loc2_:int = numElements;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = getElementAt(_loc3_) as IIMESupport;
            if(_loc4_)
            {
               _loc4_.imeMode = param1;
            }
            _loc3_++;
         }
      }
      
      public function get itemRenderer() : spark.components.gridClasses.IGridItemRenderer
      {
         return this._itemRenderer;
      }
      
      public function set itemRenderer(param1:spark.components.gridClasses.IGridItemRenderer) : void
      {
         this._itemRenderer = param1;
      }
      
      public function get rowIndex() : int
      {
         return this._rowIndex;
      }
      
      public function set rowIndex(param1:int) : void
      {
         this._rowIndex = param1;
      }
      
      [Bindable("valueChanged")]
      public function get value() : Object
      {
         return this._value;
      }
      
      public function set value(param1:Object) : void
      {
         if(param1 != this.value)
         {
            this._value = param1;
            if(hasEventListener("valueChanged"))
            {
               dispatchEvent(new Event("valueChanged"));
            }
         }
      }
      
      public function discard() : void
      {
         this.clearErrorStringFromContainer(this);
         removeEventListener(MouseEvent.MOUSE_UP,this.mouseUpDownMoveHandler);
         removeEventListener(MouseEvent.MOUSE_DOWN,this.mouseUpDownMoveHandler);
         removeEventListener(MouseEvent.MOUSE_MOVE,this.mouseMoveHandler);
      }
      
      public function prepare() : void
      {
         addEventListener(MouseEvent.MOUSE_UP,this.mouseUpDownMoveHandler);
         addEventListener(MouseEvent.MOUSE_DOWN,this.mouseUpDownMoveHandler);
         addEventListener(MouseEvent.MOUSE_MOVE,this.mouseMoveHandler);
      }
      
      public function save() : Boolean
      {
         var _loc2_:String = null;
         var _loc7_:XML = null;
         var _loc8_:String = null;
         var _loc9_:ISort = null;
         var _loc10_:Object = null;
         var _loc11_:ICollectionView = null;
         if(!this.validate())
         {
            return false;
         }
         this.dataGrid.setFocus();
         var _loc1_:Object = this.value;
         var _loc3_:Object = this.data;
         var _loc4_:String = "";
         var _loc5_:Array = this.column.dataFieldPath;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_.length - 1)
         {
            _loc3_ = _loc3_[_loc5_[_loc6_]];
            _loc6_++;
         }
         _loc2_ = _loc5_[_loc6_];
         for each(_loc7_ in describeType(_loc3_).variable)
         {
            if(_loc2_ == _loc7_.@name.toString())
            {
               _loc4_ = _loc7_.@type.toString();
               break;
            }
         }
         if(_loc4_ == "String")
         {
            if(!(_loc1_ is String))
            {
               _loc1_ = _loc1_.toString();
            }
         }
         else if(_loc4_ == "uint")
         {
            if(!(_loc1_ is uint))
            {
               _loc1_ = uint(_loc1_);
            }
         }
         else if(_loc4_ == "int")
         {
            if(!(_loc1_ is int))
            {
               _loc1_ = int(_loc1_);
            }
         }
         else if(_loc4_ == "Number")
         {
            if(!(_loc1_ is Number))
            {
               _loc1_ = Number(_loc1_);
            }
         }
         else if(_loc4_ == "Boolean")
         {
            if(!(_loc1_ is Boolean))
            {
               _loc8_ = _loc1_.toString();
               if(_loc8_)
               {
                  _loc1_ = _loc8_.toLowerCase() == "true"?true:false;
               }
            }
         }
         if(_loc2_ && _loc3_[_loc2_] !== _loc1_)
         {
            _loc9_ = null;
            if(this.dataGrid.dataProvider is ICollectionView)
            {
               _loc11_ = ICollectionView(this.dataGrid.dataProvider);
               if(_loc11_.sort)
               {
                  _loc9_ = _loc11_.sort;
                  _loc11_.sort = null;
               }
            }
            _loc10_ = _loc3_[_loc2_];
            _loc3_[_loc2_] = _loc1_;
            this.dataGrid.dataProvider.itemUpdated(this.data,this.column.dataField,_loc10_,_loc1_);
            if(_loc9_)
            {
               ICollectionView(this.dataGrid.dataProvider).sort = _loc9_;
            }
         }
         return true;
      }
      
      public function cancel() : Boolean
      {
         return true;
      }
      
      protected function validate() : Boolean
      {
         return this.validateContainer(this);
      }
      
      private function validateContainer(param1:IVisualElementContainer) : Boolean
      {
         var _loc4_:IVisualElement = null;
         if(param1 is IValidatorListener && IValidatorListener(param1).errorString)
         {
            return false;
         }
         var _loc2_:int = param1.numElements;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.getElementAt(_loc3_);
            if(_loc4_ is IValidatorListener && IValidatorListener(_loc4_).errorString)
            {
               return false;
            }
            if(_loc4_ is IVisualElementContainer && !this.validateContainer(IVisualElementContainer(_loc4_)))
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }
      
      private function clearErrorStringFromContainer(param1:IVisualElementContainer) : void
      {
         var _loc4_:IVisualElement = null;
         if(param1 is IValidatorListener && IValidatorListener(param1).errorString)
         {
            this.clearErrorString(IValidatorListener(param1));
         }
         var _loc2_:int = param1.numElements;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.getElementAt(_loc3_);
            if(_loc4_ is IValidatorListener && IValidatorListener(_loc4_).errorString)
            {
               this.clearErrorString(IValidatorListener(_loc4_));
            }
            if(_loc4_ is IVisualElementContainer)
            {
               this.clearErrorStringFromContainer(IVisualElementContainer(_loc4_));
            }
            _loc3_++;
         }
      }
      
      private function clearErrorString(param1:IValidatorListener) : void
      {
         param1.errorString = "";
         if(param1 is IInvalidating)
         {
            IInvalidating(param1).validateNow();
         }
      }
      
      private function mouseUpDownMoveHandler(param1:MouseEvent) : void
      {
         if(param1.cancelable)
         {
            param1.preventDefault();
         }
      }
      
      private function mouseMoveHandler(param1:MouseEvent) : void
      {
         var _loc2_:Point = this.dataGrid.parent.globalToLocal(new Point(param1.stageX,param1.stageY));
         param1.localX = _loc2_.x;
         param1.localY = _loc2_.y;
         this.dataGrid.parent.dispatchEvent(param1);
         param1.stopPropagation();
      }
   }
}
