package spark.layouts.supportClasses
{
   import mx.events.DragEvent;
   import flash.geom.Point;
   
   public class DropLocation
   {
       
      
      public var dragEvent:DragEvent = null;
      
      public var dropIndex:int = -1;
      
      public var dropPoint:Point = null;
      
      public function DropLocation()
      {
         super();
      }
   }
}
