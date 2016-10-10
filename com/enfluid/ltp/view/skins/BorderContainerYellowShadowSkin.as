package com.enfluid.ltp.view.skins
{
   import spark.components.supportClasses.Skin;
   import mx.core.IStateClient2;
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.binding.Binding;
   import mx.graphics.LinearGradient;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.binding.BindingManager;
   import spark.layouts.VerticalLayout;
   import spark.components.HGroup;
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
         if(_loc2_)
         {
            §§push(§§pop() * 83 - 1 - 52);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 76 - 109) * 106);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 106) * 62);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 85 + 88) * 40 + 1 - 1);
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
         if(_loc3_)
         {
            §§push(-((§§pop() - 85) * 15) * 21);
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
            §§push(§§pop() - 1 - 39 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(8);
         if(_loc2_)
         {
            §§push((-§§pop() - 14 - 1 - 1) * 84);
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
            §§push((§§pop() + 29 + 117 + 110 + 1) * 60 + 1);
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
            §§push(--(§§pop() + 1) * 81 + 83 - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() * 46 + 76 - 44) * 119));
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
            §§push(§§pop() - 1 + 114 - 21 - 38 + 48);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 55 - 1);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _BorderContainerYellowShadowSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) - 115 - 10));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() * 45 - 35 - 82 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push((-§§pop() - 1) * 114 - 27 + 95);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 1 - 1) * 30 - 1 + 1);
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
