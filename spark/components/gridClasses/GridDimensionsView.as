package spark.components.gridClasses
{
   import flash.geom.Rectangle;
   
   public class GridDimensionsView
   {
       
      
      public var gridDimensions:spark.components.gridClasses.GridDimensions = null;
      
      public var viewRowIndex:int = 0;
      
      public var viewColumnIndex:int = 0;
      
      public var viewRowCount:int = -1;
      
      public var viewColumnCount:int = -1;
      
      public function GridDimensionsView(param1:spark.components.gridClasses.GridDimensions = null, param2:int = 0, param3:int = 0, param4:int = -1, param5:int = -1)
      {
         super();
         this.gridDimensions = param1;
         this.viewRowIndex = param2;
         this.viewColumnIndex = param3;
         this.viewRowCount = param4;
         this.viewColumnCount = param5;
      }
      
      public function get rowCount() : int
      {
         var _loc1_:int = this.gridDimensions.rowCount;
         return this.viewRowCount == -1?int(_loc1_ - this.viewRowIndex):int(this.viewRowCount);
      }
      
      public function get columnCount() : int
      {
         var _loc1_:int = this.gridDimensions.columnCount;
         return this.viewColumnCount == -1?int(_loc1_ - this.viewColumnIndex):int(this.viewColumnCount);
      }
      
      public function get rowGap() : Number
      {
         return this.gridDimensions.rowGap;
      }
      
      public function get columnGap() : Number
      {
         return this.gridDimensions.columnGap;
      }
      
      public function get defaultRowHeight() : Number
      {
         return this.gridDimensions.defaultRowHeight;
      }
      
      public function get defaultColumnWidth() : Number
      {
         return this.gridDimensions.defaultColumnWidth;
      }
      
      public function get variableRowHeight() : Boolean
      {
         return this.gridDimensions.variableRowHeight;
      }
      
      public function get minRowHeight() : Number
      {
         return this.gridDimensions.minRowHeight;
      }
      
      public function get maxRowHeight() : Number
      {
         return this.gridDimensions.maxRowHeight;
      }
      
      public function get viewOriginX() : Number
      {
         return this.gridDimensions.getCellX(this.viewRowIndex,this.viewColumnIndex);
      }
      
      public function get viewOriginY() : Number
      {
         return this.gridDimensions.getCellY(this.viewRowIndex,this.viewColumnIndex);
      }
      
      public function getRowHeight(param1:int) : Number
      {
         return this.gridDimensions.getRowHeight(param1 + this.viewRowIndex);
      }
      
      public function setRowHeight(param1:int, param2:Number) : void
      {
         this.gridDimensions.setRowHeight(param1 + this.viewRowIndex,param2);
      }
      
      public function getColumnWidth(param1:int) : Number
      {
         return this.gridDimensions.getColumnWidth(param1 + this.viewColumnIndex);
      }
      
      public function setColumnWidth(param1:int, param2:Number) : void
      {
         this.gridDimensions.setColumnWidth(param1 + this.viewColumnIndex,param2);
      }
      
      public function getCellHeight(param1:int, param2:int) : Number
      {
         return this.gridDimensions.getCellHeight(param1 + this.viewRowIndex,param2 + this.viewColumnIndex);
      }
      
      public function setCellHeight(param1:int, param2:int, param3:Number) : void
      {
         this.gridDimensions.setCellHeight(param1 + this.viewRowIndex,param2 + this.viewColumnIndex,param3);
      }
      
      public function getCellBounds(param1:int, param2:int) : Rectangle
      {
         var _loc3_:Rectangle = this.gridDimensions.getCellBounds(param1 + this.viewRowIndex,param2 + this.viewColumnIndex);
         if(!_loc3_)
         {
            return null;
         }
         _loc3_.x = _loc3_.x - this.viewOriginX;
         _loc3_.y = _loc3_.y - this.viewOriginY;
         return _loc3_;
      }
      
      public function getCellX(param1:int, param2:int) : Number
      {
         return this.gridDimensions.getCellX(param1 + this.viewRowIndex,param2 + this.viewColumnIndex) - this.viewOriginX;
      }
      
      public function getCellY(param1:int, param2:int) : Number
      {
         return this.gridDimensions.getCellY(param1 + this.viewRowIndex,param2 + this.viewColumnIndex) - this.viewOriginY;
      }
      
      public function getRowBounds(param1:int) : Rectangle
      {
         var _loc2_:Rectangle = this.gridDimensions.getRowBounds(param1 + this.viewRowIndex);
         if(!_loc2_)
         {
            return null;
         }
         _loc2_.x = _loc2_.x - this.viewOriginX;
         _loc2_.y = _loc2_.y - this.viewOriginY;
         return _loc2_;
      }
      
      public function getPadRowBounds(param1:int) : Rectangle
      {
         var _loc2_:Rectangle = this.gridDimensions.getPadRowBounds(param1 + this.viewRowIndex);
         if(!_loc2_)
         {
            return null;
         }
         _loc2_.x = _loc2_.x - this.viewOriginX;
         _loc2_.y = _loc2_.y - this.viewOriginY;
         return _loc2_;
      }
      
      public function getColumnBounds(param1:int) : Rectangle
      {
         var _loc2_:Rectangle = this.gridDimensions.getColumnBounds(param1 + this.viewColumnIndex);
         if(!_loc2_)
         {
            return null;
         }
         _loc2_.x = _loc2_.x - this.viewOriginX;
         _loc2_.y = _loc2_.y - this.viewOriginY;
         return _loc2_;
      }
      
      public function getRowIndexAt(param1:Number, param2:Number) : int
      {
         var _loc3_:int = this.gridDimensions.getRowIndexAt(param1 + this.viewOriginX,param2 + this.viewOriginY) - this.viewRowIndex;
         return _loc3_ >= 0?int(_loc3_):-1;
      }
      
      public function getColumnIndexAt(param1:Number, param2:Number) : int
      {
         var _loc3_:int = this.gridDimensions.getColumnIndexAt(param1 + this.viewOriginX,param2 + this.viewOriginY) - this.viewColumnIndex;
         return _loc3_ >= 0?int(_loc3_):-1;
      }
      
      public function getContentWidth(param1:int = -1, param2:int = 0) : Number
      {
         var _loc3_:int = this.columnCount == -1?int(this.viewColumnCount):int(param1);
         return this.gridDimensions.getContentWidth(_loc3_,this.viewColumnIndex + param2);
      }
      
      public function getContentHeight(param1:int = -1, param2:int = 0) : Number
      {
         var _loc3_:int = this.rowCount == -1?int(this.viewRowCount):int(param1);
         return this.gridDimensions.getContentHeight(_loc3_,this.viewRowIndex + param2);
      }
      
      public function getTypicalContentWidth(param1:int = -1, param2:int = 0) : Number
      {
         var _loc3_:int = this.columnCount == -1?int(this.viewColumnCount):int(param1);
         return this.gridDimensions.getTypicalContentWidth(_loc3_,this.viewColumnIndex + param2);
      }
      
      public function getTypicalContentHeight(param1:int = -1, param2:int = 0) : Number
      {
         var _loc3_:int = this.rowCount == -1?int(this.viewRowCount):int(param1);
         return this.gridDimensions.getTypicalContentHeight(_loc3_,this.viewRowIndex + param2);
      }
      
      public function getTypicalCellWidth(param1:int) : Number
      {
         return this.gridDimensions.getTypicalCellWidth(param1 + this.viewColumnIndex);
      }
      
      public function setTypicalCellWidth(param1:int, param2:Number) : void
      {
         this.gridDimensions.setTypicalCellWidth(param1 + this.viewColumnIndex,param2);
      }
      
      public function getTypicalCellHeight(param1:int) : Number
      {
         return this.gridDimensions.getTypicalCellHeight(param1 + this.viewColumnIndex);
      }
      
      public function setTypicalCellHeight(param1:int, param2:Number) : void
      {
         this.gridDimensions.setTypicalCellHeight(param1 + this.viewColumnIndex,param2);
      }
      
      public function toString() : String
      {
         return "GridDimensionsView " + this.viewRowIndex + "," + this.viewColumnIndex + " " + this.viewRowCount + "X" + this.viewColumnCount + " " + this.gridDimensions.toString();
      }
   }
}
