package com.enfluid.ltp.view.skins.FlatUIComponents.ScrollPane
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.graphics.SolidColor;
   import spark.primitives.Path;
   import mx.graphics.GradientEntry;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import mx.controls.Spacer;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.LeftRail;
   import spark.effects.Rotate;
   import mx.graphics.RadialGradient;
   import system.errors.ConcurrencyError;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.model.vo.KeywordColumnsVO;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class FlatUIScrollBarDownButton extends SparkSkin implements IStateClient2
   {
      
      private static const exclusions:Array = ["arrow"];
      
      private static const symbols:Array = [];
       
      
      private var _1244380856_FlatUIScrollBarDownButton_SolidColor1:SolidColor;
      
      private var _1244380855_FlatUIScrollBarDownButton_SolidColor2:SolidColor;
      
      private var _93090825arrow:Path;
      
      private var _1752992635arrowFill1:GradientEntry;
      
      private var _1752992634arrowFill2:GradientEntry;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function FlatUIScrollBarDownButton()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FlatUIScrollBarDownButton_Rect1_c(),this._FlatUIScrollBarDownButton_Rect2_c(),this._FlatUIScrollBarDownButton_Path1_i()];
         this.currentState = "up";
         §§push();
         §§push(new State({
            "name":"up",
            "overrides":[]
         }));
         §§push(new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_FlatUIScrollBarDownButton_SolidColor2",
               "name":"alpha",
               "value":0.22
            })]
         }));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatUIScrollBarDownButton_SolidColor1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(13491687);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1) * 113 - 99 - 1);
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
      
      override public function get colorizeExclusions() : Array
      {
         return exclusions;
      }
      
      override public function get symbolItems() : Array
      {
         return symbols;
      }
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      private final function _FlatUIScrollBarDownButton_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 12 - 1) * 90 - 35) - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 45 + 117) * 107 + 47 + 21);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(§§pop() * 87 - 111 - 115 - 1 - 1 + 21);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 74 + 1 - 87 - 1 + 119 - 119);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) + 1) * 86 - 1 - 95);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1));
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._FlatUIScrollBarDownButton_SolidColorStroke1_c();
         _loc1_.fill = this._FlatUIScrollBarDownButton_SolidColor1_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarDownButton_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(14146011);
         if(_loc2_)
         {
            §§push(§§pop() * 40 * 62 - 97 + 35 - 56);
         }
         §§pop().color = §§pop();
         _loc1_.weight = 0.5;
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarDownButton_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16645629);
         if(_loc3_)
         {
            §§push(-((-(§§pop() - 1) - 1) * 53 - 1));
         }
         §§pop().color = §§pop();
         this._FlatUIScrollBarDownButton_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarDownButton_SolidColor1",this._FlatUIScrollBarDownButton_SolidColor1);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarDownButton_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) - 1) - 7 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 1 - 1 + 1 + 44);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 3 - 1 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 1 + 1);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._FlatUIScrollBarDownButton_SolidColor2_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarDownButton_SolidColor2_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() + 20 - 48 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         this._FlatUIScrollBarDownButton_SolidColor2 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarDownButton_SolidColor2",this._FlatUIScrollBarDownButton_SolidColor2);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarDownButton_Path1_i() : Path
      {
         var _loc1_:Path = new Path();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1) + 24 - 1);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 74) * 32 - 1) * 70 + 12 - 22 + 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.data = "M 3.5 7.0 L 0.0 0.0 L 7.0 0.0 L 3.5 7.0";
         _loc1_.fill = this._FlatUIScrollBarDownButton_RadialGradient1_c();
         _loc1_.initialized(this,"arrow");
         this.arrow = _loc1_;
         BindingManager.executeBindings(this,"arrow",this.arrow);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarDownButton_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 48) * 27 + 1 - 89 + 1);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 55 - 1);
         }
         §§pop().focalPointRatio = §§pop();
         _loc1_.entries = [this._FlatUIScrollBarDownButton_GradientEntry1_i(),this._FlatUIScrollBarDownButton_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarDownButton_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 115 - 79) + 1 - 1 - 72);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.6;
         this.arrowFill1 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill1",this.arrowFill1);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarDownButton_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc2_)
         {
            §§push(-§§pop() * 89 * 32 * 95);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.8;
         this.arrowFill2 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill2",this.arrowFill2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarDownButton_SolidColor1() : SolidColor
      {
         return this._1244380856_FlatUIScrollBarDownButton_SolidColor1;
      }
      
      public function set _FlatUIScrollBarDownButton_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1244380856_FlatUIScrollBarDownButton_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._1244380856_FlatUIScrollBarDownButton_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarDownButton_SolidColor1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarDownButton_SolidColor2() : SolidColor
      {
         return this._1244380855_FlatUIScrollBarDownButton_SolidColor2;
      }
      
      public function set _FlatUIScrollBarDownButton_SolidColor2(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1244380855_FlatUIScrollBarDownButton_SolidColor2;
         if(_loc2_ !== param1)
         {
            this._1244380855_FlatUIScrollBarDownButton_SolidColor2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarDownButton_SolidColor2",_loc2_,param1));
            }
         }
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
