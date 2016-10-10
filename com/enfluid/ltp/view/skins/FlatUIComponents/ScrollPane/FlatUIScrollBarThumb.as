package com.enfluid.ltp.view.skins.FlatUIComponents.ScrollPane
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import mx.binding.BindingManager;
   import mx.graphics.LinearGradientStroke;
   import spark.components.HGroup;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class FlatUIScrollBarThumb extends SparkSkin implements IStateClient2
   {
       
      
      private var _1564298354_FlatUIScrollBarThumb_GradientEntry1:GradientEntry;
      
      private var _1564298355_FlatUIScrollBarThumb_GradientEntry2:GradientEntry;
      
      private var _1656219510_FlatUIScrollBarThumb_SolidColor1:SolidColor;
      
      private var _1656219511_FlatUIScrollBarThumb_SolidColor2:SolidColor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function FlatUIScrollBarThumb()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FlatUIScrollBarThumb_Rect1_c(),this._FlatUIScrollBarThumb_Rect2_c(),this._FlatUIScrollBarThumb_Rect3_c()];
         this.currentState = "up";
         §§push();
         §§push(new State({
            "name":"up",
            "overrides":[]
         }));
         §§push(new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_FlatUIScrollBarThumb_SolidColor2",
               "name":"alpha",
               "value":0.33
            }),new SetProperty().initializeFromObject({
               "target":"_FlatUIScrollBarThumb_GradientEntry1",
               "name":"alpha",
               "value":0.55
            }),new SetProperty().initializeFromObject({
               "target":"_FlatUIScrollBarThumb_GradientEntry2",
               "name":"alpha",
               "value":0.121
            })]
         }));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatUIScrollBarThumb_SolidColor1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(13491687);
         if(_loc2_)
         {
            §§push(((-(§§pop() - 80) + 1) * 59 + 51) * 106);
         }
         §§pop().states = null;
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
      
      private final function _FlatUIScrollBarThumb_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 88 - 1 + 1 + 49);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((((§§pop() - 90) * 90 + 1) * 93 - 114 + 1) * 32);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 43 - 1 + 1) * 23 + 1 - 73 - 11);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 58) * 52 + 63));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(--((§§pop() - 2) * 80) - 104 + 1);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 30 - 49));
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._FlatUIScrollBarThumb_SolidColorStroke1_c();
         _loc1_.fill = this._FlatUIScrollBarThumb_SolidColor1_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(14146011);
         if(_loc2_)
         {
            §§push(-(§§pop() + 28) - 1 + 93 - 23 - 72);
         }
         §§pop().color = §§pop();
         _loc1_.weight = 0.5;
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16645630);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 24 - 1 - 16 + 84 - 75);
         }
         §§pop().color = §§pop();
         this._FlatUIScrollBarThumb_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarThumb_SolidColor1",this._FlatUIScrollBarThumb_SolidColor1);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 113 - 112);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(((§§pop() * 25 + 1) * 2 + 21 + 1) * 89 - 83);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 1 - 1 - 100 + 119 + 86);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc3_)
         {
            §§push(--(§§pop() + 28 + 85 - 1 - 1) - 1);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._FlatUIScrollBarThumb_SolidColor2_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_SolidColor2_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-((-((§§pop() - 1) * 95) + 1) * 72));
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         this._FlatUIScrollBarThumb_SolidColor2 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarThumb_SolidColor2",this._FlatUIScrollBarThumb_SolidColor2);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() + 11 - 1 - 1) * 88 - 95);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((-(§§pop() - 111) - 53) * 100);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 88 - 46 - 27 + 6) * 42 + 73));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() + 94) - 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._FlatUIScrollBarThumb_LinearGradientStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 64) * 80) - 41);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() * 109 - 1) * 83);
         }
         §§pop().weight = §§pop();
         _loc1_.entries = [this._FlatUIScrollBarThumb_GradientEntry1_i(),this._FlatUIScrollBarThumb_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() + 12 + 109 - 84);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 64 + 1 + 1 - 39);
         }
         §§pop().alpha = §§pop();
         this._FlatUIScrollBarThumb_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarThumb_GradientEntry1",this._FlatUIScrollBarThumb_GradientEntry1);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 106) * 59);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.22;
         this._FlatUIScrollBarThumb_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarThumb_GradientEntry2",this._FlatUIScrollBarThumb_GradientEntry2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarThumb_GradientEntry1() : GradientEntry
      {
         return this._1564298354_FlatUIScrollBarThumb_GradientEntry1;
      }
      
      public function set _FlatUIScrollBarThumb_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1564298354_FlatUIScrollBarThumb_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._1564298354_FlatUIScrollBarThumb_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarThumb_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarThumb_GradientEntry2() : GradientEntry
      {
         return this._1564298355_FlatUIScrollBarThumb_GradientEntry2;
      }
      
      public function set _FlatUIScrollBarThumb_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1564298355_FlatUIScrollBarThumb_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._1564298355_FlatUIScrollBarThumb_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarThumb_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarThumb_SolidColor1() : SolidColor
      {
         return this._1656219510_FlatUIScrollBarThumb_SolidColor1;
      }
      
      public function set _FlatUIScrollBarThumb_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1656219510_FlatUIScrollBarThumb_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._1656219510_FlatUIScrollBarThumb_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarThumb_SolidColor1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarThumb_SolidColor2() : SolidColor
      {
         return this._1656219511_FlatUIScrollBarThumb_SolidColor2;
      }
      
      public function set _FlatUIScrollBarThumb_SolidColor2(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1656219511_FlatUIScrollBarThumb_SolidColor2;
         if(_loc2_ !== param1)
         {
            this._1656219511_FlatUIScrollBarThumb_SolidColor2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarThumb_SolidColor2",_loc2_,param1));
            }
         }
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
