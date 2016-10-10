package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.SolidColor;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import spark.effects.Fade;
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
            §§push(§§pop() * 71 - 1 - 1 - 1 - 1 - 9);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 21 - 56 - 1) * 19);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() + 30 + 1) * 54 * 93 + 1) * 94);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() - 95) * 50 - 25 + 9);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) - 1 - 28 - 15 + 1));
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() + 28 + 1) * 47 - 67);
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
            §§push((§§pop() - 20) * 25 + 80 + 59);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 107 + 1));
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
            §§push(-((§§pop() + 1) * 36 + 1));
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
            §§push(§§pop() + 1 + 56 + 1 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1 - 1 + 1) * 34 * 20);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 1 - 23);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 33 - 1) + 1);
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
            §§push(-((-§§pop() - 65) * 8));
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
         if(_loc2_)
         {
            §§push((-(§§pop() - 76) + 1 + 95) * 72);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 11) * 51 - 1 - 1 - 112 - 1 + 51);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) + 71 - 1));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(((§§pop() + 1) * 23 - 90 - 6) * 17 - 1 - 59);
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
         if(_loc2_)
         {
            §§push((--(§§pop() + 1) + 79 + 101 + 1) * 12);
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
            §§push(§§pop() + 81 - 1 + 44 + 111 + 52 - 62);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 68) * 118) - 5 + 1 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) * 45 - 1 - 9);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 57 + 1) - 6);
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
            §§push(-((-§§pop() - 1 - 24 + 109 - 1) * 118));
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
            §§push((§§pop() - 82 + 3 - 109 + 1) * 15 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() + 36 - 57 - 94) * 14) - 1 + 48);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 - 1) * 102) - 1 + 102 - 85);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 1 - 13 + 3 + 118);
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
         if(_loc3_)
         {
            §§push(§§pop() + 15 + 11 - 1);
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
