package com.enfluid.ltp.view.skins
{
   import spark.primitives.Rect;
   import spark.components.gridClasses.IGridVisualElement;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import mx.graphics.SolidColorStroke;
   import spark.components.Grid;
   import spark.components.Button;
   import mx.binding.BindingManager;
   import spark.components.DataGrid;
   import mx.events.PropertyChangeEvent;
   
   public final class KeywordDataGridSkinInnerClass1 extends Rect implements IGridVisualElement
   {
       
      
      private var _270443153caretIndicatorFill:SolidColorStroke;
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.KeywordDataGridSkin;
      
      public function KeywordDataGridSkinInnerClass1()
      {
         super();
         this.stroke = this._KeywordDataGridSkinInnerClass1_SolidColorStroke1_i();
      }
      
      public function prepareGridVisualElement(param1:Grid, param2:int, param3:int) : void
      {
         var _loc4_:DataGrid = param1.dataGrid;
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:uint = _loc4_.getStyle("caretColor");
         this.caretIndicatorFill.color = _loc5_;
      }
      
      private final function _KeywordDataGridSkinInnerClass1_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(92159);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 32 + 58) - 1));
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(--((§§pop() * 68 - 19 - 71) * 14));
         }
         §§pop().weight = §§pop();
         this.caretIndicatorFill = _loc1_;
         BindingManager.executeBindings(this,"caretIndicatorFill",this.caretIndicatorFill);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get caretIndicatorFill() : SolidColorStroke
      {
         return this._270443153caretIndicatorFill;
      }
      
      public function set caretIndicatorFill(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._270443153caretIndicatorFill;
         if(_loc2_ !== param1)
         {
            this._270443153caretIndicatorFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"caretIndicatorFill",_loc2_,param1));
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
