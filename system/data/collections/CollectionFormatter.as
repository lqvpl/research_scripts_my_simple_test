package system.data.collections
{
   import system.formatters.Formattable;
   import flash.utils.ByteArray;
   import system.data.Collection;
   import spark.primitives.BitmapImage;
   import mx.binding.BindingManager;
   
   public final class CollectionFormatter implements Formattable
   {
       
      
      public function CollectionFormatter()
      {
         super();
      }
      
      public function format(param1:* = null) : String
      {
         var _loc2_:* = null;
         var _loc3_:Collection = null;
         var _loc4_:Array = null;
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() * 31 + 96 - 1 + 1 + 1) * 65);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() - 99) * 108);
         }
         var _loc6_:* = §§pop();
         if(param1 != null && param1 is Collection)
         {
            _loc2_ = "{";
            _loc3_ = param1 as Collection;
            §§push(_loc3_.size());
            §§push(0);
            if(_loc8_)
            {
               §§push((-(-§§pop() - 1 + 1) + 1) * 26 + 73);
            }
            if(§§pop() > §§pop())
            {
               _loc4_ = _loc3_.toArray();
               _loc5_ = int(_loc4_.length);
               while(_loc6_ < _loc5_)
               {
                  _loc2_ = _loc2_ + _loc4_[_loc6_];
                  if(_loc6_ < _loc5_ - 1)
                  {
                     _loc2_ = _loc2_ + ",";
                  }
                  _loc6_++;
               }
            }
            _loc2_ = _loc2_ + "}";
            return _loc2_;
         }
         return "";
      }
   }
}
