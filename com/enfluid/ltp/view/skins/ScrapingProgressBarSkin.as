package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.core.IFlexModuleFactory;
   import spark.effects.Fade;
   import mx.binding.BindingManager;
   import spark.primitives.Rect;
   import spark.primitives.Line;
   import mx.graphics.LinearGradient;
   import mx.graphics.GradientEntry;
   import mx.core.ClassFactory;
   
   public final class ScrapingProgressBarSkin extends SparkSkin
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ScrapingProgressBarSkin()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._ScrapingProgressBarSkin_Rect1_c()];
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
      
      private final function _ScrapingProgressBarSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 107 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 43 + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 102 + 58 - 1 - 15) * 103));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 5 - 1) * 19) - 9 + 114);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._ScrapingProgressBarSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _ScrapingProgressBarSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 - 119 - 1 + 82);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._ScrapingProgressBarSkin_GradientEntry1_c(),this._ScrapingProgressBarSkin_GradientEntry2_c()];
         return _loc1_;
      }
      
      private final function _ScrapingProgressBarSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 53) * 90 + 1 + 1 + 1);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _ScrapingProgressBarSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(14211288);
         if(_loc2_)
         {
            §§push((-(§§pop() - 111 - 46) + 1) * 44 - 1 - 57);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 112 + 1 - 79);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
   }
}
