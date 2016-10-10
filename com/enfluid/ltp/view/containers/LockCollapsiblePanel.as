package com.enfluid.ltp.view.containers
{
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.LockCollapsiblePanelSkin;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.events.PropertyChangeEvent;
   
   public class LockCollapsiblePanel extends CollapsiblePanel
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _339063352showLock:Boolean = false;
      
      public function LockCollapsiblePanel()
      {
         super();
         mx_internal::_document = this;
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
            this.skinClass = LockCollapsiblePanelSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get showLock() : Boolean
      {
         return this._339063352showLock;
      }
      
      public function set showLock(param1:Boolean) : void
      {
         var _loc2_:Object = this._339063352showLock;
         if(_loc2_ !== param1)
         {
            this._339063352showLock = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showLock",_loc2_,param1));
            }
         }
      }
   }
}
