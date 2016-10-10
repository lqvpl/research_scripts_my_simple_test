package com.enfluid.ltp.util
{
   import mx.binding.utils.ChangeWatcher;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.SelectColumnsHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.vo.ProjectVO;
   
   use namespace mx_internal;
   
   public final class FilterChangeWatcher
   {
       
      
      private var functionToAdd:Function;
      
      private var functionForAdding:Function;
      
      private var watcher:ChangeWatcher;
      
      public function FilterChangeWatcher(param1:ProjectVO, param2:*, param3:Function, param4:Function)
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
