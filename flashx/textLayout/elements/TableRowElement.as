package flashx.textLayout.elements
{
   import flashx.textLayout.tlf_internal;
   
   public final class TableRowElement extends TableFormattedElement
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var height:Number;
      
      public var rowIndex:int;
      
      public var parcelIndex:int;
      
      public var columnIndex:Number = 0;
      
      public var iMaxRowDepth:Number = 0;
      
      public var beyondParcel:Boolean = false;
      
      public function TableRowElement()
      {
         super();
      }
      
      override protected function get abstract() : Boolean
      {
         return false;
      }
      
      override tlf_internal function get defaultTypeName() : String
      {
         return "tr";
      }
      
      override tlf_internal function canOwnFlowElement(param1:FlowElement) : Boolean
      {
         return param1 is TableDataCellElement;
      }
      
      override tlf_internal function modelChanged(param1:String, param2:FlowElement, param3:int, param4:int, param5:Boolean = true, param6:Boolean = true) : void
      {
         super.modelChanged(param1,param2,param3,param4,param5,param6);
      }
   }
}
