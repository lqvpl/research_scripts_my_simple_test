package com.adobe.cairngorm.observer
{
   import spark.layouts.VerticalLayout;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import mx.core.UIComponent;
   import mx.core.FlexGlobals;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.controls.HRule;
   
   public class Observer
   {
       
      
      public var sendArgumentsToHandler:Boolean = false;
      
      protected var isHandlerInitialized:Boolean = false;
      
      protected var isSourceInitialized:Boolean = false;
      
      public function Observer()
      {
         super();
      }
      
      public function get handler() : Function
      {
         return null;
      }
      
      public function get source() : Object
      {
         return null;
      }
      
      public final function execute(param1:Function, ... rest) : Object
      {
         var returnValue:Object = null;
         var method:Function = param1;
         var params:Array = rest;
         try
         {
            returnValue = method.apply(null,params);
         }
         catch(e:Error)
         {
            delay(e);
         }
         return returnValue;
      }
      
      protected function callHandler() : void
      {
         try
         {
            this.callHandlerWithArguments();
            return;
         }
         catch(e:Error)
         {
            delay(e);
            return;
         }
      }
      
      protected final function callHandlerWithArguments() : void
      {
         if(this.sendArgumentsToHandler)
         {
            this.handler.call(null,this.source);
         }
         else
         {
            this.handler.call();
         }
      }
      
      protected final function delay(param1:Error) : void
      {
         UIComponent(FlexGlobals.topLevelApplication).callLater(this.throwException,[param1]);
      }
      
      private final function throwException(param1:Error) : void
      {
         throw param1;
      }
   }
}
