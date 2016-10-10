package spark.skins.spark
{
   import spark.components.gridClasses.GridView;
   import mx.core.IFlexModuleFactory;
   import spark.components.gridClasses.GridLayer;
   import mx.events.PropertyChangeEvent;
   
   public class DataGridSkinInnerClass12 extends GridView
   {
       
      
      private var _88844982outerDocument:spark.skins.spark.DataGridSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function DataGridSkinInnerClass12()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._DataGridSkinInnerClass12_GridLayer1_c(),this._DataGridSkinInnerClass12_GridLayer2_c(),this._DataGridSkinInnerClass12_GridLayer3_c(),this._DataGridSkinInnerClass12_GridLayer4_c(),this._DataGridSkinInnerClass12_GridLayer5_c()];
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
      
      private function _DataGridSkinInnerClass12_GridLayer1_c() : GridLayer
      {
         var _loc1_:GridLayer = new GridLayer();
         _loc1_.name = "backgroundLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DataGridSkinInnerClass12_GridLayer2_c() : GridLayer
      {
         var _loc1_:GridLayer = new GridLayer();
         _loc1_.name = "selectionLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DataGridSkinInnerClass12_GridLayer3_c() : GridLayer
      {
         var _loc1_:GridLayer = new GridLayer();
         _loc1_.name = "editorIndicatorLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DataGridSkinInnerClass12_GridLayer4_c() : GridLayer
      {
         var _loc1_:GridLayer = new GridLayer();
         _loc1_.name = "rendererLayer";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _DataGridSkinInnerClass12_GridLayer5_c() : GridLayer
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
      public function get outerDocument() : spark.skins.spark.DataGridSkin
      {
         return this._88844982outerDocument;
      }
      
      public function set outerDocument(param1:spark.skins.spark.DataGridSkin) : void
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
