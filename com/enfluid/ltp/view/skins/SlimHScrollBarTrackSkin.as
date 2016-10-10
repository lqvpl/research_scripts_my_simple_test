package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import spark.components.HGroup;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.SolidColor;
   import mx.controls.Alert;
   import flash.events.MouseEvent;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   
   public final class SlimHScrollBarTrackSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function SlimHScrollBarTrackSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SlimHScrollBarTrackSkin_Rect1_c(),this._SlimHScrollBarTrackSkin_Rect2_c(),this._SlimHScrollBarTrackSkin_Rect3_c(),this._SlimHScrollBarTrackSkin_Rect4_c(),this._SlimHScrollBarTrackSkin_Rect5_c()];
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
      
      private final function _SlimHScrollBarTrackSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 74 + 21 - 1) + 110 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 32 - 88 - 1 - 47);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) + 14) * 17 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() - 45 + 62 - 23);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc3_)
         {
            §§push(-(§§pop() * 20 - 1 - 42 - 28 - 1));
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._SlimHScrollBarTrackSkin_SolidColorStroke1_c();
         _loc1_.fill = this._SlimHScrollBarTrackSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(6842472);
         if(_loc2_)
         {
            §§push(§§pop() + 66 + 32 + 93);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 92) - 115 - 5 - 1 - 1);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(13290186);
         if(_loc2_)
         {
            §§push((§§pop() + 101) * 89 * 71 + 38 - 106 - 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(((§§pop() + 1 - 1) * 72 + 71) * 77);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 68 - 67 + 36) - 63 - 10);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() * 12 + 1) * 97 - 1 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 35 + 1) * 40 + 119 + 1 + 19 + 49);
         }
         §§pop().height = §§pop();
         _loc1_.fill = this._SlimHScrollBarTrackSkin_SolidColor2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(10000536);
         if(_loc3_)
         {
            §§push(-§§pop() + 90 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.5;
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1 - 1) + 1) * 30 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 81 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 - 1) * 47 - 92) * 54 - 81);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 58) + 79 + 77);
         }
         §§pop().height = §§pop();
         _loc1_.fill = this._SlimHScrollBarTrackSkin_SolidColor3_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_SolidColor3_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(10000536);
         if(_loc3_)
         {
            §§push((-(§§pop() + 75) * 76 - 18 + 1) * 112 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.25;
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_Rect4_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((--§§pop() * 8 * 99 * 35 + 1) * 10);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() * 70 - 64) * 55 + 42);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1) * 70 + 1 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((-(§§pop() + 26) - 1) * 1);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._SlimHScrollBarTrackSkin_SolidColor4_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_SolidColor4_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(10000536);
         if(_loc3_)
         {
            §§push(-(§§pop() - 57) - 38);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.25;
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_Rect5_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 3 - 1 - 90));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((-(-(§§pop() * 66) + 1) - 1) * 30 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 55 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push((---§§pop() - 1 + 3) * 41);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._SlimHScrollBarTrackSkin_SolidColor5_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_SolidColor5_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(10000536);
         if(_loc3_)
         {
            §§push((§§pop() + 24 - 98) * 39 - 45 - 25 + 100 - 63);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.25;
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
