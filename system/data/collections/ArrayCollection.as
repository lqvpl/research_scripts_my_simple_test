package system.data.collections
{
   import system.data.Collection;
   import system.Equatable;
   import hr.binaria.asx3m.annotations.Annotation;
   import system.data.Iterator;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import spark.components.gridClasses.GridLayer;
   import spark.filters.DropShadowFilter;
   import com.hurlant.math.BigInteger;
   import spark.primitives.BitmapImage;
   import system.data.iterators.ArrayIterator;
   import com.enfluid.ltp.util.KeywordUtil;
   import system.Reflection;
   import system.serializers.eden.BuiltinSerializer;
   import flash.utils.ByteArray;
   import system.data.Iterable;
   
   public class ArrayCollection implements Collection, Equatable
   {
       
      
      protected var _a:Array;
      
      public function ArrayCollection(param1:* = null)
      {
         var _loc2_:Array = null;
         var _loc3_:Iterator = null;
         super();
         if(param1 is Collection)
         {
            param1 = param1.toArray();
         }
         else if(param1 is Iterable)
         {
            _loc2_ = [];
            _loc3_ = (param1 as Iterable).iterator();
            while(_loc3_.hasNext())
            {
               _loc2_.push(_loc3_.next());
            }
            param1 = _loc2_;
         }
         if(param1 as Array != null && §§pop() > §§pop())
         {
            _a = param1.slice();
         }
         else
         {
            _a = [];
         }
      }
      
      public function addAll(param1:Collection) : Boolean
      {
         var _loc2_:Iterator = null;
         if(param1 == null)
         {
            return false;
         }
         §§push(param1.size());
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 1 - 1 - 23);
         }
         if(§§pop() > §§pop())
         {
            _loc2_ = param1.iterator();
            while(_loc2_.hasNext())
            {
               add(_loc2_.next());
            }
            return true;
         }
         return false;
      }
      
      public function size() : uint
      {
         return _a.length;
      }
      
      public final function containsAll(param1:Collection) : Boolean
      {
         var _loc2_:Iterator = param1.iterator();
         while(_loc2_.hasNext())
         {
            if(!contains(_loc2_.next()))
            {
               return false;
            }
         }
         return true;
      }
      
      public function isEmpty() : Boolean
      {
         §§push(_a.length);
         §§push(0);
         if(_loc1_)
         {
            §§push(-((§§pop() - 1) * 57) - 47);
         }
         return §§pop() == §§pop();
      }
      
      public function remove(param1:*) : *
      {
         var _loc3_:* = undefined;
         var _loc2_:Iterator = iterator();
         if(param1 == null)
         {
            while(_loc2_.hasNext())
            {
               if(_loc2_.next() == null)
               {
                  _loc2_.remove();
                  return true;
               }
            }
         }
         else
         {
            while(_loc2_.hasNext())
            {
               _loc3_ = _loc2_.next();
               if(param1 == _loc3_)
               {
                  _loc2_.remove();
                  return true;
               }
            }
         }
         return false;
      }
      
      public function indexOf(param1:*, param2:uint = 0) : int
      {
         return _a.indexOf(param1,param2);
      }
      
      public function clear() : void
      {
         §§push(_a);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() * 78 + 1 - 1 - 1 + 116) * 57);
         }
         §§pop().splice(§§pop());
      }
      
      public final function retainAll(param1:Collection) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Iterator = iterator();
         while(_loc3_.hasNext())
         {
            if(!param1.contains(_loc3_.next()))
            {
               _loc3_.remove();
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      public function clone() : *
      {
         return new ArrayCollection(toArray());
      }
      
      public function toArray() : Array
      {
         return _a;
      }
      
      public function contains(param1:*) : Boolean
      {
         §§push(_a.indexOf(param1));
         §§push(-1);
         if(_loc2_)
         {
            §§push((-§§pop() + 88 - 1) * 44);
         }
         return §§pop() > §§pop();
      }
      
      public function get(param1:*) : *
      {
         return _a[param1];
      }
      
      public function add(param1:*) : Boolean
      {
         if(param1 === undefined)
         {
            return false;
         }
         _a.push(param1);
         return true;
      }
      
      public final function toString() : String
      {
         return formatter.format(this);
      }
      
      public function iterator() : Iterator
      {
         return new ArrayIterator(toArray());
      }
      
      public final function toSource(param1:int = 0) : String
      {
         var _loc2_:* = "new " + Reflection.getClassPath(this) + "(";
         var _loc3_:Array = toArray();
         §§push(_loc3_.length);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() + 62) * 116);
         }
         if(§§pop() > §§pop())
         {
            _loc2_ = _loc2_ + BuiltinSerializer.emitArray(_loc3_);
         }
         _loc2_ = _loc2_ + ")";
         return _loc2_;
      }
      
      public final function removeAll(param1:Collection) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Iterator = iterator();
         while(_loc3_.hasNext())
         {
            if(param1.contains(_loc3_.next()))
            {
               _loc3_.remove();
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      public final function equals(param1:*) : Boolean
      {
         if(param1 == this)
         {
            return true;
         }
         if(Reflection.getClassPath(this) != Reflection.getClassPath(param1))
         {
            return false;
         }
         var _loc2_:Collection = param1 as Collection;
         if(_loc2_ == null || _loc2_.size() != size())
         {
            return false;
         }
         return this.containsAll(_loc2_);
      }
   }
}
