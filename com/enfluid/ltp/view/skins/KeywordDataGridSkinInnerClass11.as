package com.enfluid.ltp.view.skins
{
   import spark.components.gridClasses.GridView;
   import mx.core.IFlexModuleFactory;
   import spark.components.gridClasses.GridLayer;
   import flash.events.MouseEvent;
   import mx.events.PropertyChangeEvent;
   import flash.utils.ByteArray;
   
   public final class KeywordDataGridSkinInnerClass11 extends GridView
   {
       
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.KeywordDataGridSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function KeywordDataGridSkinInnerClass11()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._KeywordDataGridSkinInnerClass11_GridLayer1_c(),this._KeywordDataGridSkinInnerClass11_GridLayer2_c(),this._KeywordDataGridSkinInnerClass11_GridLayer3_c(),this._KeywordDataGridSkinInnerClass11_GridLayer4_c(),this._KeywordDataGridSkinInnerClass11_GridLayer5_c()];
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
      
      private final function _KeywordDataGridSkinInnerClass11_GridLayer1_c() : GridLayer
      {
         var _loc1_:GridLayer = new GridLayer();
         _loc1_.name = "backgroundLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkinInnerClass11_GridLayer2_c() : GridLayer
      {
         var _loc1_:GridLayer = new GridLayer();
         _loc1_.name = "selectionLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkinInnerClass11_GridLayer3_c() : GridLayer
      {
         var _loc1_:GridLayer = new GridLayer();
         _loc1_.name = "editorIndicatorLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkinInnerClass11_GridLayer4_c() : GridLayer
      {
         var _loc1_:GridLayer = new GridLayer();
         _loc1_.name = "rendererLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkinInnerClass11_GridLayer5_c() : GridLayer
      {
         var _loc1_:GridLayer = new GridLayer();
         _loc1_.name = "overlayLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
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
