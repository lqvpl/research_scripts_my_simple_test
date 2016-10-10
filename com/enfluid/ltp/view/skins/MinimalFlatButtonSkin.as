package com.enfluid.ltp.view.skins
{
   import spark.components.supportClasses.Skin;
   import mx.core.IStateClient2;
   import mx.graphics.SolidColor;
   import spark.components.Label;
   import spark.primitives.Rect;
   import mx.core.IFlexModuleFactory;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import mx.binding.BindingManager;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class MinimalFlatButtonSkin extends Skin implements IStateClient2
   {
       
      
      private var _1287124693backgroundColor:SolidColor;
      
      private var _1184053038labelDisplay:Label;
      
      private var _903579360shadow:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function MinimalFlatButtonSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(15);
         if(_loc1_)
         {
            §§push(-(-(§§pop() - 1 - 111 - 94) * 35));
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc2_)
         {
            §§push(§§pop() - 18 + 0 + 1 + 103);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._MinimalFlatButtonSkin_Rect1_i(),this._MinimalFlatButtonSkin_Label1_i()];
         this.currentState = "up";
         §§push();
         §§push();
         §§push("name");
         §§push("up");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("labelDisplay");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc1_)
         {
            §§push(--§§pop() + 1 + 1);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("over");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("labelDisplay");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc1_)
         {
            §§push(-(§§pop() - 1) + 85 - 1 + 1 - 1);
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
         this.hostComponent.buttonMode = true;
      }
      
      private final function _MinimalFlatButtonSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 65) * 107);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 115) * 53 - 33);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 44 + 1 - 15);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 66 + 81);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 96 + 60));
         }
         §§pop().topRightRadiusX = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(-((§§pop() - 8) * 82 - 31) - 1 - 40));
         }
         §§pop().topRightRadiusY = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 87 + 7 - 1 + 1);
         }
         §§pop().bottomRightRadiusX = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() - 73 + 7 - 1);
         }
         §§pop().bottomRightRadiusY = §§pop();
         _loc1_.fill = this._MinimalFlatButtonSkin_SolidColor1_i();
         _loc1_.initialized(this,"shadow");
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private final function _MinimalFlatButtonSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(4028582);
         if(_loc2_)
         {
            §§push(§§pop() * 77 - 1 + 1);
         }
         §§pop().color = §§pop();
         this.backgroundColor = _loc1_;
         BindingManager.executeBindings(this,"backgroundColor",this.backgroundColor);
         return _loc1_;
      }
      
      private final function _MinimalFlatButtonSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 9 + 1 - 1) * 12 + 18);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 74) * 82 - 1 - 78 + 70) - 18);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1) + 85 - 1 + 35);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 71 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(((-§§pop() - 25) * 2 + 73 + 1 + 1) * 47);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((-§§pop() - 69) * 101 - 95 + 17);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() * 69 - 1) * 52 + 74 - 53));
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() + 83) - 49 - 20);
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
