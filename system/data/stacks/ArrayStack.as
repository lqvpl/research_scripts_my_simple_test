package system.data.stacks
{
   import system.data.collections.ArrayCollection;
   import system.data.Stack;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.constants.Values;
   import system.errors.NoSuchElementError;
   import flash.utils.setTimeout;
   import mx.graphics.LinearGradient;
   
   public final class ArrayStack extends ArrayCollection implements Stack
   {
       
      
      public function ArrayStack(param1:* = null)
      {
         super(param1);
      }
      
      public function peek() : *
      {
         return _a[_a.length - 1];
      }
      
      override public function clone() : *
      {
         return new ArrayStack(toArray());
      }
      
      public function search(param1:*) : int
      {
         return indexOf(param1);
      }
      
      public function push(param1:*) : void
      {
         _a.push(param1);
      }
      
      public function pop() : *
      {
         return !!isEmpty()?null:_a.pop();
      }
   }
}
