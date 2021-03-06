package com.enfluid.ltp.view.skins.FlatUIComponents.ScrollPane
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.graphics.SolidColor;
   import spark.primitives.Path;
   import mx.graphics.GradientEntry;
   import mx.core.IFlexModuleFactory;
   import hr.binaria.asx3m.mapper.IMapper;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import com.enfluid.ltp.view.LeftRail;
   import flash.events.ContextMenuEvent;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import mx.binding.BindingManager;
   import spark.layouts.VerticalLayout;
   import mx.graphics.RadialGradient;
   import spark.components.HGroup;
   import spark.components.Group;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class FlatUIScrollBarUpButton extends SparkSkin implements IStateClient2
   {
      
      private static const exclusions:Array = ["arrow"];
      
      private static const symbols:Array = [];
       
      
      private var _1445557633_FlatUIScrollBarUpButton_SolidColor1:SolidColor;
      
      private var _1445557634_FlatUIScrollBarUpButton_SolidColor2:SolidColor;
      
      private var _93090825arrow:Path;
      
      private var _1752992635arrowFill1:GradientEntry;
      
      private var _1752992634arrowFill2:GradientEntry;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function FlatUIScrollBarUpButton()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FlatUIScrollBarUpButton_Rect1_c(),this._FlatUIScrollBarUpButton_Rect2_c(),this._FlatUIScrollBarUpButton_Path1_i()];
         this.currentState = "up";
         §§push();
         §§push(new State({
            "name":"up",
            "overrides":[]
         }));
         §§push(new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_FlatUIScrollBarUpButton_SolidColor2",
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
         §§push("_FlatUIScrollBarUpButton_SolidColor1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(13491687);
         if(_loc1_)
         {
            §§push(-(-(§§pop() + 95) + 38) - 5 - 1);
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
      
      private final function _FlatUIScrollBarUpButton_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 10) * 60 + 16 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1) - 24);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1 + 7 + 57) * 46);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 75) * 34 * 105 - 114 + 1));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 52 + 53) * 37);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(--§§pop() - 75 - 1);
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._FlatUIScrollBarUpButton_SolidColorStroke1_c();
         _loc1_.fill = this._FlatUIScrollBarUpButton_SolidColor1_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarUpButton_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(14146011);
         if(_loc2_)
         {
            §§push((§§pop() - 91 - 95 + 95 + 1 + 1) * 109 - 35);
         }
         §§pop().color = §§pop();
         _loc1_.weight = 0.5;
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarUpButton_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16645629);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 20 - 7);
         }
         §§pop().color = §§pop();
         this._FlatUIScrollBarUpButton_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarUpButton_SolidColor1",this._FlatUIScrollBarUpButton_SolidColor1);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarUpButton_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() * 91 * 109 + 9) * 61 * 44 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 111);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(--(§§pop() + 13 - 1) - 1 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() * 3 + 1 + 1 - 1);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._FlatUIScrollBarUpButton_SolidColor2_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarUpButton_SolidColor2_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(--§§pop() + 25));
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         this._FlatUIScrollBarUpButton_SolidColor2 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarUpButton_SolidColor2",this._FlatUIScrollBarUpButton_SolidColor2);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarUpButton_Path1_i() : Path
      {
         var _loc1_:Path = new Path();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 100 + 108 + 1 + 6));
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(-§§pop() * 52 - 55 + 1 - 69 + 103);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.data = "M 3.5 0.0 L 7.0 7.0 L 0.0 7.0 L 3.5 0.0";
         _loc1_.fill = this._FlatUIScrollBarUpButton_RadialGradient1_c();
         _loc1_.initialized(this,"arrow");
         this.arrow = _loc1_;
         BindingManager.executeBindings(this,"arrow",this.arrow);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarUpButton_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 106) - 58);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() * 22 + 1 - 49) * 106);
         }
         §§pop().focalPointRatio = §§pop();
         _loc1_.entries = [this._FlatUIScrollBarUpButton_GradientEntry1_i(),this._FlatUIScrollBarUpButton_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarUpButton_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc2_)
         {
            §§push(-(-((§§pop() - 23) * 63 - 1) - 1));
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.65;
         this.arrowFill1 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill1",this.arrowFill1);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarUpButton_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(13158600);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 1) * 65 + 1 - 30));
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.8;
         this.arrowFill2 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill2",this.arrowFill2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarUpButton_SolidColor1() : SolidColor
      {
         return this._1445557633_FlatUIScrollBarUpButton_SolidColor1;
      }
      
      public function set _FlatUIScrollBarUpButton_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1445557633_FlatUIScrollBarUpButton_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._1445557633_FlatUIScrollBarUpButton_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarUpButton_SolidColor1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarUpButton_SolidColor2() : SolidColor
      {
         return this._1445557634_FlatUIScrollBarUpButton_SolidColor2;
      }
      
      public function set _FlatUIScrollBarUpButton_SolidColor2(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1445557634_FlatUIScrollBarUpButton_SolidColor2;
         if(_loc2_ !== param1)
         {
            this._1445557634_FlatUIScrollBarUpButton_SolidColor2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarUpButton_SolidColor2",_loc2_,param1));
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
