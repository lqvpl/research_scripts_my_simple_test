package com.enfluid.ltp.view.components
{
   import spark.components.Scroller;
   import mx.binding.BindingManager;
   import spark.events.GridEvent;
   import mx.collections.SortField;
   import mx.collections.Sort;
   import mx.collections.ArrayCollection;
   
   public final class SlimScroller extends Scroller
   {
       
      
      public function SlimScroller()
      {
         super();
      }
      
      override protected function getCurrentSkinState() : String
      {
         return super.getCurrentSkinState();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         super.partRemoved(param1,param2);
      }
   }
}
