package system.data.maps
{
   import system.formatters.Formattable;
   import mx.states.Transition;
   import mx.binding.BindingManager;
   import system.data.Map;
   import system.data.iterators.ArrayIterator;
   import system.data.Iterator;
   
   public final class MapFormatter implements Formattable
   {
       
      
      public function MapFormatter()
      {
         super();
      }
      
      public function format(param1:* = null) : String
      {
         var _loc2_:Map = param1 as Map;
         if(_loc2_ == null)
         {
            return "";
         }
         var _loc3_:* = "{";
         var _loc4_:Iterator = new ArrayIterator(_loc2_.getValues());
         var _loc5_:Iterator = new ArrayIterator(_loc2_.getKeys());
         while(_loc5_.hasNext())
         {
            _loc3_ = _loc3_ + (_loc5_.next() + ":" + _loc4_.next());
            if(_loc5_.hasNext())
            {
               _loc3_ = _loc3_ + ",";
            }
         }
         _loc3_ = _loc3_ + "}";
         return _loc3_;
      }
   }
}
