package com.enfluid.ltp.view.renderers.headers
{
   import spark.components.gridClasses.GridItemRenderer;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import mx.graphics.GradientEntry;
   import spark.components.HGroup;
   import com.enfluid.ltp.view.components.HelpButton;
   import mx.graphics.SolidColor;
   import spark.components.Image;
   import mx.core.ClassFactory;
   import spark.primitives.Rect;
   import spark.components.Group;
   import spark.components.Button;
   import com.enfluid.ltp.view.components.Spinner;
   import mx.core.IFlexModuleFactory;
   import flash.utils.setTimeout;
   import mx.core.IFactory;
   import mx.core.IVisualElement;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.view.filterviews.AvgKCFilterView;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import mx.graphics.LinearGradient;
   import hr.binaria.asx3m.annotations.Annotation;
   import system.data.Iterator;
   import spark.components.VGroup;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.view.skins.MissingDataButtonSkin;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class CustomHeaderRenderer extends GridItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _987848626_CustomHeaderRenderer_GradientEntry1:GradientEntry;
      
      private var _987848625_CustomHeaderRenderer_GradientEntry2:GradientEntry;
      
      public var _CustomHeaderRenderer_HGroup3:HGroup;
      
      public var _CustomHeaderRenderer_HelpButton1:HelpButton;
      
      private var _1930526438_CustomHeaderRenderer_SolidColor1:SolidColor;
      
      private var _1888293395cancelIcon:Image;
      
      private var _783637168defaultSortIndicator:ClassFactory;
      
      private var _3143043fill:Rect;
      
      private var _175381489labelDisplayGroup:Group;
      
      private var _1620452663missingDataIcon:Button;
      
      private var _1506278303secondLineHGroup:HGroup;
      
      private var _903579360shadow:Rect;
      
      private var _668643602sortIndicatorGroup:Group;
      
      private var _2004438503spinner:Spinner;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _maxDisplayedLines:int = 1;
      
      private var _sortIndicator:IFactory;
      
      private var sortIndicatorInstance:IVisualElement;
      
      private var isMissingDataCalloutOpen:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CustomHeaderRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._CustomHeaderRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_headers_CustomHeaderRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CustomHeaderRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(21);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 + 106) - 27 + 84);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 1 + 80);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._CustomHeaderRenderer_Rect1_i(),this._CustomHeaderRenderer_Rect2_i(),this._CustomHeaderRenderer_VGroup1_c()];
         this.currentState = "normal";
         this._CustomHeaderRenderer_ClassFactory1_i();
         this._CustomHeaderRenderer_Label1_i();
         this.addEventListener("creationComplete",this.___CustomHeaderRenderer_GridItemRenderer1_creationComplete);
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
         §§push("_CustomHeaderRenderer_SolidColor1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16645630);
         if(_loc3_)
         {
            §§push(§§pop() - 108 + 1 + 86);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_CustomHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc3_)
         {
            §§push((-§§pop() + 25 - 99) * 113 * 43 - 26);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CustomHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 70 + 1 + 1);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CustomHeaderRenderer_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() - 89 + 1 + 1 + 22);
         }
         §§pop().states = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((-§§pop() + 50) * 45 - 72);
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
         CustomHeaderRenderer._watcherSetupUtil = param1;
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
                  §§push(this.sortIndicatorInstance);
                  §§push(4);
                  if(_loc6_)
                  {
                     §§push((§§pop() - 1 + 86) * 24);
                  }
                  §§pop().top = §§pop();
                  §§push(this.sortIndicatorInstance);
                  §§push(4);
                  if(_loc6_)
                  {
                     §§push(--(-§§pop() * 14 + 49) - 1);
                  }
                  §§pop().bottom = §§pop();
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
                     §§push((-(-§§pop() + 104 + 1) - 14) * 71);
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
                     §§push(-(§§pop() * 93 + 1) - 1);
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(-1);
                  if(_loc7_)
                  {
                     §§push(§§pop() * 46 + 1 - 1);
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
      
      protected final function onClickWarningIcon(param1:MouseEvent) : void
      {
         if(!(column as FilterGridColumn).missingDataCallout)
         {
            return;
         }
         if(!this.isMissingDataCalloutOpen)
         {
            (column as FilterGridColumn).missingDataCallout.open(this.missingDataIcon);
            this.isMissingDataCalloutOpen = true;
         }
         else
         {
            (column as FilterGridColumn).missingDataCallout.close();
            this.isMissingDataCalloutOpen = false;
         }
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
      
      protected final function onCreationComplete(param1:FlexEvent) : void
      {
         var _loc3_:Group = null;
         var _loc2_:FilterGridColumn = FilterGridColumn(column);
         if(_loc2_)
         {
            _loc3_ = _loc2_.headerContent;
            if(_loc3_)
            {
               §§push(this.secondLineHGroup);
               §§push(_loc3_);
               §§push(0);
               if(_loc4_)
               {
                  §§push((-§§pop() + 1 - 1 - 1 - 13) * 54 + 1);
               }
               §§pop().addElementAt(§§pop(),§§pop());
               if(_loc3_ is AvgKCFilterView)
               {
                  ViewModel.instance.missingAvgKCIcon = this.missingDataIcon;
               }
            }
         }
      }
      
      protected final function cancelIconClickHandler(param1:MouseEvent) : void
      {
         FilterGridColumn(column).showCancelIcon = false;
         FilterGridColumn(column).missingAdditionalDataCommand.cancelCommand();
      }
      
      private final function dispatchChangeEvent(param1:String) : void
      {
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
      }
      
      private final function _CustomHeaderRenderer_ClassFactory1_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CustomHeaderRendererInnerClass0;
         _loc1_.properties = {"outerDocument":this};
         this.defaultSortIndicator = _loc1_;
         BindingManager.executeBindings(this,"defaultSortIndicator",this.defaultSortIndicator);
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 72 - 1) * 117 * 17);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 17 + 14) - 118);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 49 + 1) * 33 + 27 - 8 - 76);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 81 - 1 - 1 - 1 + 104 - 31 - 48);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 1 - 49);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 112) - 88 - 1 + 89 - 1);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 20 - 106) - 80);
         }
         §§pop().maxDisplayedLines = §§pop();
         _loc1_.showTruncationTip = true;
         _loc1_.setStyle("fontWeight","bold");
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 102 * 45 * 10 + 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
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
      
      private final function _CustomHeaderRenderer_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push(§§pop() * 63 + 75 - 5 - 9);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(-§§pop() - 65 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push((§§pop() * 72 + 1) * 19 - 75 + 27);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 66) * 85 * 85 - 1);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._CustomHeaderRenderer_LinearGradient1_c();
         _loc1_.initialized(this,"shadow");
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc3_)
         {
            §§push(((-§§pop() + 1 - 1) * 19 - 1 + 1) * 112);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._CustomHeaderRenderer_GradientEntry1_i(),this._CustomHeaderRenderer_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 113 + 71 + 19 + 99) * 76);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.01;
         this._CustomHeaderRenderer_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_CustomHeaderRenderer_GradientEntry1",this._CustomHeaderRenderer_GradientEntry1);
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 40 - 1 - 1 - 35 - 92) * 56 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.07;
         this._CustomHeaderRenderer_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_CustomHeaderRenderer_GradientEntry2",this._CustomHeaderRenderer_GradientEntry2);
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 77 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 80 - 1) * 54);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 94 - 32 + 1 - 1 - 16);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 4 + 4 + 1 - 1) * 22);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._CustomHeaderRenderer_SolidColor1_i();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16645630);
         if(_loc3_)
         {
            §§push(-(§§pop() + 75) - 1 - 1);
         }
         §§pop().color = §§pop();
         this._CustomHeaderRenderer_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_CustomHeaderRenderer_SolidColor1",this._CustomHeaderRenderer_SolidColor1);
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1 - 1 + 49) * 38 - 96);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 14) - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() * 88 + 113 - 1 + 33 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((--(§§pop() * 75 - 1) - 1 + 1) * 93);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 64 - 1 - 92 + 1 - 95);
         }
         §§pop().bottom = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1 - 21 + 1));
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._CustomHeaderRenderer_HGroup1_c(),this._CustomHeaderRenderer_HGroup2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-§§pop() * 19 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() * 39 * 77 + 1);
         }
         §§pop().paddingRight = §§pop();
         _loc1_.verticalAlign = "top";
         _loc1_.useHandCursor = true;
         _loc1_.buttonMode = true;
         _loc1_.mouseChildren = true;
         _loc1_.mxmlContent = [this._CustomHeaderRenderer_Group1_i(),this._CustomHeaderRenderer_Group2_i(),this._CustomHeaderRenderer_HelpButton1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 63 - 1 - 1 - 38);
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
      
      private final function _CustomHeaderRenderer_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(8);
         if(_loc2_)
         {
            §§push((-(§§pop() - 25) + 6) * 81);
         }
         §§pop().width = §§pop();
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
      
      private final function _CustomHeaderRenderer_HelpButton1_i() : HelpButton
      {
         var _loc1_:HelpButton = new HelpButton();
         _loc1_.id = "_CustomHeaderRenderer_HelpButton1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CustomHeaderRenderer_HelpButton1 = _loc1_;
         BindingManager.executeBindings(this,"_CustomHeaderRenderer_HelpButton1",this._CustomHeaderRenderer_HelpButton1);
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_HGroup2_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 52 + 1 - 50));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(17);
         if(_loc2_)
         {
            §§push(§§pop() - 52 + 1 - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(--(-(§§pop() + 1) - 104));
         }
         §§pop().paddingRight = §§pop();
         _loc1_.verticalAlign = "top";
         _loc1_.mxmlContent = [this._CustomHeaderRenderer_HGroup3_i()];
         _loc1_.addEventListener("click",this.__secondLineHGroup_click);
         _loc1_.id = "secondLineHGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.secondLineHGroup = _loc1_;
         BindingManager.executeBindings(this,"secondLineHGroup",this.secondLineHGroup);
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_HGroup3_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() - 71 - 39 - 41) * 119 + 58 + 1 - 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() + 111 + 1 - 17);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.horizontalAlign = "center";
         _loc1_.verticalAlign = "middle";
         _loc1_.mxmlContent = [this._CustomHeaderRenderer_Button1_i(),this._CustomHeaderRenderer_Spinner1_i(),this._CustomHeaderRenderer_Image1_i()];
         _loc1_.id = "_CustomHeaderRenderer_HGroup3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CustomHeaderRenderer_HGroup3 = _loc1_;
         BindingManager.executeBindings(this,"_CustomHeaderRenderer_HGroup3",this._CustomHeaderRenderer_HGroup3);
         return _loc1_;
      }
      
      private final function _CustomHeaderRenderer_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(13);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 28 + 117);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(13);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 + 1));
         }
         §§pop().height = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.setStyle("skinClass",MissingDataButtonSkin);
         _loc1_.addEventListener("click",this.__missingDataIcon_click);
         _loc1_.id = "missingDataIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.missingDataIcon = _loc1_;
         BindingManager.executeBindings(this,"missingDataIcon",this.missingDataIcon);
         return _loc1_;
      }
      
      public final function __missingDataIcon_click(param1:MouseEvent) : void
      {
         this.onClickWarningIcon(param1);
      }
      
      private final function _CustomHeaderRenderer_Spinner1_i() : Spinner
      {
         var _loc1_:Spinner = new Spinner();
         §§push(_loc1_);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() * 99 - 1 + 68 - 2) + 58);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1) - 27 + 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(16);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1) + 1);
         }
         §§pop().size = §§pop();
         §§push(_loc1_);
         §§push(12);
         if(_loc2_)
         {
            §§push(-§§pop() + 17 - 24 - 108 - 69 + 1);
         }
         §§pop().numTicks = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 63) * 72 - 1 + 108 + 59);
         }
         §§pop().tickWidth = §§pop();
         §§push(_loc1_);
         §§push(600);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 9 + 70 + 1);
         }
         §§pop().speed = §§pop();
         §§push(_loc1_);
         §§push(1200);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1 - 1) * 41 - 1 + 1);
         }
         §§pop().fadeSpeed = §§pop();
         §§push(_loc1_);
         §§push("tickColor");
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 52);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("mouseOver",this.__spinner_mouseOver);
         _loc1_.id = "spinner";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.spinner = _loc1_;
         BindingManager.executeBindings(this,"spinner",this.spinner);
         return _loc1_;
      }
      
      public final function __spinner_mouseOver(param1:MouseEvent) : void
      {
         FilterGridColumn(column).showCancelIcon = true;
      }
      
      private final function _CustomHeaderRenderer_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 84 - 1 - 46 - 1) - 61));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 111 + 1 + 80);
         }
         §§pop().height = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.__cancelIcon_click);
         _loc1_.addEventListener("mouseOut",this.__cancelIcon_mouseOut);
         _loc1_.id = "cancelIcon";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.cancelIcon = _loc1_;
         BindingManager.executeBindings(this,"cancelIcon",this.cancelIcon);
         return _loc1_;
      }
      
      public final function __cancelIcon_click(param1:MouseEvent) : void
      {
         this.cancelIconClickHandler(param1);
         this.onClickWarningIcon(param1);
      }
      
      public final function __cancelIcon_mouseOut(param1:MouseEvent) : void
      {
         FilterGridColumn(column).showCancelIcon = false;
      }
      
      public final function __secondLineHGroup_click(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      public final function ___CustomHeaderRenderer_GridItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
      }
      
      private final function _CustomHeaderRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 83) * 101 + 118 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = FilterGridColumn(column).helpTitle;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CustomHeaderRenderer_HelpButton1.helpTitle");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 64 - 1) + 110 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = FilterGridColumn(column).helpContent;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CustomHeaderRenderer_HelpButton1.helpContent");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            if(FilterGridColumn(column).showProgressSpinner)
            {
               §§push(2);
               if(_loc2_)
               {
                  §§push(§§pop() - 62 - 1 - 1 + 1);
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(0);
               if(_loc1_)
               {
                  §§push(((§§pop() - 14 - 76) * 66 - 1) * 93 - 1 - 107);
               }
               §§push(Number(§§pop()));
            }
            return §§pop();
         },null,"_CustomHeaderRenderer_HGroup3.paddingBottom");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-§§pop() * 73 + 43 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            if(FilterGridColumn(column).showProgressSpinner)
            {
               §§push(2);
               if(_loc2_)
               {
                  §§push(§§pop() + 40 + 1 - 41 + 1 + 1);
               }
               §§push(Number(§§pop()));
            }
            else
            {
               §§push(0);
               if(_loc2_)
               {
                  §§push((§§pop() - 1 - 1) * 34 + 17 - 1);
               }
               §§push(Number(§§pop()));
            }
            return §§pop();
         },null,"_CustomHeaderRenderer_HGroup3.paddingRight");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() * 115 * 41 * 67 * 67 + 1 - 72 - 19);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return missingDataIcon.includeInLayout || spinner.includeInLayout || cancelIcon.includeInLayout;
         },null,"_CustomHeaderRenderer_HGroup3.includeInLayout");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((-§§pop() + 68 - 67 - 1) * 69);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return missingDataIcon.includeInLayout || spinner.includeInLayout || cancelIcon.includeInLayout;
         },null,"_CustomHeaderRenderer_HGroup3.visible");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(((§§pop() - 1) * 27 + 4) * 12 * 22 - 30 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !spinner.includeInLayout && (FilterGridColumn(column).showWarningIcon || FilterGridColumn(column).showEditIcon) && !FilterGridColumn(column).showCancelIcon;
         },null,"missingDataIcon.includeInLayout");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 12) - 59 + 118 + 7) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !spinner.includeInLayout && (FilterGridColumn(column).showWarningIcon || FilterGridColumn(column).showEditIcon) && !FilterGridColumn(column).showCancelIcon;
         },null,"missingDataIcon.visible");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1) * 25 * 79 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return FilterGridColumn(column).showProgressSpinner && !FilterGridColumn(column).showCancelIcon;
         },null,"spinner.includeInLayout");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(-(§§pop() - 118) - 8 - 69);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !FilterGridColumn(column).showProgressSpinner;
         },null,"spinner.pause");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 38 + 81 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return FilterGridColumn(column).showProgressSpinner && !FilterGridColumn(column).showCancelIcon;
         },null,"spinner.visible");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 101 - 65 - 67);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return FilterGridColumn(column).showCancelIcon;
         },null,"cancelIcon.includeInLayout");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 78 * 61));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.X_IMAGE;
         },null,"cancelIcon.source");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(--(--§§pop() + 9) + 40);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return FilterGridColumn(column).showCancelIcon;
         },null,"cancelIcon.visible");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _CustomHeaderRenderer_GradientEntry1() : GradientEntry
      {
         return this._987848626_CustomHeaderRenderer_GradientEntry1;
      }
      
      public function set _CustomHeaderRenderer_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._987848626_CustomHeaderRenderer_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._987848626_CustomHeaderRenderer_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CustomHeaderRenderer_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CustomHeaderRenderer_GradientEntry2() : GradientEntry
      {
         return this._987848625_CustomHeaderRenderer_GradientEntry2;
      }
      
      public function set _CustomHeaderRenderer_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._987848625_CustomHeaderRenderer_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._987848625_CustomHeaderRenderer_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CustomHeaderRenderer_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CustomHeaderRenderer_SolidColor1() : SolidColor
      {
         return this._1930526438_CustomHeaderRenderer_SolidColor1;
      }
      
      public function set _CustomHeaderRenderer_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1930526438_CustomHeaderRenderer_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._1930526438_CustomHeaderRenderer_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CustomHeaderRenderer_SolidColor1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelIcon() : Image
      {
         return this._1888293395cancelIcon;
      }
      
      public function set cancelIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1888293395cancelIcon;
         if(_loc2_ !== param1)
         {
            this._1888293395cancelIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cancelIcon",_loc2_,param1));
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
      public function get missingDataIcon() : Button
      {
         return this._1620452663missingDataIcon;
      }
      
      public function set missingDataIcon(param1:Button) : void
      {
         var _loc2_:Object = this._1620452663missingDataIcon;
         if(_loc2_ !== param1)
         {
            this._1620452663missingDataIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"missingDataIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get secondLineHGroup() : HGroup
      {
         return this._1506278303secondLineHGroup;
      }
      
      public function set secondLineHGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._1506278303secondLineHGroup;
         if(_loc2_ !== param1)
         {
            this._1506278303secondLineHGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"secondLineHGroup",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get spinner() : Spinner
      {
         return this._2004438503spinner;
      }
      
      public function set spinner(param1:Spinner) : void
      {
         var _loc2_:Object = this._2004438503spinner;
         if(_loc2_ !== param1)
         {
            this._2004438503spinner = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spinner",_loc2_,param1));
            }
         }
      }
   }
}
