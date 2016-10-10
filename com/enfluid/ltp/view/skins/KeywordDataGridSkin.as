package com.enfluid.ltp.view.skins
{
   import spark.skins.SparkSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.ClassFactory;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.Grid;
   import spark.primitives.Line;
   import spark.components.Scroller;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import flash.net.URLRequest;
   import com.enfluid.ltp.model.constants.Constants;
   import spark.components.Button;
   import spark.components.VGroup;
   import spark.components.Group;
   import spark.skins.spark.DefaultGridItemRenderer;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import spark.components.DataGrid;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class KeywordDataGridSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static const exclusions:Array = ["scroller","background","columnHeaderGroup"];
      
      private static const contentFill:Array = ["bgFill"];
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1277490047alternatingRowColorsBackground:ClassFactory;
      
      private var _1332194002background:Rect;
      
      private var _1391998104bgFill:SolidColor;
      
      private var _1383304148border:Rect;
      
      private var _1395787140borderStroke:SolidColorStroke;
      
      private var _502679092caretIndicator:ClassFactory;
      
      private var _1482148164columnHeaderGroup:GridColumnHeaderGroup;
      
      private var _237342767columnSeparator:ClassFactory;
      
      private var _1419185120dropIndicator:ClassFactory;
      
      private var _1555036382editorIndicator:ClassFactory;
      
      private var _3181382grid:Grid;
      
      private var _1346001378headerColumnSeparator:ClassFactory;
      
      private var _1027582576headerRenderer:ClassFactory;
      
      private var _1683467992headerSeparator:Line;
      
      private var _1933789133hoverIndicator:ClassFactory;
      
      private var _136898894lockedColumnsSeparator:ClassFactory;
      
      private var _1257946590lockedRowsSeparator:ClassFactory;
      
      private var _1763950123rowSeparator:ClassFactory;
      
      private var _402164678scroller:Scroller;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:DataGrid;
      
      public function KeywordDataGridSkin()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._KeywordDataGridSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_skins_KeywordDataGridSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordDataGridSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(84);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 32 + 1 - 1 - 1);
         }
         §§pop().minHeight = §§pop();
         §§push(this);
         §§push(89);
         if(_loc4_)
         {
            §§push(§§pop() * 97 + 1 + 40);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._KeywordDataGridSkin_VGroup1_c(),this._KeywordDataGridSkin_Rect2_i()];
         this.currentState = "normal";
         this._KeywordDataGridSkin_ClassFactory1_i();
         this._KeywordDataGridSkin_ClassFactory2_i();
         this._KeywordDataGridSkin_ClassFactory3_i();
         this._KeywordDataGridSkin_ClassFactory4_i();
         this._KeywordDataGridSkin_ClassFactory11_i();
         this._KeywordDataGridSkin_ClassFactory5_i();
         this._KeywordDataGridSkin_ClassFactory6_i();
         this._KeywordDataGridSkin_ClassFactory7_i();
         this._KeywordDataGridSkin_ClassFactory8_i();
         this._KeywordDataGridSkin_ClassFactory9_i();
         this._KeywordDataGridSkin_ClassFactory10_i();
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 1 - 7 + 109);
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
         KeywordDataGridSkin._watcherSetupUtil = param1;
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
      
      override public function get colorizeExclusions() : Array
      {
         return exclusions;
      }
      
      override public function get contentItems() : Array
      {
         return contentFill;
      }
      
      override protected function initializationComplete() : void
      {
         useChromeColor = true;
         super.initializationComplete();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         if(getStyle("borderVisible") == true)
         {
            this.border.visible = true;
            §§push(this.background);
            §§push(this.background);
            §§push(this.background);
            §§push(this.background);
            §§push(1);
            if(_loc5_)
            {
               §§push((§§pop() * 103 + 1) * 33 + 1 + 1 + 8);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            §§push(this.scroller);
            §§push(1);
            if(_loc5_)
            {
               §§push((§§pop() + 1 - 60 - 32 - 1) * 72 - 90);
            }
            §§pop().minViewportInset = §§pop();
         }
         else
         {
            this.border.visible = false;
            §§push(this.background);
            §§push(this.background);
            §§push(this.background);
            §§push(this.background);
            §§push(0);
            if(_loc4_)
            {
               §§push(-((§§pop() + 1 - 80) * 75) * 68);
            }
            §§pop().left = §§pop().top = §§pop().right = §§pop().bottom = §§pop();
            §§push(this.scroller);
            §§push(0);
            if(_loc5_)
            {
               §§push(-((§§pop() + 57 - 27) * 47 + 71));
            }
            §§pop().minViewportInset = §§pop();
         }
         this.borderStroke.color = getStyle("borderColor");
         this.borderStroke.alpha = getStyle("borderAlpha");
         super.updateDisplayList(param1,param2);
      }
      
      private final function _KeywordDataGridSkin_ClassFactory1_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass0;
         _loc1_.properties = {"outerDocument":this};
         this.alternatingRowColorsBackground = _loc1_;
         BindingManager.executeBindings(this,"alternatingRowColorsBackground",this.alternatingRowColorsBackground);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory2_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass1;
         _loc1_.properties = {"outerDocument":this};
         this.caretIndicator = _loc1_;
         BindingManager.executeBindings(this,"caretIndicator",this.caretIndicator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory3_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass2;
         _loc1_.properties = {"outerDocument":this};
         this.columnSeparator = _loc1_;
         BindingManager.executeBindings(this,"columnSeparator",this.columnSeparator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory4_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass3;
         _loc1_.properties = {"outerDocument":this};
         this.dropIndicator = _loc1_;
         BindingManager.executeBindings(this,"dropIndicator",this.dropIndicator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory11_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass10;
         _loc1_.properties = {"outerDocument":this};
         this.editorIndicator = _loc1_;
         BindingManager.executeBindings(this,"editorIndicator",this.editorIndicator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory5_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass4;
         _loc1_.properties = {"outerDocument":this};
         this.headerColumnSeparator = _loc1_;
         BindingManager.executeBindings(this,"headerColumnSeparator",this.headerColumnSeparator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory6_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass5;
         _loc1_.properties = {"outerDocument":this};
         this.headerRenderer = _loc1_;
         BindingManager.executeBindings(this,"headerRenderer",this.headerRenderer);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory7_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass6;
         _loc1_.properties = {"outerDocument":this};
         this.hoverIndicator = _loc1_;
         BindingManager.executeBindings(this,"hoverIndicator",this.hoverIndicator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory8_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass7;
         _loc1_.properties = {"outerDocument":this};
         this.lockedColumnsSeparator = _loc1_;
         BindingManager.executeBindings(this,"lockedColumnsSeparator",this.lockedColumnsSeparator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory9_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass8;
         _loc1_.properties = {"outerDocument":this};
         this.lockedRowsSeparator = _loc1_;
         BindingManager.executeBindings(this,"lockedRowsSeparator",this.lockedRowsSeparator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory10_i() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass9;
         _loc1_.properties = {"outerDocument":this};
         this.rowSeparator = _loc1_;
         BindingManager.executeBindings(this,"rowSeparator",this.rowSeparator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 25 - 98 - 73 - 1 + 1 + 43);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 4) + 83);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 73 + 116) * 41);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 59));
         }
         §§pop().bottom = §§pop();
         _loc1_.horizontalAlign = "justify";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 80 + 70 - 1 - 43 + 1));
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._KeywordDataGridSkin_GridColumnHeaderGroup1_i(),this._KeywordDataGridSkin_Group1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_GridColumnHeaderGroup1_i() : GridColumnHeaderGroup
      {
         var _loc1_:GridColumnHeaderGroup = new GridColumnHeaderGroup();
         §§push(_loc1_);
         §§push(40);
         if(_loc2_)
         {
            §§push(-((§§pop() + 58 - 1 - 15) * 103));
         }
         §§pop().minHeight = §§pop();
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 5 - 1) * 19) - 9 + 114);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingRight");
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 58 + 1 - 119 - 1 + 82 - 110);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1) * 62 + 53);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "columnHeaderGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.columnHeaderGroup = _loc1_;
         BindingManager.executeBindings(this,"columnHeaderGroup",this.columnHeaderGroup);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_Group1_c() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 1 + 1 + 97 - 1 - 46);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._KeywordDataGridSkin_Rect1_i(),this._KeywordDataGridSkin_VGroup2_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 57 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 112 + 1 - 79);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 36) * 106 + 67 + 1 - 119) * 53);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 88 * 17) + 1 + 1 - 1 - 30);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._KeywordDataGridSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 106 - 64);
         }
         §§pop().color = §§pop();
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 83));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 79 + 1));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.horizontalAlign = "justify";
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push((§§pop() * 53 - 1 - 1 - 1) * 91);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._KeywordDataGridSkin_Line1_i(),this._KeywordDataGridSkin_Scroller1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_Line1_i() : Line
      {
         var _loc1_:Line = new Line();
         _loc1_.stroke = this._KeywordDataGridSkin_SolidColorStroke1_c();
         _loc1_.initialized(this,"headerSeparator");
         this.headerSeparator = _loc1_;
         BindingManager.executeBindings(this,"headerSeparator",this.headerSeparator);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_SolidColorStroke1_c() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(6908265);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 91 + 42) + 1) * 47);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 85) * 48 * 114);
         }
         §§pop().weight = §§pop();
         _loc1_.caps = "square";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 15) + 25 + 1 - 75);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_Scroller1_i() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 72 - 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() + 71 - 1) + 12) * 26);
         }
         §§pop().minViewportInset = §§pop();
         _loc1_.hasFocusableChildren = false;
         _loc1_.viewport = this._KeywordDataGridSkin_Grid1_i();
         _loc1_.id = "scroller";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.scroller = _loc1_;
         BindingManager.executeBindings(this,"scroller",this.scroller);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_Grid1_i() : Grid
      {
         var _loc1_:Grid = new Grid();
         _loc1_.itemRenderer = this._KeywordDataGridSkin_ClassFactory12_c();
         _loc1_.gridView = this._KeywordDataGridSkin_ClassFactory13_c();
         _loc1_.id = "grid";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.grid = _loc1_;
         BindingManager.executeBindings(this,"grid",this.grid);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory12_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DefaultGridItemRenderer;
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_ClassFactory13_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordDataGridSkinInnerClass11;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 41 - 1 - 109));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 1 - 1 + 72 - 97 - 61);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 35 - 36 - 115 + 1 + 116);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((--§§pop() - 1) * 28 * 45);
         }
         §§pop().bottom = §§pop();
         _loc1_.stroke = this._KeywordDataGridSkin_SolidColorStroke2_i();
         _loc1_.initialized(this,"border");
         this.border = _loc1_;
         BindingManager.executeBindings(this,"border",this.border);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_SolidColorStroke2_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 2 - 88 + 56 - 97 - 1);
         }
         §§pop().weight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1);
         }
         §§pop().alpha = §§pop();
         this.borderStroke = _loc1_;
         BindingManager.executeBindings(this,"borderStroke",this.borderStroke);
         return _loc1_;
      }
      
      private final function _KeywordDataGridSkin_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 1 + 30) * 27);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"columnHeaderGroup.columnSeparator","headerColumnSeparator");
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(-§§pop() + 1) + 82 - 1) * 0 + 4);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"columnHeaderGroup.headerRenderer","headerRenderer");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get alternatingRowColorsBackground() : ClassFactory
      {
         return this._1277490047alternatingRowColorsBackground;
      }
      
      public function set alternatingRowColorsBackground(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._1277490047alternatingRowColorsBackground;
         if(_loc2_ !== param1)
         {
            this._1277490047alternatingRowColorsBackground = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"alternatingRowColorsBackground",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : Rect
      {
         return this._1332194002background;
      }
      
      public function set background(param1:Rect) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bgFill() : SolidColor
      {
         return this._1391998104bgFill;
      }
      
      public function set bgFill(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1391998104bgFill;
         if(_loc2_ !== param1)
         {
            this._1391998104bgFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgFill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get border() : Rect
      {
         return this._1383304148border;
      }
      
      public function set border(param1:Rect) : void
      {
         var _loc2_:Object = this._1383304148border;
         if(_loc2_ !== param1)
         {
            this._1383304148border = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"border",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get borderStroke() : SolidColorStroke
      {
         return this._1395787140borderStroke;
      }
      
      public function set borderStroke(param1:SolidColorStroke) : void
      {
         var _loc2_:Object = this._1395787140borderStroke;
         if(_loc2_ !== param1)
         {
            this._1395787140borderStroke = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"borderStroke",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get caretIndicator() : ClassFactory
      {
         return this._502679092caretIndicator;
      }
      
      public function set caretIndicator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._502679092caretIndicator;
         if(_loc2_ !== param1)
         {
            this._502679092caretIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"caretIndicator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get columnHeaderGroup() : GridColumnHeaderGroup
      {
         return this._1482148164columnHeaderGroup;
      }
      
      public function set columnHeaderGroup(param1:GridColumnHeaderGroup) : void
      {
         var _loc2_:Object = this._1482148164columnHeaderGroup;
         if(_loc2_ !== param1)
         {
            this._1482148164columnHeaderGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"columnHeaderGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get columnSeparator() : ClassFactory
      {
         return this._237342767columnSeparator;
      }
      
      public function set columnSeparator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._237342767columnSeparator;
         if(_loc2_ !== param1)
         {
            this._237342767columnSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"columnSeparator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dropIndicator() : ClassFactory
      {
         return this._1419185120dropIndicator;
      }
      
      public function set dropIndicator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._1419185120dropIndicator;
         if(_loc2_ !== param1)
         {
            this._1419185120dropIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropIndicator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get editorIndicator() : ClassFactory
      {
         return this._1555036382editorIndicator;
      }
      
      public function set editorIndicator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._1555036382editorIndicator;
         if(_loc2_ !== param1)
         {
            this._1555036382editorIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"editorIndicator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get grid() : Grid
      {
         return this._3181382grid;
      }
      
      public function set grid(param1:Grid) : void
      {
         var _loc2_:Object = this._3181382grid;
         if(_loc2_ !== param1)
         {
            this._3181382grid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"grid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerColumnSeparator() : ClassFactory
      {
         return this._1346001378headerColumnSeparator;
      }
      
      public function set headerColumnSeparator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._1346001378headerColumnSeparator;
         if(_loc2_ !== param1)
         {
            this._1346001378headerColumnSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerColumnSeparator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerRenderer() : ClassFactory
      {
         return this._1027582576headerRenderer;
      }
      
      public function set headerRenderer(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._1027582576headerRenderer;
         if(_loc2_ !== param1)
         {
            this._1027582576headerRenderer = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerRenderer",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerSeparator() : Line
      {
         return this._1683467992headerSeparator;
      }
      
      public function set headerSeparator(param1:Line) : void
      {
         var _loc2_:Object = this._1683467992headerSeparator;
         if(_loc2_ !== param1)
         {
            this._1683467992headerSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerSeparator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hoverIndicator() : ClassFactory
      {
         return this._1933789133hoverIndicator;
      }
      
      public function set hoverIndicator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._1933789133hoverIndicator;
         if(_loc2_ !== param1)
         {
            this._1933789133hoverIndicator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hoverIndicator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedColumnsSeparator() : ClassFactory
      {
         return this._136898894lockedColumnsSeparator;
      }
      
      public function set lockedColumnsSeparator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._136898894lockedColumnsSeparator;
         if(_loc2_ !== param1)
         {
            this._136898894lockedColumnsSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedColumnsSeparator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lockedRowsSeparator() : ClassFactory
      {
         return this._1257946590lockedRowsSeparator;
      }
      
      public function set lockedRowsSeparator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._1257946590lockedRowsSeparator;
         if(_loc2_ !== param1)
         {
            this._1257946590lockedRowsSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockedRowsSeparator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rowSeparator() : ClassFactory
      {
         return this._1763950123rowSeparator;
      }
      
      public function set rowSeparator(param1:ClassFactory) : void
      {
         var _loc2_:Object = this._1763950123rowSeparator;
         if(_loc2_ !== param1)
         {
            this._1763950123rowSeparator = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rowSeparator",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scroller() : Scroller
      {
         return this._402164678scroller;
      }
      
      public function set scroller(param1:Scroller) : void
      {
         var _loc2_:Object = this._402164678scroller;
         if(_loc2_ !== param1)
         {
            this._402164678scroller = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scroller",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : DataGrid
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:DataGrid) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
