package com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer
{
   import spark.primitives.Path;
   import spark.components.gridClasses.IGridVisualElement;
   import mx.graphics.GradientEntry;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import mx.graphics.RadialGradient;
   import spark.layouts.VerticalLayout;
   import mx.binding.BindingManager;
   import mx.events.PropertyChangeEvent;
   
   public final class FlatHeaderRendererInnerClass0 extends Path implements IGridVisualElement
   {
       
      
      private var _1752992635arrowFill1:GradientEntry;
      
      private var _1752992634arrowFill2:GradientEntry;
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatHeaderRenderer;
      
      public function FlatHeaderRendererInnerClass0()
      {
         super();
         this.data = "M 3.5 7.0 L 0.0 0.0 L 7.0 0.0 L 3.5 7.0";
         this.fill = this._FlatHeaderRendererInnerClass0_RadialGradient1_c();
      }
      
      public function prepareGridVisualElement(param1:Grid, param2:int, param3:int) : void
      {
         var _loc4_:DataGrid = param1.dataGrid;
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:uint = _loc4_.getStyle("symbolColor");
         this.arrowFill1.color = _loc5_;
         this.arrowFill2.color = _loc5_;
      }
      
      private final function _FlatHeaderRendererInnerClass0_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 108) - 85 + 1);
         }
         §§pop().rotation = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() + 111 + 16) * 55 - 103) - 54);
         }
         §§pop().focalPointRatio = §§pop();
         _loc1_.entries = [this._FlatHeaderRendererInnerClass0_GradientEntry1_i(),this._FlatHeaderRendererInnerClass0_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _FlatHeaderRendererInnerClass0_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 57 - 1) + 61);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.6;
         this.arrowFill1 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill1",this.arrowFill1);
         return _loc1_;
      }
      
      private final function _FlatHeaderRendererInnerClass0_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 24) * 8);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.8;
         this.arrowFill2 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill2",this.arrowFill2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get arrowFill1() : GradientEntry
      {
         return this._1752992635arrowFill1;
      }
      
      public function set arrowFill1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1752992635arrowFill1;
         if(_loc2_ !== param1)
         {
            this._1752992635arrowFill1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrowFill1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get arrowFill2() : GradientEntry
      {
         return this._1752992634arrowFill2;
      }
      
      public function set arrowFill2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1752992634arrowFill2;
         if(_loc2_ !== param1)
         {
            this._1752992634arrowFill2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrowFill2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatHeaderRenderer
      {
         return this._88844982outerDocument;
      }
      
      public function set outerDocument(param1:com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatHeaderRenderer) : void
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
