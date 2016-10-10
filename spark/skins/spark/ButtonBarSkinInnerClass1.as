package spark.skins.spark
{
   import spark.components.ButtonBarButton;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   
   public class ButtonBarSkinInnerClass1 extends ButtonBarButton
   {
       
      
      private var _88844982outerDocument:spark.skins.spark.ButtonBarSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function ButtonBarSkinInnerClass1()
      {
         super();
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = ButtonBarMiddleButtonSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : spark.skins.spark.ButtonBarSkin
      {
         return this._88844982outerDocument;
      }
      
      public function set outerDocument(param1:spark.skins.spark.ButtonBarSkin) : void
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
