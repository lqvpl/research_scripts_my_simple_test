package com.enfluid.ltp.view.skins
{
   import spark.primitives.Rect;
   import spark.components.gridClasses.IGridVisualElement;
   import mx.graphics.SolidColor;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import mx.binding.BindingManager;
   import mx.events.PropertyChangeEvent;
   
   public final class KeywordDataGridSkinInnerClass0 extends Rect implements IGridVisualElement
   {
       
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.KeywordDataGridSkin;
      
      private var _1247411672rowBackgroundFillColor:SolidColor;
      
      public function KeywordDataGridSkinInnerClass0()
      {
         super();
         this.fill = this._KeywordDataGridSkinInnerClass0_SolidColor1_i();
      }
      
      public function prepareGridVisualElement(param1:Grid, param2:int, param3:int) : void
      {
         var _loc4_:DataGrid = param1.dataGrid;
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:Array = _loc4_.getStyle("alternatingRowColors");
         if(_loc5_ && §§pop() > §§pop())
         {
            _loc4_.styleManager.getColorNames(_loc5_);
            this.rowBackgroundFillColor.color = _loc5_[param2 % _loc5_.length];
         }
         else
         {
            §§push(this.rowBackgroundFillColor);
            §§push(16777215);
            if(_loc7_)
            {
               §§push(§§pop() - 16 + 2 + 1 + 1 - 30 + 1);
            }
            §§pop().color = §§pop();
         }
      }
      
      private final function _KeywordDataGridSkinInnerClass0_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1 + 1 + 1 + 1));
         }
         §§pop().color = §§pop();
         this.rowBackgroundFillColor = _loc1_;
         BindingManager.executeBindings(this,"rowBackgroundFillColor",this.rowBackgroundFillColor);
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
      
      [Bindable(event="propertyChange")]
      public function get rowBackgroundFillColor() : SolidColor
      {
         return this._1247411672rowBackgroundFillColor;
      }
      
      public function set rowBackgroundFillColor(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1247411672rowBackgroundFillColor;
         if(_loc2_ !== param1)
         {
            this._1247411672rowBackgroundFillColor = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rowBackgroundFillColor",_loc2_,param1));
            }
         }
      }
   }
}
