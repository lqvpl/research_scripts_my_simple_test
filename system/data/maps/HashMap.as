package system.data.maps
{
   import system.data.Map;
   import flash.utils.Dictionary;
   import mx.graphics.SolidColor;
   import flash.display.DisplayObject;
   import mx.core.FlexGlobals;
   import system.data.Iterator;
   import system.data.iterators.MapIterator;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   import spark.components.Button;
   import spark.effects.easing.Power;
   import system.Reflection;
   import system.eden;
   import system.data.iterators.ArrayIterator;
   
   public dynamic class HashMap implements Map
   {
       
      
      private var _values;
      
      private var _keys;
      
      private var _size:uint;
      
      public function HashMap(... rest)
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 16 - 69 + 3 - 1 - 1 - 1 + 1);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() + 116 - 73));
         }
         var _loc5_:* = §§pop();
         super();
         clear();
         §§push(rest);
         §§push(0);
         if(_loc6_)
         {
            §§push(-§§pop() + 1 + 116 + 71 - 1);
         }
         var _loc2_:Array = §§pop()[§§pop()] as Array;
         §§push(rest);
         §§push(1);
         if(_loc6_)
         {
            §§push(-((§§pop() + 1) * 57 * 73 - 1 - 33 + 1));
         }
         var _loc3_:Array = §§pop()[§§pop()] as Array;
         if(_loc2_ != null && _loc3_ != null)
         {
            §§push(_loc2_.length);
            §§push(0);
            if(_loc6_)
            {
               §§push((-(§§pop() + 1 + 5) + 1) * 54);
            }
            if(§§pop() > §§pop() && _loc2_.length == _loc3_.length)
            {
               _loc4_ = int(_loc2_.length);
               §§push(0);
               if(_loc6_)
               {
                  §§push(§§pop() + 1 + 1 - 108 - 42 - 1);
               }
               _loc5_ = §§pop();
               while(_loc5_ < _loc4_)
               {
                  put(_loc2_[_loc5_],_loc3_[_loc5_]);
                  _loc5_++;
               }
            }
         }
      }
      
      public function containsKey(param1:*) : Boolean
      {
         return _keys[param1] !== undefined;
      }
      
      public function size() : uint
      {
         return _size;
      }
      
      public function isEmpty() : Boolean
      {
         §§push(_size);
         §§push(0);
         if(_loc1_)
         {
            §§push(-((§§pop() * 59 * 89 - 109) * 60 + 1) - 48);
         }
         return §§pop() == §§pop();
      }
      
      public function remove(param1:*) : *
      {
         var _loc3_:* = undefined;
         §§push(0);
         if(_loc7_)
         {
            §§push(((§§pop() + 91 + 32) * 86 - 38 + 99) * 34);
         }
         var _loc4_:uint = §§pop();
         var _loc2_:* = param1;
         if(containsKey(_loc2_))
         {
            _size--;
            _loc3_ = _keys[_loc2_];
            _loc4_ = _values[_loc3_];
            §§push(_loc4_);
            §§push(1);
            if(_loc7_)
            {
               §§push(---§§pop());
            }
            if(§§pop() > §§pop())
            {
               _values[_loc3_] = _loc4_ - 1;
            }
            else
            {
               delete _values[_loc3_];
            }
            delete _keys[_loc2_];
            return _loc3_;
         }
         return null;
      }
      
      public function putAll(param1:Map) : void
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1 - 1) - 81);
         }
         var _loc5_:* = §§pop();
         var _loc2_:Array = param1.getValues();
         var _loc3_:Array = param1.getKeys();
         var _loc4_:int = _loc3_.length;
         while(_loc5_ < _loc4_)
         {
            put(_loc3_[_loc5_],_loc2_[_loc5_]);
            §§push(_loc5_);
            §§push(-1);
            if(_loc6_)
            {
               §§push(-(§§pop() * 38 - 1) - 76 + 12);
            }
            _loc5_ = int(§§pop() - §§pop());
         }
      }
      
      public function clear() : void
      {
         _keys = new Dictionary(true);
         _values = new Dictionary(true);
         §§push();
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() * 77 + 19 + 61 - 3);
         }
         §§pop()._size = §§pop();
      }
      
      public function getValues() : Array
      {
         var _loc2_:* = undefined;
         var _loc1_:Array = [];
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() - 1 + 1 + 1) + 1 - 1);
         }
         for each(_loc2_ in _keys)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function put(param1:*, param2:*) : *
      {
         var _loc3_:* = null;
         if(containsKey(param1))
         {
            _loc3_ = _keys[param1];
            remove(param1);
         }
         var _loc4_:uint = _values[param2];
         §§push(_values);
         §§push(param2);
         §§push(_loc4_);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 1 + 93 - 30 + 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc4_);
            §§push(1);
            if(_loc7_)
            {
               §§push((§§pop() * 85 - 101 - 1 + 1 + 1) * 81);
            }
            §§push(§§pop() + §§pop());
         }
         else
         {
            §§push(1);
            if(_loc7_)
            {
               §§push(-(§§pop() + 27 + 46) + 1 - 93 + 1);
            }
            §§push(§§pop());
         }
         §§pop()[§§pop()] = §§pop();
         _size++;
         _keys[param1] = param2;
         return _loc3_;
      }
      
      public function containsValue(param1:*) : Boolean
      {
         return _values[param1] !== undefined;
      }
      
      public function clone() : *
      {
         var _loc1_:HashMap = new HashMap();
         _loc1_.putAll(this);
         return _loc1_;
      }
      
      public function get(param1:*) : *
      {
         return _keys[param1];
      }
      
      public function getKeys() : Array
      {
         var _loc2_:* = undefined;
         var _loc1_:Array = [];
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-§§pop() * 14));
         }
         for(_loc2_ in _keys)
         {
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function toString() : String
      {
         return formatter.format(this);
      }
      
      public function iterator() : Iterator
      {
         return new MapIterator(this);
      }
      
      public function toSource(param1:int = 0) : String
      {
         return "new " + Reflection.getClassPath(this) + "(" + eden.serialize(getKeys()) + "," + eden.serialize(getValues()) + ")";
      }
      
      public function keyIterator() : Iterator
      {
         return new ArrayIterator(getKeys());
      }
   }
}
