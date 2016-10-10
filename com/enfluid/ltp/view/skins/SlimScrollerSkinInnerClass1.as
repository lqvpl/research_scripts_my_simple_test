package com.enfluid.ltp.view.skins
{
   import spark.components.HScrollBar;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   
   public final class SlimScrollerSkinInnerClass1 extends HScrollBar
   {
       
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.SlimScrollerSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function SlimScrollerSkinInnerClass1()
      {
         super();
         this.visible = false;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = SlimHScrollBarSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : com.enfluid.ltp.view.skins.SlimScrollerSkin
      {
         return this._88844982outerDocument;
      }
      
      public function set outerDocument(param1:com.enfluid.ltp.view.skins.SlimScrollerSkin) : void
      {
         var _loc2_:Object = this._88844982outerDocument;
         if(_loc2_ !== param1)
         {
            this._88844982outerDocument = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outerDocument",_loc2_,param1));
            }
         }
      }
   }
}
