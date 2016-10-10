package mx.controls
{
   import mx.controls.scrollClasses.ScrollBar;
   import mx.core.mx_internal;
   import flash.geom.Matrix;
   import flash.ui.Keyboard;
   import mx.core.LayoutDirection;
   import mx.controls.scrollClasses.ScrollBarDirection;
   
   use namespace mx_internal;
   
   public class HScrollBar extends ScrollBar
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function HScrollBar()
      {
         super();
         super.direction = ScrollBarDirection.HORIZONTAL;
         scaleX = -1;
         rotation = -90;
      }
      
      override public function set direction(param1:String) : void
      {
      }
      
      override public function get minWidth() : Number
      {
         return _minHeight;
      }
      
      override public function get minHeight() : Number
      {
         return _minWidth;
      }
      
      override mx_internal function get virtualHeight() : Number
      {
         return unscaledWidth;
      }
      
      override mx_internal function get virtualWidth() : Number
      {
         return unscaledHeight;
      }
      
      override protected function measure() : void
      {
         super.measure();
         measuredWidth = _minHeight;
         measuredHeight = _minWidth;
      }
      
      override protected function nonDeltaLayoutMatrix() : Matrix
      {
         var _loc1_:Matrix = new Matrix(0,1,1,0);
         var _loc2_:Matrix = super.nonDeltaLayoutMatrix();
         if(_loc2_)
         {
            _loc1_.concat(_loc2_);
         }
         return _loc1_;
      }
      
      override mx_internal function isScrollBarKey(param1:uint) : Boolean
      {
         var _loc2_:int = 0;
         if(param1 == Keyboard.LEFT)
         {
            _loc2_ = !!LayoutDirection.LTR?-1:1;
            lineScroll(_loc2_);
            return true;
         }
         if(param1 == Keyboard.RIGHT)
         {
            _loc2_ = !!LayoutDirection.LTR?1:-1;
            lineScroll(_loc2_);
            return true;
         }
         return super.isScrollBarKey(param1);
      }
   }
}
