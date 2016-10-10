package com.enfluid.ltp.view.containers
{
   import spark.components.SkinnableContainer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.Button;
   import flash.events.MouseEvent;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import flash.utils.ByteArray;
   import mx.events.PropertyChangeEvent;
   
   public final class RankDrawer extends SkinnableContainer
   {
       
      
      private var _opened:Boolean = false;
      
      private var _label:String;
      
      [SkinPart(required="false")]
      public var openButton:Button;
      
      public function RankDrawer()
      {
         super();
      }
      
      public function get opened() : Boolean
      {
         return this._opened;
      }
      
      public function set opened(param1:Boolean) : void
      {
         if(this._opened != param1)
         {
            this._opened = param1;
            invalidateSkinState();
            if(this._opened)
            {
               new SetUserEvent("UserEvent.RankChecker.Open").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.RankChecker.Close").execute();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label() : String
      {
         return this._label;
      }
      
      private function set _102727412label(param1:String) : void
      {
         if(this.openButton)
         {
            this.openButton.label = param1;
         }
         this._label = param1;
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.openButton)
         {
            (param2 as Button).addEventListener(MouseEvent.CLICK,this.clickHandler);
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         if(param2 == this.openButton)
         {
            (param2 as Button).removeEventListener(MouseEvent.CLICK,this.clickHandler);
         }
         super.partRemoved(param1,param2);
      }
      
      override protected function getCurrentSkinState() : String
      {
         return !!this.opened?"opened":super.getCurrentSkinState();
      }
      
      private final function clickHandler(param1:MouseEvent) : void
      {
         this.opened = !this.opened;
      }
      
      public function set label(param1:String) : void
      {
         var _loc2_:Object = this.label;
         if(_loc2_ !== param1)
         {
            this._102727412label = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label",_loc2_,param1));
            }
         }
      }
   }
}
