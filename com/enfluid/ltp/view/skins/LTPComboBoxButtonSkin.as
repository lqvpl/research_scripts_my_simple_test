package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import spark.primitives.Path;
   import mx.graphics.GradientEntry;
   import spark.primitives.Rect;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import mx.graphics.RadialGradient;
   import spark.layouts.VerticalLayout;
   import com.adobe.cairngorm.observer.Observe;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class LTPComboBoxButtonSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var _93090825arrow:Path;
      
      private var _1752992635arrowFill1:GradientEntry;
      
      private var _1752992634arrowFill2:GradientEntry;
      
      private var _3143043fill:Rect;
      
      private var _681210700highlight:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var cornerRadius:Number = 0;
      
      private var _213507019hostComponent:Button;
      
      public function LTPComboBoxButtonSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(19);
         if(_loc2_)
         {
            §§push((§§pop() - 26 + 1 - 95 + 117) * 5 - 19);
         }
         §§pop().minWidth = §§pop();
         §§push(this);
         §§push(23);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 73) + 1);
         }
         §§pop().minHeight = §§pop();
         this.mxmlContent = [this._LTPComboBoxButtonSkin_Rect1_i(),this._LTPComboBoxButtonSkin_Rect2_i(),this._LTPComboBoxButtonSkin_Path1_i()];
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
            §§push(§§pop() - 27 - 29 - 1 + 115);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("arrowFill2");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc1_)
         {
            §§push((-(§§pop() - 8) + 1) * 49 - 1);
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
      
      private final function _LTPComboBoxButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-((§§pop() + 1 + 51) * 87) + 1) * 2);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) + 1 + 1));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._LTPComboBoxButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _LTPComboBoxButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1) - 1 + 73 + 58);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _LTPComboBoxButtonSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 94 - 1));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 44 + 1) - 14 + 79);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 69) * 97));
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._LTPComboBoxButtonSkin_SolidColor2_c();
         _loc1_.initialized(this,"highlight");
         this.highlight = _loc1_;
         BindingManager.executeBindings(this,"highlight",this.highlight);
         return _loc1_;
      }
      
      private final function _LTPComboBoxButtonSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-((-(§§pop() * 17) - 94) * 115));
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _LTPComboBoxButtonSkin_Path1_i() : Path
      {
         var _loc1_:Path = new Path();
         _loc1_.right = 10.5;
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 119 + 1 - 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.data = "M 0 0 L 15 0 L 8 10 L 0 0";
         _loc1_.fill = this._LTPComboBoxButtonSkin_RadialGradient1_c();
         _loc1_.initialized(this,"arrow");
         this.arrow = _loc1_;
         BindingManager.executeBindings(this,"arrow",this.arrow);
         return _loc1_;
      }
      
      private final function _LTPComboBoxButtonSkin_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 26 - 1) * 101 - 1) * 56);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._LTPComboBoxButtonSkin_GradientEntry1_i(),this._LTPComboBoxButtonSkin_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _LTPComboBoxButtonSkin_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc2_)
         {
            §§push((§§pop() * 113 * 73 + 60) * 90 + 1);
         }
         §§pop().color = §§pop();
         this.arrowFill1 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill1",this.arrowFill1);
         return _loc1_;
      }
      
      private final function _LTPComboBoxButtonSkin_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc3_)
         {
            §§push((§§pop() - 24 - 1 - 19) * 65 + 37 - 5 + 1);
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
