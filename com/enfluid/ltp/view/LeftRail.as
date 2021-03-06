package com.enfluid.ltp.view
{
   import spark.components.VGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Button;
   import spark.components.DataGroup;
   import com.adobe.cairngorm.observer.Observe;
   import spark.primitives.Rect;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.controller.keywordresearch.QuickAddAndAnalyzeCommand;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import mx.graphics.SolidColor;
   import system.data.lists.ArrayList;
   import mx.controls.Spacer;
   import spark.components.HGroup;
   import spark.components.Label;
   import com.enfluid.ltp.view.skins.FindKeywordsButtonSkin;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import com.enfluid.ltp.view.skins.MinimalFlatButtonSkin;
   import com.enfluid.ltp.view.components.SlimScroller;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.core.ClassFactory;
   import spark.layouts.VerticalLayout;
   import mx.binding.Binding;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import mx.collections.IList;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class LeftRail extends VGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _LeftRail_Button2:Button;
      
      public var _LeftRail_DataGroup1:DataGroup;
      
      public var _LeftRail_Observe1:Observe;
      
      public var _LeftRail_Observe2:Observe;
      
      public var _LeftRail_Rect1:Rect;
      
      public var _LeftRail_TabRenderer2:TabRenderer;
      
      public var _LeftRail_TabRenderer3:TabRenderer;
      
      private var _1991041238allKeywordsTab:TabRenderer;
      
      private var _1725135953generateKeywordsButton:Button;
      
      private var _1651471593quickAddTI:TextInput;
      
      private var _944997572seedKeywordsVGroup:VGroup;
      
      private var _1285155133trashTab:TabRenderer;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var generateKeywordsCallout:com.enfluid.ltp.view.GenerateKeywordsCallout;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function LeftRail()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._LeftRail_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_LeftRailWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return LeftRail[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 87 + 1 - 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 94 + 1) * 112);
         }
         §§pop().paddingTop = §§pop();
         §§push(this);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 71 - 110 - 1) - 1);
         }
         §§pop().gap = §§pop();
         this.mxmlContent = [this._LeftRail_Rect1_i(),this._LeftRail_SelectProjectSection1_c(),this._LeftRail_Spacer1_c(),this._LeftRail_HGroup1_c(),this._LeftRail_Spacer2_c(),this._LeftRail_HGroup2_c(),this._LeftRail_Spacer3_c(),this._LeftRail_TabRenderer1_i(),this._LeftRail_SlimScroller1_c(),this._LeftRail_TabRenderer3_i(),this._LeftRail_TabRenderer4_i(),this._LeftRail_Spacer5_c()];
         this._LeftRail_Observe1_i();
         this._LeftRail_Observe2_i();
         this.addEventListener("creationComplete",this.___LeftRail_VGroup1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 88 + 1 - 73);
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
         LeftRail._watcherSetupUtil = param1;
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
      
      protected final function onCreationComplete(param1:FlexEvent) : void
      {
         this.viewModel.selectedKeywordsTab = this.allKeywordsTab;
      }
      
      private final function onChangeProject(param1:ProjectVO) : void
      {
         if(param1)
         {
            this.viewModel.selectedKeywordsTab = this.allKeywordsTab;
         }
      }
      
      private final function onChangeShowGenerateKeywordsCallout(param1:Boolean) : void
      {
         if(!this.generateKeywordsCallout)
         {
            this.generateKeywordsCallout = new com.enfluid.ltp.view.GenerateKeywordsCallout();
         }
         if(param1)
         {
            this.generateKeywordsCallout.open(this.generateKeywordsButton);
         }
         else
         {
            this.generateKeywordsCallout.close();
         }
      }
      
      private final function onClickQuickAdd() : void
      {
         if(!this.quickAddTI.text)
         {
            return;
         }
         new QuickAddAndAnalyzeCommand(this.quickAddTI.text).execute();
         new SetUserEvent("UserEvent.Keyword.QuickAdd",{"keyword":this.quickAddTI.text}).execute();
         this.quickAddTI.text = "";
      }
      
      private final function _LeftRail_Observe1_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._LeftRail_Observe1 = _loc1_;
         BindingManager.executeBindings(this,"_LeftRail_Observe1",this._LeftRail_Observe1);
         return _loc1_;
      }
      
      private final function _LeftRail_Observe2_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._LeftRail_Observe2 = _loc1_;
         BindingManager.executeBindings(this,"_LeftRail_Observe2",this._LeftRail_Observe2);
         return _loc1_;
      }
      
      private final function _LeftRail_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.includeInLayout = false;
         _loc1_.fill = this._LeftRail_SolidColor1_c();
         _loc1_.initialized(this,"_LeftRail_Rect1");
         this._LeftRail_Rect1 = _loc1_;
         BindingManager.executeBindings(this,"_LeftRail_Rect1",this._LeftRail_Rect1);
         return _loc1_;
      }
      
      private final function _LeftRail_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(16777215);
         if(_loc2_)
         {
            §§push((§§pop() - 18 + 1) * 49 - 1 + 1);
         }
         §§pop().color = §§pop();
         _loc1_.alpha = 0.75;
         return _loc1_;
      }
      
      private final function _LeftRail_SelectProjectSection1_c() : SelectProjectSection
      {
         var _loc1_:SelectProjectSection = new SelectProjectSection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LeftRail_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-((§§pop() + 13) * 57) - 1 - 28);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LeftRail_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 91) - 45 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-((§§pop() + 115 + 20) * 43 - 3) - 42 - 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 15 - 9 - 1 - 13);
         }
         §§pop().paddingRight = §§pop();
         _loc1_.mxmlContent = [this._LeftRail_Button1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LeftRail_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(60);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 24 + 1);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Find Keywords";
         _loc1_.setStyle("skinClass",FindKeywordsButtonSkin);
         _loc1_.addEventListener("click",this.__generateKeywordsButton_click);
         _loc1_.id = "generateKeywordsButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.generateKeywordsButton = _loc1_;
         BindingManager.executeBindings(this,"generateKeywordsButton",this.generateKeywordsButton);
         return _loc1_;
      }
      
      public final function __generateKeywordsButton_click(param1:MouseEvent) : void
      {
         this.viewModel.showGenerateKeywordsCallout = !this.viewModel.showGenerateKeywordsCallout;
      }
      
      private final function _LeftRail_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() + 103 - 14) + 1 - 12);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LeftRail_HGroup2_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 71 - 1 + 102 + 1 - 47) * 18 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push((§§pop() - 76 + 1 + 1) * 10 - 1 - 25 - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) + 92 + 1) + 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() + 25 - 1) + 81 - 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 66 + 79) * 74 + 1 - 38);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._LeftRail_TextInput1_i(),this._LeftRail_Button2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LeftRail_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 67 + 12 - 27);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.prompt = "Quick Add & Analyze";
         _loc1_.setStyle("skinClass",FlatTextInputSkin);
         _loc1_.addEventListener("enter",this.__quickAddTI_enter);
         _loc1_.id = "quickAddTI";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.quickAddTI = _loc1_;
         BindingManager.executeBindings(this,"quickAddTI",this.quickAddTI);
         return _loc1_;
      }
      
      public final function __quickAddTI_enter(param1:FlexEvent) : void
      {
         this.onClickQuickAdd();
      }
      
      private final function _LeftRail_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(40);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 1 + 90 + 50 - 48 - 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(--§§pop() - 33 + 47);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.label = "Add";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",MinimalFlatButtonSkin);
         _loc1_.addEventListener("click",this.___LeftRail_Button2_click);
         _loc1_.id = "_LeftRail_Button2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LeftRail_Button2 = _loc1_;
         BindingManager.executeBindings(this,"_LeftRail_Button2",this._LeftRail_Button2);
         return _loc1_;
      }
      
      public final function ___LeftRail_Button2_click(param1:MouseEvent) : void
      {
         this.onClickQuickAdd();
      }
      
      private final function _LeftRail_Spacer3_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 107 - 68 + 1 + 1 - 1);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LeftRail_TabRenderer1_i() : TabRenderer
      {
         var _loc1_:TabRenderer = new TabRenderer();
         _loc1_.label = "All Keywords";
         _loc1_.isAllKeywordsTab = true;
         _loc1_.id = "allKeywordsTab";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.allKeywordsTab = _loc1_;
         BindingManager.executeBindings(this,"allKeywordsTab",this.allKeywordsTab);
         return _loc1_;
      }
      
      private final function _LeftRail_SlimScroller1_c() : SlimScroller
      {
         var _loc1_:SlimScroller = new SlimScroller();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1 + 1 + 91) - 21) + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--§§pop() - 84 - 1 - 1 - 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.viewport = this._LeftRail_VGroup2_i();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LeftRail_VGroup2_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 54 + 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 110 * 118 + 88 + 1 + 1 - 1 - 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 113 * 100 * 98 - 89 + 1));
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(4);
         if(_loc3_)
         {
            §§push(((-§§pop() + 104 - 1) * 16 - 29 - 1) * 11);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._LeftRail_DataGroup1_i(),this._LeftRail_TabRenderer2_i(),this._LeftRail_Spacer4_c()];
         _loc1_.id = "seedKeywordsVGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.seedKeywordsVGroup = _loc1_;
         BindingManager.executeBindings(this,"seedKeywordsVGroup",this.seedKeywordsVGroup);
         return _loc1_;
      }
      
      private final function _LeftRail_DataGroup1_i() : DataGroup
      {
         var _loc1_:DataGroup = new DataGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(--(§§pop() - 66));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.itemRenderer = this._LeftRail_ClassFactory1_c();
         _loc1_.layout = this._LeftRail_VerticalLayout1_c();
         §§push(_loc1_);
         §§push("rollOverColor");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() - 57 + 73 + 1 + 108);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_LeftRail_DataGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LeftRail_DataGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_LeftRail_DataGroup1",this._LeftRail_DataGroup1);
         return _loc1_;
      }
      
      private final function _LeftRail_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = TabRenderer;
         return _loc1_;
      }
      
      private final function _LeftRail_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "contentJustify";
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() - 77 + 1) * 90);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 21 - 1 + 67 - 31);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 43 + 83 - 45 - 1 + 1));
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() * 24 * 52) + 79);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _LeftRail_TabRenderer2_i() : TabRenderer
      {
         var _loc1_:TabRenderer = new TabRenderer();
         _loc1_.label = "My Own Keywords";
         _loc1_.isOwnKeywordsTab = true;
         _loc1_.id = "_LeftRail_TabRenderer2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LeftRail_TabRenderer2 = _loc1_;
         BindingManager.executeBindings(this,"_LeftRail_TabRenderer2",this._LeftRail_TabRenderer2);
         return _loc1_;
      }
      
      private final function _LeftRail_Spacer4_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() * 80) - 1 - 1 + 1 - 86 - 23);
         }
         §§pop().width = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LeftRail_TabRenderer3_i() : TabRenderer
      {
         var _loc1_:TabRenderer = new TabRenderer();
         _loc1_.label = "All Favorites";
         _loc1_.isFavoritesTab = true;
         _loc1_.id = "_LeftRail_TabRenderer3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._LeftRail_TabRenderer3 = _loc1_;
         BindingManager.executeBindings(this,"_LeftRail_TabRenderer3",this._LeftRail_TabRenderer3);
         return _loc1_;
      }
      
      private final function _LeftRail_TabRenderer4_i() : TabRenderer
      {
         var _loc1_:TabRenderer = new TabRenderer();
         _loc1_.label = "All Trash";
         _loc1_.isTrashTab = true;
         _loc1_.id = "trashTab";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.trashTab = _loc1_;
         BindingManager.executeBindings(this,"trashTab",this.trashTab);
         return _loc1_;
      }
      
      private final function _LeftRail_Spacer5_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() * 76 + 1) * 59);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___LeftRail_VGroup1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
      }
      
      private final function _LeftRail_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 29 * 115 - 60);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return model.selectedProject;
         },null,"_LeftRail_Observe1.source");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 82 - 1) + 2) + 20 - 89);
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return onChangeProject;
         },null,"_LeftRail_Observe1.handler");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 79 + 1 + 86 - 46 + 1 + 69);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return viewModel.showGenerateKeywordsCallout;
         },null,"_LeftRail_Observe2.source");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-((§§pop() - 34 + 88) * 18 * 108));
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return onChangeShowGenerateKeywordsCallout;
         },null,"_LeftRail_Observe2.handler");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(--(§§pop() * 111 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.width;
         },null,"_LeftRail_Rect1.width");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 84 + 1 - 1 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return this.height;
         },null,"_LeftRail_Rect1.height");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() + 13 + 1 + 1 + 29);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            §§push(quickAddTI.text.length);
            §§push(0);
            if(_loc1_)
            {
               §§push(-(-(§§pop() - 27) - 35) * 66);
            }
            return §§pop() > §§pop();
         },null,"_LeftRail_Button2.enabled");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() * 96 - 48 + 107);
         }
         §§pop()[§§pop()] = new Binding(this,function():KeywordArrayCollection
         {
            return model.selectedProject.keywords;
         },null,"allKeywordsTab.keywords");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 102 + 1) - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return model.selectedProject.seedKeywords;
         },null,"_LeftRail_DataGroup1.dataProvider");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 100 - 103) - 52 + 60);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.ownKeywords && §§pop() > §§pop();
         },null,"_LeftRail_TabRenderer2.includeInLayout");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 8 + 13 + 44 - 1 - 33);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.ownKeywords && §§pop() > §§pop();
         },null,"_LeftRail_TabRenderer2.visible");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(-(§§pop() * 20 * 46) + 1 + 66);
         }
         §§pop()[§§pop()] = new Binding(this,function():KeywordArrayCollection
         {
            return model.selectedProject.ownKeywords;
         },null,"_LeftRail_TabRenderer2.keywords");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 59 - 1 + 103 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Class
         {
            return AssetsLibrary.YELLOW_STAR;
         },null,"_LeftRail_TabRenderer3.icon");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(§§pop() + 14 + 1 + 82 - 27 + 105);
         }
         §§pop()[§§pop()] = new Binding(this,function():KeywordArrayCollection
         {
            return model.allFavoriteKeywords;
         },null,"_LeftRail_TabRenderer3.keywords");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push(§§pop() * 51 + 1 - 1 - 1 + 108);
         }
         §§pop()[§§pop()] = new Binding(this,function():Class
         {
            return AssetsLibrary.TRASH_GRAY_ICON;
         },null,"trashTab.icon");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 2 + 107 + 1 - 58) - 69);
         }
         §§pop()[§§pop()] = new Binding(this,function():KeywordArrayCollection
         {
            return model.allTrashKeywords;
         },null,"trashTab.keywords");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get allKeywordsTab() : TabRenderer
      {
         return this._1991041238allKeywordsTab;
      }
      
      public function set allKeywordsTab(param1:TabRenderer) : void
      {
         var _loc2_:Object = this._1991041238allKeywordsTab;
         if(_loc2_ !== param1)
         {
            this._1991041238allKeywordsTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allKeywordsTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get generateKeywordsButton() : Button
      {
         return this._1725135953generateKeywordsButton;
      }
      
      public function set generateKeywordsButton(param1:Button) : void
      {
         var _loc2_:Object = this._1725135953generateKeywordsButton;
         if(_loc2_ !== param1)
         {
            this._1725135953generateKeywordsButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"generateKeywordsButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get quickAddTI() : TextInput
      {
         return this._1651471593quickAddTI;
      }
      
      public function set quickAddTI(param1:TextInput) : void
      {
         var _loc2_:Object = this._1651471593quickAddTI;
         if(_loc2_ !== param1)
         {
            this._1651471593quickAddTI = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quickAddTI",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get seedKeywordsVGroup() : VGroup
      {
         return this._944997572seedKeywordsVGroup;
      }
      
      public function set seedKeywordsVGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._944997572seedKeywordsVGroup;
         if(_loc2_ !== param1)
         {
            this._944997572seedKeywordsVGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seedKeywordsVGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get trashTab() : TabRenderer
      {
         return this._1285155133trashTab;
      }
      
      public function set trashTab(param1:TabRenderer) : void
      {
         var _loc2_:Object = this._1285155133trashTab;
         if(_loc2_ !== param1)
         {
            this._1285155133trashTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trashTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get model() : DataModel
      {
         return this._104069929model;
      }
      
      private function set model(param1:DataModel) : void
      {
         var _loc2_:Object = this._104069929model;
         if(_loc2_ !== param1)
         {
            this._104069929model = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"model",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      private function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
   }
}
