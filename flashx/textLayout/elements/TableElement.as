package flashx.textLayout.elements
{
   import flashx.textLayout.tlf_internal;
   
   use namespace tlf_internal;
   
   public class TableElement extends TableFormattedElement
   {
       
      
      private var _row:int;
      
      private var _column:int;
      
      private var _height:Array;
      
      public var computedWidth:Number;
      
      public var x:Number;
      
      public var y:Number;
      
      public var totalRowDepth:Number;
      
      public var originParcelIndex:Number;
      
      public var numAcrossParcels:int;
      
      public var curRowIdx:int = 0;
      
      public var outOfLastParcel:Boolean = false;
      
      private var arColumn:Array;
      
      public function TableElement()
      {
         this._height = [];
         this.arColumn = [];
         super();
      }
      
      public function initTableElement(param1:Number, param2:Number) : void
      {
         var _loc4_:TableColElement = null;
         this._row = param1;
         this._column = param2;
         var _loc3_:int = 0;
         while(_loc3_ < param2)
         {
            _loc4_ = new TableColElement();
            this.arColumn[_loc3_] = _loc4_;
            _loc3_++;
         }
      }
      
      override protected function get abstract() : Boolean
      {
         return false;
      }
      
      override tlf_internal function get defaultTypeName() : String
      {
         return "table";
      }
      
      override tlf_internal function canOwnFlowElement(param1:FlowElement) : Boolean
      {
         return param1 is TableBodyElement || param1 is TableRowElement || param1 is TableColElement || param1 is TableColGroupElement;
      }
      
      override tlf_internal function modelChanged(param1:String, param2:FlowElement, param3:int, param4:int, param5:Boolean = true, param6:Boolean = true) : void
      {
         super.modelChanged(param1,param2,param3,param4,param5,param6);
      }
      
      public function get row() : int
      {
         return this._row;
      }
      
      public function get column() : int
      {
         return this._column;
      }
      
      public function getColumnAt(param1:int) : TableColElement
      {
         if(param1 < 0 || param1 >= this._column)
         {
            return null;
         }
         return this.arColumn[param1];
      }
      
      public function setColumnWidth(param1:int, param2:*) : Boolean
      {
         var _loc3_:TableColElement = this.getColumnAt(param1) as TableColElement;
         if(!_loc3_)
         {
            return false;
         }
         _loc3_.tableColumnWidth = param2;
         return true;
      }
      
      public function getColumnWidth(param1:int) : *
      {
         var _loc2_:TableColElement = this.getColumnAt(param1) as TableColElement;
         if(_loc2_)
         {
            return _loc2_.tableColumnWidth;
         }
         return 0;
      }
      
      public function get height() : Number
      {
         return this._height[this.numAcrossParcels];
      }
      
      public function set height(param1:*) : void
      {
         this._height[this.numAcrossParcels] = param1;
      }
      
      public function get heightArray() : Array
      {
         return this._height;
      }
      
      public function set heightArray(param1:Array) : void
      {
         this._height = param1;
      }
   }
}
