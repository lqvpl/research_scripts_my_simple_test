package spark.components.gridClasses
{
   import spark.components.Group;
   import flash.geom.Point;
   import spark.components.GridColumnHeaderGroup;
   import flash.events.MouseEvent;
   import mx.core.LayoutDirection;
   
   public class GridColumnHeaderView extends Group
   {
      
      private static const zeroPoint:Point = new Point(0,0);
       
      
      public function GridColumnHeaderView()
      {
         super();
         layout = new GridHeaderViewLayout();
         layout.clipAndEnableScrolling = true;
      }
      
      public function get gridColumnHeaderGroup() : GridColumnHeaderGroup
      {
         return this.gridHeaderViewLayout.gridColumnHeaderGroup;
      }
      
      public function set gridColumnHeaderGroup(param1:GridColumnHeaderGroup) : void
      {
         this.gridHeaderViewLayout.gridColumnHeaderGroup = param1;
      }
      
      public function get gridHeaderViewLayout() : GridHeaderViewLayout
      {
         return layout as GridHeaderViewLayout;
      }
      
      public function containsMouseEvent(param1:MouseEvent) : Boolean
      {
         var _loc2_:Number = param1.stageX;
         var _loc3_:Number = param1.stageY;
         var _loc4_:Point = localToGlobal(zeroPoint);
         _loc4_.x = _loc4_.x + horizontalScrollPosition;
         if(layoutDirection == LayoutDirection.RTL)
         {
            _loc4_.x = _loc4_.x - width;
         }
         _loc4_.y = _loc4_.y + verticalScrollPosition;
         return _loc2_ >= _loc4_.x && _loc3_ >= _loc4_.y && _loc2_ < _loc4_.x + width && _loc3_ < _loc4_.y + height;
      }
   }
}
