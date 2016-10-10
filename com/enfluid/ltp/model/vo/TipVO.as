package com.enfluid.ltp.model.vo
{
   import flash.display.DisplayObjectContainer;
   import com.adobe.cairngorm.observer.Observe;
   import mx.binding.BindingManager;
   
   public final class TipVO
   {
       
      
      public var verticalPosition:String;
      
      public var horizontalPosition:String;
      
      public var anchor:DisplayObjectContainer;
      
      public var text:String;
      
      public var tipShowedVariableName:String;
      
      public function TipVO()
      {
         super();
      }
   }
}
