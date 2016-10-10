package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkButtonSkin;
   import mx.core.IStateClient2;
   import mx.graphics.GradientEntry;
   import spark.primitives.Rect;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import mx.graphics.LinearGradientStroke;
   import mx.graphics.RadialGradient;
   import spark.components.Label;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   
   public final class CalculateButtonSkin extends SparkButtonSkin implements IStateClient2
   {
      
      private static const exclusions:Array = ["iconDisplay","labelDisplay"];
       
      
      private var _856199208_CalculateButtonSkin_GradientEntry1:GradientEntry;
      
      private var _856199207_CalculateButtonSkin_GradientEntry2:GradientEntry;
      
      private var _1383304148border:Rect;
      
      private var _3143043fill:Rect;
      
      private var _903579360shadow:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var cornerRadius:Number = 2;
      
      public function CalculateButtonSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(21);
         if(_loc2_)
         {
            §§push(--(§§pop() - 14 + 79 - 1));
         }
         §§pop().minWidth = §§pop();
         §§push(this);
         §§push(21);
         if(_loc2_)
         {
            §§push(((-(§§pop() * 97) + 103 - 83) * 118 - 94) * 115);
         }
         §§pop().minHeight = §§pop();
         this.mxmlContent = [this._CalculateButtonSkin_Rect1_i(),this._CalculateButtonSkin_Rect2_i(),this._CalculateButtonSkin_Rect3_i(),this._CalculateButtonSkin_Label1_i()];
         this.currentState = "up";
         §§push();
         §§push(new State({
            "name":"up",
            "overrides":[]
         }));
         §§push();
         §§push("name");
         §§push("over");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() + 10 - 119 + 1 - 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() * 45 - 26 - 1) * 101);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc1_)
         {
            §§push((§§pop() * 56 * 64 + 1) * 113 * 73 + 60);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry2");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc1_)
         {
            §§push(§§pop() + 1 + 1 - 99);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 19) * 65 + 37 - 5 + 1 - 21);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 26 + 1 - 95 + 117) * 5 - 19);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 73) + 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry2");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc1_)
         {
            §§push(§§pop() - 27 - 29 - 1 + 115);
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
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = getStyle("cornerRadius");
         if(this.cornerRadius != _loc3_)
         {
            this.cornerRadius = _loc3_;
            this.shadow.radiusX = this.cornerRadius;
            this.fill.radiusX = this.cornerRadius;
            this.border.radiusX = this.cornerRadius;
         }
         super.updateDisplayList(param1,param2);
      }
      
      private final function _CalculateButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(-(§§pop() * 67 + 72) + 21);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push(-§§pop() - 119 + 35);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(-((§§pop() + 58) * 40 - 1 + 1) - 59 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) * 103 * 21 + 1) * 63 - 78);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 95 + 1 + 94 + 10 - 48 - 1);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._CalculateButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,"shadow");
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private final function _CalculateButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(14276567);
         if(_loc3_)
         {
            §§push(§§pop() - 28 - 1 - 78 + 103);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.08;
         return _loc1_;
      }
      
      private final function _CalculateButtonSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 37 - 1 - 112 + 77));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 0 - 8 + 110 - 1) * 105);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 47 + 1 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 24 * 40 * 14);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 5);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._CalculateButtonSkin_SolidColor2_c();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _CalculateButtonSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(14276567);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 - 61) * 85);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.85;
         return _loc1_;
      }
      
      private final function _CalculateButtonSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 12);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 116 + 1 + 1 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 44) - 48 - 96);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(69);
         if(_loc2_)
         {
            §§push(-(§§pop() + 15 - 1) * 102 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 74 - 39);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 47);
         }
         §§pop().radiusX = §§pop();
         _loc1_.stroke = this._CalculateButtonSkin_LinearGradientStroke1_c();
         _loc1_.initialized(this,"border");
         this.border = _loc1_;
         BindingManager.executeBindings(this,"border",this.border);
         return _loc1_;
      }
      
      private final function _CalculateButtonSkin_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push((§§pop() - 40 + 56 + 31) * 45 - 1);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 59 - 1) - 1 - 34 - 4);
         }
         §§pop().weight = §§pop();
         _loc1_.entries = [this._CalculateButtonSkin_GradientEntry1_i(),this._CalculateButtonSkin_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _CalculateButtonSkin_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(15263719);
         if(_loc2_)
         {
            §§push((§§pop() - 81) * 4 * 16 + 27);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.5625;
         this._CalculateButtonSkin_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_CalculateButtonSkin_GradientEntry1",this._CalculateButtonSkin_GradientEntry1);
         return _loc1_;
      }
      
      private final function _CalculateButtonSkin_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(15263719);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 20 - 1 - 1 - 90);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         this._CalculateButtonSkin_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_CalculateButtonSkin_GradientEntry2",this._CalculateButtonSkin_GradientEntry2);
         return _loc1_;
      }
      
      private final function _CalculateButtonSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 24 + 1 - 86 + 51) * 87);
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 2 - 1));
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 + 1) + 15) - 1);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 + 1 - 1 + 84 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 73);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((-§§pop() + 1) * 86 + 1 - 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1) + 28 + 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",labelDisplay);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _CalculateButtonSkin_GradientEntry1() : GradientEntry
      {
         return this._856199208_CalculateButtonSkin_GradientEntry1;
      }
      
      public function set _CalculateButtonSkin_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._856199208_CalculateButtonSkin_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._856199208_CalculateButtonSkin_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CalculateButtonSkin_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CalculateButtonSkin_GradientEntry2() : GradientEntry
      {
         return this._856199207_CalculateButtonSkin_GradientEntry2;
      }
      
      public function set _CalculateButtonSkin_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._856199207_CalculateButtonSkin_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._856199207_CalculateButtonSkin_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CalculateButtonSkin_GradientEntry2",_loc2_,param1));
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
      public function get shadow() : Rect
      {
         return this._903579360shadow;
      }
      
      public function set shadow(param1:Rect) : void
      {
         var _loc2_:Object = this._903579360shadow;
         if(_loc2_ !== param1)
         {
            this._903579360shadow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadow",_loc2_,param1));
            }
         }
      }
   }
}
