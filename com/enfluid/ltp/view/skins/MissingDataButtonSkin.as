package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkButtonSkin;
   import mx.core.IStateClient2;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Ellipse;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import com.enfluid.ltp.view.KeywordsDataGrid;
   import mx.binding.Binding;
   import mx.graphics.SolidColorStroke;
   import mx.graphics.SolidColor;
   import spark.components.Label;
   import mx.events.FlexEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class MissingDataButtonSkin extends SparkButtonSkin implements IStateClient2
   {
      
      private static const exclusions:Array = ["iconDisplay","labelDisplay"];
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var cornerRadius:Number = 2;
      
      public function MissingDataButtonSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(13);
         if(_loc1_)
         {
            §§push(((§§pop() * 30 + 1) * 50 - 1) * 81);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(13);
         if(_loc2_)
         {
            §§push(-((§§pop() - 8 - 1) * 47 - 92) * 54);
         }
         §§pop().height = §§pop();
         §§push(this);
         §§push(13);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 - 58);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(13);
         if(_loc1_)
         {
            §§push(-((§§pop() - 54) * 26 * 14 + 75) * 76);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._MissingDataButtonSkin_Ellipse1_c(),this._MissingDataButtonSkin_Label1_c()];
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
      
      private final function _MissingDataButtonSkin_Ellipse1_c() : Ellipse
      {
         var _loc1_:Ellipse = new Ellipse();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) * 17);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 62 + 1 - 1 + 115 - 45 + 62 - 23);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 20 - 1 - 42 - 28 - 1));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 66 + 32 + 93);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._MissingDataButtonSkin_SolidColorStroke1_c();
         _loc1_.fill = this._MissingDataButtonSkin_SolidColor1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _MissingDataButtonSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(16760088);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 115 - 5 - 1 - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 101) * 89 * 71);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      private final function _MissingDataButtonSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16760088);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 98 - 1);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _MissingDataButtonSkin_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 96) * 89 * 67);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 68 - 67 + 36) - 63 - 10));
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 32) * 97 - 1 + 1 - 79 + 35 + 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.text = "!";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() + 119 + 1 + 19);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontFamily","Arial Rounded MT Bold");
         §§push(_loc1_);
         §§push("fontSize");
         §§push(11);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1) * 4 + 90 + 1 + 95 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
   }
}
