package spark.components.gridClasses
{
   import spark.components.Group;
   import spark.components.Grid;
   import mx.core.mx_internal;
   import spark.layouts.supportClasses.LayoutBase;
   
   use namespace mx_internal;
   
   public class GridLayer extends Group
   {
       
      
      public function GridLayer()
      {
         super();
         layout = new LayoutBase();
      }
      
      override public function invalidateDisplayList() : void
      {
         var _loc1_:Grid = parent as Grid;
         if(_loc1_ && _loc1_.inUpdateDisplayList)
         {
            return;
         }
         if(_loc1_)
         {
            _loc1_.invalidateDisplayList();
         }
      }
      
      override public function invalidateSize() : void
      {
         var _loc1_:Grid = parent as Grid;
         if(_loc1_ && _loc1_.inUpdateDisplayList)
         {
            return;
         }
         if(_loc1_)
         {
            _loc1_.invalidateSize();
         }
      }
   }
}
