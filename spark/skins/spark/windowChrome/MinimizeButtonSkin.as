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
   
   public class MinimizeButtonSkin extends Skin implements IStateClient2
   {
       
      
      public var _MinimizeButtonSkin_BitmapImage1:BitmapImage;
      
      public var _MinimizeButtonSkin_BitmapImage2:BitmapImage;
      
      public var _MinimizeButtonSkin_BitmapImage3:BitmapImage;
      
      public var _MinimizeButtonSkin_BitmapImage4:BitmapImage;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _embed_mxml________________assets_win_min_over_png_249587718:Class;
      
      private var _embed_mxml________________assets_win_min_up_png_2141770736:Class;
      
      private var _embed_mxml________________assets_win_min_dis_png_861513328:Class;
      
      private var _embed_mxml________________assets_win_min_down_png_1763678146:Class;
      
      private var _213507019hostComponent:Button;
      
      public function MinimizeButtonSkin()
      {
         this._embed_mxml________________assets_win_min_over_png_249587718 = MinimizeButtonSkin__embed_mxml________________assets_win_min_over_png_249587718;
         this._embed_mxml________________assets_win_min_up_png_2141770736 = MinimizeButtonSkin__embed_mxml________________assets_win_min_up_png_2141770736;
         this._embed_mxml________________assets_win_min_dis_png_861513328 = MinimizeButtonSkin__embed_mxml________________assets_win_min_dis_png_861513328;
         this._embed_mxml________________assets_win_min_down_png_1763678146 = MinimizeButtonSkin__embed_mxml________________assets_win_min_down_png_1763678146;
         super();
         mx_internal::_document = this;
         this.minWidth = 12;
         this.minHeight = 13;
         this.mxmlContent = [];
         this.currentState = "up";
         var _loc1_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._MinimizeButtonSkin_BitmapImage1_i);
         var _loc2_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._MinimizeButtonSkin_BitmapImage2_i);
         var _loc3_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._MinimizeButtonSkin_BitmapImage3_i);
         var _loc4_:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._MinimizeButtonSkin_BitmapImage4_i);
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
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_loc4_,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
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
      
      private function _MinimizeButtonSkin_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml________________assets_win_min_up_png_2141770736;
         _loc1_.left = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.fillMode = "clip";
         _loc1_.initialized(this,"_MinimizeButtonSkin_BitmapImage1");
         this._MinimizeButtonSkin_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_MinimizeButtonSkin_BitmapImage1",this._MinimizeButtonSkin_BitmapImage1);
         return _loc1_;
      }
      
      private function _MinimizeButtonSkin_BitmapImage2_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml________________assets_win_min_over_png_249587718;
         _loc1_.left = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.fillMode = "clip";
         _loc1_.initialized(this,"_MinimizeButtonSkin_BitmapImage2");
         this._MinimizeButtonSkin_BitmapImage2 = _loc1_;
         BindingManager.executeBindings(this,"_MinimizeButtonSkin_BitmapImage2",this._MinimizeButtonSkin_BitmapImage2);
         return _loc1_;
      }
      
      private function _MinimizeButtonSkin_BitmapImage3_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml________________assets_win_min_down_png_1763678146;
         _loc1_.left = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.fillMode = "clip";
         _loc1_.initialized(this,"_MinimizeButtonSkin_BitmapImage3");
         this._MinimizeButtonSkin_BitmapImage3 = _loc1_;
         BindingManager.executeBindings(this,"_MinimizeButtonSkin_BitmapImage3",this._MinimizeButtonSkin_BitmapImage3);
         return _loc1_;
      }
      
      private function _MinimizeButtonSkin_BitmapImage4_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.source = this._embed_mxml________________assets_win_min_dis_png_861513328;
         _loc1_.left = 0;
         _loc1_.verticalCenter = 0;
         _loc1_.fillMode = "clip";
         _loc1_.initialized(this,"_MinimizeButtonSkin_BitmapImage4");
         this._MinimizeButtonSkin_BitmapImage4 = _loc1_;
         BindingManager.executeBindings(this,"_MinimizeButtonSkin_BitmapImage4",this._MinimizeButtonSkin_BitmapImage4);
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
