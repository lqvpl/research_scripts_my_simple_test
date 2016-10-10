package com.enfluid.ltp.view.components
{
   import spark.components.Scroller;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import mx.controls.Spacer;
   
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
