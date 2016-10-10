package com.enfluid.ltp.view.skins
{
   import spark.components.supportClasses.Skin;
   import mx.core.IStateClient2;
   import mx.graphics.SolidColor;
   import spark.primitives.BitmapImage;
   import spark.components.Label;
   import spark.primitives.Rect;
   import mx.core.IFlexModuleFactory;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class GeneralFlatButtonSkin extends Skin implements IStateClient2
   {
       
      
      private var _1287124693backgroundColor:SolidColor;
      
      private var _1031744009iconDisplay:BitmapImage;
      
      private var _1184053038labelDisplay:Label;
      
      private var _903579360shadow:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function GeneralFlatButtonSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(§§pop() + 116 + 107 - 74 + 1) + 1);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 - 1);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._GeneralFlatButtonSkin_Rect1_i(),this._GeneralFlatButtonSkin_BitmapImage1_i(),this._GeneralFlatButtonSkin_Label1_i()];
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
         §§push("backgroundColor");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16175993);
         if(_loc1_)
         {
            §§push((§§pop() - 1) * 30 - 1);
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
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.hostComponent)
         {
            this.hostComponent.buttonMode = true;
         }
      }
      
      private final function _GeneralFlatButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 1 - 6 + 80 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 48 - 1 + 112 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 20 - 82 + 29 + 61 + 1));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 114 * 55 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(((--§§pop() - 1) * 74 - 48 - 84) * 81);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._GeneralFlatButtonSkin_SolidColor1_i();
         _loc1_.initialized(this,"shadow");
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private final function _GeneralFlatButtonSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16760088);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 - 1) * 21 - 1 - 1);
         }
         §§pop().color = §§pop();
         this.backgroundColor = _loc1_;
         BindingManager.executeBindings(this,"backgroundColor",this.backgroundColor);
         return _loc1_;
      }
      
      private final function _GeneralFlatButtonSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.initialized(this,"iconDisplay");
         this.iconDisplay = _loc1_;
         BindingManager.executeBindings(this,"iconDisplay",this.iconDisplay);
         return _loc1_;
      }
      
      private final function _GeneralFlatButtonSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((-§§pop() + 91 - 89 + 65) * 117);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) + 1) - 92 - 48);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() - 43) * 81 + 1) - 85 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1 - 1) * 91);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 52 * 12 - 9);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 98 - 1 - 1);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 25 - 1) - 1 - 12);
         }
         §§pop().alpha = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 41 - 1 + 115 - 102) + 1);
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(3355443);
         if(_loc3_)
         {
            §§push(§§pop() + 12 - 1 + 101);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get backgroundColor() : SolidColor
      {
         return this._1287124693backgroundColor;
      }
      
      public function set backgroundColor(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1287124693backgroundColor;
         if(_loc2_ !== param1)
         {
            this._1287124693backgroundColor = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundColor",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconDisplay() : BitmapImage
      {
         return this._1031744009iconDisplay;
      }
      
      public function set iconDisplay(param1:BitmapImage) : void
      {
         var _loc2_:Object = this._1031744009iconDisplay;
         if(_loc2_ !== param1)
         {
            this._1031744009iconDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : Label
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:Label) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shadow() : Rect
      {
         return this._903579360shadow;
      }
      
      public function set shadow(param1:Rect) : void
      {
         var _loc2_:Object = this._903579360shadow;
         if(_loc2_ !== param1)
         {
            this._903579360shadow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadow",_loc2_,param1));
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
