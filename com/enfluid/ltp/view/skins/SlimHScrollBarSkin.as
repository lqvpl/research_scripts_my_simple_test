package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import spark.components.Button;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import spark.components.HScrollBar;
   import mx.events.PropertyChangeEvent;
   import hr.binaria.asx3m.annotations.Annotation;
   import hr.binaria.asx3m.annotations.Annotated;
   import com.enfluid.ltp.util.Logger;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class SlimHScrollBarSkin extends SparkSkin implements IStateClient2
   {
      
      private static const exclusions:Array = ["track","thumb","decrementButton","incrementButton"];
       
      
      private var _110342614thumb:Button;
      
      private var _110621003track:Button;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:HScrollBar;
      
      public function SlimHScrollBarSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(§§pop() - 106 + 95 + 1 - 55 - 1) * 14);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(35);
         if(_loc2_)
         {
            §§push(§§pop() - 82 + 86 - 1);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._SlimHScrollBarSkin_Button1_i(),this._SlimHScrollBarSkin_Button2_i()];
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
         }),new State({
            "name":"inactive",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            }),new SetProperty().initializeFromObject({
               "target":"thumb",
               "name":"visible",
               "value":false
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
         return exclusions;
      }
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      private final function _SlimHScrollBarSkin_Button1_i() : Button
      {
         var _loc1_:Button = null;
         _loc1_ = new Button();
         §§push(_loc1_);
         §§push(54);
         if(_loc3_)
         {
            §§push(--§§pop() + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() * 77 * 50 * 45 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 77));
         }
         §§pop().right = §§pop();
         _loc1_.focusEnabled = false;
         _loc1_.tabEnabled = false;
         _loc1_.setStyle("skinClass",SlimHScrollBarTrackSkin);
         _loc1_.id = "track";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.track = _loc1_;
         BindingManager.executeBindings(this,"track",this.track);
         return _loc1_;
      }
      
      private final function _SlimHScrollBarSkin_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.focusEnabled = false;
         _loc1_.tabEnabled = false;
         _loc1_.setStyle("skinClass",SlimHScrollBarThumbSkin);
         _loc1_.id = "thumb";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.thumb = _loc1_;
         BindingManager.executeBindings(this,"thumb",this.thumb);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get thumb() : Button
      {
         return this._110342614thumb;
      }
      
      public function set thumb(param1:Button) : void
      {
         var _loc2_:Object = this._110342614thumb;
         if(_loc2_ !== param1)
         {
            this._110342614thumb = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"thumb",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get track() : Button
      {
         return this._110621003track;
      }
      
      public function set track(param1:Button) : void
      {
         var _loc2_:Object = this._110621003track;
         if(_loc2_ !== param1)
         {
            this._110621003track = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"track",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : HScrollBar
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:HScrollBar) : void
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
