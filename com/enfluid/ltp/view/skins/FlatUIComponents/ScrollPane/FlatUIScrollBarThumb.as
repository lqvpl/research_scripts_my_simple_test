package com.enfluid.ltp.view.skins.FlatUIComponents.ScrollPane
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import com.enfluid.ltp.model.constants.Values;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.core.IFlexModuleFactory;
   import flash.text.Font;
   import flash.utils.ByteArray;
   import flash.system.System;
   import flash.system.Capabilities;
   import flash.utils.getTimer;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import com.enfluid.ltp.view.components.CustomRect;
   import spark.components.Group;
   import spark.primitives.Path;
   import mx.graphics.LinearGradientStroke;
   import spark.formatters.NumberFormatter;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.effects.Parallel;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class FlatUIScrollBarThumb extends SparkSkin implements IStateClient2
   {
       
      
      private var _1564298354_FlatUIScrollBarThumb_GradientEntry1:GradientEntry;
      
      private var _1564298355_FlatUIScrollBarThumb_GradientEntry2:GradientEntry;
      
      private var _1656219510_FlatUIScrollBarThumb_SolidColor1:SolidColor;
      
      private var _1656219511_FlatUIScrollBarThumb_SolidColor2:SolidColor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function FlatUIScrollBarThumb()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FlatUIScrollBarThumb_Rect1_c(),this._FlatUIScrollBarThumb_Rect2_c(),this._FlatUIScrollBarThumb_Rect3_c()];
         this.currentState = "up";
         §§push();
         §§push(new State({
            "name":"up",
            "overrides":[]
         }));
         §§push(new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_FlatUIScrollBarThumb_SolidColor2",
               "name":"alpha",
               "value":0.33
            }),new SetProperty().initializeFromObject({
               "target":"_FlatUIScrollBarThumb_GradientEntry1",
               "name":"alpha",
               "value":0.55
            }),new SetProperty().initializeFromObject({
               "target":"_FlatUIScrollBarThumb_GradientEntry2",
               "name":"alpha",
               "value":0.121
            })]
         }));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatUIScrollBarThumb_SolidColor1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(13491687);
         if(_loc1_)
         {
            §§push((§§pop() + 81 + 1) * 21);
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
      
      private final function _FlatUIScrollBarThumb_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() * 117 * 74);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(-(-§§pop() * 52) + 29) + 1));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 59 + 1 - 42);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 8 + 3 - 1) * 112);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1) * 7 - 99 - 10 - 1 - 47);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc3_)
         {
            §§push(-§§pop() * 58 - 1 + 1 + 1);
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._FlatUIScrollBarThumb_SolidColorStroke1_c();
         _loc1_.fill = this._FlatUIScrollBarThumb_SolidColor1_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(14146011);
         if(_loc2_)
         {
            §§push((§§pop() + 10) * 65 - 1);
         }
         §§pop().color = §§pop();
         _loc1_.weight = 0.5;
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16645630);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 69) - 1) * 75);
         }
         §§pop().color = §§pop();
         this._FlatUIScrollBarThumb_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarThumb_SolidColor1",this._FlatUIScrollBarThumb_SolidColor1);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(--(-(§§pop() * 44) * 22));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 4) - 29 - 1 + 36);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(--(§§pop() - 46 + 1 + 53) * 13 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(-((§§pop() + 53) * 6) + 1 + 1 - 1));
         }
         §§pop().width = §§pop();
         _loc1_.fill = this._FlatUIScrollBarThumb_SolidColor2_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_SolidColor2_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push((-(§§pop() + 116) - 77 + 1) * 5 - 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         this._FlatUIScrollBarThumb_SolidColor2 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarThumb_SolidColor2",this._FlatUIScrollBarThumb_SolidColor2);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() * 79 + 1) * 24 + 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 13) * 28 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 + 67 - 73));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 47) - 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._FlatUIScrollBarThumb_LinearGradientStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(§§pop() - 31 - 88 - 106 - 18);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 70) + 1 - 97 + 1 + 105 + 1);
         }
         §§pop().weight = §§pop();
         _loc1_.entries = [this._FlatUIScrollBarThumb_GradientEntry1_i(),this._FlatUIScrollBarThumb_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 97);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() - 6 - 1) * 79) * 111 - 25 - 1);
         }
         §§pop().alpha = §§pop();
         this._FlatUIScrollBarThumb_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarThumb_GradientEntry1",this._FlatUIScrollBarThumb_GradientEntry1);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarThumb_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() - 83 - 91 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.22;
         this._FlatUIScrollBarThumb_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_FlatUIScrollBarThumb_GradientEntry2",this._FlatUIScrollBarThumb_GradientEntry2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarThumb_GradientEntry1() : GradientEntry
      {
         return this._1564298354_FlatUIScrollBarThumb_GradientEntry1;
      }
      
      public function set _FlatUIScrollBarThumb_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1564298354_FlatUIScrollBarThumb_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._1564298354_FlatUIScrollBarThumb_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarThumb_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarThumb_GradientEntry2() : GradientEntry
      {
         return this._1564298355_FlatUIScrollBarThumb_GradientEntry2;
      }
      
      public function set _FlatUIScrollBarThumb_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1564298355_FlatUIScrollBarThumb_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._1564298355_FlatUIScrollBarThumb_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarThumb_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarThumb_SolidColor1() : SolidColor
      {
         return this._1656219510_FlatUIScrollBarThumb_SolidColor1;
      }
      
      public function set _FlatUIScrollBarThumb_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1656219510_FlatUIScrollBarThumb_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._1656219510_FlatUIScrollBarThumb_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarThumb_SolidColor1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatUIScrollBarThumb_SolidColor2() : SolidColor
      {
         return this._1656219511_FlatUIScrollBarThumb_SolidColor2;
      }
      
      public function set _FlatUIScrollBarThumb_SolidColor2(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1656219511_FlatUIScrollBarThumb_SolidColor2;
         if(_loc2_ !== param1)
         {
            this._1656219511_FlatUIScrollBarThumb_SolidColor2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatUIScrollBarThumb_SolidColor2",_loc2_,param1));
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
