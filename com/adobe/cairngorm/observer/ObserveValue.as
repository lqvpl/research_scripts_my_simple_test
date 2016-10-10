package com.adobe.cairngorm.observer
{
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.TransparentButtonSkin;
   import mx.binding.BindingManager;
   import mx.effects.Sequence;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   import mx.graphics.SolidColor;
   import mx.events.ResizeEvent;
   
   public final class ObserveValue extends Observer
   {
       
      
      private var isValueInitialized:Boolean = false;
      
      private var _handler:Function;
      
      private var _source:Object;
      
      private var _value:Object;
      
      public function ObserveValue()
      {
         super();
         sendArgumentsToHandler = false;
      }
      
      override public function get handler() : Function
      {
         return this._handler;
      }
      
      public function set handler(param1:Function) : void
      {
         this._handler = param1;
         if(param1 != null)
         {
            isHandlerInitialized = true;
            if(isHandlerInitialized && isSourceInitialized && this.isValueInitialized)
            {
               this.callHandler();
            }
         }
      }
      
      override public function get source() : Object
      {
         return this._source;
      }
      
      public function set source(param1:Object) : void
      {
         this._source = param1;
         isSourceInitialized = true;
         if(isHandlerInitialized && isSourceInitialized && this.isValueInitialized)
         {
            this.callHandler();
         }
      }
      
      public function get value() : Object
      {
         return this._value;
      }
      
      public function set value(param1:Object) : void
      {
         this._value = param1;
         this.isValueInitialized = true;
         if(isHandlerInitialized && isSourceInitialized && this.isValueInitialized)
         {
            this.callHandler();
         }
      }
      
      override protected function callHandler() : void
      {
         if(this.source != this.value)
         {
            return;
         }
         try
         {
            callHandlerWithArguments();
            return;
         }
         catch(e:Error)
         {
            delay(e);
            return;
         }
      }
   }
}
