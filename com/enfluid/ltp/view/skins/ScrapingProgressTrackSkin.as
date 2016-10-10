package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.SaveProxiesCommand;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import mx.graphics.LinearGradient;
   import mx.graphics.GradientEntry;
   import spark.effects.Fade;
   
   public final class ScrapingProgressTrackSkin extends SparkSkin
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ScrapingProgressTrackSkin()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(9);
         if(_loc1_)
         {
            §§push((§§pop() - 1 - 1) * 41 - 1 - 109);
         }
         §§pop().minHeight = §§pop();
         this.mxmlContent = [this._ScrapingProgressTrackSkin_Rect1_c()];
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
      
      private final function _ScrapingProgressTrackSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 119) * 53 - 1 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 17) + 1 + 1 - 1 - 30);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 106 - 64);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 68) * 83) - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push((-(§§pop() - 79 + 1) + 32) * 53 - 1 - 1);
         }
         §§pop().radiusX = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() - 112 - 1 - 118 - 91);
         }
         §§pop().radiusY = §§pop();
         _loc1_.fill = this._ScrapingProgressTrackSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _ScrapingProgressTrackSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) * 47 * 11);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._ScrapingProgressTrackSkin_GradientEntry1_c(),this._ScrapingProgressTrackSkin_GradientEntry2_c()];
         return _loc1_;
      }
      
      private final function _ScrapingProgressTrackSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() * 48 * 114 - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 25 + 1 - 75);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _ScrapingProgressTrackSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 72 - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() + 71 - 1) + 12) * 26);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
   }
}
