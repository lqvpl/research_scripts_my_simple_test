package spark.primitives.supportClasses
{
   import mx.core.mx_internal;
   import mx.graphics.IFill;
   import flash.events.EventDispatcher;
   import mx.events.PropertyChangeEvent;
   import flash.display.Graphics;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.events.Event;
   
   use namespace mx_internal;
   
   public class FilledElement extends StrokedElement
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      protected var _fill:IFill;
      
      public function FilledElement()
      {
         super();
      }
      
      [Bindable("propertyChange")]
      public function get fill() : IFill
      {
         return this._fill;
      }
      
      public function set fill(param1:IFill) : void
      {
         var _loc3_:EventDispatcher = null;
         var _loc2_:IFill = this._fill;
         _loc3_ = this._fill as EventDispatcher;
         if(_loc3_)
         {
            _loc3_.removeEventListener(PropertyChangeEvent.PROPERTY_CHANGE,this.fill_propertyChangeHandler);
         }
         this._fill = param1;
         _loc3_ = this._fill as EventDispatcher;
         if(_loc3_)
         {
            _loc3_.addEventListener(PropertyChangeEvent.PROPERTY_CHANGE,this.fill_propertyChangeHandler);
         }
         dispatchPropertyChangeEvent("fill",_loc2_,this._fill);
         invalidateDisplayList();
      }
      
      override protected function beginDraw(param1:Graphics) : void
      {
         var _loc3_:Rectangle = null;
         var _loc4_:Rectangle = null;
         var _loc2_:Point = new Point(drawX,drawY);
         if(stroke)
         {
            _loc3_ = getStrokeBounds();
            _loc3_.offset(drawX,drawY);
            stroke.apply(param1,_loc3_,_loc2_);
         }
         else
         {
            param1.lineStyle();
         }
         if(this.fill)
         {
            _loc4_ = new Rectangle(drawX,drawY,width,height);
            this.fill.begin(param1,_loc4_,_loc2_);
         }
      }
      
      override protected function endDraw(param1:Graphics) : void
      {
         if(this.fill)
         {
            this.fill.end(param1);
         }
      }
      
      private function fill_propertyChangeHandler(param1:Event) : void
      {
         invalidateDisplayList();
      }
   }
}
