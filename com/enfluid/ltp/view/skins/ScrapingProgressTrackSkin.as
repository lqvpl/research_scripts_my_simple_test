package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.graphics.LinearGradient;
   import mx.graphics.GradientEntry;
   import flash.events.MouseEvent;
   
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
            §§push((§§pop() * 96 + 1 - 1 - 27 - 80) * 95);
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
            §§push(-(§§pop() + 1) + 1 - 1 - 1 + 65);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 21 + 1 + 1 + 38 - 74 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 1) * 68 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 36) + 1 - 1 + 86 + 15);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() + 94 + 74 + 1);
         }
         §§pop().radiusX = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(--((-§§pop() - 89) * 119 - 1 + 1));
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
            §§push(§§pop() + 1 + 1 + 99 + 30 - 1 - 25);
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
         if(_loc3_)
         {
            §§push((§§pop() + 51) * 108 + 46);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 73 - 1 - 1 - 1);
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
            §§push((-(§§pop() * 102 - 117) + 38) * 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 108 - 1 - 68 + 33) * 20 + 20 - 1);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
   }
}
