package com.enfluid.ltp.view.skins.FlatUIComponents.ScrollPane
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import mx.binding.BindingManager;
   import spark.primitives.Rect;
   import system.data.Collection;
   import mx.graphics.SolidColorStroke;
   import flash.events.EventDispatcher;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import mx.graphics.SolidColor;
   import mx.events.FlexEvent;
   import spark.events.GridEvent;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import flash.events.Event;
   import mx.states.State;
   
   public final class FlatUIScrollBarTrack extends SparkSkin implements IStateClient2
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function FlatUIScrollBarTrack()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FlatUIScrollBarTrack_Rect1_c()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      private final function _FlatUIScrollBarTrack_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 + 1) * 1 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 1 - 26);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 22 + 102) * 53 * 6);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 46 - 1 - 1 + 65 - 1 - 68 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(§§pop() * 20 + 70 - 28);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 118) * 18 - 1 - 1 + 2 - 1);
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._FlatUIScrollBarTrack_SolidColorStroke1_c();
         _loc1_.fill = this._FlatUIScrollBarTrack_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarTrack_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(14015197);
         if(_loc3_)
         {
            §§push((§§pop() - 110 + 103) * 30 + 87);
         }
         §§pop().color = §§pop();
         _loc1_.weight = 0.5;
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarTrack_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(15790836);
         if(_loc3_)
         {
            §§push(§§pop() + 98 + 1 - 1 + 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
