package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkButtonSkin;
   import mx.core.IStateClient2;
   import mx.core.IFlexModuleFactory;
   import spark.events.DropDownEvent;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.ViewModel;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class TransparentButtonSkin extends SparkButtonSkin implements IStateClient2
   {
      
      private static const exclusions:Array = ["iconDisplay","labelDisplay"];
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var cornerRadius:Number = 2;
      
      public function TransparentButtonSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(21);
         if(_loc1_)
         {
            §§push(§§pop() - 94 - 1 - 89);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc2_)
         {
            §§push(-(§§pop() + 83 - 21));
         }
         §§pop().minWidth = §§pop();
         this.buttonMode = true;
         this.currentState = "up";
         states = [new State({
            "name":"up",
            "overrides":[]
         }),new State({
            "name":"over",
            "overrides":[]
         }),new State({
            "name":"down",
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
      
      override public function get colorizeExclusions() : Array
      {
         return exclusions;
      }
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = getStyle("cornerRadius");
         if(this.cornerRadius != _loc3_)
         {
            this.cornerRadius = _loc3_;
         }
         super.updateDisplayList(param1,param2);
      }
   }
}
