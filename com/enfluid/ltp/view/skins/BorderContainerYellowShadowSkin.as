package com.enfluid.ltp.view.skins
{
   import spark.components.supportClasses.Skin;
   import mx.core.IStateClient2;
   import spark.components.BorderContainer;
   import mx.core.DeferredInstanceFromFunction;
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.core.IFlexDisplayObject;
   import spark.primitives.BitmapImage;
   import mx.binding.BindingManager;
   import mx.graphics.LinearGradient;
   import mx.graphics.GradientEntry;
   import mx.events.CloseEvent;
   import com.adobe.cairngorm.popup.PopUpEvent;
   import mx.managers.PopUpManager;
   import spark.layouts.VerticalLayout;
   import spark.components.SkinnableContainer;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class BorderContainerYellowShadowSkin extends Skin implements IStateClient2
   {
       
      
      private var _809612678contentGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:SkinnableContainer;
      
      public function BorderContainerYellowShadowSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._BorderContainerYellowShadowSkin_Rect1_c(),this._BorderContainerYellowShadowSkin_Rect2_c(),this._BorderContainerYellowShadowSkin_Group1_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
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
      
      private final function _BorderContainerYellowShadowSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 57) - 1) * 86);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1 - 82) + 115) * 117);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 97 + 1 - 117) * 2);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 29 - 1 + 1 + 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._BorderContainerYellowShadowSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _BorderContainerYellowShadowSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(--§§pop() + 1 + 1 - 74 + 31);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _BorderContainerYellowShadowSkin_Rect2_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1) - 1 - 1 - 27 + 98) * 29);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 53 + 118 + 1);
         }
         §§pop().height = §§pop();
         _loc1_.fill = this._BorderContainerYellowShadowSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _BorderContainerYellowShadowSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push((-(§§pop() * 50 - 1) - 1 - 3) * 24 - 62);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._BorderContainerYellowShadowSkin_GradientEntry1_c(),this._BorderContainerYellowShadowSkin_GradientEntry2_c()];
         return _loc1_;
      }
      
      private final function _BorderContainerYellowShadowSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16760088);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 64 + 1));
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 37) + 119 + 1 + 1 - 17);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _BorderContainerYellowShadowSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16760088);
         if(_loc2_)
         {
            §§push(-((§§pop() - 35 + 1 + 71 - 1 - 1) * 26));
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 1 + 78) * 31 - 1 + 47));
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _BorderContainerYellowShadowSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push((§§pop() * 27 - 1 + 48) * 91 - 59 - 96 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 67 * 81);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push((-(§§pop() - 1) + 99) * 26 + 10);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 77 - 1 + 28 - 1 - 45 - 40);
         }
         §§pop().bottom = §§pop();
         _loc1_.layout = this._BorderContainerYellowShadowSkin_VerticalLayout1_c();
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private final function _BorderContainerYellowShadowSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : SkinnableContainer
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:SkinnableContainer) : void
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
