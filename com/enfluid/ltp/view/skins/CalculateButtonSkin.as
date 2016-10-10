package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkButtonSkin;
   import mx.core.IStateClient2;
   import mx.graphics.GradientEntry;
   import spark.primitives.Rect;
   import mx.core.IFlexModuleFactory;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import mx.graphics.LinearGradientStroke;
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
            §§push(-(-(§§pop() - 12 + 56) * 3 * 45 + 63));
         }
         §§pop().minWidth = §§pop();
         §§push(this);
         §§push(21);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 3 + 1 - 118);
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
         if(_loc1_)
         {
            §§push(-(§§pop() + 67 + 91 - 4) * 42);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc1_)
         {
            §§push((§§pop() + 1) * 103 - 90 - 0 - 1);
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
            §§push(-((--(§§pop() + 1 - 1) - 13) * 81));
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CalculateButtonSkin_GradientEntry2");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() * 22) - 1) * 73);
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
            §§push(--(§§pop() - 1));
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
            §§push(-(§§pop() - 1 + 10 - 47 - 1) * 32);
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
            §§push(-§§pop() * 96 - 1 + 119 + 1);
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
            §§push(-(§§pop() + 1) + 53 - 1 - 10 - 101 - 14);
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
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 117 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push((§§pop() + 16) * 33 * 64 - 50);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 1) * 115 - 1) + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 89 + 1 + 19));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 - 78 + 1));
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
         if(_loc2_)
         {
            §§push((-(-§§pop() + 1 + 110) + 118) * 52);
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
            §§push(§§pop() - 1 - 40 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 - 1));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 18 - 104) + 47));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((-§§pop() - 46 - 42 - 107) * 112 - 104);
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
         if(_loc3_)
         {
            §§push(((§§pop() * 2 - 1) * 23 + 1) * 108 - 91);
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
            §§push(-((§§pop() + 1 + 7) * 92) - 45);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 1 - 75 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1) * 73);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 70 - 1 - 117);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(69);
         if(_loc2_)
         {
            §§push(-(§§pop() * 103 - 58 - 28) + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() - 60 - 26 + 64 + 1 + 14 - 23 - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(--§§pop() - 1 + 78 + 1);
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
            §§push(-§§pop() - 45 + 1);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((-(§§pop() + 59 - 1) * 48 - 112) * 20));
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
         if(_loc3_)
         {
            §§push(-§§pop() + 49 + 19 - 77);
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
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) + 1 + 58) * 81);
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
            §§push((-§§pop() - 25 + 1 - 1) * 7 - 70);
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 43 - 113 + 45);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 1);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 30));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(--((§§pop() - 47) * 73 - 37));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 99 + 5) * 94);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-((§§pop() + 1) * 59 - 7) + 1) - 1);
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
