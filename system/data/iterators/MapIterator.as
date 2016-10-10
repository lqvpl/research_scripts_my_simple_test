package system.data.iterators
{
   import system.data.Iterator;
   import mx.core.ClassFactory;
   import spark.skins.spark.DefaultGridItemRenderer;
   import spark.components.VGroup;
   import mx.binding.BindingManager;
   import system.data.Map;
   import spark.components.Label;
   import flash.errors.IllegalOperationError;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import flash.events.MouseEvent;
   
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
