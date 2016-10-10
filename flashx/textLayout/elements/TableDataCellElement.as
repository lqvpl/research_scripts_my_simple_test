package flashx.textLayout.elements
{
   import flashx.textLayout.tlf_internal;
   
   public final class TableDataCellElement extends TableFormattedElement
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var width:Number;
      
      public var height:Number;
      
      private var _parcelIndex:int;
      
      private var _rowIndex:int;
      
      private var _colIndex:int;
      
      public function TableDataCellElement()
      {
         super();
      }
      
      override protected function get abstract() : Boolean
      {
         return false;
      }
      
      override tlf_internal function get defaultTypeName() : String
      {
         return "td";
      }
      
      override tlf_internal function modelChanged(param1:String, param2:FlowElement, param3:int, param4:int, param5:Boolean = true, param6:Boolean = true) : void
      {
         super.modelChanged(param1,param2,param3,param4,param5,param6);
      }
      
      tlf_internal function normalizeNeedsInitialParagraph() : Boolean
      {
         var _loc1_:FlowGroupElement = this;
         while(_loc1_)
         {
            _loc1_ = _loc1_.getChildAt(0) as FlowGroupElement;
            if(_loc1_ is ParagraphElement)
            {
               return false;
            }
            if(!(_loc1_ is DivElement))
            {
               return true;
            }
         }
         return true;
      }
      
      override tlf_internal function normalizeRange(param1:uint, param2:uint) : void
      {
         var _loc3_:ParagraphElement = null;
         super.normalizeRange(param1,param2);
         if(this.normalizeNeedsInitialParagraph())
         {
            _loc3_ = new ParagraphElement();
            _loc3_.replaceChildren(0,0,new SpanElement());
            replaceChildren(0,0,_loc3_);
            _loc3_.normalizeRange(0,_loc3_.textLength);
         }
      }
      
      public function get parcelIndex() : int
      {
         return this._parcelIndex;
      }
      
      public function set parcelIndex(param1:int) : void
      {
         this._parcelIndex = param1;
      }
      
      public function get rowIndex() : int
      {
         return this._rowIndex;
      }
      
      public function set rowIndex(param1:int) : void
      {
         this._rowIndex = param1;
      }
      
      public function get colIndex() : int
      {
         return this._colIndex;
      }
      
      public function set colIndex(param1:int) : void
      {
         this._colIndex = param1;
      }
   }
}
