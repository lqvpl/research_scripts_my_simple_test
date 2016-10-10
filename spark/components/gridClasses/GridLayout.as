package spark.components.gridClasses
{
   import spark.layouts.supportClasses.LayoutBase;
   import flash.events.Event;
   import spark.components.Grid;
   import mx.core.IVisualElement;
   import mx.core.mx_internal;
   import flash.geom.Rectangle;
   
   use namespace mx_internal;
   
   public class GridLayout extends LayoutBase
   {
       
      
      private var _centerGridView:spark.components.gridClasses.GridView = null;
      
      private var _leftGridView:spark.components.gridClasses.GridView = null;
      
      private var _lockedColumnsSeparatorElement:IVisualElement = null;
      
      private var _lockedRowsSeparatorElement:IVisualElement = null;
      
      private var _topGridView:spark.components.gridClasses.GridView = null;
      
      private var _topLeftGridView:spark.components.gridClasses.GridView = null;
      
      public function GridLayout()
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
      
      [Bindable("centerGridViewChanged")]
      public function get centerGridView() : spark.components.gridClasses.GridView
      {
         return this._centerGridView;
      }
      
      public function set centerGridView(param1:spark.components.gridClasses.GridView) : void
      {
         if(this._centerGridView == param1)
         {
            return;
         }
         this._centerGridView = param1;
         this.dispatchChangeEvent("centerGridViewChanged");
      }
      
      private function get grid() : Grid
      {
         return target as Grid;
      }
      
      [Bindable("leftGridViewChanged")]
      public function get leftGridView() : spark.components.gridClasses.GridView
      {
         return this._leftGridView;
      }
      
      public function set leftGridView(param1:spark.components.gridClasses.GridView) : void
      {
         if(this._leftGridView == param1)
         {
            return;
         }
         this._leftGridView = param1;
         this.dispatchChangeEvent("leftGridViewChanged");
      }
      
      [Bindable("lockedColumnsSeparatorElementChanged")]
      public function get lockedColumnsSeparatorElement() : IVisualElement
      {
         return this._lockedColumnsSeparatorElement;
      }
      
      public function set lockedColumnsSeparatorElement(param1:IVisualElement) : void
      {
         if(this._lockedColumnsSeparatorElement == param1)
         {
            return;
         }
         this._lockedColumnsSeparatorElement = param1;
         this.dispatchChangeEvent("lockedColumnsSeparatorElementChanged");
      }
      
      [Bindable("lockedRowsSeparatorElementChanged")]
      public function get lockedRowsSeparatorElement() : IVisualElement
      {
         return this._lockedRowsSeparatorElement;
      }
      
      public function set lockedRowsSeparatorElement(param1:IVisualElement) : void
      {
         if(this._lockedRowsSeparatorElement == param1)
         {
            return;
         }
         this._lockedRowsSeparatorElement = param1;
         this.dispatchChangeEvent("lockedRowsSeparatorElementChanged");
      }
      
      [Bindable("topGridViewChanged")]
      public function get topGridView() : spark.components.gridClasses.GridView
      {
         return this._topGridView;
      }
      
      public function set topGridView(param1:spark.components.gridClasses.GridView) : void
      {
         if(this._topGridView == param1)
         {
            return;
         }
         this._topGridView = param1;
         this.dispatchChangeEvent("topGridViewChanged");
      }
      
      [Bindable("topLeftGridViewChanged")]
      public function get topLeftGridView() : spark.components.gridClasses.GridView
      {
         return this._topLeftGridView;
      }
      
      public function set topLeftGridView(param1:spark.components.gridClasses.GridView) : void
      {
         if(this._topLeftGridView == param1)
         {
            return;
         }
         this._topLeftGridView = param1;
         this.dispatchChangeEvent("topLeftGridViewChanged");
      }
      
      override public function measure() : void
      {
         var _loc8_:int = 0;
         var _loc1_:Grid = target as Grid;
         if(!_loc1_)
         {
            return;
         }
         var _loc2_:GridDimensions = _loc1_.gridDimensions;
         var _loc3_:int = _loc1_.requestedRowCount;
         if(_loc3_ == -1)
         {
            _loc8_ = _loc2_.rowCount;
            if(_loc1_.requestedMaxRowCount != -1)
            {
               _loc3_ = Math.min(_loc1_.requestedMaxRowCount,_loc8_);
            }
            if(_loc1_.requestedMinRowCount != -1)
            {
               _loc3_ = Math.max(_loc1_.requestedMinRowCount,_loc3_);
            }
         }
         var _loc4_:Number = _loc2_.getTypicalContentWidth(_loc1_.requestedColumnCount);
         var _loc5_:Number = _loc2_.getTypicalContentHeight(_loc3_);
         var _loc6_:Number = _loc2_.getTypicalContentWidth(_loc1_.requestedMinColumnCount);
         var _loc7_:Number = _loc2_.getTypicalContentHeight(_loc1_.requestedMinRowCount);
         if(_loc1_.lockedRowCount > 0)
         {
            if(this.lockedRowsSeparatorElement && this.lockedRowsSeparatorElement.includeInLayout)
            {
               _loc5_ = _loc5_ + this.lockedRowsSeparatorElement.getPreferredBoundsHeight();
               _loc7_ = _loc7_ + this.lockedRowsSeparatorElement.getMinBoundsHeight();
               _loc6_ = Math.max(_loc6_,this.lockedRowsSeparatorElement.getMinBoundsWidth());
            }
         }
         if(_loc1_.lockedColumnCount > 0)
         {
            if(this.lockedColumnsSeparatorElement && this.lockedColumnsSeparatorElement.includeInLayout)
            {
               _loc4_ = _loc4_ + this.lockedColumnsSeparatorElement.getPreferredBoundsWidth();
               _loc6_ = _loc6_ + this.lockedColumnsSeparatorElement.getMinBoundsWidth();
               _loc7_ = Math.max(_loc7_,this.lockedColumnsSeparatorElement.getMinBoundsHeight());
            }
         }
         target.measuredWidth = Math.ceil(_loc4_);
         target.measuredHeight = Math.ceil(_loc5_);
         target.measuredMinWidth = Math.ceil(_loc6_);
         target.measuredMinHeight = Math.ceil(_loc7_);
      }
      
      override public function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Rectangle = null;
         var _loc14_:Number = NaN;
         var _loc15_:int = 0;
         var _loc16_:Rectangle = null;
         var _loc17_:Number = NaN;
         var _loc3_:Grid = target as Grid;
         if(!_loc3_ || !this.centerGridView)
         {
            return;
         }
         _loc4_ = _loc3_.lockedRowCount;
         _loc5_ = _loc3_.lockedColumnCount;
         var _loc6_:* = _loc4_ > 0;
         var _loc7_:* = _loc5_ > 0;
         if(_loc6_)
         {
            _loc12_ = _loc4_ - 1;
            _loc13_ = _loc3_.getRowBounds(_loc12_);
            _loc14_ = !!_loc13_?Number(Math.min(param2,_loc13_.bottom)):Number(NaN);
            this.topGridView.setLayoutBoundsSize(param1,_loc14_);
            if(this.lockedRowsSeparatorElement)
            {
               this.lockedRowsSeparatorElement.setLayoutBoundsSize(param1,NaN);
            }
         }
         if(_loc7_)
         {
            _loc15_ = _loc5_ - 1;
            _loc16_ = _loc3_.getColumnBounds(_loc15_);
            _loc17_ = !!_loc16_?Number(Math.min(param1,_loc16_.right)):Number(NaN);
            this.leftGridView.setLayoutBoundsSize(_loc17_,param2);
            if(this.lockedColumnsSeparatorElement)
            {
               this.lockedColumnsSeparatorElement.setLayoutBoundsSize(NaN,param2);
            }
         }
         if(_loc6_ && _loc7_)
         {
            this.topLeftGridView.setLayoutBoundsSize(this.leftGridView.getLayoutBoundsWidth(),this.topGridView.getLayoutBoundsHeight());
         }
         var _loc8_:Number = !!_loc7_?Number(this.leftGridView.getLayoutBoundsWidth()):Number(0);
         var _loc9_:Number = !!_loc6_?Number(this.topGridView.getLayoutBoundsHeight()):Number(0);
         var _loc10_:Number = _loc8_;
         var _loc11_:Number = _loc9_;
         if(_loc6_ && _loc7_)
         {
            this.topLeftGridView.setLayoutBoundsPosition(0,0);
         }
         if(_loc6_ && this.lockedRowsSeparatorElement)
         {
            this.lockedRowsSeparatorElement.setLayoutBoundsPosition(0,_loc9_);
            _loc11_ = _loc11_ + this.lockedRowsSeparatorElement.getLayoutBoundsHeight();
         }
         if(_loc7_ && this.lockedColumnsSeparatorElement)
         {
            this.lockedColumnsSeparatorElement.setLayoutBoundsPosition(_loc8_,0);
            _loc10_ = _loc10_ + this.lockedColumnsSeparatorElement.getLayoutBoundsWidth();
         }
         if(_loc7_ && _loc6_)
         {
            this.topGridView.setLayoutBoundsSize(param1 - _loc10_,_loc14_);
            this.leftGridView.setLayoutBoundsSize(_loc17_,param2 - _loc11_);
            this.topLeftGridView.setLayoutBoundsSize(_loc8_,_loc9_);
            this.topLeftGridView.setLayoutBoundsPosition(0,0);
         }
         if(_loc6_)
         {
            this.topGridView.setLayoutBoundsPosition(_loc10_,0);
         }
         if(_loc7_)
         {
            this.leftGridView.setLayoutBoundsPosition(0,_loc11_);
         }
         this.centerGridView.setLayoutBoundsSize(param1 - _loc10_,param2 - _loc11_);
         this.centerGridView.setLayoutBoundsPosition(_loc10_,_loc11_);
      }
   }
}
