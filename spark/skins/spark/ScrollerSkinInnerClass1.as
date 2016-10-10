package spark.skins.spark
{
   import spark.components.HScrollBar;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   
   public class ScrollerSkinInnerClass1 extends HScrollBar
   {
       
      
      private var _88844982outerDocument:spark.skins.spark.ScrollerSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ScrollerSkinInnerClass1()
      {
         super();
         this.visible = false;
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
      public function get outerDocument() : spark.skins.spark.ScrollerSkin
      {
         return this._88844982outerDocument;
      }
      
      public function set outerDocument(param1:spark.skins.spark.ScrollerSkin) : void
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
