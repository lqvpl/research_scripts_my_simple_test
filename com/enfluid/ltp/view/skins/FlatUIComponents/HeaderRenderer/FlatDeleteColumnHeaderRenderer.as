package com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer
{
   import spark.components.gridClasses.GridItemRenderer;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.BitmapImage;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.core.ClassFactory;
   import spark.primitives.Rect;
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import mx.core.IFactory;
   import mx.core.IVisualElement;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import spark.components.Label;
   import spark.components.Scroller;
   import mx.graphics.LinearGradient;
   import spark.effects.Resize;
   import mx.controls.Spacer;
   import spark.components.HGroup;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.controls.HTML;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.FlexEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class FlatDeleteColumnHeaderRenderer extends GridItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _FlatDeleteColumnHeaderRenderer_BitmapImage1:BitmapImage;
      
      private var _1612591141_FlatDeleteColumnHeaderRenderer_GradientEntry1:GradientEntry;
      
      private var _1612591142_FlatDeleteColumnHeaderRenderer_GradientEntry2:GradientEntry;
      
      private var _304490333_FlatDeleteColumnHeaderRenderer_SolidColor1:SolidColor;
      
      private var _783637168defaultSortIndicator:ClassFactory;
      
      private var _3143043fill:Rect;
      
      private var _175381489labelDisplayGroup:Group;
      
      private var _903579360shadow:Rect;
      
      private var _668643602sortIndicatorGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _maxDisplayedLines:int = 2;
      
      private var _sortIndicator:IFactory;
      
      private var sortIndicatorInstance:IVisualElement;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FlatDeleteColumnHeaderRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._FlatDeleteColumnHeaderRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_FlatUIComponents_HeaderRenderer_FlatDeleteColumnHeaderRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FlatDeleteColumnHeaderRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(21);
         if(_loc3_)
         {
            §§push((§§pop() + 107 - 74 - 1 - 3) * 32);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc3_)
         {
            §§push((-((§§pop() - 37 - 29) * 57) + 72) * 52 + 21);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._FlatDeleteColumnHeaderRenderer_Rect1_i(),this._FlatDeleteColumnHeaderRenderer_Rect2_i(),this._FlatDeleteColumnHeaderRenderer_HGroup1_c()];
         this.currentState = "normal";
         this._FlatDeleteColumnHeaderRenderer_ClassFactory1_i();
         this._FlatDeleteColumnHeaderRenderer_Label1_i();
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
         §§push("_FlatDeleteColumnHeaderRenderer_SolidColor1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(6526128);
         if(_loc3_)
         {
            §§push(-(§§pop() + 20) - 1 - 3);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatDeleteColumnHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatDeleteColumnHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(0);
         if(_loc4_)
         {
            §§push(-((-(§§pop() - 54) - 1) * 31 - 1) - 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_FlatDeleteColumnHeaderRenderer_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc4_)
         {
            §§push(-(§§pop() - 94 - 1 - 1));
         }
         §§pop().states = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() - 117) - 1 + 1 + 1) * 68);
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         FlatDeleteColumnHeaderRenderer._watcherSetupUtil = param1;
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
                  if(_loc6_)
                  {
                     §§push(§§pop() + 96 - 62 - 1);
                  }
                  §§pop().prepareGridVisualElement(§§pop(),§§pop(),_loc2_.columnIndex);
               }
               this.sortIndicatorGroup.includeInLayout = true;
               §§push(this.sortIndicatorGroup);
               if(_loc2_.sortDescending)
               {
                  §§push(1);
                  if(_loc7_)
                  {
                     §§push(-(-§§pop() + 1) + 1);
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(-1);
                  if(_loc6_)
                  {
                     §§push((§§pop() - 1) * 27 + 1);
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
      
      private final function _FlatDeleteColumnHeaderRenderer_ClassFactory1_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatDeleteColumnHeaderRendererInnerClass0;
         _loc1_.properties = {"outerDocument":this};
         this.defaultSortIndicator = _loc1_;
         BindingManager.executeBindings(this,"defaultSortIndicator",this.defaultSortIndicator);
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_Label1_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 29 * 68) - 39));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((--§§pop() - 88) * 90 * 99);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() - 117 - 76) * 8 - 34);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 111) + 73 - 24 - 43);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 28));
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 108 + 1 - 0);
         }
         §§pop().maxDisplayedLines = §§pop();
         _loc1_.showTruncationTip = true;
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 17 - 1) * 119 * 43 * 88);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push(--§§pop() - 25);
         }
         §§pop().setStyle(§§pop(),§§pop());
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
      
      private final function _FlatDeleteColumnHeaderRenderer_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1 - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push((§§pop() * 29 - 22 - 1 + 1) * 57 + 34);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 36 - 1 - 55) * 67 - 72 + 10 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 111 + 86 - 15 + 1);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 52);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._FlatDeleteColumnHeaderRenderer_LinearGradient1_c();
         _loc1_.initialized(this,"shadow");
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1 + 15 - 62 - 1) * 12);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._FlatDeleteColumnHeaderRenderer_GradientEntry1_i(),this._FlatDeleteColumnHeaderRenderer_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((---§§pop() * 73 + 1 - 1) * 38);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.01;
         this._FlatDeleteColumnHeaderRenderer_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatDeleteColumnHeaderRenderer_GradientEntry1",this._FlatDeleteColumnHeaderRenderer_GradientEntry1);
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(--§§pop() + 1) - 110) * 98);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.07;
         this._FlatDeleteColumnHeaderRenderer_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_FlatDeleteColumnHeaderRenderer_GradientEntry2",this._FlatDeleteColumnHeaderRenderer_GradientEntry2);
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 27 - 61) * 89 + 1 - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 105 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 17) * 69 - 15 - 37 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 97 - 1 - 1));
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._FlatDeleteColumnHeaderRenderer_SolidColor1_i();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(6526128);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 1 + 1);
         }
         §§pop().color = §§pop();
         this._FlatDeleteColumnHeaderRenderer_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatDeleteColumnHeaderRenderer_SolidColor1",this._FlatDeleteColumnHeaderRenderer_SolidColor1);
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 30 - 115 + 1 + 113 - 50 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push((-(§§pop() * 55) - 40 + 3 + 1) * 3);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((-§§pop() - 5 - 1 + 1) * 92));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 82 + 106 - 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.clipAndEnableScrolling = true;
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(8);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1) - 1 - 82);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._FlatDeleteColumnHeaderRenderer_Group1_i(),this._FlatDeleteColumnHeaderRenderer_HGroup2_c(),this._FlatDeleteColumnHeaderRenderer_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 75 + 92 - 1 + 99);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.includeInLayout = false;
         _loc1_.id = "labelDisplayGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplayGroup = _loc1_;
         BindingManager.executeBindings(this,"labelDisplayGroup",this.labelDisplayGroup);
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 94) - 1 + 113);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() + 15 - 1 + 54 - 1 + 86);
         }
         §§pop().height = §§pop();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 7 * 38 - 48 - 73 - 29 - 1 - 1);
         }
         §§pop().horizontalCenter = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() * 99 + 23 - 1 - 1 + 41);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.mouseChildren = false;
         _loc1_.mxmlContent = [this._FlatDeleteColumnHeaderRenderer_BitmapImage1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         _loc1_.initialized(this,"_FlatDeleteColumnHeaderRenderer_BitmapImage1");
         this._FlatDeleteColumnHeaderRenderer_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_FlatDeleteColumnHeaderRenderer_BitmapImage1",this._FlatDeleteColumnHeaderRenderer_BitmapImage1);
         return _loc1_;
      }
      
      private final function _FlatDeleteColumnHeaderRenderer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.visible = false;
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
      
      private final function _FlatDeleteColumnHeaderRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 80) * 78 - 1) + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.X_IMAGE;
         },null,"_FlatDeleteColumnHeaderRenderer_BitmapImage1.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatDeleteColumnHeaderRenderer_GradientEntry1() : GradientEntry
      {
         return this._1612591141_FlatDeleteColumnHeaderRenderer_GradientEntry1;
      }
      
      public function set _FlatDeleteColumnHeaderRenderer_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1612591141_FlatDeleteColumnHeaderRenderer_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._1612591141_FlatDeleteColumnHeaderRenderer_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatDeleteColumnHeaderRenderer_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatDeleteColumnHeaderRenderer_GradientEntry2() : GradientEntry
      {
         return this._1612591142_FlatDeleteColumnHeaderRenderer_GradientEntry2;
      }
      
      public function set _FlatDeleteColumnHeaderRenderer_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1612591142_FlatDeleteColumnHeaderRenderer_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._1612591142_FlatDeleteColumnHeaderRenderer_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatDeleteColumnHeaderRenderer_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _FlatDeleteColumnHeaderRenderer_SolidColor1() : SolidColor
      {
         return this._304490333_FlatDeleteColumnHeaderRenderer_SolidColor1;
      }
      
      public function set _FlatDeleteColumnHeaderRenderer_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._304490333_FlatDeleteColumnHeaderRenderer_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._304490333_FlatDeleteColumnHeaderRenderer_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_FlatDeleteColumnHeaderRenderer_SolidColor1",_loc2_,param1));
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
