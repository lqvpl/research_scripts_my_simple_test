package spark.collections
{
   import flash.events.EventDispatcher;
   import mx.collections.IList;
   import flash.events.Event;
   import mx.events.CollectionEvent;
   import mx.events.CollectionEventKind;
   
   public class SubListView extends EventDispatcher implements IList
   {
       
      
      private var _list:IList;
      
      private var _startIndex:int = 0;
      
      private var _count:int = -1;
      
      public function SubListView(param1:IList = null, param2:int = 0, param3:int = -1)
      {
         super();
         this.list = param1;
         this.startIndex = param2;
         this.count = param3;
      }
      
      private function dispatchChangeEvent(param1:String) : void
      {
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
      }
      
      private function dispatchCollectionResetEvent() : void
      {
         if(hasEventListener(CollectionEvent.COLLECTION_CHANGE))
         {
            dispatchEvent(new CollectionEvent(CollectionEvent.COLLECTION_CHANGE,false,false,CollectionEventKind.RESET));
         }
      }
      
      [Bindable("listChanged")]
      public function get list() : IList
      {
         return this._list;
      }
      
      public function set list(param1:IList) : void
      {
         if(this._list == param1)
         {
            return;
         }
         if(this._list)
         {
            this._list.removeEventListener(CollectionEvent.COLLECTION_CHANGE,this.handleCollectionChangeEvent);
         }
         this._list = param1;
         if(this._list)
         {
            this._list.addEventListener(CollectionEvent.COLLECTION_CHANGE,this.handleCollectionChangeEvent,false,0,true);
         }
         this.dispatchChangeEvent("listChanged");
         this.dispatchCollectionResetEvent();
      }
      
      [Bindable("startIndexChanged")]
      public function get startIndex() : int
      {
         return this._startIndex;
      }
      
      public function set startIndex(param1:int) : void
      {
         if(this._startIndex == param1)
         {
            return;
         }
         this._startIndex = param1;
         this.dispatchChangeEvent("startIndexChanged");
         this.dispatchCollectionResetEvent();
      }
      
      [Bindable("countChanged")]
      public function get count() : int
      {
         return this._count;
      }
      
      public function set count(param1:int) : void
      {
         if(this._count == param1)
         {
            return;
         }
         this._count = param1;
         this.dispatchChangeEvent("countChanged");
         this.dispatchCollectionResetEvent();
      }
      
      private function handleCollectionChangeEvent(param1:CollectionEvent) : void
      {
         var _loc2_:CollectionEvent = null;
         var _loc3_:int = param1.location;
         switch(param1.kind)
         {
            case CollectionEventKind.ADD:
            case CollectionEventKind.REMOVE:
               _loc2_ = this.handleModifyCollectionChangeEvent(param1);
               break;
            case CollectionEventKind.REPLACE:
            case CollectionEventKind.UPDATE:
               _loc2_ = this.handleUpdateCollectionChangeEvent(param1);
               break;
            case CollectionEventKind.MOVE:
               break;
            default:
               _loc2_ = param1;
         }
         if(_loc2_)
         {
            dispatchEvent(_loc2_);
         }
      }
      
      private function createCollectionEvent(param1:String) : CollectionEvent
      {
         return new CollectionEvent(CollectionEvent.COLLECTION_CHANGE,false,false,param1);
      }
      
      private function handleModifyCollectionChangeEvent(param1:CollectionEvent) : CollectionEvent
      {
         var _loc6_:Object = null;
         var _loc2_:int = this.startIndex + this.length;
         if(param1.location >= _loc2_)
         {
            return null;
         }
         if(param1.location <= this.startIndex)
         {
            return this.createCollectionEvent(CollectionEventKind.REFRESH);
         }
         var _loc3_:CollectionEvent = this.createCollectionEvent(param1.kind);
         _loc3_.location = param1.location - this.startIndex;
         var _loc4_:Array = [];
         _loc3_.items = _loc4_;
         var _loc5_:int = param1.location;
         for each(_loc6_ in param1.items)
         {
            _loc4_.push(_loc6_);
            if(_loc5_++ >= _loc2_)
            {
               break;
            }
         }
         return _loc3_;
      }
      
      private function handleUpdateCollectionChangeEvent(param1:CollectionEvent) : CollectionEvent
      {
         var _loc6_:Object = null;
         var _loc2_:int = this.startIndex + this.length;
         if(param1.location + param1.items.length < this.startIndex || param1.location >= _loc2_)
         {
            return null;
         }
         var _loc3_:CollectionEvent = this.createCollectionEvent(param1.kind);
         var _loc4_:int = Math.max(this.startIndex,param1.location);
         _loc3_.location = _loc4_ - this.startIndex;
         var _loc5_:Array = [];
         _loc3_.items = _loc5_;
         for each(_loc6_ in param1.items)
         {
            _loc5_.push(_loc6_);
            if(_loc4_++ >= _loc2_)
            {
               break;
            }
         }
         return _loc3_;
      }
      
      [Bindable("collectionChange")]
      public function get length() : int
      {
         if(this.count == -1)
         {
            return !!this.list?int(this.list.length - this.startIndex):0;
         }
         return this.count;
      }
      
      public function addItem(param1:Object) : void
      {
         if(this.list)
         {
            this.list.addItem(param1);
         }
      }
      
      public function addItemAt(param1:Object, param2:int) : void
      {
         if(this.list)
         {
            this.list.addItemAt(param1,param2 + this.startIndex);
         }
      }
      
      public function getItemAt(param1:int, param2:int = 0) : Object
      {
         return !!this.list?this.list.getItemAt(param1 + this.startIndex,param2):null;
      }
      
      public function getItemIndex(param1:Object) : int
      {
         if(!this.list || this.count == 0)
         {
            return -1;
         }
         var _loc2_:int = this.list.getItemIndex(param1);
         return _loc2_ < this.startIndex || _loc2_ >= this.startIndex + this.length?-1:int(_loc2_ - this.startIndex);
      }
      
      public function itemUpdated(param1:Object, param2:Object = null, param3:Object = null, param4:Object = null) : void
      {
         if(this.list)
         {
            this.list.itemUpdated(param1,param2,param3,param4);
         }
      }
      
      public function removeAll() : void
      {
         if(this.list)
         {
            this.list.removeAll();
         }
      }
      
      public function removeItem(param1:Object) : Boolean
      {
         return this.list && "removeItem" in this.list?Boolean(this.list["removeItem"](param1)):false;
      }
      
      public function removeItemAt(param1:int) : Object
      {
         return !!this.list?this.list.removeItemAt(this.startIndex + param1):null;
      }
      
      public function setItemAt(param1:Object, param2:int) : Object
      {
         return !!this.list?this.list.setItemAt(param1,this.startIndex + param2):null;
      }
      
      public function toArray() : Array
      {
         var _loc1_:Array = null;
         if(!this.list)
         {
            return [];
         }
         _loc1_ = new Array(this.length);
         var _loc2_:int = Math.min(_loc1_.length,this.list.length - this.startIndex);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_[_loc3_] = this.list.getItemAt(_loc3_ + this.startIndex);
            _loc3_++;
         }
         return _loc1_;
      }
   }
}
