package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import spark.primitives.Path;
   import mx.graphics.GradientEntry;
   import spark.primitives.Rect;
   import mx.core.IFlexModuleFactory;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import mx.controls.HTML;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.RadialGradient;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class GeneralComboBoxButtonSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var _93090825arrow:Path;
      
      private var _1752992635arrowFill1:GradientEntry;
      
      private var _1752992634arrowFill2:GradientEntry;
      
      private var _1383304148border:Rect;
      
      private var _3143043fill:Rect;
      
      private var _681210700highlight:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var cornerRadius:Number = 0;
      
      private var _213507019hostComponent:Button;
      
      public function GeneralComboBoxButtonSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(19);
         if(_loc2_)
         {
            §§push(-(§§pop() * 65 + 32 + 1));
         }
         §§pop().minWidth = §§pop();
         §§push(this);
         §§push(23);
         if(_loc2_)
         {
            §§push(-((-(-§§pop() + 1 - 17) + 1) * 78));
         }
         §§pop().minHeight = §§pop();
         this.mxmlContent = [this._GeneralComboBoxButtonSkin_Rect1_i(),this._GeneralComboBoxButtonSkin_Rect2_i(),this._GeneralComboBoxButtonSkin_Rect3_i(),this._GeneralComboBoxButtonSkin_Path1_i()];
         this.currentState = "up";
         §§push();
         §§push(new State({
            "name":"up",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"arrowFill1",
               "name":"alpha",
               "value":0.75
            }),new SetProperty().initializeFromObject({
               "target":"arrowFill2",
               "name":"alpha",
               "value":0.75
            })]
         }));
         §§push();
         §§push("name");
         §§push("over");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("arrowFill1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc1_)
         {
            §§push(-(§§pop() - 11 - 27));
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("arrowFill2");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 35 - 1 + 77 - 1) * 47);
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
         super.initializationComplete();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = getStyle("cornerRadius");
         if(this.cornerRadius != _loc3_)
         {
         }
         super.updateDisplayList(param1,param2);
      }
      
      private final function _GeneralComboBoxButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 77 - 1 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 92 - 1 + 25) * 52 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() * 90 * 16 - 1 - 1 + 1) * 77);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) + 1) * 33);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._GeneralComboBoxButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _GeneralComboBoxButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 104 - 84 - 44);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _GeneralComboBoxButtonSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 29 - 86) * 103 + 1 + 1 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 20 - 1 + 1) - 46);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 34 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 16 + 1));
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._GeneralComboBoxButtonSkin_SolidColor2_c();
         _loc1_.initialized(this,"highlight");
         this.highlight = _loc1_;
         BindingManager.executeBindings(this,"highlight",this.highlight);
         return _loc1_;
      }
      
      private final function _GeneralComboBoxButtonSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-§§pop() * 27 + 1 + 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _GeneralComboBoxButtonSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 111 + 1 + 1 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 23 + 25 - 26) - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 - 66 + 29) - 53 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 57 - 40 + 1 + 5 - 63));
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._GeneralComboBoxButtonSkin_SolidColorStroke1_c();
         _loc1_.initialized(this,"border");
         this.border = _loc1_;
         BindingManager.executeBindings(this,"border",this.border);
         return _loc1_;
      }
      
      private final function _GeneralComboBoxButtonSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(15658734);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 58 * 33);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 23 * 28 * 66 + 70));
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _GeneralComboBoxButtonSkin_Path1_i() : Path
      {
         var _loc1_:Path = new Path();
         §§push(_loc1_);
         §§push(9);
         if(_loc3_)
         {
            §§push((§§pop() - 34 - 55) * 43 - 74 + 14);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1 + 6));
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.data = "M 0 0 L 15 0 L 8 10 L 0 0";
         _loc1_.fill = this._GeneralComboBoxButtonSkin_RadialGradient1_c();
         _loc1_.initialized(this,"arrow");
         this.arrow = _loc1_;
         BindingManager.executeBindings(this,"arrow",this.arrow);
         return _loc1_;
      }
      
      private final function _GeneralComboBoxButtonSkin_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push((§§pop() + 115 + 48 - 17 - 63) * 46);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._GeneralComboBoxButtonSkin_GradientEntry1_i(),this._GeneralComboBoxButtonSkin_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _GeneralComboBoxButtonSkin_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc2_)
         {
            §§push(-(§§pop() - 3) * 10);
         }
         §§pop().color = §§pop();
         this.arrowFill1 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill1",this.arrowFill1);
         return _loc1_;
      }
      
      private final function _GeneralComboBoxButtonSkin_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 36) + 1 - 1));
         }
         §§pop().color = §§pop();
         this.arrowFill2 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill2",this.arrowFill2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get arrow() : Path
      {
         return this._93090825arrow;
      }
      
      public function set arrow(param1:Path) : void
      {
         var _loc2_:Object = this._93090825arrow;
         if(_loc2_ !== param1)
         {
            this._93090825arrow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get arrowFill1() : GradientEntry
      {
         return this._1752992635arrowFill1;
      }
      
      public function set arrowFill1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1752992635arrowFill1;
         if(_loc2_ !== param1)
         {
            this._1752992635arrowFill1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrowFill1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get arrowFill2() : GradientEntry
      {
         return this._1752992634arrowFill2;
      }
      
      public function set arrowFill2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1752992634arrowFill2;
         if(_loc2_ !== param1)
         {
            this._1752992634arrowFill2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrowFill2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get border() : Rect
      {
         return this._1383304148border;
      }
      
      public function set border(param1:Rect) : void
      {
         var _loc2_:Object = this._1383304148border;
         if(_loc2_ !== param1)
         {
            this._1383304148border = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"border",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fill() : Rect
      {
         return this._3143043fill;
      }
      
      public function set fill(param1:Rect) : void
      {
         var _loc2_:Object = this._3143043fill;
         if(_loc2_ !== param1)
         {
            this._3143043fill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get highlight() : Rect
      {
         return this._681210700highlight;
      }
      
      public function set highlight(param1:Rect) : void
      {
         var _loc2_:Object = this._681210700highlight;
         if(_loc2_ !== param1)
         {
            this._681210700highlight = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highlight",_loc2_,param1));
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
