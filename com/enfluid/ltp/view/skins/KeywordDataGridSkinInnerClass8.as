package com.enfluid.ltp.view.skins
{
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Line;
   import flash.events.MouseEvent;
   import mx.graphics.SolidColorStroke;
   import mx.events.PropertyChangeEvent;
   
   public final class KeywordDataGridSkinInnerClass8 extends Group
   {
       
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.KeywordDataGridSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function KeywordDataGridSkinInnerClass8()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._KeywordDataGridSkinInnerClass8_Line1_c()];
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
      
      private final function _KeywordDataGridSkinInnerClass8_Line1_c() : Line
      {
         var _loc1_:Line = new Line();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() + 24 - 98) * 39 - 45 - 25);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 63) - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 1 + 43 - 1 - 1) * 85));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 98 - 69 - 71);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._KeywordDataGridSkinInnerClass8_SolidColorStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkinInnerClass8_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 97) - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(--§§pop() + 70 - 1);
         }
         §§pop().weight = §§pop();
         _loc1_.caps = "square";
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
