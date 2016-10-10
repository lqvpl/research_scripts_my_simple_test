package spark.skins.spark
{
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Line;
   import mx.graphics.SolidColorStroke;
   import mx.events.PropertyChangeEvent;
   
   public class DataGridSkinInnerClass7 extends Group
   {
       
      
      private var _88844982outerDocument:spark.skins.spark.DataGridSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function DataGridSkinInnerClass7()
      {
         super();
         mx_internal::_document = this;
         this.mxmlContent = [this._DataGridSkinInnerClass7_Line1_c()];
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
      
      private function _DataGridSkinInnerClass7_Line1_c() : Line
      {
         var _loc1_:Line = new Line();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.stroke = this._DataGridSkinInnerClass7_SolidColorStroke1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _DataGridSkinInnerClass7_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 0;
         _loc1_.weight = 2;
         _loc1_.caps = "square";
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
