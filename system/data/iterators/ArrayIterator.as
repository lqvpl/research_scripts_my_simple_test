package system.data.iterators
{
   import system.data.Iterator;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import mx.states.Transition;
   import system.numeric.Mathematics;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import flash.events.MouseEvent;
   
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
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) + 1);
         }
         §§pop()._k = §§pop();
      }
      
      public function remove() : *
      {
         _k = Number(_k) - 1;
         §§push(_a);
         §§push(Number(_k));
         §§push(1);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 90 + 105 - 22 - 1 + 24 + 1);
         }
         §§push(§§pop().splice(§§pop(),§§pop()));
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() + 51 + 73) * 118 * 17 + 1);
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
            §§push(-(§§pop() - 1 + 1 - 85) - 1 + 1);
         }
         §§pop()._k = §§pop();
      }
      
      public function seek(param1:*) : void
      {
         §§push();
         §§push(Mathematics);
         §§push(param1 - 1);
         §§push(-1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 77) - 99 + 1 - 1 - 1 + 42);
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
