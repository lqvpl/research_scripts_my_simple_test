package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.LinearGradient;
   import mx.binding.BindingManager;
   import flash.utils.ByteArray;
   import mx.graphics.LinearGradientStroke;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class SlimVScrollBarThumbSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var _573367399_SlimVScrollBarThumbSkin_GradientEntry1:GradientEntry;
      
      private var _573367400_SlimVScrollBarThumbSkin_GradientEntry2:GradientEntry;
      
      private var _573367401_SlimVScrollBarThumbSkin_GradientEntry3:GradientEntry;
      
      private var _573367402_SlimVScrollBarThumbSkin_GradientEntry4:GradientEntry;
      
      private var _1372103774_SlimVScrollBarThumbSkin_SolidColor2:SolidColor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function SlimVScrollBarThumbSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SlimVScrollBarThumbSkin_Rect1_c(),this._SlimVScrollBarThumbSkin_Rect2_c(),this._SlimVScrollBarThumbSkin_Rect3_c(),this._SlimVScrollBarThumbSkin_Rect4_c(),this._SlimVScrollBarThumbSkin_Rect5_c(),this._SlimVScrollBarThumbSkin_Rect6_c(),this._SlimVScrollBarThumbSkin_Rect7_c()];
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
         §§push("_SlimVScrollBarThumbSkin_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(13092807);
         if(_loc1_)
         {
            §§push(-((-§§pop() - 104 - 13 - 75) * 113));
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_SlimVScrollBarThumbSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(11711154);
         if(_loc1_)
         {
            §§push(((§§pop() + 72 - 1) * 1 + 1) * 107 + 0);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_SlimVScrollBarThumbSkin_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(12303291);
         if(_loc2_)
         {
            §§push(§§pop() * 80 - 61 - 79 + 13 - 58 - 114);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_SlimVScrollBarThumbSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(9145227);
         if(_loc1_)
         {
            §§push((§§pop() - 55 - 1) * 65);
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
      
      private final function _SlimVScrollBarThumbSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 111) - 20);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 34 - 91 + 55 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 + 107 - 1 + 1 - 57);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((--(§§pop() * 75 + 1) - 1) * 35);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc2_)
         {
            §§push(-§§pop() - 48 + 16);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() - 49 + 10 + 47 - 1);
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._SlimVScrollBarThumbSkin_SolidColorStroke1_c();
         _loc1_.fill = this._SlimVScrollBarThumbSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(6052956);
         if(_loc3_)
         {
            §§push(-(§§pop() * 72) + 10);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((((§§pop() + 1) * 82 + 79) * 63 + 1 + 3) * 40);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push((-(§§pop() - 1) + 61 - 1 + 1) * 8 * 47);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(§§pop() * 26 - 1 + 10 - 16 - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) + 104));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-((§§pop() * 21 - 1) * 24) - 100) + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1));
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._SlimVScrollBarThumbSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 103 * 61) + 41 - 85 - 55);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._SlimVScrollBarThumbSkin_GradientEntry1_i(),this._SlimVScrollBarThumbSkin_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16448250);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 76 - 1);
         }
         §§pop().color = §§pop();
         this._SlimVScrollBarThumbSkin_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_SlimVScrollBarThumbSkin_GradientEntry1",this._SlimVScrollBarThumbSkin_GradientEntry1);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(15790320);
         if(_loc3_)
         {
            §§push(((--§§pop() - 1) * 18 - 1) * 111);
         }
         §§pop().color = §§pop();
         this._SlimVScrollBarThumbSkin_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_SlimVScrollBarThumbSkin_GradientEntry2",this._SlimVScrollBarThumbSkin_GradientEntry2);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 61 - 11 + 1 + 58 - 51);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() * 11 + 115 - 1) * 54);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push((-((§§pop() - 40) * 15) - 60) * 28 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1) - 79);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._SlimVScrollBarThumbSkin_SolidColor2_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_SolidColor2_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() * 16 - 1 - 3 + 1 - 16 - 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         this._SlimVScrollBarThumbSkin_SolidColor2 = _loc1_;
         BindingManager.executeBindings(this,"_SlimVScrollBarThumbSkin_SolidColor2",this._SlimVScrollBarThumbSkin_SolidColor2);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_Rect4_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 - 1 + 1 + 1) * 51);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 109 - 1) + 83);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 33 + 25);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 45 + 4) + 80 + 1 + 71);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._SlimVScrollBarThumbSkin_LinearGradientStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) * 26 + 54);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 29 - 56 + 30 - 1 + 19 + 1 - 36);
         }
         §§pop().weight = §§pop();
         _loc1_.entries = [this._SlimVScrollBarThumbSkin_GradientEntry3_i(),this._SlimVScrollBarThumbSkin_GradientEntry4_i()];
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_GradientEntry3_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-§§pop() - 37 + 26);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() + 26 + 1 - 78);
         }
         §§pop().alpha = §§pop();
         this._SlimVScrollBarThumbSkin_GradientEntry3 = _loc1_;
         BindingManager.executeBindings(this,"_SlimVScrollBarThumbSkin_GradientEntry3",this._SlimVScrollBarThumbSkin_GradientEntry3);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_GradientEntry4_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(--(§§pop() + 61 + 110 - 1 + 1));
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.22;
         this._SlimVScrollBarThumbSkin_GradientEntry4 = _loc1_;
         BindingManager.executeBindings(this,"_SlimVScrollBarThumbSkin_GradientEntry4",this._SlimVScrollBarThumbSkin_GradientEntry4);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_Rect5_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() + 52 + 1 + 1 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 30) + 1 - 107);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() * 42) + 62 + 1 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 53) * 4 + 1 + 1);
         }
         §§pop().height = §§pop();
         _loc1_.fill = this._SlimVScrollBarThumbSkin_SolidColor3_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_SolidColor3_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 11) * 32);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_Rect6_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 24 + 1 - 1 - 1));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 80 - 1 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 39 + 22);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 15);
         }
         §§pop().height = §§pop();
         _loc1_.fill = this._SlimVScrollBarThumbSkin_SolidColor4_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_SolidColor4_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 + 37) * 71);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_Rect7_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((-(-(§§pop() - 25) * 28 + 2) + 1) * 96);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 17 + 93 - 1 - 1 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 42 + 1 - 70);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 94) * 92 - 27);
         }
         §§pop().height = §§pop();
         _loc1_.fill = this._SlimVScrollBarThumbSkin_SolidColor5_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_SolidColor5_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 107) - 9 - 28 - 32 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimVScrollBarThumbSkin_GradientEntry1() : GradientEntry
      {
         return this._573367399_SlimVScrollBarThumbSkin_GradientEntry1;
      }
      
      public function set _SlimVScrollBarThumbSkin_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._573367399_SlimVScrollBarThumbSkin_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._573367399_SlimVScrollBarThumbSkin_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimVScrollBarThumbSkin_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimVScrollBarThumbSkin_GradientEntry2() : GradientEntry
      {
         return this._573367400_SlimVScrollBarThumbSkin_GradientEntry2;
      }
      
      public function set _SlimVScrollBarThumbSkin_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._573367400_SlimVScrollBarThumbSkin_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._573367400_SlimVScrollBarThumbSkin_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimVScrollBarThumbSkin_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimVScrollBarThumbSkin_GradientEntry3() : GradientEntry
      {
         return this._573367401_SlimVScrollBarThumbSkin_GradientEntry3;
      }
      
      public function set _SlimVScrollBarThumbSkin_GradientEntry3(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._573367401_SlimVScrollBarThumbSkin_GradientEntry3;
         if(_loc2_ !== param1)
         {
            this._573367401_SlimVScrollBarThumbSkin_GradientEntry3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimVScrollBarThumbSkin_GradientEntry3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimVScrollBarThumbSkin_GradientEntry4() : GradientEntry
      {
         return this._573367402_SlimVScrollBarThumbSkin_GradientEntry4;
      }
      
      public function set _SlimVScrollBarThumbSkin_GradientEntry4(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._573367402_SlimVScrollBarThumbSkin_GradientEntry4;
         if(_loc2_ !== param1)
         {
            this._573367402_SlimVScrollBarThumbSkin_GradientEntry4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimVScrollBarThumbSkin_GradientEntry4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimVScrollBarThumbSkin_SolidColor2() : SolidColor
      {
         return this._1372103774_SlimVScrollBarThumbSkin_SolidColor2;
      }
      
      public function set _SlimVScrollBarThumbSkin_SolidColor2(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1372103774_SlimVScrollBarThumbSkin_SolidColor2;
         if(_loc2_ !== param1)
         {
            this._1372103774_SlimVScrollBarThumbSkin_SolidColor2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimVScrollBarThumbSkin_SolidColor2",_loc2_,param1));
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
