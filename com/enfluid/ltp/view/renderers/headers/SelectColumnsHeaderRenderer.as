package com.enfluid.ltp.view.renderers.headers
{
   import spark.components.gridClasses.GridItemRenderer;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import mx.graphics.GradientEntry;
   import mx.graphics.SolidColor;
   import mx.core.ClassFactory;
   import spark.primitives.Rect;
   import spark.components.Group;
   import spark.components.Image;
   import mx.core.IFlexModuleFactory;
   import flash.events.Event;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.EditProjectCommand;
   import mx.core.IFactory;
   import mx.core.IVisualElement;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import mx.graphics.LinearGradient;
   import spark.components.HGroup;
   import com.enfluid.ltp.view.SelectColumnsCallout;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class SelectColumnsHeaderRenderer extends GridItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1411602716_SelectColumnsHeaderRenderer_GradientEntry1:GradientEntry;
      
      private var _1411602717_SelectColumnsHeaderRenderer_GradientEntry2:GradientEntry;
      
      private var _1101736716_SelectColumnsHeaderRenderer_SolidColor1:SolidColor;
      
      private var _783637168defaultSortIndicator:ClassFactory;
      
      private var _3143043fill:Rect;
      
      private var _175381489labelDisplayGroup:Group;
      
      private var _734383962selectColumnsIcon:Image;
      
      private var _903579360shadow:Rect;
      
      private var _668643602sortIndicatorGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _maxDisplayedLines:int = 1;
      
      private var _sortIndicator:IFactory;
      
      private var sortIndicatorInstance:IVisualElement;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function SelectColumnsHeaderRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._SelectColumnsHeaderRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_headers_SelectColumnsHeaderRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return SelectColumnsHeaderRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(21);
         if(_loc4_)
         {
            §§push(-(§§pop() - 107 + 76));
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc3_)
         {
            §§push((§§pop() * 88 + 1) * 26 + 1);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._SelectColumnsHeaderRenderer_Rect1_i(),this._SelectColumnsHeaderRenderer_Rect2_i(),this._SelectColumnsHeaderRenderer_HGroup1_c()];
         this.currentState = "normal";
         this._SelectColumnsHeaderRenderer_ClassFactory1_i();
         this._SelectColumnsHeaderRenderer_Label1_i();
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
         §§push("_SelectColumnsHeaderRenderer_SolidColor1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(14477298);
         if(_loc4_)
         {
            §§push(-((§§pop() + 1 - 1) * 93 + 18) + 10);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_SelectColumnsHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc4_)
         {
            §§push(-§§pop() + 107 - 23 + 10);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_SelectColumnsHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 21 + 1 - 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_SelectColumnsHeaderRenderer_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc4_)
         {
            §§push(---(§§pop() - 74) * 29);
         }
         §§pop().states = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-((§§pop() + 25 - 90) * 65 * 12 * 41));
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
         SelectColumnsHeaderRenderer._watcherSetupUtil = param1;
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
                     §§push(§§pop() * 47 + 94 - 1);
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
                     §§push(-(§§pop() - 11) + 4 + 1 + 114 - 1);
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(-1);
                  if(_loc6_)
                  {
                     §§push(§§pop() - 1 - 1 + 1);
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
      
      private final function _SelectColumnsHeaderRenderer_ClassFactory1_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = SelectColumnsHeaderRendererInnerClass0;
         _loc1_.properties = {"outerDocument":this};
         this.defaultSortIndicator = _loc1_;
         BindingManager.executeBindings(this,"defaultSortIndicator",this.defaultSortIndicator);
         return _loc1_;
      }
      
      private final function _SelectColumnsHeaderRenderer_Label1_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 31) + 1 - 94);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 23 + 116 - 116) - 47);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() - 81 + 37) + 1) - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 67 + 1 + 18);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 45 - 1 - 1 - 1) * 60) * 81);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() + 72 + 1 - 29);
         }
         §§pop().maxDisplayedLines = §§pop();
         _loc1_.showTruncationTip = true;
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","start");
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
      
      private final function _SelectColumnsHeaderRenderer_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(--(-(§§pop() - 59) + 1) - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 + 1 - 1) * 85);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 + 1) * 14);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(--§§pop() - 74);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) * 78 + 1 + 47);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._SelectColumnsHeaderRenderer_LinearGradient1_c();
         _loc1_.initialized(this,"shadow");
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private final function _SelectColumnsHeaderRenderer_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(((§§pop() + 19 - 1) * 37 + 47) * 91);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._SelectColumnsHeaderRenderer_GradientEntry1_i(),this._SelectColumnsHeaderRenderer_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _SelectColumnsHeaderRenderer_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 + 49);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.01;
         this._SelectColumnsHeaderRenderer_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsHeaderRenderer_GradientEntry1",this._SelectColumnsHeaderRenderer_GradientEntry1);
         return _loc1_;
      }
      
      private final function _SelectColumnsHeaderRenderer_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1) + 52 - 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.07;
         this._SelectColumnsHeaderRenderer_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsHeaderRenderer_GradientEntry2",this._SelectColumnsHeaderRenderer_GradientEntry2);
         return _loc1_;
      }
      
      private final function _SelectColumnsHeaderRenderer_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() - 92 + 62) * 87 - 1) * 112 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-((§§pop() - 1) * 18) - 1) * 17 * 46);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 117 + 17 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1) + 1 - 1 - 44 - 61);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._SelectColumnsHeaderRenderer_SolidColor1_i();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _SelectColumnsHeaderRenderer_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(14477298);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 12 + 1 + 78) * 50 - 68);
         }
         §§pop().color = §§pop();
         this._SelectColumnsHeaderRenderer_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_SelectColumnsHeaderRenderer_SolidColor1",this._SelectColumnsHeaderRenderer_SolidColor1);
         return _loc1_;
      }
      
      private final function _SelectColumnsHeaderRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() + 54 + 7 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() - 39 - 1 - 1 + 46);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() * 64 * 60 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() * 96 + 99) * 50 * 35 - 1);
         }
         §§pop().bottom = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() - 118 - 67 - 1);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._SelectColumnsHeaderRenderer_Image1_i(),this._SelectColumnsHeaderRenderer_Group1_i(),this._SelectColumnsHeaderRenderer_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SelectColumnsHeaderRenderer_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         _loc1_.horizontalAlign = "left";
         _loc1_.addEventListener("click",this.__selectColumnsIcon_click);
         _loc1_.id = "selectColumnsIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.selectColumnsIcon = _loc1_;
         BindingManager.executeBindings(this,"selectColumnsIcon",this.selectColumnsIcon);
         return _loc1_;
      }
      
      public final function __selectColumnsIcon_click(param1:MouseEvent) : void
      {
         new SelectColumnsCallout().open(this.selectColumnsIcon);
      }
      
      private final function _SelectColumnsHeaderRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-(§§pop() + 77) - 37 - 1) * 106 + 1 + 1);
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
      
      private final function _SelectColumnsHeaderRenderer_Group2_i() : Group
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
      
      private final function _SelectColumnsHeaderRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 100 + 106 - 1) * 92 - 104 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.SELECT_COLUMNS_ICON;
         },null,"selectColumnsIcon.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsHeaderRenderer_GradientEntry1() : GradientEntry
      {
         return this._1411602716_SelectColumnsHeaderRenderer_GradientEntry1;
      }
      
      public function set _SelectColumnsHeaderRenderer_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1411602716_SelectColumnsHeaderRenderer_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._1411602716_SelectColumnsHeaderRenderer_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsHeaderRenderer_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsHeaderRenderer_GradientEntry2() : GradientEntry
      {
         return this._1411602717_SelectColumnsHeaderRenderer_GradientEntry2;
      }
      
      public function set _SelectColumnsHeaderRenderer_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1411602717_SelectColumnsHeaderRenderer_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._1411602717_SelectColumnsHeaderRenderer_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsHeaderRenderer_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _SelectColumnsHeaderRenderer_SolidColor1() : SolidColor
      {
         return this._1101736716_SelectColumnsHeaderRenderer_SolidColor1;
      }
      
      public function set _SelectColumnsHeaderRenderer_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1101736716_SelectColumnsHeaderRenderer_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._1101736716_SelectColumnsHeaderRenderer_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_SelectColumnsHeaderRenderer_SolidColor1",_loc2_,param1));
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
      public function get selectColumnsIcon() : Image
      {
         return this._734383962selectColumnsIcon;
      }
      
      public function set selectColumnsIcon(param1:Image) : void
      {
         var _loc2_:Object = this._734383962selectColumnsIcon;
         if(_loc2_ !== param1)
         {
            this._734383962selectColumnsIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectColumnsIcon",_loc2_,param1));
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
