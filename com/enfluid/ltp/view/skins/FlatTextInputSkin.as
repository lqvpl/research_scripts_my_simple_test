package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import mx.core.IFlexModuleFactory;
   import mx.core.FlexVersion;
   import flash.utils.ByteArray;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColorStroke;
   import spark.components.TextInput;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.states.AddItems;
   
   public final class FlatTextInputSkin extends SparkSkin implements IStateClient2
   {
      
      private static const exclusions:Array = ["background","textDisplay","promptDisplay","border"];
      
      private static const exclusions_4_0:Array = ["background","textDisplay","promptDisplay"];
      
      private static const contentFill:Array = ["bgFill"];
      
      private static const focusExclusions:Array = ["textDisplay","background"];
       
      
      private var _1332194002background:Rect;
      
      private var _1391998104bgFill:SolidColor;
      
      private var _263438014promptDisplay:Label;
      
      private var _831827669textDisplay:RichEditableText;
      
      private var _238202385thinstroke:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var paddingChanged:Boolean;
      
      private var _213507019hostComponent:TextInput;
      
      public function FlatTextInputSkin()
      {
         super();
         mx_internal::_document = this;
         this.blendMode = "normal";
         this.mxmlContent = [this._FlatTextInputSkin_Rect1_i(),this._FlatTextInputSkin_Rect2_i(),this._FlatTextInputSkin_RichEditableText1_i()];
         this.currentState = "normal";
         var _loc1_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._FlatTextInputSkin_Label1_i);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "stateGroups":["disabledStates"],
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         }),new State({
            "name":"normalWithPrompt",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc1_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["textDisplay"]
            })]
         }),new State({
            "name":"disabledWithPrompt",
            "stateGroups":["disabledStates"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc1_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["textDisplay"]
            }),new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
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
      
      override public function get colorizeExclusions() : Array
      {
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_4_5)
         {
            return exclusions_4_0;
         }
         return exclusions;
      }
      
      override public function get contentItems() : Array
      {
         return contentFill;
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _loc2_:Boolean = !param1 || param1 == "styleName";
         super.styleChanged(param1);
         if(_loc2_ || §§pop() == §§pop())
         {
            this.paddingChanged = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.paddingChanged)
         {
            this.updatePadding();
            this.paddingChanged = false;
         }
      }
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         if(getStyle("borderVisible") == true)
         {
            §§push(this.background);
            §§push(this.background);
            §§push(this.background);
            §§push(this.background);
            §§push(0);
            if(_loc4_)
            {
               §§push(--(§§pop() - 107) * 76 - 47 - 104);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(0);
            if(_loc4_)
            {
               §§push(§§pop() - 1 + 56 + 1 + 1 + 1 - 45 - 1);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            if(this.promptDisplay)
            {
               this.promptDisplay.setLayoutBoundsSize(param1,param2);
               §§push(this.promptDisplay);
               §§push(1);
               if(_loc5_)
               {
                  §§push(§§pop() + 1 - 1 - 43);
               }
               §§pop().setLayoutBoundsPosition(§§pop(),§§pop());
            }
         }
         else
         {
            §§push(this.background);
            §§push(this.background);
            §§push(this.background);
            §§push(this.background);
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() - 74 - 65 - 1 - 1 + 1 - 83);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(0);
            if(_loc5_)
            {
               §§push(--(§§pop() + 85) * 43);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            if(this.promptDisplay)
            {
               this.promptDisplay.setLayoutBoundsSize(param1,param2);
               §§push(this.promptDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() * 12 + 115 + 1);
               }
               §§pop().setLayoutBoundsPosition(§§pop(),§§pop());
            }
         }
         super.updateDisplayList(param1,param2);
      }
      
      private final function updatePadding() : void
      {
         var _loc1_:Number = NaN;
         if(!this.textDisplay)
         {
            return;
         }
         _loc1_ = getStyle("paddingLeft");
         if(this.textDisplay.getStyle("paddingLeft") != _loc1_)
         {
            this.textDisplay.setStyle("paddingLeft",_loc1_);
         }
         _loc1_ = getStyle("paddingTop");
         if(this.textDisplay.getStyle("paddingTop") != _loc1_)
         {
            this.textDisplay.setStyle("paddingTop",_loc1_);
         }
         _loc1_ = getStyle("paddingRight");
         if(this.textDisplay.getStyle("paddingRight") != _loc1_)
         {
            this.textDisplay.setStyle("paddingRight",_loc1_);
         }
         _loc1_ = getStyle("paddingBottom");
         if(this.textDisplay.getStyle("paddingBottom") != _loc1_)
         {
            this.textDisplay.setStyle("paddingBottom",_loc1_);
         }
         if(!this.promptDisplay)
         {
            return;
         }
         _loc1_ = getStyle("paddingLeft");
         if(this.promptDisplay.getStyle("paddingLeft") != _loc1_)
         {
            this.promptDisplay.setStyle("paddingLeft",_loc1_);
         }
         _loc1_ = getStyle("paddingTop");
         if(this.promptDisplay.getStyle("paddingTop") != _loc1_)
         {
            this.promptDisplay.setStyle("paddingTop",_loc1_);
         }
         _loc1_ = getStyle("paddingRight");
         if(this.promptDisplay.getStyle("paddingRight") != _loc1_)
         {
            this.promptDisplay.setStyle("paddingRight",_loc1_);
         }
         _loc1_ = getStyle("paddingBottom");
         if(this.promptDisplay.getStyle("paddingBottom") != _loc1_)
         {
            this.promptDisplay.setStyle("paddingBottom",_loc1_);
         }
      }
      
      override public function get focusSkinExclusions() : Array
      {
         return focusExclusions;
      }
      
      private final function _FlatTextInputSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 - 1 + 3 + 23 - 1) * 9);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 10 - 100 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() * 60 + 119) * 30 - 89);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 57 - 89 + 51 + 112);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc3_)
         {
            §§push((-(§§pop() - 1) - 59) * 89 + 33 + 1);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() - 82 + 1 + 1 + 18 - 1);
         }
         §§pop().topLeftRadiusY = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() - 86 + 1 - 60);
         }
         §§pop().bottomLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(-§§pop() - 53 - 1);
         }
         §§pop().bottomLeftRadiusY = §§pop();
         _loc1_.fill = this._FlatTextInputSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private final function _FlatTextInputSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(§§pop() - 95 - 22 - 110));
         }
         §§pop().color = §§pop();
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private final function _FlatTextInputSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 103 - 95 - 52) * 84 + 99);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 115) * 20) - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 2 - 75 + 1) * 52);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 1 + 97 + 52 - 38);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() * 39 + 1 - 1 - 1 + 1 - 1);
         }
         §§pop().topLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(((§§pop() - 5) * 70 - 38 - 1 - 1) * 32 - 90);
         }
         §§pop().topLeftRadiusY = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() - 98 + 1));
         }
         §§pop().bottomLeftRadiusX = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc3_)
         {
            §§push((--(§§pop() - 67) - 93) * 102);
         }
         §§pop().bottomLeftRadiusY = §§pop();
         _loc1_.stroke = this._FlatTextInputSkin_SolidColorStroke1_c();
         _loc1_.initialized(this,"thinstroke");
         this.thinstroke = _loc1_;
         BindingManager.executeBindings(this,"thinstroke",this.thinstroke);
         return _loc1_;
      }
      
      private final function _FlatTextInputSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(15658734);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 6 - 57 + 56 + 20 - 1 - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() - 9 - 64 + 19) * 64));
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _FlatTextInputSkin_RichEditableText1_i() : RichEditableText
      {
         var _loc1_:RichEditableText = new RichEditableText();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 41 - 1) * 71);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(((§§pop() + 4) * 83 - 1 + 112 - 1 - 2) * 33);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((-§§pop() * 38 + 41 - 1) * 56);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 90 - 80) + 99 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 60 - 1 + 116 - 1 - 107) * 31 * 93);
         }
         §§pop().widthInChars = §§pop();
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "textDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textDisplay = _loc1_;
         BindingManager.executeBindings(this,"textDisplay",this.textDisplay);
         return _loc1_;
      }
      
      private final function _FlatTextInputSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.includeInLayout = false;
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-((§§pop() - 1) * 104) + 108) * 81);
         }
         §§pop().maxDisplayedLines = §§pop();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "promptDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.promptDisplay = _loc1_;
         BindingManager.executeBindings(this,"promptDisplay",this.promptDisplay);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : Rect
      {
         return this._1332194002background;
      }
      
      public function set background(param1:Rect) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bgFill() : SolidColor
      {
         return this._1391998104bgFill;
      }
      
      public function set bgFill(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1391998104bgFill;
         if(_loc2_ !== param1)
         {
            this._1391998104bgFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgFill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get promptDisplay() : Label
      {
         return this._263438014promptDisplay;
      }
      
      public function set promptDisplay(param1:Label) : void
      {
         var _loc2_:Object = this._263438014promptDisplay;
         if(_loc2_ !== param1)
         {
            this._263438014promptDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"promptDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textDisplay() : RichEditableText
      {
         return this._831827669textDisplay;
      }
      
      public function set textDisplay(param1:RichEditableText) : void
      {
         var _loc2_:Object = this._831827669textDisplay;
         if(_loc2_ !== param1)
         {
            this._831827669textDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get thinstroke() : Rect
      {
         return this._238202385thinstroke;
      }
      
      public function set thinstroke(param1:Rect) : void
      {
         var _loc2_:Object = this._238202385thinstroke;
         if(_loc2_ !== param1)
         {
            this._238202385thinstroke = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thinstroke",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : TextInput
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:TextInput) : void
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
