package com.enfluid.ltp.view.skins
{
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import mx.events.PropertyChangeEvent;
   
   public final class KeywordDataGridSkinInnerClass3 extends Group
   {
       
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.KeywordDataGridSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function KeywordDataGridSkinInnerClass3()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._KeywordDataGridSkinInnerClass3_Rect1_c()];
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
      
      private final function _KeywordDataGridSkinInnerClass3_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 56) + 84 + 1) * 53);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 7 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 53 + 60) - 54);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 23 - 43 - 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._KeywordDataGridSkinInnerClass3_SolidColor1_c();
         _loc1_.stroke = this._KeywordDataGridSkinInnerClass3_SolidColorStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkinInnerClass3_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(12303291);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 118 - 1 + 94);
         }
         §§pop().color = §§pop();
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkinInnerClass3_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(8816262);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 - 77 - 1) * 103 - 21 - 86);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(--(§§pop() * 21 + 1 + 103) + 93 - 118);
         }
         §§pop().weight = §§pop();
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : com.enfluid.ltp.view.skins.KeywordDataGridSkin
      {
         return this._88844982outerDocument;
      }
      
      public function set outerDocument(param1:com.enfluid.ltp.view.skins.KeywordDataGridSkin) : void
      {
         var _loc2_:Object = this._88844982outerDocument;
         if(_loc2_ !== param1)
         {
            this._88844982outerDocument = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outerDocument",_loc2_,param1));
            }
         }
      }
   }
}
