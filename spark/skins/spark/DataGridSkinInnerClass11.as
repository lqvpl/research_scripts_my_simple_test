package spark.skins.spark
{
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.events.PropertyChangeEvent;
   
   public class DataGridSkinInnerClass11 extends Rect
   {
       
      
      private var _88844982outerDocument:spark.skins.spark.DataGridSkin;
      
      public function DataGridSkinInnerClass11()
      {
         super();
         this.fill = this._DataGridSkinInnerClass11_SolidColor1_c();
      }
      
      private function _DataGridSkinInnerClass11_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16777215;
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
