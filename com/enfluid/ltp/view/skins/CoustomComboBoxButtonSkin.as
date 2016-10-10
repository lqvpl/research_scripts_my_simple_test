package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import spark.primitives.Path;
   import mx.graphics.GradientEntry;
   import spark.primitives.Rect;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.Link;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import flash.events.MouseEvent;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.RadialGradient;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class CoustomComboBoxButtonSkin extends SparkSkin implements IStateClient2
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
      
      public function CoustomComboBoxButtonSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(19);
         if(_loc1_)
         {
            §§push((§§pop() + 1) * 85 - 1 - 49);
         }
         §§pop().minWidth = §§pop();
         §§push(this);
         §§push(23);
         if(_loc1_)
         {
            §§push(-(-((§§pop() + 1) * 66) - 96) - 1);
         }
         §§pop().minHeight = §§pop();
         this.mxmlContent = [this._CoustomComboBoxButtonSkin_Rect1_i(),this._CoustomComboBoxButtonSkin_Rect2_i(),this._CoustomComboBoxButtonSkin_Rect3_i(),this._CoustomComboBoxButtonSkin_Path1_i()];
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
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 - 1) - 1 - 1);
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
            §§push(-(-(§§pop() + 106 + 1) + 1) * 56);
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
      
      private final function _CoustomComboBoxButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 112 + 1) * 36);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 49 - 1 - 90) + 39 - 1 - 3);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(--(§§pop() - 1) - 1) + 19);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 27 - 24 - 1 - 1 + 1 - 1 + 9);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._CoustomComboBoxButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _CoustomComboBoxButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-§§pop() * 35 * 3 + 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CoustomComboBoxButtonSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 112 + 1 + 1 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 1 + 47) * 58 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 118 + 1 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 112) * 27 - 54 - 40);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._CoustomComboBoxButtonSkin_SolidColor2_c();
         _loc1_.initialized(this,"highlight");
         this.highlight = _loc1_;
         BindingManager.executeBindings(this,"highlight",this.highlight);
         return _loc1_;
      }
      
      private final function _CoustomComboBoxButtonSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push((§§pop() * 48 - 41) * 94 - 1 - 27);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _CoustomComboBoxButtonSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 30 + 73));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 14) * 110) * 97 - 1 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 57 - 1 + 1 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 86) + 72 + 60);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._CoustomComboBoxButtonSkin_SolidColorStroke1_c();
         _loc1_.initialized(this,"border");
         this.border = _loc1_;
         BindingManager.executeBindings(this,"border",this.border);
         return _loc1_;
      }
      
      private final function _CoustomComboBoxButtonSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(15658734);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 - 8 + 33 + 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 103 - 52 - 1 - 1);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _CoustomComboBoxButtonSkin_Path1_i() : Path
      {
         var _loc1_:Path = new Path();
         §§push(_loc1_);
         §§push(13);
         if(_loc2_)
         {
            §§push(§§pop() * 32 - 1 - 104 - 0);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() * 57 + 1) * 55 - 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.data = "M 0 0 L 15 0 L 8 10 L 0 0";
         _loc1_.fill = this._CoustomComboBoxButtonSkin_RadialGradient1_c();
         _loc1_.initialized(this,"arrow");
         this.arrow = _loc1_;
         BindingManager.executeBindings(this,"arrow",this.arrow);
         return _loc1_;
      }
      
      private final function _CoustomComboBoxButtonSkin_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1) - 71 - 13 + 59);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._CoustomComboBoxButtonSkin_GradientEntry1_i(),this._CoustomComboBoxButtonSkin_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _CoustomComboBoxButtonSkin_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc3_)
         {
            §§push((§§pop() * 37 + 1 - 104 - 46) * 3);
         }
         §§pop().color = §§pop();
         this.arrowFill1 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill1",this.arrowFill1);
         return _loc1_;
      }
      
      private final function _CoustomComboBoxButtonSkin_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 42 - 1));
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
