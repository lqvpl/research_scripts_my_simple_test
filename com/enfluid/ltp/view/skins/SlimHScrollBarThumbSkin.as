package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import spark.effects.Resize;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.LinearGradient;
   import spark.layouts.HorizontalLayout;
   import mx.graphics.LinearGradientStroke;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import com.hurlant.util.Memory;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class SlimHScrollBarThumbSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var _898618699_SlimHScrollBarThumbSkin_GradientEntry1:GradientEntry;
      
      private var _898618698_SlimHScrollBarThumbSkin_GradientEntry2:GradientEntry;
      
      private var _898618697_SlimHScrollBarThumbSkin_GradientEntry3:GradientEntry;
      
      private var _898618696_SlimHScrollBarThumbSkin_GradientEntry4:GradientEntry;
      
      private var _1988335596_SlimHScrollBarThumbSkin_SolidColor2:SolidColor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function SlimHScrollBarThumbSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._SlimHScrollBarThumbSkin_Rect1_c(),this._SlimHScrollBarThumbSkin_Rect2_c(),this._SlimHScrollBarThumbSkin_Rect3_c(),this._SlimHScrollBarThumbSkin_Rect4_c(),this._SlimHScrollBarThumbSkin_Rect5_c(),this._SlimHScrollBarThumbSkin_Rect6_c(),this._SlimHScrollBarThumbSkin_Rect7_c()];
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
         §§push("_SlimHScrollBarThumbSkin_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(13092807);
         if(_loc1_)
         {
            §§push(§§pop() * 111 + 118 - 1 + 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_SlimHScrollBarThumbSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(11711154);
         if(_loc2_)
         {
            §§push(§§pop() * 28 + 1 - 96 + 1 - 1 + 74);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_SlimHScrollBarThumbSkin_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(12303291);
         if(_loc2_)
         {
            §§push(-§§pop() * 27 + 54);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_SlimHScrollBarThumbSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(9145227);
         if(_loc1_)
         {
            §§push(((-§§pop() - 76) * 85 + 1 + 58) * 85);
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
      
      private final function _SlimHScrollBarThumbSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 66) * 17 * 15);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((-§§pop() + 80 + 1 + 1) * 11));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() - 8) - 94 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 116) + 71);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(--(§§pop() - 70) * 3) + 93);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() - 32 + 43 - 50) * 102);
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._SlimHScrollBarThumbSkin_SolidColorStroke1_c();
         _loc1_.fill = this._SlimHScrollBarThumbSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(6052956);
         if(_loc2_)
         {
            §§push(-§§pop() - 92 + 44 + 1 + 76 + 30 - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 - 57) * 111 - 1 + 1);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 74) - 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 59 + 1 + 12 + 1 - 46);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 23 + 62 + 33));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 13 + 1 + 101);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((--§§pop() - 3) * 96 - 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._SlimHScrollBarThumbSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-(§§pop() * 52 * 28 * 35 * 24));
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._SlimHScrollBarThumbSkin_GradientEntry1_i(),this._SlimHScrollBarThumbSkin_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16448250);
         if(_loc3_)
         {
            §§push((§§pop() - 30 + 1 - 1) * 4);
         }
         §§pop().color = §§pop();
         this._SlimHScrollBarThumbSkin_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_SlimHScrollBarThumbSkin_GradientEntry1",this._SlimHScrollBarThumbSkin_GradientEntry1);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(15790320);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 105) + 91) + 24 - 1);
         }
         §§pop().color = §§pop();
         this._SlimHScrollBarThumbSkin_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_SlimHScrollBarThumbSkin_GradientEntry2",this._SlimHScrollBarThumbSkin_GradientEntry2);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 38 + 101 + 1 + 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() * 83 + 1) + 1) * 95 + 58 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(((§§pop() + 1 - 108 + 1) * 89 - 1) * 27);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 53 - 16);
         }
         §§pop().height = §§pop();
         _loc1_.fill = this._SlimHScrollBarThumbSkin_SolidColor2_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_SolidColor2_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() - 117 + 1 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         this._SlimHScrollBarThumbSkin_SolidColor2 = _loc1_;
         BindingManager.executeBindings(this,"_SlimHScrollBarThumbSkin_SolidColor2",this._SlimHScrollBarThumbSkin_SolidColor2);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_Rect4_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(((-§§pop() - 3) * 2 + 1 + 109) * 63);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 80 - 1 + 1) * 102 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 107 + 42 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 115) + 12 - 66);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._SlimHScrollBarThumbSkin_LinearGradientStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 38) - 73) * 95);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 72 - 1) * 80 + 1);
         }
         §§pop().weight = §§pop();
         _loc1_.entries = [this._SlimHScrollBarThumbSkin_GradientEntry3_i(),this._SlimHScrollBarThumbSkin_GradientEntry4_i()];
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_GradientEntry3_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() * 62 + 77 - 44 - 1 + 1 + 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1 + 1 - 1) * 65 + 1 + 1);
         }
         §§pop().alpha = §§pop();
         this._SlimHScrollBarThumbSkin_GradientEntry3 = _loc1_;
         BindingManager.executeBindings(this,"_SlimHScrollBarThumbSkin_GradientEntry3",this._SlimHScrollBarThumbSkin_GradientEntry3);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_GradientEntry4_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() + 105 - 1) + 2);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.22;
         this._SlimHScrollBarThumbSkin_GradientEntry4 = _loc1_;
         BindingManager.executeBindings(this,"_SlimHScrollBarThumbSkin_GradientEntry4",this._SlimHScrollBarThumbSkin_GradientEntry4);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_Rect5_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 117 - 115 + 1 + 1 - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 23 - 108);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 104 + 1 - 100 - 1) + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 16 + 1 - 1 + 1);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._SlimHScrollBarThumbSkin_SolidColor3_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_SolidColor3_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 41);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_Rect6_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 69) * 84 * 101);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 87 + 1 + 7) * 96);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(§§pop() * 31 - 1));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 14 + 0 + 1 - 1 + 12);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._SlimHScrollBarThumbSkin_SolidColor4_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_SolidColor4_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() + 70) + 1 + 1) * 77);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_Rect7_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1) + 1 - 1 + 77);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 106) - 106 + 95 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 14);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 82 + 86 - 1);
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._SlimHScrollBarThumbSkin_SolidColor5_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_SolidColor5_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 25) - 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimHScrollBarThumbSkin_GradientEntry1() : GradientEntry
      {
         return this._898618699_SlimHScrollBarThumbSkin_GradientEntry1;
      }
      
      public function set _SlimHScrollBarThumbSkin_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._898618699_SlimHScrollBarThumbSkin_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._898618699_SlimHScrollBarThumbSkin_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimHScrollBarThumbSkin_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimHScrollBarThumbSkin_GradientEntry2() : GradientEntry
      {
         return this._898618698_SlimHScrollBarThumbSkin_GradientEntry2;
      }
      
      public function set _SlimHScrollBarThumbSkin_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._898618698_SlimHScrollBarThumbSkin_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._898618698_SlimHScrollBarThumbSkin_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimHScrollBarThumbSkin_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimHScrollBarThumbSkin_GradientEntry3() : GradientEntry
      {
         return this._898618697_SlimHScrollBarThumbSkin_GradientEntry3;
      }
      
      public function set _SlimHScrollBarThumbSkin_GradientEntry3(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._898618697_SlimHScrollBarThumbSkin_GradientEntry3;
         if(_loc2_ !== param1)
         {
            this._898618697_SlimHScrollBarThumbSkin_GradientEntry3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimHScrollBarThumbSkin_GradientEntry3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimHScrollBarThumbSkin_GradientEntry4() : GradientEntry
      {
         return this._898618696_SlimHScrollBarThumbSkin_GradientEntry4;
      }
      
      public function set _SlimHScrollBarThumbSkin_GradientEntry4(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._898618696_SlimHScrollBarThumbSkin_GradientEntry4;
         if(_loc2_ !== param1)
         {
            this._898618696_SlimHScrollBarThumbSkin_GradientEntry4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimHScrollBarThumbSkin_GradientEntry4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SlimHScrollBarThumbSkin_SolidColor2() : SolidColor
      {
         return this._1988335596_SlimHScrollBarThumbSkin_SolidColor2;
      }
      
      public function set _SlimHScrollBarThumbSkin_SolidColor2(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1988335596_SlimHScrollBarThumbSkin_SolidColor2;
         if(_loc2_ !== param1)
         {
            this._1988335596_SlimHScrollBarThumbSkin_SolidColor2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SlimHScrollBarThumbSkin_SolidColor2",_loc2_,param1));
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
