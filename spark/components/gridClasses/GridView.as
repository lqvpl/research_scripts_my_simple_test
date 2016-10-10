package spark.components.gridClasses
{
   import spark.components.Group;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import mx.core.LayoutDirection;
   import spark.collections.SubListView;
   import spark.components.Grid;
   import mx.events.PropertyChangeEvent;
   
   public class GridView extends Group
   {
      
      private static const zeroPoint:Point = new Point(0,0);
       
      
      public function GridView()
      {
         super();
         layout = new GridViewLayout();
         layout.clipAndEnableScrolling = true;
      }
      
      public function get gridViewLayout() : GridViewLayout
      {
         return layout as GridViewLayout;
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
      
      public function getNextVisibleColumnIndex(param1:int = -1) : int
      {
         var _loc2_:SubListView = null;
         var _loc5_:GridColumn = null;
         if(param1 < -1)
         {
            return -1;
         }
         _loc2_ = this.gridViewLayout.columnsView;
         var _loc3_:int = !!_loc2_?int(_loc2_.length):0;
         var _loc4_:int = param1 + 1;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = _loc2_.getItemAt(_loc4_) as GridColumn;
            if(_loc5_ && _loc5_.visible)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }
      
      public function getPreviousVisibleColumnIndex(param1:int) : int
      {
         var _loc4_:GridColumn = null;
         var _loc2_:SubListView = this.gridViewLayout.columnsView;
         if(!_loc2_ || param1 > _loc2_.length)
         {
            return -1;
         }
         var _loc3_:int = param1 - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = _loc2_.getItemAt(_loc3_) as GridColumn;
            if(_loc4_ && _loc4_.visible)
            {
               return _loc3_;
            }
            _loc3_--;
         }
         return -1;
      }
      
      override protected function dispatchPropertyChangeEvent(param1:String, param2:*, param3:*) : void
      {
         var _loc4_:Grid = null;
         var _loc5_:PropertyChangeEvent = null;
         switch(param1)
         {
            case "contentWidth":
            case "contentHeight":
               _loc4_ = parent as Grid;
               if(_loc4_)
               {
                  _loc5_ = PropertyChangeEvent.createUpdateEvent(_loc4_,param1,null,null);
                  _loc4_.dispatchEvent(_loc5_);
               }
         }
      }
   }
}
