package com.enfluid.ltp.view.skins.FlatUIComponents.Combobox
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.primitives.RectangularDropShadow;
   import spark.components.Button;
   import spark.components.PopUpAnchor;
   import spark.components.Scroller;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import spark.skins.spark.DefaultItemRenderer;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.view.skins.GeneralComboBoxButtonSkin;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import spark.components.ComboBox;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.states.AddItems;
   
   public final class GeneralComboboxSkin extends SparkSkin implements IStateClient2
   {
      
      private static const contentFill:Array = ["bgFill"];
       
      
      private var _1332194002background:Rect;
      
      private var _1391998104bgFill:SolidColor;
      
      private var _385593099dataGroup:DataGroup;
      
      private var _433014735dropDown:Group;
      
      private var _906978543dropShadow:RectangularDropShadow;
      
      private var _137111012openButton:Button;
      
      private var _106851532popUp:PopUpAnchor;
      
      private var _402164678scroller:Scroller;
      
      private var _1058056547textInput:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var paddingChanged:Boolean;
      
      private var cornerRadiusChanged:Boolean;
      
      private var cornerRadius:Number = 0;
      
      private var _213507019hostComponent:ComboBox;
      
      public function GeneralComboboxSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._GeneralComboboxSkin_Button1_i(),this._GeneralComboboxSkin_TextInput1_i()];
         this.currentState = "normal";
         var _loc1_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._GeneralComboboxSkin_PopUpAnchor1_i,this._GeneralComboboxSkin_PopUpAnchor1_r);
         §§push();
         §§push(new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"popUp",
               "name":"displayPopUp",
               "value":false
            })]
         }));
         §§push(new State({
            "name":"open",
            "overrides":[new AddItems().initializeFromObject({
               "destructionPolicy":"auto",
               "itemsFactory":_loc1_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"popUp",
               "name":"displayPopUp",
               "value":true
            })]
         }));
         §§push();
         §§push("name");
         §§push("disabled");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc2_)
         {
            §§push(-(--(§§pop() + 1 + 1 + 1) + 94));
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
         if(_loc2_ || param1 == "cornerRadius")
         {
            this.cornerRadiusChanged = true;
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:Number = NaN;
         super.commitProperties();
         if(this.paddingChanged && this.textInput)
         {
            _loc1_ = getStyle("paddingLeft");
            if(this.textInput.getStyle("paddingLeft") != _loc1_)
            {
               this.textInput.setStyle("paddingLeft",_loc1_);
            }
            _loc1_ = getStyle("paddingTop");
            if(this.textInput.getStyle("paddingTop") != _loc1_)
            {
               this.textInput.setStyle("paddingTop",_loc1_);
            }
            _loc1_ = getStyle("paddingRight");
            if(this.textInput.getStyle("paddingRight") != _loc1_)
            {
               this.textInput.setStyle("paddingRight",_loc1_);
            }
            _loc1_ = getStyle("paddingBottom");
            if(this.textInput.getStyle("paddingBottom") != _loc1_)
            {
               this.textInput.setStyle("paddingBottom",_loc1_);
            }
            this.paddingChanged = false;
         }
         if(this.cornerRadiusChanged)
         {
            this.cornerRadiusChanged = false;
         }
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         if(getStyle("borderVisible") == false)
         {
            if(this.background)
            {
               §§push(this.background);
               §§push(this.background);
               §§push(this.background);
               §§push(this.background);
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(-§§pop() - 117) + 1 + 1 - 1);
               }
               §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            }
            if(this.scroller)
            {
               §§push(this.scroller);
               §§push(0);
               if(_loc5_)
               {
                  §§push(-(§§pop() + 1) * 55 - 1 - 82);
               }
               §§pop().minViewportInset = §§pop();
            }
         }
         else
         {
            if(this.background)
            {
               §§push(this.background);
               §§push(this.background);
               §§push(this.background);
               §§push(this.background);
               §§push(1);
               if(_loc5_)
               {
                  §§push(§§pop() * 25 * 30 * 0);
               }
               §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            }
            if(this.scroller)
            {
               §§push(this.scroller);
               §§push(1);
               if(_loc5_)
               {
                  §§push((§§pop() - 1) * 90 - 1 + 1);
               }
               §§pop().minViewportInset = §§pop();
            }
         }
         if(this.dropShadow)
         {
            this.dropShadow.visible = getStyle("dropShadowVisible");
         }
         super.updateDisplayList(param1,param2);
      }
      
      private final function _GeneralComboboxSkin_PopUpAnchor1_i() : PopUpAnchor
      {
         var _loc1_:PopUpAnchor = new PopUpAnchor();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 11 - 1 - 1 + 1) * 114 - 33 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1 - 80 - 108);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 11 + 80 + 1 + 91 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 - 1) * 35));
         }
         §§pop().bottom = §§pop();
         _loc1_.popUpPosition = "below";
         _loc1_.popUpWidthMatchesAnchorWidth = true;
         _loc1_.popUp = this._GeneralComboboxSkin_Group1_i();
         _loc1_.id = "popUp";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.popUp = _loc1_;
         BindingManager.executeBindings(this,"popUp",this.popUp);
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_PopUpAnchor1_r() : void
      {
         this.dropShadow = null;
         this.background = null;
      }
      
      private final function _GeneralComboboxSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._GeneralComboboxSkin_RectangularDropShadow1_i(),this._GeneralComboboxSkin_Rect1_i(),this._GeneralComboboxSkin_Scroller1_i()];
         _loc1_.id = "dropDown";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dropDown = _loc1_;
         BindingManager.executeBindings(this,"dropDown",this.dropDown);
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_RectangularDropShadow1_i() : RectangularDropShadow
      {
         var _loc1_:RectangularDropShadow = new RectangularDropShadow();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 28) * 17 - 1 + 20 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 110) + 6 - 1 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 79) * 62 + 78);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 82) + 1 + 51 + 82);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 9 - 119 - 1 - 1 - 51);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 91);
         }
         §§pop().blurX = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() - 110) - 51 - 57 + 78);
         }
         §§pop().blurY = §§pop();
         _loc1_.alpha = 0.45;
         §§push(_loc1_);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() * 4 - 1 + 40);
         }
         §§pop().distance = §§pop();
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 8));
         }
         §§pop().angle = §§pop();
         _loc1_.id = "dropShadow";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dropShadow = _loc1_;
         BindingManager.executeBindings(this,"dropShadow",this.dropShadow);
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() - 39 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 39 - 32 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 + 1) * 82 + 102 + 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 62 - 1 - 15);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._GeneralComboboxSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16771899);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1 - 1) + 1) * 46);
         }
         §§pop().color = §§pop();
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_Scroller1_i() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1) * 87);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 5 - 1) * 85);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 90 + 1 + 1) - 42);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 109 - 75) * 53 + 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.hasFocusableChildren = false;
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 38 - 1 - 1);
         }
         §§pop().minViewportInset = §§pop();
         _loc1_.viewport = this._GeneralComboboxSkin_DataGroup1_i();
         _loc1_.id = "scroller";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scroller = _loc1_;
         BindingManager.executeBindings(this,"scroller",this.scroller);
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_DataGroup1_i() : DataGroup
      {
         var _loc1_:DataGroup = new DataGroup();
         _loc1_.itemRenderer = this._GeneralComboboxSkin_ClassFactory1_c();
         _loc1_.layout = this._GeneralComboboxSkin_VerticalLayout1_c();
         _loc1_.id = "dataGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dataGroup = _loc1_;
         BindingManager.executeBindings(this,"dataGroup",this.dataGroup);
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DefaultItemRenderer;
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "contentJustify";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 58 * 46 + 1 - 1 - 1);
         }
         §§pop().gap = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1 + 45) + 1 - 40) * 55);
         }
         §§pop().requestedMinRowCount = §§pop();
         §§push(_loc1_);
         §§push(12);
         if(_loc3_)
         {
            §§push((§§pop() - 37 + 1) * 37 + 8);
         }
         §§pop().requestedMaxRowCount = §§pop();
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(33);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 92 - 1 + 1 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 60 + 80 - 1 - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 86);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 61 - 1 + 43);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 50) * 0));
         }
         §§pop().bottom = §§pop();
         _loc1_.focusEnabled = false;
         _loc1_.tabEnabled = false;
         _loc1_.setStyle("skinClass",GeneralComboBoxButtonSkin);
         _loc1_.id = "openButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.openButton = _loc1_;
         BindingManager.executeBindings(this,"openButton",this.openButton);
         return _loc1_;
      }
      
      private final function _GeneralComboboxSkin_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((--(§§pop() * 103) + 4 + 1) * 42);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push((§§pop() + 79) * 73 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-((§§pop() + 100) * 1) * 109 - 110 + 1) * 7);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 27) + 1 + 81 + 1 - 92);
         }
         §§pop().bottom = §§pop();
         _loc1_.setStyle("skinClass",FlatTextInputSkin);
         _loc1_.id = "textInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.textInput = _loc1_;
         BindingManager.executeBindings(this,"textInput",this.textInput);
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
      public function get dataGroup() : DataGroup
      {
         return this._385593099dataGroup;
      }
      
      public function set dataGroup(param1:DataGroup) : void
      {
         var _loc2_:Object = this._385593099dataGroup;
         if(_loc2_ !== param1)
         {
            this._385593099dataGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dropDown() : Group
      {
         return this._433014735dropDown;
      }
      
      public function set dropDown(param1:Group) : void
      {
         var _loc2_:Object = this._433014735dropDown;
         if(_loc2_ !== param1)
         {
            this._433014735dropDown = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropDown",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dropShadow() : RectangularDropShadow
      {
         return this._906978543dropShadow;
      }
      
      public function set dropShadow(param1:RectangularDropShadow) : void
      {
         var _loc2_:Object = this._906978543dropShadow;
         if(_loc2_ !== param1)
         {
            this._906978543dropShadow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropShadow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openButton() : Button
      {
         return this._137111012openButton;
      }
      
      public function set openButton(param1:Button) : void
      {
         var _loc2_:Object = this._137111012openButton;
         if(_loc2_ !== param1)
         {
            this._137111012openButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get popUp() : PopUpAnchor
      {
         return this._106851532popUp;
      }
      
      public function set popUp(param1:PopUpAnchor) : void
      {
         var _loc2_:Object = this._106851532popUp;
         if(_loc2_ !== param1)
         {
            this._106851532popUp = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"popUp",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scroller() : Scroller
      {
         return this._402164678scroller;
      }
      
      public function set scroller(param1:Scroller) : void
      {
         var _loc2_:Object = this._402164678scroller;
         if(_loc2_ !== param1)
         {
            this._402164678scroller = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scroller",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textInput() : TextInput
      {
         return this._1058056547textInput;
      }
      
      public function set textInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1058056547textInput;
         if(_loc2_ !== param1)
         {
            this._1058056547textInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : ComboBox
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:ComboBox) : void
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
