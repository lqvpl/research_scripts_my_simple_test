package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.core.IFlexModuleFactory;
   import spark.components.BorderContainer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.BindingManager;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.SolidColor;
   import spark.layouts.HorizontalLayout;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   
   public final class SlimVScrollBarTrackSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function SlimVScrollBarTrackSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SlimVScrollBarTrackSkin_Rect1_c(),this._SlimVScrollBarTrackSkin_Rect2_c(),this._SlimVScrollBarTrackSkin_Rect3_c(),this._SlimVScrollBarTrackSkin_Rect4_c(),this._SlimVScrollBarTrackSkin_Rect5_c()];
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
      
      private final function _SlimVScrollBarTrackSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 85) - 1 - 1 - 98);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 71 + 1 + 1 - 1 + 1) * 97));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(---§§pop() + 70 - 1 - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--§§pop() - 0);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 71 + 1 + 1 - 102);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(14);
         if(_loc3_)
         {
            §§push((--§§pop() + 1) * 17 * 116);
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._SlimVScrollBarTrackSkin_SolidColorStroke1_c();
         _loc1_.fill = this._SlimVScrollBarTrackSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(6842472);
         if(_loc3_)
         {
            §§push(----(§§pop() + 81) - 83);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1 + 1) + 1) - 1);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(13290186);
         if(_loc3_)
         {
            §§push(-((§§pop() - 12) * 28 - 1 + 24 + 88 + 93));
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 - 36) * 94) + 32 - 8);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() + 35) * 119 + 1) * 6 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 119 - 1 + 1 + 73 + 61);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 25 + 87 + 1) * 13 + 31);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._SlimVScrollBarTrackSkin_SolidColor2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 1 + 18);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.24;
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() + 104) * 8) * 18 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((-§§pop() - 1 + 25 - 76) * 96 + 1 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(--§§pop() - 1 - 1));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 - 109 - 78);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._SlimVScrollBarTrackSkin_SolidColor3_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_SolidColor3_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 103) * 102 * 54 * 88 - 16 + 2 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_Rect4_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 66));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1 + 1 + 1) + 32);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 2 + 1 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 58) - 1) + 1);
         }
         §§pop().height = §§pop();
         _loc1_.fill = this._SlimVScrollBarTrackSkin_SolidColor4_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_SolidColor4_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--((§§pop() - 19 - 71) * 14) + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_Rect5_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 74) - 42);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) * 15 + 1 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 78 - 1 + 60) * 92 - 107));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 98));
         }
         §§pop().height = §§pop();
         _loc1_.fill = this._SlimVScrollBarTrackSkin_SolidColor5_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarTrackSkin_SolidColor5_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(--(§§pop() + 16) + 1 - 1) + 99);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
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
