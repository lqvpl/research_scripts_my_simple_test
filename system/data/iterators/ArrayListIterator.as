package system.data.iterators
{
   import system.data.ListIterator;
   import system.errors.ConcurrencyError;
   import com.enfluid.ltp.model.DataModel;
   import flash.errors.IllegalOperationError;
   import system.errors.NoSuchElementError;
   import com.enfluid.ltp.view.components.SelfAdjustingLabel;
   import mx.binding.BindingManager;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import system.data.lists.ArrayList;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import system.numeric.Mathematics;
   
   public final class ArrayListIterator implements ListIterator
   {
       
      
      private var _key:uint;
      
      private var _expectedModCount:Number;
      
      private var _listast:int;
      
      private var _list:ArrayList;
      
      public function ArrayListIterator(param1:ArrayList, param2:uint = 0)
      {
         super();
         if(param1 == null)
         {
            throw new ArgumentError("ListIterator constructor failed, the \'list\' argument not must be \'null\' or \'undefined\'.");
         }
         _list = param1;
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 103 + 59) * 87) + 34 - 1);
         }
         §§pop()._key = §§pop();
         §§push();
         §§push(-1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 48 - 52) * 71 - 18);
         }
         §§pop()._listast = §§pop();
         _expectedModCount = _list.modCount;
         seek(param2);
      }
      
      public function remove() : *
      {
         §§push(_listast);
         §§push(-1);
         if(_loc5_)
         {
            §§push(-((§§pop() + 100) * 34 - 1 - 62));
         }
         if(§§pop() == §§pop())
         {
            throw new IllegalOperationError("ListIterator.remove() failed, the iterator state is not valid.");
         }
         checkForComodification();
         try
         {
            _list.removeAt(_listast);
            if(_listast < _key)
            {
               _key--;
            }
            §§push();
            §§push(-1);
            if(_loc4_)
            {
               §§push((§§pop() + 17) * 32 - 1 - 1 - 1 + 110);
            }
            §§pop()._listast = §§pop();
            _expectedModCount = _list.modCount;
            return;
         }
         catch(e:ConcurrencyError)
         {
            throw new ConcurrencyError("ListIterator.remove() method failed.");
         }
      }
      
      public final function checkForComodification() : void
      {
         if(_list.modCount != _expectedModCount)
         {
            throw new ConcurrencyError("ListIterator modification failed, the list is changed during the iteration.");
         }
      }
      
      public function reset() : void
      {
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 116) * 13 * 45 - 1);
         }
         §§pop()._key = §§pop();
      }
      
      public function key() : *
      {
         return _key;
      }
      
      public function set(param1:*) : void
      {
         var o:* = param1;
         §§push(_listast);
         §§push(-1);
         if(_loc4_)
         {
            §§push((§§pop() + 1 + 1 - 1) * 45 + 1);
         }
         if(§§pop() == §§pop())
         {
            throw new IllegalOperationError("ListIterator.set() failed, the iterator state is not valid.");
         }
         checkForComodification();
         try
         {
            _list.set(_listast,o);
            _expectedModCount = _list.modCount;
            return;
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public function nextIndex() : uint
      {
         return _key;
      }
      
      public function add(param1:*) : void
      {
         var o:* = param1;
         checkForComodification();
         try
         {
            _key = _loc4_;
            _list.addAt(Number(_key),o);
            §§push();
            §§push(-1);
            if(_loc5_)
            {
               §§push(§§pop() - 92 - 1 + 6);
            }
            §§pop()._listast = §§pop();
            _expectedModCount = _list.modCount;
            return;
         }
         catch(e:Error)
         {
            throw e;
         }
      }
      
      public function previousIndex() : int
      {
         return _key - 1;
      }
      
      public function hasNext() : Boolean
      {
         return _key < _list.size();
      }
      
      public function hasPrevious() : Boolean
      {
         §§push(_key);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         return §§pop() != §§pop();
      }
      
      public function next() : *
      {
         var _loc1_:* = undefined;
         if(hasNext())
         {
            _loc1_ = _list.get(_key);
            _listast = _key;
            _key++;
            return _loc1_;
         }
         throw new NoSuchElementError("ListIterator.next() method failed.");
      }
      
      public function previous() : *
      {
         var i:Number = NaN;
         var prev:* = undefined;
         checkForComodification();
         try
         {
            i = _key - 1;
            prev = _list.get(i);
            _listast = _key = i;
            return prev;
         }
         catch(e:Error)
         {
            checkForComodification();
            throw new NoSuchElementError("ListIterator.previous method failed.");
         }
      }
      
      public function seek(param1:*) : void
      {
         §§push();
         §§push(Mathematics);
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 112 - 110 - 27);
         }
         §§pop()._key = §§pop().clamp(§§pop(),§§pop(),_list.size());
         _listast = _key - 1;
      }
   }
}
