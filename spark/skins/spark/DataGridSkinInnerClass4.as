package spark.skins.spark
{
   import spark.primitives.Line;
   import mx.graphics.SolidColorStroke;
   import mx.events.PropertyChangeEvent;
   
   public class DataGridSkinInnerClass4 extends Line
   {
       
      
      private var _88844982outerDocument:spark.skins.spark.DataGridSkin;
      
      public function DataGridSkinInnerClass4()
      {
         super();
         this.stroke = this._DataGridSkinInnerClass4_SolidColorStroke1_c();
      }
      
      private function _DataGridSkinInnerClass4_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.color = 6908265;
         _loc1_.weight = 1;
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
