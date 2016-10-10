package spark.skins.spark
{
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   
   public class DataGridSkinInnerClass5 extends DefaultGridHeaderRenderer
   {
       
      
      private var _88844982outerDocument:spark.skins.spark.DataGridSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function DataGridSkinInnerClass5()
      {
         super();
         mx_internal::_document = this;
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
