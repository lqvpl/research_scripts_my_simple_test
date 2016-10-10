package com.enfluid.ltp.view.RankChecker
{
   import spark.components.BorderContainer;
   import mx.binding.IBindingClient;
   import spark.components.gridClasses.GridColumn;
   import mx.utils.StringUtil;
   import com.enfluid.ltp.model.constants.RankCheckConstants;
   import flash.events.TimerEvent;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.view.components.LTPProgressButton;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.binding.BindingManager;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Button;
   import spark.components.HGroup;
   import com.adobe.cairngorm.observer.Observe;
   import spark.components.DataGrid;
   import com.enfluid.ltp.view.components.Spinner;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import com.enfluid.ltp.model.ViewModel;
   import mx.collections.ArrayCollection;
   import spark.components.Label;
   import flash.utils.ByteArray;
   import spark.layouts.HorizontalLayout;
   import mx.graphics.SolidColorStroke;
   import spark.components.VGroup;
   import spark.primitives.RectangularDropShadow;
   import spark.components.Scroller;
   import mx.collections.XMLListCollection;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.skins.FindKeywordsButtonSkin;
   import com.enfluid.ltp.controller.rankchecker.CheckAllRanksCommand;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import mx.rpc.http.HTTPService;
   import mx.rpc.events.ResultEvent;
   import mx.rpc.events.FaultEvent;
   import com.enfluid.ltp.util.GooglePageRankUtil;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.controller.common.CancelCheckAllRanksCommand;
   import spark.events.DropDownEvent;
   import com.enfluid.ltp.view.skins.TransparentButtonSkin;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatHeaderRenderer;
   import spark.primitives.BitmapImage;
   import mx.core.IVisualElement;
   import spark.components.ArrowDirection;
   import spark.components.CalloutPosition;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.events.Event;
   import com.enfluid.ltp.view.renderers.DeleteColumnRenderer;
   import com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatDeleteColumnHeaderRenderer;
   import mx.events.FlexEvent;
   import system.data.collections.formatter;
   import spark.components.Group;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.collections.IList;
   import mx.controls.scrollClasses.ScrollBar;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public final class RankCheckView extends BorderContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _RankCheckView_Button1:Button;
      
      public var _RankCheckView_Button3:Button;
      
      public var _RankCheckView_GridColumn1:GridColumn;
      
      public var _RankCheckView_GridColumn2:GridColumn;
      
      public var _RankCheckView_GridColumn3:GridColumn;
      
      public var _RankCheckView_GridColumn4:GridColumn;
      
      public var _RankCheckView_GridColumn5:GridColumn;
      
      public var _RankCheckView_GridColumn6:GridColumn;
      
      public var _RankCheckView_HGroup1:HGroup;
      
      public var _RankCheckView_Observe1:Observe;
      
      private var _519942052resultsGrid:DataGrid;
      
      private var _2004438503spinner:Spinner;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _720643868rankCheckItems:ArrayCollection;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RankCheckView()
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
         var bindings:Array = this._RankCheckView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_RankChecker_RankCheckViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RankCheckView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 74 - 1 + 106 - 111 + 1 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(§§pop() * 69 + 1 + 1 - 30 - 40 + 111);
         }
         §§pop().percentHeight = §§pop();
         this.layout = this._RankCheckView_HorizontalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._RankCheckView_Array1_c);
         this._RankCheckView_Observe1_i();
         this.addEventListener("show",this.___RankCheckView_BorderContainer1_show);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-(§§pop() - 96) * 68 - 103));
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function rankCheckSortCompare(param1:Object, param2:Object, param3:GridColumn) : int
      {
         var _loc4_:String = StringUtil.trim(param1[param3.dataField]);
         var _loc5_:String = StringUtil.trim(param2[param3.dataField]);
         return compareFunction(_loc4_,_loc5_);
      }
      
      public static function compareFunction(param1:String, param2:String) : int
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() * 9 - 1));
         }
         var _loc3_:* = §§pop();
         _loc3_ = int(rankCheckStringCompare(param1,param2));
         return !!_loc3_?int(_loc3_):int(rankCheckNumberCompare(param1,param2));
      }
      
      public static function rankCheckStringCompare(param1:String, param2:String) : int
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-§§pop() - 1));
         }
         var _loc3_:* = §§pop();
         if(valueIsEmptyString(param1) && valueIsEmptyString(param2) || param1 == RankCheckConstants.OVER_250 && param2 == RankCheckConstants.OVER_250)
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(-(--(§§pop() + 99) * 97) + 116);
            }
            _loc3_ = §§pop();
         }
         else if(valueIsEmptyString(param1))
         {
            §§push(-1);
            if(_loc4_)
            {
               §§push(--(-§§pop() + 1 - 1 - 1));
            }
            _loc3_ = §§pop();
         }
         else if(valueIsEmptyString(param2))
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(§§pop() - 51 + 83 - 1 - 29 + 1 + 6);
            }
            _loc3_ = §§pop();
         }
         else if(param1 == RankCheckConstants.OVER_250)
         {
            §§push(-1);
            if(_loc5_)
            {
               §§push(--(§§pop() - 71));
            }
            _loc3_ = §§pop();
         }
         else if(param2 == RankCheckConstants.OVER_250)
         {
            §§push(1);
            if(_loc5_)
            {
               §§push((§§pop() + 1 + 1 + 109 - 1) * 31 - 1);
            }
            _loc3_ = §§pop();
         }
         return _loc3_;
      }
      
      public static function rankCheckNumberCompare(param1:String, param2:String) : int
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() * 12 + 44 - 1);
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Number(param1);
         var _loc5_:Number = Number(param2);
         if(_loc4_ > _loc5_)
         {
            §§push(-1);
            if(_loc7_)
            {
               §§push(-(§§pop() - 100) - 11);
            }
            _loc3_ = §§pop();
         }
         else if(_loc4_ == _loc5_)
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() + 1 - 7 + 1 + 1 + 1);
            }
            _loc3_ = §§pop();
         }
         else
         {
            §§push(1);
            if(_loc6_)
            {
               §§push(§§pop() + 1 + 47 + 1 - 66);
            }
            _loc3_ = §§pop();
         }
         return _loc3_;
      }
      
      public static function valueIsEmptyString(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         if("" === _loc3_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(-§§pop() + 82 - 54 + 17 + 1);
            }
         }
         else if(RankCheckConstants.FETCHING_ERROR === _loc3_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push((--(§§pop() - 55) - 1) * 110);
            }
         }
         else
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(§§pop() + 17 - 70 + 54 - 1 - 103 + 64 + 11);
            }
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               _loc2_ = true;
         }
         return _loc2_;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         RankCheckView._watcherSetupUtil = param1;
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
      
      private final function onShow() : void
      {
         callLater(this.removeItems);
      }
      
      private final function removeItems() : void
      {
         this.rankCheckItems = new ArrayCollection();
         callLater(this.restoreItems);
      }
      
      private final function restoreItems() : void
      {
         this.rankCheckItems = this.model.rankCheckItems;
      }
      
      private final function _RankCheckView_Observe1_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         _loc1_.handler = this.removeItems;
         _loc1_.sendArgumentsToHandler = false;
         this._RankCheckView_Observe1 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_Observe1",this._RankCheckView_Observe1);
         return _loc1_;
      }
      
      private final function _RankCheckView_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 1 - 1 + 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push((§§pop() + 118) * 11 - 1 + 68);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 114 + 1 + 71 + 1 + 1 + 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() + 49 - 22 + 53 + 75 - 8);
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 24) * 104 + 1 - 85));
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _RankCheckView_Array1_c() : Array
      {
         var _loc1_:Array = [this._RankCheckView_VGroup1_c(),this._RankCheckView_DataGrid1_i()];
         return _loc1_;
      }
      
      private final function _RankCheckView_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(300);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 100 - 1 + 1) * 20);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 47 - 113) + 1 + 1 - 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.horizontalAlign = "right";
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 19 - 1));
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._RankCheckView_Scroller1_c(),this._RankCheckView_Button3_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckView_Scroller1_c() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(-§§pop() + 1) * 66 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) * 62);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.viewport = this._RankCheckView_VGroup2_c();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckView_VGroup2_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._RankCheckView_AddRankCheckerItemPanel1_c(),this._RankCheckView_RankCheckerSettingsPanel1_c(),this._RankCheckView_Button1_i(),this._RankCheckView_HGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckView_AddRankCheckerItemPanel1_c() : AddRankCheckerItemPanel
      {
         var _loc1_:AddRankCheckerItemPanel = new AddRankCheckerItemPanel();
         _loc1_.title = "Add";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckView_RankCheckerSettingsPanel1_c() : RankCheckerSettingsPanel
      {
         var _loc1_:RankCheckerSettingsPanel = new RankCheckerSettingsPanel();
         _loc1_.title = "Settings";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckView_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 102 + 1 + 1 + 49 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(60);
         if(_loc3_)
         {
            §§push(-(§§pop() - 5 + 1 - 32 - 61) + 112);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Check Ranks";
         _loc1_.setStyle("skinClass",FindKeywordsButtonSkin);
         _loc1_.addEventListener("click",this.___RankCheckView_Button1_click);
         _loc1_.id = "_RankCheckView_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RankCheckView_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_Button1",this._RankCheckView_Button1);
         return _loc1_;
      }
      
      public final function ___RankCheckView_Button1_click(param1:MouseEvent) : void
      {
         new CheckAllRanksCommand().execute();
      }
      
      private final function _RankCheckView_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 1 + 118 - 1) * 86));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-((-(§§pop() + 1) - 1 - 1) * 7) * 59);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._RankCheckView_Spinner1_i(),this._RankCheckView_Label1_c(),this._RankCheckView_Button2_c()];
         _loc1_.id = "_RankCheckView_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RankCheckView_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_HGroup1",this._RankCheckView_HGroup1);
         return _loc1_;
      }
      
      private final function _RankCheckView_Spinner1_i() : Spinner
      {
         var _loc1_:Spinner = new Spinner();
         §§push(_loc1_);
         §§push(24);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 38));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(24);
         if(_loc2_)
         {
            §§push(-(((§§pop() * 106 + 39) * 73 - 1 - 65) * 6));
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(18);
         if(_loc2_)
         {
            §§push(-(-((§§pop() + 73) * 88) + 1 - 99) + 1);
         }
         §§pop().size = §§pop();
         §§push(_loc1_);
         §§push(12);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 1) * 26 * 35));
         }
         §§pop().numTicks = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() - 94) + 1));
         }
         §§pop().tickWidth = §§pop();
         §§push(_loc1_);
         §§push(600);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1) + 1);
         }
         §§pop().speed = §§pop();
         §§push(_loc1_);
         §§push(1200);
         if(_loc2_)
         {
            §§push(-(§§pop() * 111 + 1));
         }
         §§pop().fadeSpeed = §§pop();
         §§push(_loc1_);
         §§push("tickColor");
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() - 74) * 39 + 20 + 64 - 1 + 68);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "spinner";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.spinner = _loc1_;
         BindingManager.executeBindings(this,"spinner",this.spinner);
         return _loc1_;
      }
      
      private final function _RankCheckView_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 1 - 1 - 80 + 21 - 80);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Checking Ranks...";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1 - 1 + 1 - 36 - 38));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RankCheckView_Button2_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 74) - 56);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1) + 1);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Cancel";
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push(-(-((§§pop() + 23 - 111) * 44) - 115));
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 86 * 60 - 1 - 59);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("cornerRadius");
         §§push(5);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 54 + 1) + 42 + 1 + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         §§push(_loc1_);
         §§push("chromeColor");
         §§push(16771899);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1) * 100 - 62 - 93);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.___RankCheckView_Button2_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___RankCheckView_Button2_click(param1:MouseEvent) : void
      {
         new CancelCheckAllRanksCommand().execute();
      }
      
      private final function _RankCheckView_Button3_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(40);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 - 1) * 33);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc3_)
         {
            §§push(-(§§pop() + 0 - 1 + 1 + 28));
         }
         §§pop().height = §§pop();
         _loc1_.toolTip = "Export Keywords as CSV";
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.mouseChildren = false;
         _loc1_.setStyle("skinClass",TransparentButtonSkin);
         _loc1_.addEventListener("click",this.___RankCheckView_Button3_click);
         _loc1_.id = "_RankCheckView_Button3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RankCheckView_Button3 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_Button3",this._RankCheckView_Button3);
         return _loc1_;
      }
      
      public final function ___RankCheckView_Button3_click(param1:MouseEvent) : void
      {
         new ExportDataGridCSVCommand(this.resultsGrid.dataProvider,"rank-checker",Constants.RANK_CHECKER).execute();
      }
      
      private final function _RankCheckView_DataGrid1_i() : DataGrid
      {
         var _loc1_:DataGrid = new DataGrid();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 99 - 48 - 1 - 111);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-(-(§§pop() * 54) + 108) * 113));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.styleName = "GridBackgroundAlternatingRowColors";
         _loc1_.resizableColumns = false;
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((§§pop() * 104 + 100 + 1 - 7) * 5 + 1);
         }
         §§pop().rowHeight = §§pop();
         _loc1_.columns = this._RankCheckView_ArrayList1_c();
         _loc1_.setStyle("horizontalScrollPolicy","off");
         _loc1_.setStyle("verticalScrollPolicy","on");
         _loc1_.id = "resultsGrid";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.resultsGrid = _loc1_;
         BindingManager.executeBindings(this,"resultsGrid",this.resultsGrid);
         return _loc1_;
      }
      
      private final function _RankCheckView_ArrayList1_c() : ArrayList
      {
         var _loc1_:ArrayList = new ArrayList();
         _loc1_.source = [this._RankCheckView_GridColumn1_i(),this._RankCheckView_GridColumn2_i(),this._RankCheckView_GridColumn3_i(),this._RankCheckView_GridColumn4_i(),this._RankCheckView_GridColumn5_i(),this._RankCheckView_GridColumn6_i()];
         return _loc1_;
      }
      
      private final function _RankCheckView_GridColumn1_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.headerText = "Domain or Url";
         _loc1_.dataField = "domain";
         _loc1_.headerRenderer = this._RankCheckView_ClassFactory1_c();
         this._RankCheckView_GridColumn1 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_GridColumn1",this._RankCheckView_GridColumn1);
         return _loc1_;
      }
      
      private final function _RankCheckView_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatHeaderRenderer;
         return _loc1_;
      }
      
      private final function _RankCheckView_GridColumn2_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.headerText = "Search Term";
         _loc1_.dataField = "searchTerm";
         _loc1_.headerRenderer = this._RankCheckView_ClassFactory2_c();
         this._RankCheckView_GridColumn2 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_GridColumn2",this._RankCheckView_GridColumn2);
         return _loc1_;
      }
      
      private final function _RankCheckView_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatHeaderRenderer;
         return _loc1_;
      }
      
      private final function _RankCheckView_GridColumn3_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.headerText = "Google";
         _loc1_.dataField = "googleRank";
         _loc1_.sortCompareFunction = rankCheckSortCompare;
         _loc1_.headerRenderer = this._RankCheckView_ClassFactory3_c();
         this._RankCheckView_GridColumn3 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_GridColumn3",this._RankCheckView_GridColumn3);
         return _loc1_;
      }
      
      private final function _RankCheckView_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatHeaderRenderer;
         return _loc1_;
      }
      
      private final function _RankCheckView_GridColumn4_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.headerText = "Yahoo!";
         _loc1_.sortCompareFunction = rankCheckSortCompare;
         _loc1_.dataField = "yahooRank";
         _loc1_.headerRenderer = this._RankCheckView_ClassFactory4_c();
         this._RankCheckView_GridColumn4 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_GridColumn4",this._RankCheckView_GridColumn4);
         return _loc1_;
      }
      
      private final function _RankCheckView_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatHeaderRenderer;
         return _loc1_;
      }
      
      private final function _RankCheckView_GridColumn5_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.headerText = "Bing";
         _loc1_.sortCompareFunction = rankCheckSortCompare;
         _loc1_.dataField = "bingRank";
         _loc1_.headerRenderer = this._RankCheckView_ClassFactory5_c();
         this._RankCheckView_GridColumn5 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_GridColumn5",this._RankCheckView_GridColumn5);
         return _loc1_;
      }
      
      private final function _RankCheckView_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatHeaderRenderer;
         return _loc1_;
      }
      
      private final function _RankCheckView_GridColumn6_i() : GridColumn
      {
         var _loc1_:GridColumn = new GridColumn();
         _loc1_.sortable = false;
         _loc1_.itemRenderer = this._RankCheckView_ClassFactory6_c();
         _loc1_.headerRenderer = this._RankCheckView_ClassFactory7_c();
         this._RankCheckView_GridColumn6 = _loc1_;
         BindingManager.executeBindings(this,"_RankCheckView_GridColumn6",this._RankCheckView_GridColumn6);
         return _loc1_;
      }
      
      private final function _RankCheckView_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DeleteColumnRenderer;
         return _loc1_;
      }
      
      private final function _RankCheckView_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = FlatDeleteColumnHeaderRenderer;
         return _loc1_;
      }
      
      public final function ___RankCheckView_BorderContainer1_show(param1:FlexEvent) : void
      {
         this.onShow();
      }
      
      private final function _RankCheckView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 39) * 78 * 97);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return model.gridDataChanged;
         },null,"_RankCheckView_Observe1.source");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(§§pop() * 61 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isCheckingRanks;
         },null,"_RankCheckView_Button1.enabled");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 20 - 31 + 54) + 1 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isCheckingRanks;
         },null,"_RankCheckView_HGroup1.visible");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 6 + 1 - 10 - 1 + 55) * 15 + 35);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isCheckingRanks;
         },null,"spinner.pause");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() - 41 + 49) - 47 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.RANK_EXPORT_ICON;
         },function(param1:Object):void
         {
            _RankCheckView_Button3.setStyle("icon",param1);
         },"_RankCheckView_Button3.icon");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(---((--§§pop() - 1) * 98));
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return rankCheckItems;
         },null,"resultsGrid.dataProvider");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(--(§§pop() - 118) * 54);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (resultsGrid.width - ScrollBar.THICKNESS) * 0.3;
         },null,"_RankCheckView_GridColumn1.width");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(§§pop() + 52 + 1 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (resultsGrid.width - ScrollBar.THICKNESS) * 0.3;
         },null,"_RankCheckView_GridColumn2.width");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 0 * 0 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (resultsGrid.width - ScrollBar.THICKNESS) * 0.11;
         },null,"_RankCheckView_GridColumn3.width");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() + 78 - 35));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (resultsGrid.width - ScrollBar.THICKNESS) * 0.11;
         },null,"_RankCheckView_GridColumn4.width");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() + 116 - 1 - 52) * 119 * 107);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (resultsGrid.width - ScrollBar.THICKNESS) * 0.11;
         },null,"_RankCheckView_GridColumn5.width");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push((§§pop() + 84 + 79 - 84) * 19 + 28);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return (resultsGrid.width - ScrollBar.THICKNESS) * 0.07;
         },null,"_RankCheckView_GridColumn6.width");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get resultsGrid() : DataGrid
      {
         return this._519942052resultsGrid;
      }
      
      public function set resultsGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._519942052resultsGrid;
         if(_loc2_ !== param1)
         {
            this._519942052resultsGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resultsGrid",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      private function get rankCheckItems() : ArrayCollection
      {
         return this._720643868rankCheckItems;
      }
      
      private function set rankCheckItems(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._720643868rankCheckItems;
         if(_loc2_ !== param1)
         {
            this._720643868rankCheckItems = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankCheckItems",_loc2_,param1));
            }
         }
      }
   }
}
