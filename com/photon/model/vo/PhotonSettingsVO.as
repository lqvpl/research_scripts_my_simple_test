package com.photon.model.vo
{
   import flash.events.IEventDispatcher;
   import flash.filesystem.File;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import flash.filesystem.FileStream;
   import flash.events.Event;
   import flash.filesystem.FileMode;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.ViewModel;
   import mx.events.FlexEvent;
   import flash.utils.describeType;
   import mx.binding.utils.ChangeWatcher;
   
   public class PhotonSettingsVO extends PhotonValueObject implements IEventDispatcher
   {
      
      private static var _3143036file:File;
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
       
      
      protected var fileName:String;
      
      private var fileStream:FileStream;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function PhotonSettingsVO(param1:String)
      {
         var _loc5_:XML = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         this.fileStream = new FileStream();
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
         file = File.applicationStorageDirectory.resolvePath(param1 + ".json");
         var _loc2_:Object = {};
         if(file.exists)
         {
            this.fileStream.open(file,FileMode.READ);
            _loc6_ = this.fileStream.readUTFBytes(this.fileStream.bytesAvailable);
            this.fileStream.close();
            _loc2_ = JSON.parse(_loc6_);
         }
         var _loc3_:XML = describeType(this);
         var _loc4_:XMLList = _loc3_..accessor;
         §§push(_loc4_.length());
         §§push(0);
         if(_loc11_)
         {
            §§push(-((§§pop() + 1 - 117 + 87) * 104) + 1 + 1);
         }
         if(§§pop() == §§pop())
         {
            throw new Error("No variables were found.  Ensure that any class extending PhotonSettingsVO is set to [Bindable]");
         }
         §§push(0);
         if(_loc12_)
         {
            §§push(§§pop() + 1 - 64 - 1 + 1 + 1);
         }
         for each(_loc5_ in _loc4_)
         {
            _loc7_ = _loc5_.@name;
            if(_loc2_.hasOwnProperty(_loc7_))
            {
               this[_loc7_] = _loc2_[_loc7_];
            }
            _loc8_ = ChangeWatcher.watch(this,_loc7_,this.save);
         }
      }
      
      [Bindable(event="propertyChange")]
      public static function get file() : File
      {
         return PhotonSettingsVO._3143036file;
      }
      
      public static function set file(param1:File) : void
      {
         var _loc3_:IEventDispatcher = null;
         var _loc2_:Object = PhotonSettingsVO._3143036file;
         if(_loc2_ !== param1)
         {
            PhotonSettingsVO._3143036file = param1;
            _loc3_ = PhotonSettingsVO.staticEventDispatcher;
            if(_loc3_ !== null)
            {
               _loc3_.dispatchEvent(PropertyChangeEvent.createUpdateEvent(PhotonSettingsVO,"file",_loc2_,param1));
            }
         }
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      private final function save(param1:Event) : void
      {
         this.fileStream.open(file,FileMode.WRITE);
         this.fileStream.writeUTFBytes(JSON.stringify(this));
         this.fileStream.close();
      }
      
      public final function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public final function dispatchEvent(param1:Event) : Boolean
      {
         return this._bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public final function hasEventListener(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.hasEventListener(param1);
      }
      
      public final function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this._bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public final function willTrigger(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.willTrigger(param1);
      }
   }
}
