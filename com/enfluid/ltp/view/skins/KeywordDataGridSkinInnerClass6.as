package com.enfluid.ltp.view.skins
{
   import spark.primitives.Rect;
   import spark.components.gridClasses.IGridVisualElement;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import mx.events.PropertyChangeEvent;
   
   public final class KeywordDataGridSkinInnerClass6 extends Rect implements IGridVisualElement
   {
       
      
      private var _225390506hoverIndicatorFill:SolidColor;
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.KeywordDataGridSkin;
      
      public function KeywordDataGridSkinInnerClass6()
      {
         super();
         this.fill = this._KeywordDataGridSkinInnerClass6_SolidColor1_i();
      }
      
      public function prepareGridVisualElement(param1:Grid, param2:int, param3:int) : void
      {
         var _loc4_:DataGrid = param1.dataGrid;
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:uint = _loc4_.getStyle("rollOverColor");
         this.hoverIndicatorFill.color = _loc5_;
      }
      
      private final function _KeywordDataGridSkinInnerClass6_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(13556719);
         if(_loc3_)
         {
            §§push(§§pop() - 5 - 1 + 1);
         }
         §§pop().color = §§pop();
         this.hoverIndicatorFill = _loc1_;
         BindingManager.executeBindings(this,"hoverIndicatorFill",this.hoverIndicatorFill);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get hoverIndicatorFill() : SolidColor
      {
         return this._225390506hoverIndicatorFill;
      }
      
      public function set hoverIndicatorFill(param1:SolidColor) : void
      {
         var _loc2_:Object = this._225390506hoverIndicatorFill;
         if(_loc2_ !== param1)
         {
            this._225390506hoverIndicatorFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hoverIndicatorFill",_loc2_,param1));
            }
         }
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
