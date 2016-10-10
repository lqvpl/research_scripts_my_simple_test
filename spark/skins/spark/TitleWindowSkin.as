package spark.skins.spark
{
   import spark.skins.SparkSkin;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import mx.graphics.GradientEntry;
   import spark.components.Group;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.graphics.SolidColorStroke;
   import spark.components.Button;
   import spark.primitives.RectangularDropShadow;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import mx.core.FlexVersion;
   import mx.binding.BindingManager;
   import spark.layouts.VerticalLayout;
   import mx.graphics.LinearGradient;
   import mx.graphics.LinearGradientStroke;
   import spark.layouts.HorizontalLayout;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import spark.components.TitleWindow;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public class TitleWindowSkin extends SparkSkin implements IBindingClient, IStateClient2
   {
      
      private static const exclusions:Array = ["background","titleDisplay","contentGroup","border"];
      
      private static const exclusions_4_0:Array = ["background","titleDisplay","contentGroup"];
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1236024536_TitleWindowSkin_GradientEntry1:GradientEntry;
      
      private var _1236024535_TitleWindowSkin_GradientEntry2:GradientEntry;
      
      private var _698040213_TitleWindowSkin_Group1:Group;
      
      public var _TitleWindowSkin_Group9:Group;
      
      private var _1332194002background:Rect;
      
      private var _1427077073backgroundFill:SolidColor;
      
      private var _1383304148border:Rect;
      
      private var _1395787140borderStroke:SolidColorStroke;
      
      private var _631173356bottomGroup:Group;
      
      private var _1770004448bottomGroupMask:Group;
      
      private var _149872069bottomMaskRect:Rect;
      
      private var _312699062closeButton:Button;
      
      private var _809612678contentGroup:Group;
      
      private var _567321830contents:Group;
      
      private var _139410089controlBarGroup:Group;
      
      private var _906978543dropShadow:RectangularDropShadow;
      
      private var _104976386moveArea:Group;
      
      private var _110116675tbDiv:Rect;
      
      private var _881290991tbFill:Rect;
      
      private var _754825923tbHilite:Rect;
      
      private var _1893287094titleDisplay:Label;
      
      private var _988229078topGroup:Group;
      
      private var _181676086topGroupMask:Group;
      
      private var _1437106021topMaskRect:Rect;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var cornerRadius:Number;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _213507019hostComponent:TitleWindow;
      
      public function TitleWindowSkin()
      {
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._TitleWindowSkin_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_spark_skins_spark_TitleWindowSkinWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return TitleWindowSkin[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.blendMode = "normal";
         this.mouseEnabled = false;
         this.minWidth = 76;
         this.minHeight = 76;
         this.mxmlContent = [this._TitleWindowSkin_RectangularDropShadow1_i(),this._TitleWindowSkin_Group1_i()];
         this.currentState = "normal";
         var _TitleWindowSkin_Group3_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._TitleWindowSkin_Group3_i);
         var _TitleWindowSkin_Group8_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._TitleWindowSkin_Group8_i);
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"inactive",
            "stateGroups":["inactiveGroup"],
            "overrides":[new SetProperty().initializeFromObject({
               "target":"dropShadow",
               "name":"alpha",
               "value":0.22
            }),new SetProperty().initializeFromObject({
               "target":"dropShadow",
               "name":"distance",
               "value":7
            }),new SetProperty().initializeFromObject({
               "target":"_TitleWindowSkin_GradientEntry1",
               "name":"color",
               "value":15395562
            }),new SetProperty().initializeFromObject({
               "target":"_TitleWindowSkin_GradientEntry2",
               "name":"color",
               "value":13553358
            })]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         }),new State({
            "name":"normalWithControlBar",
            "stateGroups":["withControls"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_TitleWindowSkin_Group8_factory,
               "destination":"contents",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["contentGroup"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_TitleWindowSkin_Group3_factory,
               "destination":"_TitleWindowSkin_Group1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["topGroupMask"]
            })]
         }),new State({
            "name":"inactiveWithControlBar",
            "stateGroups":["inactiveGroup","withControls"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_TitleWindowSkin_Group8_factory,
               "destination":"contents",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["contentGroup"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_TitleWindowSkin_Group3_factory,
               "destination":"_TitleWindowSkin_Group1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["topGroupMask"]
            }),new SetProperty().initializeFromObject({
               "target":"dropShadow",
               "name":"alpha",
               "value":0.22
            }),new SetProperty().initializeFromObject({
               "target":"dropShadow",
               "name":"distance",
               "value":7
            }),new SetProperty().initializeFromObject({
               "target":"_TitleWindowSkin_GradientEntry1",
               "name":"color",
               "value":15395562
            }),new SetProperty().initializeFromObject({
               "target":"_TitleWindowSkin_GradientEntry2",
               "name":"color",
               "value":13553358
            })]
         }),new State({
            "name":"disabledWithControlBar",
            "stateGroups":["withControls"],
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_TitleWindowSkin_Group8_factory,
               "destination":"contents",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["contentGroup"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_TitleWindowSkin_Group3_factory,
               "destination":"_TitleWindowSkin_Group1",
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["topGroupMask"]
            }),new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
         })];
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         TitleWindowSkin._watcherSetupUtil = param1;
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
         if(FlexVersion.compatibilityVersion < FlexVersion.VERSION_4_5)
         {
            return exclusions_4_0;
         }
         return exclusions;
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
            this.background.left = this.background.top = this.background.right = this.background.bottom = 1;
            this.contents.left = this.contents.top = this.contents.right = this.contents.bottom = 1;
         }
         else
         {
            this.border.visible = false;
            this.background.left = this.background.top = this.background.right = this.background.bottom = 0;
            this.contents.left = this.contents.top = this.contents.right = this.contents.bottom = 0;
         }
         this.dropShadow.visible = getStyle("dropShadowVisible");
         var _loc3_:Number = getStyle("cornerRadius");
         var _loc4_:Boolean = currentState == "disabledWithControlBar" || currentState == "normalWithControlBar" || currentState == "inactiveWithControlBar";
         if(this.cornerRadius != _loc3_)
         {
            this.cornerRadius = _loc3_;
            this.dropShadow.tlRadius = this.cornerRadius;
            this.dropShadow.trRadius = this.cornerRadius;
            this.dropShadow.blRadius = !!_loc4_?Number(this.cornerRadius):Number(0);
            this.dropShadow.brRadius = !!_loc4_?Number(this.cornerRadius):Number(0);
            this.setPartCornerRadii(this.topMaskRect,_loc4_);
            this.setPartCornerRadii(this.border,_loc4_);
            this.setPartCornerRadii(this.background,_loc4_);
         }
         if(this.bottomMaskRect)
         {
            this.setPartCornerRadii(this.bottomMaskRect,_loc4_);
         }
         this.borderStroke.color = getStyle("borderColor");
         this.borderStroke.alpha = getStyle("borderAlpha");
         this.backgroundFill.color = getStyle("backgroundColor");
         this.backgroundFill.alpha = getStyle("backgroundAlpha");
         super.updateDisplayList(param1,param2);
      }
      
      private function setPartCornerRadii(param1:Rect, param2:Boolean) : void
      {
         param1.topLeftRadiusX = this.cornerRadius;
         param1.topRightRadiusX = this.cornerRadius;
         param1.bottomLeftRadiusX = !!param2?Number(this.cornerRadius):Number(0);
         param1.bottomRightRadiusX = !!param2?Number(this.cornerRadius):Number(0);
      }
      
      private function _TitleWindowSkin_RectangularDropShadow1_i() : RectangularDropShadow
      {
         var _loc1_:RectangularDropShadow = new RectangularDropShadow();
         _loc1_.blurX = 20;
         _loc1_.blurY = 20;
         _loc1_.alpha = 0.32;
         _loc1_.distance = 11;
         _loc1_.angle = 90;
         _loc1_.color = 0;
         _loc1_.left = 0;
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.bottom = 0;
         _loc1_.id = "dropShadow";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.dropShadow = _loc1_;
         BindingManager.executeBindings(this,"dropShadow",this.dropShadow);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.mxmlContent = [this._TitleWindowSkin_Group2_i(),this._TitleWindowSkin_Rect3_i(),this._TitleWindowSkin_Rect4_i(),this._TitleWindowSkin_Group4_i()];
         _loc1_.id = "_TitleWindowSkin_Group1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._TitleWindowSkin_Group1 = _loc1_;
         BindingManager.executeBindings(this,"_TitleWindowSkin_Group1",this._TitleWindowSkin_Group1);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group2_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 1;
         _loc1_.top = 1;
         _loc1_.right = 1;
         _loc1_.bottom = 1;
         _loc1_.mxmlContent = [this._TitleWindowSkin_Rect1_i()];
         _loc1_.id = "topGroupMask";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topGroupMask = _loc1_;
         BindingManager.executeBindings(this,"topGroupMask",this.topGroupMask);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.bottom = 0;
         _loc1_.fill = this._TitleWindowSkin_SolidColor1_c();
         _loc1_.initialized(this,"topMaskRect");
         this.topMaskRect = _loc1_;
         BindingManager.executeBindings(this,"topMaskRect",this.topMaskRect);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.alpha = 0;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group3_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 1;
         _loc1_.top = 1;
         _loc1_.right = 1;
         _loc1_.bottom = 1;
         _loc1_.mxmlContent = [this._TitleWindowSkin_Rect2_i()];
         _loc1_.id = "bottomGroupMask";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomGroupMask = _loc1_;
         BindingManager.executeBindings(this,"bottomGroupMask",this.bottomGroupMask);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect2_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.top = 0;
         _loc1_.right = 0;
         _loc1_.bottom = 0;
         _loc1_.fill = this._TitleWindowSkin_SolidColor2_c();
         _loc1_.initialized(this,"bottomMaskRect");
         this.bottomMaskRect = _loc1_;
         BindingManager.executeBindings(this,"bottomMaskRect",this.bottomMaskRect);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_SolidColor2_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.alpha = 0;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect3_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.stroke = this._TitleWindowSkin_SolidColorStroke1_i();
         _loc1_.initialized(this,"border");
         this.border = _loc1_;
         BindingManager.executeBindings(this,"border",this.border);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_SolidColorStroke1_i() : SolidColorStroke
      {
         var _loc1_:SolidColorStroke = new SolidColorStroke();
         _loc1_.weight = 1;
         this.borderStroke = _loc1_;
         BindingManager.executeBindings(this,"borderStroke",this.borderStroke);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect4_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.top = 1;
         _loc1_.right = 1;
         _loc1_.bottom = 1;
         _loc1_.fill = this._TitleWindowSkin_SolidColor3_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_SolidColor3_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16777215;
         this.backgroundFill = _loc1_;
         BindingManager.executeBindings(this,"backgroundFill",this.backgroundFill);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group4_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 1;
         _loc1_.right = 1;
         _loc1_.top = 1;
         _loc1_.bottom = 1;
         _loc1_.layout = this._TitleWindowSkin_VerticalLayout1_c();
         _loc1_.mxmlContent = [this._TitleWindowSkin_Group5_i(),this._TitleWindowSkin_Group7_i()];
         _loc1_.id = "contents";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contents = _loc1_;
         BindingManager.executeBindings(this,"contents",this.contents);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.gap = 0;
         _loc1_.horizontalAlign = "justify";
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group5_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.mxmlContent = [this._TitleWindowSkin_Rect5_i(),this._TitleWindowSkin_Rect6_i(),this._TitleWindowSkin_Rect7_i(),this._TitleWindowSkin_Label1_i(),this._TitleWindowSkin_Group6_i(),this._TitleWindowSkin_Button1_i()];
         _loc1_.id = "topGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.topGroup = _loc1_;
         BindingManager.executeBindings(this,"topGroup",this.topGroup);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect5_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 1;
         _loc1_.fill = this._TitleWindowSkin_LinearGradient1_c();
         _loc1_.initialized(this,"tbFill");
         this.tbFill = _loc1_;
         BindingManager.executeBindings(this,"tbFill",this.tbFill);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._TitleWindowSkin_GradientEntry1_i(),this._TitleWindowSkin_GradientEntry2_i()];
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry1_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 13816530;
         this._TitleWindowSkin_GradientEntry1 = _loc1_;
         BindingManager.executeBindings(this,"_TitleWindowSkin_GradientEntry1",this._TitleWindowSkin_GradientEntry1);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry2_i() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 10132122;
         this._TitleWindowSkin_GradientEntry2 = _loc1_;
         BindingManager.executeBindings(this,"_TitleWindowSkin_GradientEntry2",this._TitleWindowSkin_GradientEntry2);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect6_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.stroke = this._TitleWindowSkin_LinearGradientStroke1_c();
         _loc1_.fill = this._TitleWindowSkin_LinearGradient2_c();
         _loc1_.initialized(this,"tbHilite");
         this.tbHilite = _loc1_;
         BindingManager.executeBindings(this,"tbHilite",this.tbHilite);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_LinearGradientStroke1_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         _loc1_.rotation = 90;
         _loc1_.weight = 1;
         _loc1_.entries = [this._TitleWindowSkin_GradientEntry3_c(),this._TitleWindowSkin_GradientEntry4_c()];
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry3_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 15132390;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry4_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         _loc1_.alpha = 0.22;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_LinearGradient2_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._TitleWindowSkin_GradientEntry5_c(),this._TitleWindowSkin_GradientEntry6_c(),this._TitleWindowSkin_GradientEntry7_c()];
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry5_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         _loc1_.alpha = 0.15;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry6_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         _loc1_.alpha = 0.15;
         _loc1_.ratio = 0.44;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry7_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         _loc1_.alpha = 0;
         _loc1_.ratio = 0.4401;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect7_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.height = 1;
         _loc1_.bottom = 0;
         _loc1_.fill = this._TitleWindowSkin_SolidColor4_c();
         _loc1_.initialized(this,"tbDiv");
         this.tbDiv = _loc1_;
         BindingManager.executeBindings(this,"tbDiv",this.tbDiv);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_SolidColor4_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         _loc1_.alpha = 0.75;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.maxDisplayedLines = 1;
         _loc1_.left = 9;
         _loc1_.right = 36;
         _loc1_.top = 1;
         _loc1_.bottom = 0;
         _loc1_.minHeight = 30;
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.id = "titleDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.titleDisplay = _loc1_;
         BindingManager.executeBindings(this,"titleDisplay",this.titleDisplay);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group6_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.id = "moveArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.moveArea = _loc1_;
         BindingManager.executeBindings(this,"moveArea",this.moveArea);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.width = 15;
         _loc1_.height = 15;
         _loc1_.right = 7;
         _loc1_.top = 7;
         _loc1_.setStyle("skinClass",TitleWindowCloseButtonSkin);
         _loc1_.id = "closeButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.closeButton = _loc1_;
         BindingManager.executeBindings(this,"closeButton",this.closeButton);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group7_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.percentWidth = 100;
         _loc1_.percentHeight = 100;
         _loc1_.minWidth = 0;
         _loc1_.minHeight = 0;
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group8_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.minWidth = 0;
         _loc1_.minHeight = 0;
         _loc1_.mxmlContent = [this._TitleWindowSkin_Group9_i(),this._TitleWindowSkin_Group10_i()];
         _loc1_.id = "bottomGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.bottomGroup = _loc1_;
         BindingManager.executeBindings(this,"bottomGroup",this.bottomGroup);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group9_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.mxmlContent = [this._TitleWindowSkin_Rect8_c(),this._TitleWindowSkin_Rect9_c(),this._TitleWindowSkin_Rect10_c()];
         _loc1_.id = "_TitleWindowSkin_Group9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._TitleWindowSkin_Group9 = _loc1_;
         BindingManager.executeBindings(this,"_TitleWindowSkin_Group9",this._TitleWindowSkin_Group9);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect8_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.height = 1;
         _loc1_.alpha = 0.22;
         _loc1_.fill = this._TitleWindowSkin_SolidColor5_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_SolidColor5_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect9_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 1;
         _loc1_.bottom = 0;
         _loc1_.stroke = this._TitleWindowSkin_LinearGradientStroke2_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_LinearGradientStroke2_c() : LinearGradientStroke
      {
         var _loc1_:LinearGradientStroke = new LinearGradientStroke();
         _loc1_.rotation = 90;
         _loc1_.weight = 1;
         _loc1_.entries = [this._TitleWindowSkin_GradientEntry8_c(),this._TitleWindowSkin_GradientEntry9_c()];
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry8_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 16777215;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry9_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 14211288;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Rect10_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 1;
         _loc1_.right = 1;
         _loc1_.top = 2;
         _loc1_.bottom = 1;
         _loc1_.fill = this._TitleWindowSkin_LinearGradient3_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_LinearGradient3_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.rotation = 90;
         _loc1_.entries = [this._TitleWindowSkin_GradientEntry10_c(),this._TitleWindowSkin_GradientEntry11_c()];
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry10_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 15592941;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_GradientEntry11_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         _loc1_.color = 13487565;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_Group10_i() : Group
      {
         var _loc1_:Group = new Group();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 1;
         _loc1_.bottom = 1;
         _loc1_.minWidth = 0;
         _loc1_.minHeight = 0;
         _loc1_.layout = this._TitleWindowSkin_HorizontalLayout1_c();
         _loc1_.id = "controlBarGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.controlBarGroup = _loc1_;
         BindingManager.executeBindings(this,"controlBarGroup",this.controlBarGroup);
         return _loc1_;
      }
      
      private function _TitleWindowSkin_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.paddingLeft = 10;
         _loc1_.paddingRight = 10;
         _loc1_.paddingTop = 7;
         _loc1_.paddingBottom = 7;
         _loc1_.gap = 10;
         return _loc1_;
      }
      
      private function _TitleWindowSkin_bindingsSetup() : Array
      {
         var _loc1_:Array = [];
         _loc1_[0] = new Binding(this,null,null,"topGroup.mask","topGroupMask");
         _loc1_[1] = new Binding(this,null,null,"_TitleWindowSkin_Group9.mask","bottomGroupMask");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _TitleWindowSkin_GradientEntry1() : GradientEntry
      {
         return this._1236024536_TitleWindowSkin_GradientEntry1;
      }
      
      public function set _TitleWindowSkin_GradientEntry1(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1236024536_TitleWindowSkin_GradientEntry1;
         if(_loc2_ !== param1)
         {
            this._1236024536_TitleWindowSkin_GradientEntry1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TitleWindowSkin_GradientEntry1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _TitleWindowSkin_GradientEntry2() : GradientEntry
      {
         return this._1236024535_TitleWindowSkin_GradientEntry2;
      }
      
      public function set _TitleWindowSkin_GradientEntry2(param1:GradientEntry) : void
      {
         var _loc2_:Object = this._1236024535_TitleWindowSkin_GradientEntry2;
         if(_loc2_ !== param1)
         {
            this._1236024535_TitleWindowSkin_GradientEntry2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TitleWindowSkin_GradientEntry2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _TitleWindowSkin_Group1() : Group
      {
         return this._698040213_TitleWindowSkin_Group1;
      }
      
      public function set _TitleWindowSkin_Group1(param1:Group) : void
      {
         var _loc2_:Object = this._698040213_TitleWindowSkin_Group1;
         if(_loc2_ !== param1)
         {
            this._698040213_TitleWindowSkin_Group1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_TitleWindowSkin_Group1",_loc2_,param1));
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
      public function get backgroundFill() : SolidColor
      {
         return this._1427077073backgroundFill;
      }
      
      public function set backgroundFill(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1427077073backgroundFill;
         if(_loc2_ !== param1)
         {
            this._1427077073backgroundFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backgroundFill",_loc2_,param1));
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
      public function get bottomGroup() : Group
      {
         return this._631173356bottomGroup;
      }
      
      public function set bottomGroup(param1:Group) : void
      {
         var _loc2_:Object = this._631173356bottomGroup;
         if(_loc2_ !== param1)
         {
            this._631173356bottomGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomGroupMask() : Group
      {
         return this._1770004448bottomGroupMask;
      }
      
      public function set bottomGroupMask(param1:Group) : void
      {
         var _loc2_:Object = this._1770004448bottomGroupMask;
         if(_loc2_ !== param1)
         {
            this._1770004448bottomGroupMask = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomGroupMask",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bottomMaskRect() : Rect
      {
         return this._149872069bottomMaskRect;
      }
      
      public function set bottomMaskRect(param1:Rect) : void
      {
         var _loc2_:Object = this._149872069bottomMaskRect;
         if(_loc2_ !== param1)
         {
            this._149872069bottomMaskRect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bottomMaskRect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get closeButton() : Button
      {
         return this._312699062closeButton;
      }
      
      public function set closeButton(param1:Button) : void
      {
         var _loc2_:Object = this._312699062closeButton;
         if(_loc2_ !== param1)
         {
            this._312699062closeButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closeButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contents() : Group
      {
         return this._567321830contents;
      }
      
      public function set contents(param1:Group) : void
      {
         var _loc2_:Object = this._567321830contents;
         if(_loc2_ !== param1)
         {
            this._567321830contents = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contents",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get controlBarGroup() : Group
      {
         return this._139410089controlBarGroup;
      }
      
      public function set controlBarGroup(param1:Group) : void
      {
         var _loc2_:Object = this._139410089controlBarGroup;
         if(_loc2_ !== param1)
         {
            this._139410089controlBarGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"controlBarGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dropShadow() : RectangularDropShadow
      {
         return this._906978543dropShadow;
      }
      
      public function set dropShadow(param1:RectangularDropShadow) : void
      {
         var _loc2_:Object = this._906978543dropShadow;
         if(_loc2_ !== param1)
         {
            this._906978543dropShadow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dropShadow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveArea() : Group
      {
         return this._104976386moveArea;
      }
      
      public function set moveArea(param1:Group) : void
      {
         var _loc2_:Object = this._104976386moveArea;
         if(_loc2_ !== param1)
         {
            this._104976386moveArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveArea",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tbDiv() : Rect
      {
         return this._110116675tbDiv;
      }
      
      public function set tbDiv(param1:Rect) : void
      {
         var _loc2_:Object = this._110116675tbDiv;
         if(_loc2_ !== param1)
         {
            this._110116675tbDiv = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tbDiv",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tbFill() : Rect
      {
         return this._881290991tbFill;
      }
      
      public function set tbFill(param1:Rect) : void
      {
         var _loc2_:Object = this._881290991tbFill;
         if(_loc2_ !== param1)
         {
            this._881290991tbFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tbFill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tbHilite() : Rect
      {
         return this._754825923tbHilite;
      }
      
      public function set tbHilite(param1:Rect) : void
      {
         var _loc2_:Object = this._754825923tbHilite;
         if(_loc2_ !== param1)
         {
            this._754825923tbHilite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tbHilite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleDisplay() : Label
      {
         return this._1893287094titleDisplay;
      }
      
      public function set titleDisplay(param1:Label) : void
      {
         var _loc2_:Object = this._1893287094titleDisplay;
         if(_loc2_ !== param1)
         {
            this._1893287094titleDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topGroup() : Group
      {
         return this._988229078topGroup;
      }
      
      public function set topGroup(param1:Group) : void
      {
         var _loc2_:Object = this._988229078topGroup;
         if(_loc2_ !== param1)
         {
            this._988229078topGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topGroupMask() : Group
      {
         return this._181676086topGroupMask;
      }
      
      public function set topGroupMask(param1:Group) : void
      {
         var _loc2_:Object = this._181676086topGroupMask;
         if(_loc2_ !== param1)
         {
            this._181676086topGroupMask = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topGroupMask",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topMaskRect() : Rect
      {
         return this._1437106021topMaskRect;
      }
      
      public function set topMaskRect(param1:Rect) : void
      {
         var _loc2_:Object = this._1437106021topMaskRect;
         if(_loc2_ !== param1)
         {
            this._1437106021topMaskRect = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topMaskRect",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : TitleWindow
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:TitleWindow) : void
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
