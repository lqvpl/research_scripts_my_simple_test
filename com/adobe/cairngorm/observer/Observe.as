package com.adobe.cairngorm.observer
{
   import mx.events.FlexEvent;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.SlimScrollerSkinInnerClass0;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   
   public final class Observe extends Observer
   {
       
      
      private var _handler:Function;
      
      private var _source:Object;
      
      public function Observe()
      {
         super();
         sendArgumentsToHandler = true;
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
            if(isHandlerInitialized && isSourceInitialized)
            {
               callHandler();
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
         if(isHandlerInitialized && isSourceInitialized)
         {
            callHandler();
         }
      }
   }
}
