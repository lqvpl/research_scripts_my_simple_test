package system.data.iterators
{
   import system.data.Iterator;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.events.MouseEvent;
   import system.data.Map;
   import spark.primitives.BitmapImage;
   import mx.binding.BindingManager;
   import flash.errors.IllegalOperationError;
   import mx.graphics.SolidColor;
   
   public final class MapIterator implements Iterator
   {
       
      
      private var _i:system.data.iterators.ArrayIterator;
      
      private var _k;
      
      private var _m:Map;
      
      public function MapIterator(param1:Map)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError(this + " constructor failed, the passed-in Map argument not must be \'null\'.");
         }
         _m = param1;
         _i = new system.data.iterators.ArrayIterator(param1.getKeys());
         _k = null;
      }
      
      public function remove() : *
      {
         _i.remove();
         return _m.remove(_k);
      }
      
      public function hasNext() : Boolean
      {
         return _i.hasNext();
      }
      
      public function reset() : void
      {
         _i.reset();
      }
      
      public function seek(param1:*) : void
      {
         throw new IllegalOperationError("This Iterator does not support the seek() method.");
      }
      
      public function next() : *
      {
         _k = _i.next();
         return _m.get(_k);
      }
      
      public function key() : *
      {
         return _k;
      }
   }
}
