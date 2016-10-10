package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import flash.ui.ContextMenuItem;
   import flash.events.ContextMenuEvent;
   import flash.ui.ContextMenu;
   import spark.primitives.Rect;
   import spark.components.TextArea;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.LinearGradient;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import flash.events.Event;
   import mx.events.CloseEvent;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import mx.graphics.LinearGradientStroke;
   import com.enfluid.ltp.view.components.SlimScroller;
   import com.enfluid.ltp.util.ProgressBarUtil;
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
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 118 - 18) - 108 + 1));
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_SlimVScrollBarThumbSkin_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(11711154);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1 - 1 + 1) + 1) * 17);
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
         if(_loc1_)
         {
            §§push(-§§pop() - 1 + 29 + 55);
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
            §§push(-(§§pop() - 70 + 1 - 23 + 108) + 1);
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
            §§push(-(§§pop() - 58 - 2) * 67);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 27) - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1 + 55 + 72) + 114);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 102 - 70 - 75 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc3_)
         {
            §§push((-(-§§pop() * 113) - 1) * 28 - 1);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(14);
         if(_loc3_)
         {
            §§push(§§pop() * 102 + 1 + 1);
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
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 15) - 50 + 15 + 1) - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(((§§pop() - 32 - 17) * 90 - 1 + 1) * 77 - 1);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _SlimVScrollBarThumbSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() + 103 + 114 - 1 - 1 + 18 + 1 + 99);
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
            §§push(§§pop() * 19 + 3 - 1 - 29 + 1 - 1 - 50);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((-§§pop() - 89) * 53);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 92 + 14) - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 99) + 64 + 42 + 78 + 15));
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
            §§push((§§pop() * 20 - 111) * 30 - 1 - 1 + 1 + 94);
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
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 3 + 8 + 1 - 1);
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
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1 + 90) * 45 + 1);
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
            §§push(-(-(§§pop() + 1 + 1) + 104 - 1 + 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1 - 1) - 2);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push((-(§§pop() - 30) * 78 + 42) * 8);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push((-§§pop() - 82 - 1 + 1) * 97 * 105);
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
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 9 * 119 * 21 - 1 + 101);
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
            §§push(-(--§§pop() + 1 - 62) - 1 - 97);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 115 - 101 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(--(-(§§pop() - 1) * 73) * 22));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() - 15 + 1 + 1 + 55) * 1);
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
            §§push((§§pop() + 1 + 88 - 39 - 48) * 56 + 114);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1) * 11 - 19 - 1);
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
         if(_loc3_)
         {
            §§push((§§pop() - 61 - 80 - 1) * 102);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1 + 5) + 1 - 31));
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
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 + 1) * 102 - 1 - 46);
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
         if(_loc3_)
         {
            §§push(§§pop() + 0 - 1 + 77);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 1 - 75 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 83 + 1 - 85);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 8 - 1 - 1 - 47) + 111);
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
         if(_loc3_)
         {
            §§push(§§pop() + 42 + 1 - 66 - 1 - 1);
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
            §§push(§§pop() - 1 - 1 - 1 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(--(§§pop() - 4) - 1) + 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 22) * 15 + 1 - 17 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 66 - 63 - 117 - 1 - 1);
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
         if(_loc2_)
         {
            §§push(((§§pop() - 49 + 92) * 48 - 55 - 1) * 21);
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
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 26));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 84 + 32) - 73);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 40 - 21);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 106 - 1) * 72);
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
         if(_loc3_)
         {
            §§push(§§pop() + 26 + 1 - 15);
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
