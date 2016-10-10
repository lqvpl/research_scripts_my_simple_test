package com.enfluid.ltp.view.skins.FlatUIComponents.ScrollPane
{
   import spark.skins.SparkSkin;
   import mx.core.IStateClient2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.settings.SettingsUserAccountsSection;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import flash.events.MouseEvent;
   import mx.graphics.SolidColor;
   import spark.components.ComboBox;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import mx.binding.BindingManager;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   
   public final class FlatUIScrollBarTrack extends SparkSkin implements IStateClient2
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Button;
      
      public function FlatUIScrollBarTrack()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._FlatUIScrollBarTrack_Rect1_c()];
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"down",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
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
      
      private final function _FlatUIScrollBarTrack_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 75 - 1 + 1 + 1 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 100 + 1 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 61 + 1 + 1 - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() * 115 - 1) - 78 + 45);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(--(§§pop() - 38) - 103);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 1) - 1));
         }
         §§pop().minHeight = §§pop();
         _loc1_.stroke = this._FlatUIScrollBarTrack_SolidColorStroke1_c();
         _loc1_.fill = this._FlatUIScrollBarTrack_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarTrack_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(14015197);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.weight = 0.5;
         return _loc1_;
      }
      
      private final function _FlatUIScrollBarTrack_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(15790836);
         if(_loc2_)
         {
            §§push(-§§pop() - 75 - 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
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
