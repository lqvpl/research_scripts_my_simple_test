package com.enfluid.ltp.view.skins
{
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.events.PropertyChangeEvent;
   
   public final class KeywordDataGridSkinInnerClass10 extends Rect
   {
       
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.KeywordDataGridSkin;
      
      public function KeywordDataGridSkinInnerClass10()
      {
         super();
         this.fill = this._KeywordDataGridSkinInnerClass10_SolidColor1_c();
      }
      
      private final function _KeywordDataGridSkinInnerClass10_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(---(§§pop() + 1 - 117));
         }
         §§pop().color = §§pop();
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
