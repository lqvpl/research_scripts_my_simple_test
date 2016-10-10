package com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer
{
   import spark.components.gridClasses.GridItemRenderer;
   import mx.core.IStateClient2;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.core.ClassFactory;
   import spark.primitives.Rect;
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import spark.events.PopUpEvent;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import mx.core.IFactory;
   import mx.core.IVisualElement;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import flash.utils.ByteArray;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import mx.graphics.LinearGradient;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import mx.events.FlexEvent;
   import spark.components.HGroup;
   import spark.components.gridClasses.GridLayer;
   import mx.states.Transition;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class FlatHeaderRenderer extends GridItemRenderer implements IStateClient2
   {
       
      
      private var _171745914_FlatHeaderRenderer_GradientEntry1:GradientEntry;
      
      private var _171745913_FlatHeaderRenderer_GradientEntry2:GradientEntry;
      
      private var _1714261730_FlatHeaderRenderer_SolidColor1:SolidColor;
      
      private var _783637168defaultSortIndicator:ClassFactory;
      
      private var _3143043fill:Rect;
      
      private var _175381489labelDisplayGroup:Group;
      
      private var _903579360shadow:Rect;
      
      private var _668643602sortIndicatorGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _maxDisplayedLines:int = 2;
      
      private var _sortIndicator:IFactory;
      
      private var sortIndicatorInstance:IVisualElement;
      
      public function FlatHeaderRenderer()
      {
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(21);
         if(_loc1_)
         {
            §§push(§§pop() - 1 - 103 - 1 - 1 - 79 - 1 + 18);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc1_)
         {
            §§push(§§pop() - 1 + 0 - 1 + 1 + 1);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._FlatHeaderRenderer_Rect1_i(),this._FlatHeaderRenderer_Rect2_i(),this._FlatHeaderRenderer_HGroup1_c()];
         this.currentState = "normal";
         this._FlatHeaderRenderer_ClassFactory1_i();
         this._FlatHeaderRenderer_Label1_i();
         §§push();
         §§push(new State({
            "name":"normal",
            "overrides":[]
         }));
         §§push();
         §§push("name");
         §§push("hovered");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatHeaderRenderer_SolidColor1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(6526128);
         if(_loc2_)
         {
            §§push((§§pop() + 54 - 48 + 1) * 78 + 1);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 12 - 59 + 1 + 105);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() - 1 - 85 + 27 - 1 - 1 + 18 + 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatHeaderRenderer_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc1_)
         {
            §§push(§§pop() + 1 - 1 - 82 - 1 - 1);
         }
         §§pop().states = null;
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
      
      [Bindable("maxDisplayedLinesChanged")]
      public function get maxDisplayedLines() : int
      {
         return this._maxDisplayedLines;
      }
      
      public function set maxDisplayedLines(param1:int) : void
      {
         if(param1 == this._maxDisplayedLines)
         {
            return;
         }
         this._maxDisplayedLines = param1;
         if(labelDisplay)
         {
            labelDisplay.maxDisplayedLines = param1;
         }
         invalidateSize();
         invalidateDisplayList();
         this.dispatchChangeEvent("maxDisplayedLinesChanged");
      }
      
      [Bindable("sortIndicatorChanged")]
      public function get sortIndicator() : IFactory
      {
         return !!this._sortIndicator?this._sortIndicator:this.defaultSortIndicator;
      }
      
      public function set sortIndicator(param1:IFactory) : void
      {
         if(this._sortIndicator == param1)
         {
            return;
         }
         this._sortIndicator = param1;
         if(this.sortIndicatorInstance)
         {
            this.sortIndicatorGroup.includeInLayout = false;
            this.sortIndicatorGroup.removeElement(this.sortIndicatorInstance);
            this.sortIndicatorInstance = null;
         }
         invalidateDisplayList();
         this.dispatchChangeEvent("sortIndicatorChanged");
      }
      
      override public function prepare(param1:Boolean) : void
      {
         var _loc3_:DataGrid = null;
         var _loc4_:GridColumnHeaderGroup = null;
         var _loc5_:IGridVisualElement = null;
         super.prepare(param1);
         if(labelDisplay && this.labelDisplayGroup && labelDisplay.parent != this.labelDisplayGroup)
         {
            this.labelDisplayGroup.removeAllElements();
            this.labelDisplayGroup.addElement(labelDisplay);
         }
         var _loc2_:GridColumn = this.column;
         if(this.sortIndicator && _loc2_ && _loc2_.grid && _loc2_.grid.dataGrid && _loc2_.grid.dataGrid.columnHeaderGroup)
         {
            _loc3_ = _loc2_.grid.dataGrid;
            _loc4_ = _loc3_.columnHeaderGroup;
            if(_loc4_.isSortIndicatorVisible(_loc2_.columnIndex))
            {
               if(!this.sortIndicatorInstance)
               {
                  this.sortIndicatorInstance = this.sortIndicator.newInstance();
                  this.sortIndicatorGroup.addElement(this.sortIndicatorInstance);
               }
               this.sortIndicatorInstance.visible = true;
               _loc5_ = this.sortIndicatorInstance as IGridVisualElement;
               if(_loc5_)
               {
                  §§push(_loc5_);
                  §§push(_loc2_.grid);
                  §§push(-1);
                  if(_loc7_)
                  {
                     §§push(-(§§pop() + 1 - 82 + 1) + 1);
                  }
                  §§pop().prepareGridVisualElement(§§pop(),§§pop(),_loc2_.columnIndex);
               }
               this.sortIndicatorGroup.includeInLayout = true;
               §§push(this.sortIndicatorGroup);
               if(_loc2_.sortDescending)
               {
                  §§push(1);
                  if(_loc6_)
                  {
                     §§push(-(§§pop() + 83 + 1 + 119));
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(-1);
                  if(_loc7_)
                  {
                     §§push(--§§pop() * 74);
                  }
                  §§push(Number(§§pop()));
               }
               §§pop().scaleY = §§pop();
            }
            else if(this.sortIndicatorInstance)
            {
               this.sortIndicatorGroup.removeElement(this.sortIndicatorInstance);
               this.sortIndicatorGroup.includeInLayout = false;
               this.sortIndicatorInstance = null;
            }
         }
      }
      
      private final function dispatchChangeEvent(param1:String) : void
      {
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
      }
      
      private final function _FlatHeaderRenderer_ClassFactory1_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatHeaderRendererInnerClass0;
         _loc1_.properties = {"outerDocument":this};
         this.defaultSortIndicator = _loc1_;
         BindingManager.executeBindings(this,"defaultSortIndicator",this.defaultSortIndicator);
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 107) * 13 * 79 - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 44 + 76 - 1 + 1 - 1) * 111);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 103 + 1 - 58 - 1 + 35);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 37 - 118 - 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 37 - 1 - 1) * 19);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 23 * 5 * 81 - 13);
         }
         §§pop().maxDisplayedLines = §§pop();
         _loc1_.showTruncationTip = true;
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push((§§pop() - 73 - 1 - 1) * 0 - 1 - 30);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(--((§§pop() + 1 + 59 + 1) * 95) * 104);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",labelDisplay);
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 78) + 88 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 - 1));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(((-§§pop() - 21 + 1) * 86 + 1) * 84);
         }
         §§pop().top = §§pop();
         _loc1_.bottom = "1-";
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(--((§§pop() + 1) * 104 - 14));
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._FlatHeaderRenderer_LinearGradient1_c();
         _loc1_.initialized(this,"shadow");
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 11 + 56);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._FlatHeaderRenderer_GradientEntry1_i(),this._FlatHeaderRenderer_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 6 + 62 - 83 + 73 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.01;
         this._FlatHeaderRenderer_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatHeaderRenderer_GradientEntry1",this._FlatHeaderRenderer_GradientEntry1);
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((-(§§pop() + 1) + 47 - 1) * 59));
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.07;
         this._FlatHeaderRenderer_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_FlatHeaderRenderer_GradientEntry2",this._FlatHeaderRenderer_GradientEntry2);
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 1 - 111);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) - 1 - 1) + 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 107) * 43 - 45 - 1 + 34);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() + 60 - 1 + 1));
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._FlatHeaderRenderer_SolidColor1_i();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(6526128);
         if(_loc2_)
         {
            §§push(-(§§pop() - 108) + 1 - 1 - 74);
         }
         §§pop().color = §§pop();
         this._FlatHeaderRenderer_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatHeaderRenderer_SolidColor1",this._FlatHeaderRenderer_SolidColor1);
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 + 1 - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() + 114 - 1 - 100 + 1 + 1));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() * 82) - 111 - 1 - 50 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 + 1) * 50);
         }
         §§pop().bottom = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(8);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 - 1) * 113 - 68 - 1));
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._FlatHeaderRenderer_Group1_i(),this._FlatHeaderRenderer_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 80 + 1) - 28);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "labelDisplayGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplayGroup = _loc1_;
         BindingManager.executeBindings(this,"labelDisplayGroup",this.labelDisplayGroup);
         return _loc1_;
      }
      
      private final function _FlatHeaderRenderer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.includeInLayout = false;
         _loc1_.id = "sortIndicatorGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.sortIndicatorGroup = _loc1_;
         BindingManager.executeBindings(this,"sortIndicatorGroup",this.sortIndicatorGroup);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatHeaderRenderer_GradientEntry1() : GradientEntry
      {
         return this._171745914_FlatHeaderRenderer_GradientEntry1;
      }
      
      public function set _FlatHeaderRenderer_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._171745914_FlatHeaderRenderer_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._171745914_FlatHeaderRenderer_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatHeaderRenderer_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatHeaderRenderer_GradientEntry2() : GradientEntry
      {
         return this._171745913_FlatHeaderRenderer_GradientEntry2;
      }
      
      public function set _FlatHeaderRenderer_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._171745913_FlatHeaderRenderer_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._171745913_FlatHeaderRenderer_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatHeaderRenderer_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatHeaderRenderer_SolidColor1() : SolidColor
      {
         return this._1714261730_FlatHeaderRenderer_SolidColor1;
      }
      
      public function set _FlatHeaderRenderer_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1714261730_FlatHeaderRenderer_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._1714261730_FlatHeaderRenderer_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatHeaderRenderer_SolidColor1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get defaultSortIndicator() : ClassFactory
      {
         return this._783637168defaultSortIndicator;
      }
      
      public function set defaultSortIndicator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._783637168defaultSortIndicator;
         if(_loc2_ !== param1)
         {
            this._783637168defaultSortIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defaultSortIndicator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fill() : Rect
      {
         return this._3143043fill;
      }
      
      public function set fill(param1:Rect) : void
      {
         var _loc2_:Object = this._3143043fill;
         if(_loc2_ !== param1)
         {
            this._3143043fill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplayGroup() : Group
      {
         return this._175381489labelDisplayGroup;
      }
      
      public function set labelDisplayGroup(param1:Group) : void
      {
         var _loc2_:Object = this._175381489labelDisplayGroup;
         if(_loc2_ !== param1)
         {
            this._175381489labelDisplayGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplayGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shadow() : Rect
      {
         return this._903579360shadow;
      }
      
      public function set shadow(param1:Rect) : void
      {
         var _loc2_:Object = this._903579360shadow;
         if(_loc2_ !== param1)
         {
            this._903579360shadow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shadow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sortIndicatorGroup() : Group
      {
         return this._668643602sortIndicatorGroup;
      }
      
      public function set sortIndicatorGroup(param1:Group) : void
      {
         var _loc2_:Object = this._668643602sortIndicatorGroup;
         if(_loc2_ !== param1)
         {
            this._668643602sortIndicatorGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sortIndicatorGroup",_loc2_,param1));
            }
         }
      }
   }
}
