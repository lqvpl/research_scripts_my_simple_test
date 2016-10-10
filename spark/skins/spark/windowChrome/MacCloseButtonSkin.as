package spark.skins.spark.windowChrome
{
   import spark.components.supportClasses.Skin;
   import mx.core.IStateClient2;
   import spark.primitives.BitmapImage;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.State;
   import mx.states.AddItems;
   
   public class MacCloseButtonSkin extends Skin implements IStateClient2
   {
       
      
      public var _MacCloseButtonSkin_BitmapImage1:BitmapImage;
      
      public var _MacCloseButtonSkin_BitmapImage2:BitmapImage;
      
      public var _MacCloseButtonSkin_BitmapImage3:BitmapImage;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _embed_mxml________________assets_mac_close_over_png_1520471792:Class;
      
      private var _embed_mxml________________assets_mac_close_up_png_383805502:Class;
      
      private var _embed_mxml________________assets_mac_close_down_png_1520684412:Class;
      
      private var _213507019hostComponent:Button;
      
      public function MacCloseButtonSkin()
      {
         this._embed_mxml________________assets_mac_close_over_png_1520471792 = MacCloseButtonSkin__embed_mxml________________assets_mac_close_over_png_1520471792;
         this._embed_mxml________________assets_mac_close_up_png_383805502 = MacCloseButtonSkin__embed_mxml________________assets_mac_close_up_png_383805502;
         this._embed_mxml________________assets_mac_close_down_png_1520684412 = MacCloseButtonSkin__embed_mxml________________assets_mac_close_down_png_1520684412;
         super();
         mx_internal::_document = this;
         this.minWidth = 12;
         this.minHeight = 13;
         this.mxmlContent = [];
         this.currentState = "up";
         var _loc1_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._MacCloseButtonSkin_BitmapImage1_i);
         var _loc2_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._MacCloseButtonSkin_BitmapImage2_i);
         var _loc3_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._MacCloseButtonSkin_BitmapImage3_i);
         states = [new State({
            "name":"up",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc1_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"over",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc2_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"down",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc3_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
      
      private function _MacCloseButtonSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml________________assets_mac_close_up_png_383805502;
         _loc1_.left = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.fillMode = "clip";
         _loc1_.initialized(this,"_MacCloseButtonSkin_BitmapImage1");
         this._MacCloseButtonSkin_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_MacCloseButtonSkin_BitmapImage1",this._MacCloseButtonSkin_BitmapImage1);
         return _loc1_;
      }
      
      private function _MacCloseButtonSkin_BitmapImage2_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml________________assets_mac_close_over_png_1520471792;
         _loc1_.left = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.fillMode = "clip";
         _loc1_.initialized(this,"_MacCloseButtonSkin_BitmapImage2");
         this._MacCloseButtonSkin_BitmapImage2 = _loc1_;
         BindingManager.executeBindings(this,"_MacCloseButtonSkin_BitmapImage2",this._MacCloseButtonSkin_BitmapImage2);
         return _loc1_;
      }
      
      private function _MacCloseButtonSkin_BitmapImage3_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml________________assets_mac_close_down_png_1520684412;
         _loc1_.left = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.fillMode = "clip";
         _loc1_.initialized(this,"_MacCloseButtonSkin_BitmapImage3");
         this._MacCloseButtonSkin_BitmapImage3 = _loc1_;
         BindingManager.executeBindings(this,"_MacCloseButtonSkin_BitmapImage3",this._MacCloseButtonSkin_BitmapImage3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Button
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Button) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
