package spark.components.gridClasses
{
   import spark.components.Group;
   import mx.core.mx_internal;
   import flash.geom.Point;
   import spark.components.DataGrid;
   import spark.components.Grid;
   import flash.geom.Rectangle;
   import mx.styles.IStyleClient;
   import mx.core.IDataRenderer;
   import flash.display.DisplayObject;
   import mx.core.UIComponent;
   
   use namespace mx_internal;
   
   public class DataGridDragProxy extends Group
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function DataGridDragProxy()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc11_:IGridItemRenderer = null;
         var _loc12_:Group = null;
         var _loc13_:Number = NaN;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:GridColumn = null;
         var _loc17_:IGridItemRenderer = null;
         var _loc18_:Point = null;
         super.createChildren();
         var _loc1_:DataGrid = DataGrid(owner);
         var _loc2_:Grid = _loc1_.grid;
         this.styleName = _loc1_;
         width = _loc2_.width;
         height = _loc2_.height;
         var _loc3_:Vector.<int> = _loc2_.selectedIndices;
         if(!_loc3_ || _loc3_.length == 0)
         {
            return;
         }
         var _loc4_:Number = 0;
         var _loc5_:Number = 0;
         var _loc6_:Rectangle = _loc1_.scrollRect;
         if(_loc6_)
         {
            _loc4_ = _loc6_.x;
            _loc5_ = _loc6_.y;
         }
         var _loc7_:int = _loc3_.length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            _loc9_ = _loc3_[_loc8_];
            if(_loc2_.isCellVisible(_loc9_,0))
            {
               _loc10_ = _loc2_.getDataProviderItem(_loc9_);
               _loc11_ = _loc2_.getItemRendererAt(_loc9_,0);
               if(_loc11_)
               {
                  _loc12_ = new Group();
                  addElement(_loc12_);
                  _loc12_.layoutDirection = _loc1_.layoutDirection;
                  _loc13_ = 0;
                  _loc14_ = _loc2_.getVisibleColumnIndices().length;
                  _loc15_ = 0;
                  while(_loc15_ < _loc14_)
                  {
                     _loc16_ = GridColumn(_loc2_.columns.getItemAt(_loc15_));
                     _loc17_ = _loc16_.itemToRenderer(_loc10_).newInstance();
                     IStyleClient(_loc17_).styleName = DataGrid(owner);
                     IDataRenderer(_loc17_).data = _loc10_;
                     _loc17_.column = _loc16_;
                     _loc17_.visible = true;
                     _loc17_.width = _loc11_.width;
                     _loc17_.height = _loc11_.height;
                     if(_loc11_.hasLayoutMatrix3D)
                     {
                        _loc17_.setLayoutMatrix3D(_loc11_.getLayoutMatrix3D(),false);
                     }
                     else
                     {
                        _loc17_.setLayoutMatrix(_loc11_.getLayoutMatrix(),false);
                     }
                     _loc17_.x = _loc13_ + _loc11_.x + 5;
                     _loc17_.depth = _loc11_.depth;
                     _loc17_.visible = _loc11_.visible;
                     if(_loc11_.postLayoutTransformOffsets)
                     {
                        _loc17_.postLayoutTransformOffsets = _loc11_.postLayoutTransformOffsets;
                     }
                     _loc17_.dragging = true;
                     _loc12_.addElement(_loc17_);
                     _loc17_.label = _loc16_.itemToLabel(_loc10_);
                     _loc17_.prepare(false);
                     _loc17_["validateNow"]();
                     _loc13_ = _loc13_ + (_loc17_.width + 10);
                     _loc15_++;
                  }
                  _loc12_.setLayoutBoundsSize(_loc13_,_loc11_.height);
                  _loc12_.width = _loc13_;
                  _loc12_.height = _loc11_.height;
                  _loc18_ = new Point(0,0);
                  _loc18_ = DisplayObject(_loc11_).localToGlobal(_loc18_);
                  _loc18_ = DataGrid(owner).globalToLocal(_loc18_);
                  _loc12_.y = _loc18_.y;
                  _loc12_.visible = true;
                  measuredHeight = _loc12_.y + _loc12_.height;
                  measuredWidth = _loc13_;
                  _loc12_.validateNow();
               }
            }
            _loc8_++;
         }
         invalidateDisplayList();
      }
      
      override protected function measure() : void
      {
         var _loc3_:UIComponent = null;
         super.measure();
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc4_:int = 0;
         while(_loc4_ < numChildren)
         {
            _loc3_ = getChildAt(_loc4_) as UIComponent;
            if(_loc3_)
            {
               _loc1_ = Math.max(_loc1_,_loc3_.x + _loc3_.width);
               _loc2_ = Math.max(_loc2_,_loc3_.y + _loc3_.height);
            }
            _loc4_++;
         }
         measuredWidth = measuredMinWidth = _loc1_;
         measuredHeight = measuredMinHeight = _loc2_;
      }
   }
}
