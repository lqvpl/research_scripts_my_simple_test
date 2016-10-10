package mx.skins.spark
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
   import mx.graphics.LinearGradientStroke;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public class ScrollBarThumbSkin extends SparkSkin implements IStateClient2
   {
       
      
      private var _1612792386_ScrollBarThumbSkin_GradientEntry1:GradientEntry;
      
      private var _1612792387_ScrollBarThumbSkin_GradientEntry2:GradientEntry;
      
      private var _1612792388_ScrollBarThumbSkin_GradientEntry3:GradientEntry;
      
      private var _1612792389_ScrollBarThumbSkin_GradientEntry4:GradientEntry;
      
      private var _1958984793_ScrollBarThumbSkin_SolidColor2:SolidColor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ScrollBarThumbSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ScrollBarThumbSkin_Rect1_c(),this._ScrollBarThumbSkin_Rect2_c(),this._ScrollBarThumbSkin_Rect3_c(),this._ScrollBarThumbSkin_Rect4_c(),this._ScrollBarThumbSkin_Rect5_c(),this._ScrollBarThumbSkin_Rect6_c(),this._ScrollBarThumbSkin_Rect7_c()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_GradientEntry1",
               "name":"color",
               "value":13092807
            }),new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_GradientEntry2",
               "name":"color",
               "value":11711154
            }),new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_SolidColor2",
               "name":"alpha",
               "value":0.33
            }),new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_GradientEntry3",
               "name":"alpha",
               "value":0.55
            }),new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_GradientEntry4",
               "name":"alpha",
               "value":0.121
            })]
         }),new State({
            "name":"down",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_GradientEntry1",
               "name":"color",
               "value":12303291
            }),new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_GradientEntry2",
               "name":"color",
               "value":9145227
            }),new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_SolidColor2",
               "name":"alpha",
               "value":0.33
            }),new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_GradientEntry3",
               "name":"alpha",
               "value":0.12
            }),new SetProperty().initializeFromObject({
               "target":"_ScrollBarThumbSkin_GradientEntry4",
               "name":"alpha",
               "value":0.0264
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
      
      private function _ScrollBarThumbSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.top = -1;
         _loc1_.right = 0;
         _loc1_.bottom = -1;
         _loc1_.minWidth = 14;
         _loc1_.stroke = this._ScrollBarThumbSkin_SolidColorStroke1_c();
         _loc1_.fill = this._ScrollBarThumbSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 6052956;
         _loc1_.weight = 1;
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16777215;
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.top = 0;
         _loc1_.right = 1;
         _loc1_.bottom = 0;
         _loc1_.fill = this._ScrollBarThumbSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._ScrollBarThumbSkin_GradientEntry1_i(),this._ScrollBarThumbSkin_GradientEntry2_i()];
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16448250;
         this._ScrollBarThumbSkin_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_ScrollBarThumbSkin_GradientEntry1",this._ScrollBarThumbSkin_GradientEntry1);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 15790320;
         this._ScrollBarThumbSkin_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_ScrollBarThumbSkin_GradientEntry2",this._ScrollBarThumbSkin_GradientEntry2);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_Rect3_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.width = 6;
         _loc1_.fill = this._ScrollBarThumbSkin_SolidColor2_i();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_SolidColor2_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16777215;
         _loc1_.alpha = 0.75;
         this._ScrollBarThumbSkin_SolidColor2 = _loc1_;
         BindingManager.executeBindings(this,"_ScrollBarThumbSkin_SolidColor2",this._ScrollBarThumbSkin_SolidColor2);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_Rect4_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.top = 0;
         _loc1_.right = 1;
         _loc1_.bottom = 0;
         _loc1_.stroke = this._ScrollBarThumbSkin_LinearGradientStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         _loc1_.rotation = 90;
         _loc1_.weight = 1;
         _loc1_.entries = [this._ScrollBarThumbSkin_GradientEntry3_i(),this._ScrollBarThumbSkin_GradientEntry4_i()];
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_GradientEntry3_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         _loc1_.alpha = 1;
         this._ScrollBarThumbSkin_GradientEntry3 = _loc1_;
         BindingManager.executeBindings(this,"_ScrollBarThumbSkin_GradientEntry3",this._ScrollBarThumbSkin_GradientEntry3);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_GradientEntry4_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         _loc1_.alpha = 0.22;
         this._ScrollBarThumbSkin_GradientEntry4 = _loc1_;
         BindingManager.executeBindings(this,"_ScrollBarThumbSkin_GradientEntry4",this._ScrollBarThumbSkin_GradientEntry4);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_Rect5_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.top = -2;
         _loc1_.right = 1;
         _loc1_.height = 1;
         _loc1_.fill = this._ScrollBarThumbSkin_SolidColor3_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_SolidColor3_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_Rect6_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.bottom = -3;
         _loc1_.left = 1;
         _loc1_.right = 1;
         _loc1_.height = 2;
         _loc1_.fill = this._ScrollBarThumbSkin_SolidColor4_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_SolidColor4_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_Rect7_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.bottom = -2;
         _loc1_.left = 1;
         _loc1_.right = 1;
         _loc1_.height = 1;
         _loc1_.fill = this._ScrollBarThumbSkin_SolidColor5_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _ScrollBarThumbSkin_SolidColor5_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.12;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ScrollBarThumbSkin_GradientEntry1() : GradientEntry
      {
         return this._1612792386_ScrollBarThumbSkin_GradientEntry1;
      }
      
      public function set _ScrollBarThumbSkin_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1612792386_ScrollBarThumbSkin_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._1612792386_ScrollBarThumbSkin_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ScrollBarThumbSkin_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ScrollBarThumbSkin_GradientEntry2() : GradientEntry
      {
         return this._1612792387_ScrollBarThumbSkin_GradientEntry2;
      }
      
      public function set _ScrollBarThumbSkin_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1612792387_ScrollBarThumbSkin_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._1612792387_ScrollBarThumbSkin_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ScrollBarThumbSkin_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ScrollBarThumbSkin_GradientEntry3() : GradientEntry
      {
         return this._1612792388_ScrollBarThumbSkin_GradientEntry3;
      }
      
      public function set _ScrollBarThumbSkin_GradientEntry3(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1612792388_ScrollBarThumbSkin_GradientEntry3;
         if(_loc2_ !== param1)
         {
            this._1612792388_ScrollBarThumbSkin_GradientEntry3 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ScrollBarThumbSkin_GradientEntry3",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ScrollBarThumbSkin_GradientEntry4() : GradientEntry
      {
         return this._1612792389_ScrollBarThumbSkin_GradientEntry4;
      }
      
      public function set _ScrollBarThumbSkin_GradientEntry4(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1612792389_ScrollBarThumbSkin_GradientEntry4;
         if(_loc2_ !== param1)
         {
            this._1612792389_ScrollBarThumbSkin_GradientEntry4 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ScrollBarThumbSkin_GradientEntry4",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ScrollBarThumbSkin_SolidColor2() : SolidColor
      {
         return this._1958984793_ScrollBarThumbSkin_SolidColor2;
      }
      
      public function set _ScrollBarThumbSkin_SolidColor2(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1958984793_ScrollBarThumbSkin_SolidColor2;
         if(_loc2_ !== param1)
         {
            this._1958984793_ScrollBarThumbSkin_SolidColor2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ScrollBarThumbSkin_SolidColor2",_loc2_,param1));
            }
         }
      }
   }
}
