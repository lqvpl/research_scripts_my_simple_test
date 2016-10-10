package spark.skins.spark
{
   import spark.components.HGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.primitives.Path;
   import mx.graphics.GradientEntry;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import spark.components.gridClasses.GridColumn;
   import mx.binding.BindingManager;
   import mx.graphics.RadialGradient;
   import mx.events.PropertyChangeEvent;
   
   public class DefaultGridHeaderRendererInnerClass0 extends HGroup implements IGridVisualElement
   {
       
      
      private var _93090825arrow:Path;
      
      private var _1752992635arrowFill1:GradientEntry;
      
      private var _1752992634arrowFill2:GradientEntry;
      
      private var _88844982outerDocument:spark.skins.spark.DefaultGridHeaderRenderer;
      
      private var _823294896priorityLabel:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function DefaultGridHeaderRendererInnerClass0()
      {
         super();
         mx_internal::_document = this;
         this.verticalAlign = "middle";
         this.mxmlContent = [this._DefaultGridHeaderRendererInnerClass0_Label1_i(),this._DefaultGridHeaderRendererInnerClass0_Path1_i()];
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
      
      public function prepareGridVisualElement(param1:Grid, param2:int, param3:int) : void
      {
         var _loc4_:DataGrid = param1.dataGrid;
         if(!_loc4_ || !_loc4_.columnHeaderGroup)
         {
            return;
         }
         var _loc5_:Vector.<int> = _loc4_.columnHeaderGroup.visibleSortIndicatorIndices;
         if(_loc5_.length == 1)
         {
            this.priorityLabel.visible = false;
            this.priorityLabel.includeInLayout = false;
         }
         else
         {
            this.priorityLabel.visible = true;
            this.priorityLabel.includeInLayout = true;
            this.priorityLabel.text = String(_loc5_.indexOf(param3) + 1);
         }
         var _loc6_:GridColumn = param1.columns.getItemAt(param3) as GridColumn;
         this.arrow.scaleY = !!_loc6_.sortDescending?Number(1):Number(-1);
         var _loc7_:uint = _loc4_.getStyle("symbolColor");
         this.arrowFill1.color = _loc7_;
         this.arrowFill2.color = _loc7_;
      }
      
      private function _DefaultGridHeaderRendererInnerClass0_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.id = "priorityLabel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.priorityLabel = _loc1_;
         BindingManager.executeBindings(this,"priorityLabel",this.priorityLabel);
         return _loc1_;
      }
      
      private function _DefaultGridHeaderRendererInnerClass0_Path1_i() : Path
      {
         var _loc1_:Path = new Path();
         _loc1_.data = "M 3.5 7.0 L 0.0 0.0 L 7.0 0.0 L 3.5 7.0";
         _loc1_.fill = this._DefaultGridHeaderRendererInnerClass0_RadialGradient1_c();
         _loc1_.initialized(this,"arrow");
         this.arrow = _loc1_;
         BindingManager.executeBindings(this,"arrow",this.arrow);
         return _loc1_;
      }
      
      private function _DefaultGridHeaderRendererInnerClass0_RadialGradient1_c() : RadialGradient
      {
         var _loc1_:RadialGradient = new RadialGradient();
         _loc1_.rotation = 90;
         _loc1_.focalPointRatio = 1;
         _loc1_.entries = [this._DefaultGridHeaderRendererInnerClass0_GradientEntry1_i(),this._DefaultGridHeaderRendererInnerClass0_GradientEntry2_i()];
         return _loc1_;
      }
      
      private function _DefaultGridHeaderRendererInnerClass0_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 0;
         _loc1_.alpha = 0.6;
         this.arrowFill1 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill1",this.arrowFill1);
         return _loc1_;
      }
      
      private function _DefaultGridHeaderRendererInnerClass0_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 0;
         _loc1_.alpha = 0.8;
         this.arrowFill2 = _loc1_;
         BindingManager.executeBindings(this,"arrowFill2",this.arrowFill2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get arrow() : Path
      {
         return this._93090825arrow;
      }
      
      public function set arrow(param1:Path) : void
      {
         var _loc2_:Object = this._93090825arrow;
         if(_loc2_ !== param1)
         {
            this._93090825arrow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arrow",_loc2_,param1));
            }
         }
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
      public function get outerDocument() : spark.skins.spark.DefaultGridHeaderRenderer
      {
         return this._88844982outerDocument;
      }
      
      public function set outerDocument(param1:spark.skins.spark.DefaultGridHeaderRenderer) : void
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
      public function get priorityLabel() : Label
      {
         return this._823294896priorityLabel;
      }
      
      public function set priorityLabel(param1:Label) : void
      {
         var _loc2_:Object = this._823294896priorityLabel;
         if(_loc2_ !== param1)
         {
            this._823294896priorityLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priorityLabel",_loc2_,param1));
            }
         }
      }
   }
}
