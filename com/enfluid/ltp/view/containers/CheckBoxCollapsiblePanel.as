package com.enfluid.ltp.view.containers
{
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.CheckBoxCollapsiblePanelSkin;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import mx.events.PropertyChangeEvent;
   
   public class CheckBoxCollapsiblePanel extends CollapsiblePanel
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1286914967helpTitle:String;
      
      private var _2033484280helpContent:String;
      
      public function CheckBoxCollapsiblePanel()
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
            this.skinClass = CheckBoxCollapsiblePanelSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get helpTitle() : String
      {
         return this._1286914967helpTitle;
      }
      
      public function set helpTitle(param1:String) : void
      {
         var _loc2_:Object = this._1286914967helpTitle;
         if(_loc2_ !== param1)
         {
            this._1286914967helpTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpTitle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get helpContent() : String
      {
         return this._2033484280helpContent;
      }
      
      public function set helpContent(param1:String) : void
      {
         var _loc2_:Object = this._2033484280helpContent;
         if(_loc2_ !== param1)
         {
            this._2033484280helpContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpContent",_loc2_,param1));
            }
         }
      }
   }
}
