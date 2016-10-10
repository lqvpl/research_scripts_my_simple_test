package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.SolidColor;
   import mx.events.ResizeEvent;
   import com.enfluid.ltp.util.Logger;
   import spark.components.TextInput;
   import mx.binding.BindingManager;
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
         if(_loc2_)
         {
            §§push((§§pop() - 58) * 0 + 117 + 12);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 104 + 64));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 58 - 1 + 39 - 4);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 53 - 11 - 1 + 1 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() + 79) * 53 + 106 - 1 + 31);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc3_)
         {
            §§push(((§§pop() + 107) * 39 + 1 - 1) * 52 + 57 + 1);
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
            §§push(§§pop() - 118 - 48 - 0 + 1 + 38);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() - 85 - 117);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _SlimHScrollBarTrackSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(13290186);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 21) * 40 + 1 + 51);
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
            §§push(§§pop() + 70 - 44 - 1 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 3 + 1) * 118 * 84 - 47 - 36);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 57 - 61 + 1 + 78));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 + 6) * 60 - 47);
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
         if(_loc2_)
         {
            §§push(--(§§pop() * 51 - 1) - 9);
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
         if(_loc3_)
         {
            §§push(--§§pop() * 110 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(--(-(§§pop() + 1 + 12) + 93));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 63 + 82);
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
         if(_loc2_)
         {
            §§push(-§§pop() * 24 - 76 - 1);
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
            §§push(-§§pop() - 0 + 0 - 90 - 1 + 1 - 80);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 22 + 64 - 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() + 106 + 1 - 1) * 22) * 57 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(((§§pop() * 11 + 1) * 63 + 21 - 1) * 103 - 1);
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
            §§push(-§§pop() - 36 + 1 - 1 + 1);
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
            §§push(-(§§pop() - 104 - 1) + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() - 70 + 1 - 67) - 1 + 88 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(--§§pop() * 21 - 1) + 1) * 78);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 75 + 103 - 1);
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
         if(_loc2_)
         {
            §§push(-(§§pop() - 0 + 14));
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
