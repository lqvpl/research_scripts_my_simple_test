package com.enfluid.ltp.view.skins
{
   import spark.primitives.Line;
   import mx.graphics.SolidColorStroke;
   import mx.events.PropertyChangeEvent;
   
   public final class KeywordDataGridSkinInnerClass4 extends Line
   {
       
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.KeywordDataGridSkin;
      
      public function KeywordDataGridSkinInnerClass4()
      {
         super();
         this.stroke = this._KeywordDataGridSkinInnerClass4_SolidColorStroke1_c();
      }
      
      private final function _KeywordDataGridSkinInnerClass4_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(10790052);
         if(_loc3_)
         {
            §§push(-((§§pop() - 0 - 64) * 96) - 1 + 1 + 18);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 + 104) * 8) * 18 - 1);
         }
         §§pop().weight = §§pop();
         _loc1_.caps = "square";
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
