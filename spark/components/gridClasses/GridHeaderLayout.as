package spark.components.gridClasses
{
   import spark.layouts.supportClasses.LayoutBase;
   import flash.events.Event;
   import spark.components.Group;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.Grid;
   
   public class GridHeaderLayout extends LayoutBase
   {
       
      
      private var _centerGridColumnHeaderView:Group = null;
      
      private var _leftGridColumnHeaderView:Group = null;
      
      public function GridHeaderLayout()
      {
         super();
      }
      
      private function dispatchChangeEvent(param1:String) : void
      {
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
      }
      
      [Bindable("centerGridColumnHeaderViewChanged")]
      public function get centerGridColumnHeaderView() : Group
      {
         return this._centerGridColumnHeaderView;
      }
      
      public function set centerGridColumnHeaderView(param1:Group) : void
      {
         if(this._centerGridColumnHeaderView == param1)
         {
            return;
         }
         this._centerGridColumnHeaderView = param1;
         this.dispatchChangeEvent("centerGridColumnHeaderViewChanged");
      }
      
      [Bindable("leftGridColumnHeaderViewChanged")]
      public function get leftGridColumnHeaderView() : Group
      {
         return this._leftGridColumnHeaderView;
      }
      
      public function set leftGridColumnHeaderView(param1:Group) : void
      {
         if(this._leftGridColumnHeaderView == param1)
         {
            return;
         }
         this._leftGridColumnHeaderView = param1;
         this.dispatchChangeEvent("leftGridColumnHeaderViewChanged");
      }
      
      override public function measure() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Group = null;
         var _loc9_:Number = NaN;
         var _loc1_:GridColumnHeaderGroup = target as GridColumnHeaderGroup;
         if(!_loc1_)
         {
            return;
         }
         _loc2_ = _loc1_.getStyle("paddingLeft");
         _loc3_ = _loc1_.getStyle("paddingRight");
         var _loc4_:Number = _loc1_.getStyle("paddingTop");
         var _loc5_:Number = _loc1_.getStyle("paddingBottom");
         _loc6_ = Math.max(0,target.getMinBoundsWidth()) + _loc2_ + _loc3_;
         _loc7_ = this.centerGridColumnHeaderView;
         var _loc8_:Number = !!_loc7_?Number(_loc7_.getPreferredBoundsHeight()):Number(0);
         _loc9_ = _loc8_ + _loc4_ + _loc5_;
         target.measuredWidth = Math.ceil(_loc6_);
         target.measuredHeight = Math.ceil(_loc9_);
         target.measuredMinWidth = Math.ceil(_loc6_);
         target.measuredMinHeight = Math.ceil(_loc9_);
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc3_:GridColumnHeaderGroup = target as GridColumnHeaderGroup;
         if(!_loc3_ || !this.centerGridColumnHeaderView)
         {
            return;
         }
         var _loc4_:Number = _loc3_.getStyle("paddingLeft");
         var _loc5_:Number = _loc3_.getStyle("paddingRight");
         _loc6_ = _loc3_.getStyle("paddingTop");
         _loc7_ = _loc3_.getStyle("paddingBottom");
         var _loc8_:Grid = _loc3_.dataGrid.grid;
         var _loc9_:GridLayout = _loc3_.dataGrid.grid.layout as GridLayout;
         var _loc10_:int = _loc3_.dataGrid.lockedColumnCount;
         var _loc11_:Group = this.centerGridColumnHeaderView;
         var _loc12_:Group = this.leftGridColumnHeaderView;
         var _loc13_:Number = Math.max(0,param2 - (_loc6_ + _loc7_));
         var _loc14_:Number = _loc9_.centerGridView.getLayoutBoundsX();
         if(_loc10_ > 0)
         {
            _loc12_.setLayoutBoundsSize(_loc14_ - _loc4_,_loc13_);
            _loc12_.setLayoutBoundsPosition(_loc4_,_loc6_);
         }
         else
         {
            _loc14_ = _loc14_ + _loc4_;
         }
         _loc11_.setLayoutBoundsSize(param1 - _loc14_,_loc13_);
         _loc11_.setLayoutBoundsPosition(_loc14_,_loc6_);
      }
   }
}
