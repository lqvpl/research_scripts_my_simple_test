package com.enfluid.ltp.view.renderers.headers
{
   import spark.components.gridClasses.GridItemRenderer;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.view.components.HelpButton;
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
   import flash.events.Event;
   import flash.events.ContextMenuEvent;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import flash.net.URLRequest;
   import com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
   import flash.net.navigateToURL;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import flash.events.MouseEvent;
   import mx.graphics.LinearGradient;
   import spark.components.HGroup;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public class CompetitorAnalysisHeaderRenderer extends GridItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1758226089_CompetitorAnalysisHeaderRenderer_GradientEntry1:GradientEntry;
      
      private var _1758226088_CompetitorAnalysisHeaderRenderer_GradientEntry2:GradientEntry;
      
      public var _CompetitorAnalysisHeaderRenderer_HelpButton1:HelpButton;
      
      private var _738610353_CompetitorAnalysisHeaderRenderer_SolidColor1:SolidColor;
      
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
      
      public function CompetitorAnalysisHeaderRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._CompetitorAnalysisHeaderRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_headers_CompetitorAnalysisHeaderRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CompetitorAnalysisHeaderRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(21);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 1);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(21);
         if(_loc4_)
         {
            §§push(-(-§§pop() - 34 - 94) + 1);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._CompetitorAnalysisHeaderRenderer_Rect1_i(),this._CompetitorAnalysisHeaderRenderer_Rect2_i(),this._CompetitorAnalysisHeaderRenderer_HGroup1_c(),this._CompetitorAnalysisHeaderRenderer_HelpButton1_i()];
         this.currentState = "normal";
         this._CompetitorAnalysisHeaderRenderer_ClassFactory1_i();
         this._CompetitorAnalysisHeaderRenderer_Label1_i();
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
         §§push("_CompetitorAnalysisHeaderRenderer_SolidColor1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(6526128);
         if(_loc4_)
         {
            §§push((§§pop() + 82 + 37 + 1 - 1 + 1 + 11) * 15);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("down");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("target");
         §§push("_CompetitorAnalysisHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc4_)
         {
            §§push(§§pop() + 90 - 74 + 13);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CompetitorAnalysisHeaderRenderer_GradientEntry1");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() + 36) + 1 + 1) * 19);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_CompetitorAnalysisHeaderRenderer_GradientEntry2");
         §§push("name");
         §§push("color");
         §§push("value");
         §§push(16777215);
         if(_loc4_)
         {
            §§push(-(-(-§§pop() * 67) * 59 - 36));
         }
         §§pop().states = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() + 60 + 1 + 45 + 1 - 8) * 39);
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
         CompetitorAnalysisHeaderRenderer._watcherSetupUtil = param1;
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
                     §§push((§§pop() + 1 + 1 + 1) * 3 + 1);
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
                     §§push(--((§§pop() - 1) * 87 - 45) * 101 + 1);
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(-1);
                  if(_loc7_)
                  {
                     §§push(§§pop() + 1 + 83 + 99);
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
      
      private final function validateLinkable() : void
      {
         var _loc1_:URLRequest = null;
         if(CompetitorAnalysisGridColumn(column).linkable)
         {
            _loc1_ = new URLRequest(CompetitorAnalysisGridColumn(column).url);
            navigateToURL(_loc1_,"_blank");
            new SetUserEvent("User.Event.Majestic.External.Link").execute();
         }
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_ClassFactory1_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisHeaderRendererInnerClass0;
         _loc1_.properties = {"outerDocument":this};
         this.defaultSortIndicator = _loc1_;
         BindingManager.executeBindings(this,"defaultSortIndicator",this.defaultSortIndicator);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 64 + 53 + 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 92 + 1 + 1));
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 63 + 1 + 21 - 1 - 1 - 43);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 45 + 1 - 1);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() * 117 + 101 - 85) * 77) * 7 + 48);
         }
         §§pop().maxDisplayedLines = §§pop();
         _loc1_.showTruncationTip = true;
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() * 97) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 5 - 111 - 34 - 58);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("lineHeight");
         §§push(14);
         if(_loc2_)
         {
            §§push(-(§§pop() - 103 - 1) + 1 + 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.addEventListener("click",this.__labelDisplay_click);
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",labelDisplay);
         return _loc1_;
      }
      
      public final function __labelDisplay_click(param1:MouseEvent) : void
      {
         this.validateLinkable();
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1) * 23 + 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(--(-§§pop() + 1 + 1) - 10 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 52 - 1 + 1 - 0);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 10) * 2));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 112 - 80) * 23 + 1);
         }
         §§pop().radiusX = §§pop();
         _loc1_.fill = this._CompetitorAnalysisHeaderRenderer_LinearGradient1_c();
         _loc1_.initialized(this,"shadow");
         this.shadow = _loc1_;
         BindingManager.executeBindings(this,"shadow",this.shadow);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         §§push(_loc1_);
         §§push(90);
         if(_loc2_)
         {
            §§push(§§pop() - 5 - 13 - 1);
         }
         §§pop().rotation = §§pop();
         _loc1_.entries = [this._CompetitorAnalysisHeaderRenderer_GradientEntry1_i(),this._CompetitorAnalysisHeaderRenderer_GradientEntry2_i()];
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 69 - 1 - 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.01;
         this._CompetitorAnalysisHeaderRenderer_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisHeaderRenderer_GradientEntry1",this._CompetitorAnalysisHeaderRenderer_GradientEntry1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() * 11 * 32 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.07;
         this._CompetitorAnalysisHeaderRenderer_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisHeaderRenderer_GradientEntry2",this._CompetitorAnalysisHeaderRenderer_GradientEntry2);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() + 1) * 103 + 1) * 20);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--((§§pop() + 1) * 89 * 94) - 42);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 47 - 1) * 80 * 31 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 91) * 40 - 18 - 24);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._CompetitorAnalysisHeaderRenderer_SolidColor1_i();
         _loc1_.initialized(this,"fill");
         this.fill = _loc1_;
         BindingManager.executeBindings(this,"fill",this.fill);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(6526128);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 95) - 1 - 1 + 1);
         }
         §§pop().color = §§pop();
         this._CompetitorAnalysisHeaderRenderer_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisHeaderRenderer_SolidColor1",this._CompetitorAnalysisHeaderRenderer_SolidColor1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(7);
         if(_loc3_)
         {
            §§push((§§pop() - 63 + 46) * 16 * 102);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(7);
         if(_loc3_)
         {
            §§push((§§pop() * 24 - 1 + 108) * 11 - 1 + 105);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push((--(§§pop() * 99) - 42) * 91);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() * 28 * 94 + 4);
         }
         §§pop().bottom = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(8);
         if(_loc2_)
         {
            §§push((-§§pop() * 85 + 1) * 96);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._CompetitorAnalysisHeaderRenderer_Group1_i(),this._CompetitorAnalysisHeaderRenderer_Group2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 95 - 99 + 57 + 12 + 1 + 1);
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
      
      private final function _CompetitorAnalysisHeaderRenderer_Group2_i() : Group
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
      
      private final function _CompetitorAnalysisHeaderRenderer_HelpButton1_i() : HelpButton
      {
         var _loc1_:HelpButton = new HelpButton();
         §§push(_loc1_);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() + 15 + 1 + 27 + 1) * 115 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(----§§pop() * 117 - 100 - 111);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 33 - 31 - 97) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_CompetitorAnalysisHeaderRenderer_HelpButton1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisHeaderRenderer_HelpButton1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisHeaderRenderer_HelpButton1",this._CompetitorAnalysisHeaderRenderer_HelpButton1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisHeaderRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 96 + 1 + 1 + 1 - 1) * 110 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = CompetitorAnalysisGridColumn(column).align;
            return _loc1_ == undefined?null:String(_loc1_);
         },function(param1:String):void
         {
            labelDisplay.setStyle("textAlign",param1);
         },"labelDisplay.textAlign");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(((§§pop() + 1 + 28 - 1) * 7 + 104 + 8) * 57);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!CompetitorAnalysisGridColumn(column).linkable?"underline":"normal";
            return _loc1_ == undefined?null:String(_loc1_);
         },function(param1:String):void
         {
            labelDisplay.setStyle("textDecoration",param1);
         },"labelDisplay.textDecoration");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 84 - 1 - 1 - 1) * 43 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return CompetitorAnalysisGridColumn(column).linkable;
         },null,"labelDisplay.buttonMode");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() + 48 - 32) * 115 * 59);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = CompetitorAnalysisGridColumn(column).helpTitle;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisHeaderRenderer_HelpButton1.helpTitle");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 40 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = CompetitorAnalysisGridColumn(column).helpContent;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisHeaderRenderer_HelpButton1.helpContent");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _CompetitorAnalysisHeaderRenderer_GradientEntry1() : GradientEntry
      {
         return this._1758226089_CompetitorAnalysisHeaderRenderer_GradientEntry1;
      }
      
      public function set _CompetitorAnalysisHeaderRenderer_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1758226089_CompetitorAnalysisHeaderRenderer_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._1758226089_CompetitorAnalysisHeaderRenderer_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CompetitorAnalysisHeaderRenderer_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CompetitorAnalysisHeaderRenderer_GradientEntry2() : GradientEntry
      {
         return this._1758226088_CompetitorAnalysisHeaderRenderer_GradientEntry2;
      }
      
      public function set _CompetitorAnalysisHeaderRenderer_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1758226088_CompetitorAnalysisHeaderRenderer_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._1758226088_CompetitorAnalysisHeaderRenderer_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CompetitorAnalysisHeaderRenderer_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CompetitorAnalysisHeaderRenderer_SolidColor1() : SolidColor
      {
         return this._738610353_CompetitorAnalysisHeaderRenderer_SolidColor1;
      }
      
      public function set _CompetitorAnalysisHeaderRenderer_SolidColor1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._738610353_CompetitorAnalysisHeaderRenderer_SolidColor1;
         if(_loc2_ !== param1)
         {
            this._738610353_CompetitorAnalysisHeaderRenderer_SolidColor1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CompetitorAnalysisHeaderRenderer_SolidColor1",_loc2_,param1));
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
