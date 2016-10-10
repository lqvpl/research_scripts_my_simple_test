package flashx.textLayout.elements
{
   public class TableFormattedElement extends ContainerFormattedElement
   {
       
      
      public function TableFormattedElement()
      {
         super();
      }
      
      public function getTable() : TableElement
      {
         var _loc1_:FlowGroupElement = this;
         while(_loc1_.parent != null && !(_loc1_.parent is TableElement))
         {
            _loc1_ = _loc1_.parent;
         }
         return _loc1_.parent as TableElement;
      }
   }
}
