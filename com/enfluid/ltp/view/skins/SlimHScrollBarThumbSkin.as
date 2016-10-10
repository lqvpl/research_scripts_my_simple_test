package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.core.IFlexModuleFactory;
   import mx.binding.Binding;
   import mx.collections.IList;
   import spark.primitives.Rect;
   import com.enfluid.ltp.view.settings.SettingsUserAccountsSection;
   import mx.graphics.SolidColorStroke;
   import mx.controls.Spacer;
   import mx.binding.BindingManager;
   import spark.components.Group;
   import mx.graphics.LinearGradient;
   import mx.graphics.LinearGradientStroke;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import flash.utils.ByteArray;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
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
            §§push(§§pop() - 1 + 2 + 110 + 1);
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
            §§push((§§pop() + 1) * 117 - 1);
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
            §§push(§§pop() - 4 - 70 - 38 + 86 + 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_SlimHScrollBarThumbSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(9145227);
         if(_loc2_)
         {
            §§push((-(-(§§pop() - 2) + 1 - 25) - 1) * 61);
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
            §§push(-(-§§pop() + 1 + 21 - 0));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 4) * 36 - 11);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(--§§pop() - 61 - 61 - 115 - 2 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() - 92) + 88) * 101);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() - 106 + 1) * 9 + 70 - 68);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1 + 1) + 52) + 80);
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
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 73 - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 112 + 1 + 25);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 - 1 + 88 + 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _SlimHScrollBarThumbSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 52) * 105 - 6);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(§§pop() - 99 - 1 + 1 - 1) * 118);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1 + 1 + 1 - 10) + 94);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() * 36 + 113 + 33) * 77 - 1 - 1);
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
            §§push(-((§§pop() + 1 + 54) * 85 + 42 + 57));
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
            §§push((-§§pop() + 1 - 18 - 86) * 31 + 1);
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
            §§push(§§pop() + 26 - 1 - 1 + 1 + 5);
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
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) * 106 + 41 + 73 + 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(-§§pop() - 74) * 101 - 91 + 1) * 68);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() - 104) * 5 - 28 - 1 + 1 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(§§pop() - 20 + 1 + 61 + 1 - 33));
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
            §§push(---(§§pop() * 41) + 10);
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
         if(_loc3_)
         {
            §§push(-(§§pop() + 61 + 1) * 17);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 30) * 80);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 47 - 1 + 1) * 58 * 4 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 98 - 76 - 114 - 1);
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
            §§push(-(-(§§pop() - 115) + 44) * 105);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-§§pop() * 67 + 1);
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
         if(_loc2_)
         {
            §§push(-(§§pop() * 75 + 1 + 6 + 1 - 15));
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(--(§§pop() - 48 - 1) - 45 - 83 + 119);
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
            §§push(-(§§pop() - 1 - 1 + 0 - 90 - 92 - 1));
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
            §§push(-(§§pop() + 61) * 71);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 81 - 1));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 51 - 49 + 1) * 10);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(---(-§§pop() * 73) * 74 * 95);
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
            §§push(-(§§pop() + 1) + 1 - 98 + 1 + 1 + 95);
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
            §§push(-((§§pop() * 26 + 101 + 82 - 83) * 44));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 1 + 1 + 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) * 31 - 1 + 112 + 116 - 100);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 27 - 112 - 1 - 76) + 1 - 54);
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
            §§push(--((§§pop() + 1 + 82 + 117) * 1 - 58));
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
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 85 + 4 - 1 - 39);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 64 + 1) * 16 + 49 + 1 + 47);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-((§§pop() - 59) * 10 + 1) + 28) + 7);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() * 92 + 105 + 1) + 22 - 1 - 71);
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
         if(_loc2_)
         {
            §§push(-(--(§§pop() * 9) + 110) + 81 - 66);
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
