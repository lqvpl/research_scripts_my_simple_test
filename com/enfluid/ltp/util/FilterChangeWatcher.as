package com.enfluid.ltp.util
{
   import spark.components.Label;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import mx.binding.utils.ChangeWatcher;
   import com.enfluid.ltp.model.vo.ProjectVO;
   
   public final class FilterChangeWatcher
   {
       
      
      private var functionToAdd:Function;
      
      private var functionForAdding:Function;
      
      private var watcher:ChangeWatcher;
      
      public function FilterChangeWatcher(param1:ProjectVO, param2:String, param3:Function, param4:Function)
      {
         super();
         this.functionToAdd = param3;
         this.functionForAdding = param4;
         this.watcher = ChangeWatcher.watch(param1,param2,this.onChange);
      }
      
      public final function unwatch() : void
      {
         this.watcher.unwatch();
      }
      
      private final function onChange(param1:* = null) : void
      {
         this.functionForAdding.apply(this,[this.functionToAdd]);
      }
   }
}
