package system.data.iterators
{
   import system.data.Iterator;
   import spark.components.Label;
   import spark.primitives.Rect;
   import system.numeric.Mathematics;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   
   public final class ArrayIterator implements Iterator
   {
       
      
      protected var _a:Array;
      
      protected var _k:Number;
      
      public function ArrayIterator(param1:Array)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError(this + " constructor failed, the passed-in Array argument not must be \'null\'.");
         }
         _a = param1;
         §§push();
         §§push(-1);
         if(_loc3_)
         {
            §§push((-(-(-§§pop() + 4) - 17) - 1) * 90);
         }
         §§pop()._k = §§pop();
      }
      
      public function remove() : *
      {
         _k = _loc2_;
         §§push(_a);
         §§push(Number(_k));
         §§push(1);
         if(_loc4_)
         {
            §§push(-((§§pop() - 10 + 1 + 1) * 18 - 26 + 26));
         }
         §§push(§§pop().splice(§§pop(),§§pop()));
         §§push(0);
         if(_loc3_)
         {
            §§push(-(--(§§pop() + 1) - 1));
         }
         return §§pop()[§§pop()];
      }
      
      public function hasNext() : Boolean
      {
         return _k < _a.length - 1;
      }
      
      public function reset() : void
      {
         §§push();
         §§push(-1);
         if(_loc2_)
         {
            §§push(((§§pop() + 10) * 48 - 1 - 24) * 27 * 49 + 4);
         }
         §§pop()._k = §§pop();
      }
      
      public function seek(param1:*) : void
      {
         §§push();
         §§push(Mathematics);
         §§push(param1 - 1);
         §§push(-1);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 1 + 1);
         }
         §§pop()._k = §§pop().clamp(§§pop(),§§pop(),_a.length);
      }
      
      public function next() : *
      {
         return _a[++_k];
      }
      
      public function key() : *
      {
         return _k;
      }
   }
}
