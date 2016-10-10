package com.enfluid.ltp.view.skins.FlatUIComponents.TextInput
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.graphics.SolidColorStroke;
   import mx.effects.Sequence;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import mx.core.IFlexModuleFactory;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.core.FlexVersion;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import flash.display.Sprite;
   import mx.binding.utils.ChangeWatcher;
   import system.serializers.§eden:release§.debug;
   import system.serializers.eden.config;
   import system.Strings;
   import system.serializers.eden.strings;
   import system.Reflection;
   import spark.filters.DropShadowFilter;
   import spark.components.TextInput;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   
   public final class FlatTextInputSkinSolo extends SparkSkin implements IStateClient2
   {
      
      private static const exclusions:Array = ["background","textDisplay","promptDisplay","border"];
      
      private static const exclusions_4_0:Array = ["background","textDisplay","promptDisplay"];
      
      private static const contentFill:Array = ["bgFill"];
      
      private static const focusExclusions:Array = ["textDisplay","background"];
       
      
      private var _1332194002background:Rect;
      
      private var _1391998104bgFill:SolidColor;
      
      private var _1383304148border:Rect;
      
      private var _1395787140borderStroke:SolidColorStroke;
      
      private var _263438014promptDisplay:Label;
      
      private var _831827669textDisplay:RichEditableText;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var paddingChanged:Boolean;
      
      private var _213507019hostComponent:TextInput;
      
      public function FlatTextInputSkinSolo()
      {
         super();
         mx_internal::_document = this;
         this.blendMode = "normal";
         this.mxmlContent = [this._FlatTextInputSkinSolo_Rect1_i(),this._FlatTextInputSkinSolo_Rect2_i(),this._FlatTextInputSkinSolo_RichEditableText1_i()];
         this.currentState = "normal";
         var _loc1_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._FlatTextInputSkinSolo_Label1_i);
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
            if(_loc5_)
            {
               §§push(-(§§pop() - 29) - 1 + 99 + 31);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() + 13) + 80 + 1 + 119);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            if(this.promptDisplay)
            {
               this.promptDisplay.setLayoutBoundsSize(param1,param2);
               §§push(this.promptDisplay);
               §§push(1);
               if(_loc4_)
               {
                  §§push(-((§§pop() + 102) * 103 + 41 + 1 + 1 + 1));
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
            if(_loc4_)
            {
               §§push((§§pop() - 111 + 1 + 103) * 44);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(this.textDisplay);
            §§push(0);
            if(_loc5_)
            {
               §§push((§§pop() * 109 + 1 - 109) * 66 + 32 - 1 + 1);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            if(this.promptDisplay)
            {
               this.promptDisplay.setLayoutBoundsSize(param1,param2);
               §§push(this.promptDisplay);
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(--(§§pop() * 88) - 1) - 1 - 1);
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
      
      private final function _FlatTextInputSkinSolo_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 78 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() - 26 + 26 - 75) + 58) * 113);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 33 - 1 + 1 - 63 - 97);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 82 + 85));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 63 - 1 + 1 + 1 + 1 + 86);
         }
         §§pop().radiusX = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(--§§pop() * 112 + 1 - 93 - 1);
         }
         §§pop().radiusY = §§pop();
         _loc1_.fill = this._FlatTextInputSkinSolo_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private final function _FlatTextInputSkinSolo_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1) - 1);
         }
         §§pop().color = §§pop();
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private final function _FlatTextInputSkinSolo_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 94 + 1));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 109 + 91 - 1) * 116 + 118);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 73 + 100 - 1));
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._FlatTextInputSkinSolo_SolidColorStroke1_i();
         _loc1_.initialized(this,"border");
         this.border = _loc1_;
         BindingManager.executeBindings(this,"border",this.border);
         return _loc1_;
      }
      
      private final function _FlatTextInputSkinSolo_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(14540253);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 29) - 13 + 1) - 1 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.weight = 0.5;
         _loc1_.alpha = 0.5;
         this.borderStroke = _loc1_;
         BindingManager.executeBindings(this,"borderStroke",this.borderStroke);
         return _loc1_;
      }
      
      private final function _FlatTextInputSkinSolo_RichEditableText1_i() : RichEditableText
      {
         var _loc1_:RichEditableText = new RichEditableText();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 87) - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() * 20 * 75));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 21) - 20 - 1 + 1 - 1 - 115);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 119 - 28 - 0 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((-(§§pop() * 75) - 1 - 1 + 37) * 1);
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
      
      private final function _FlatTextInputSkinSolo_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.includeInLayout = false;
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 - 68);
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
      public function get borderStroke() : SolidColorStroke
      {
         return this._1395787140borderStroke;
      }
      
      public function set borderStroke(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._1395787140borderStroke;
         if(_loc2_ !== param1)
         {
            this._1395787140borderStroke = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"borderStroke",_loc2_,param1));
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
