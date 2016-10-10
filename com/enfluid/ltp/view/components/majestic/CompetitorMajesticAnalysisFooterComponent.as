package com.enfluid.ltp.view.components.majestic
{
   import spark.components.BorderContainer;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Button;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.formatters.NumberFormatter;
   import mx.core.IFlexModuleFactory;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.collections.IList;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.model.vo.CompetitorColumnsVO;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import spark.layouts.HorizontalLayout;
   import flash.events.Event;
   import mx.effects.Sequence;
   import com.enfluid.ltp.view.skins.TransparentButtonSkin;
   import mx.graphics.LinearGradient;
   import spark.primitives.Rect;
   import spark.components.Group;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.CalcAllMajesticCompetitorAverage;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import system.data.maps.HashMap;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class CompetitorMajesticAnalysisFooterComponent extends BorderContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CompetitorMajesticAnalysisFooterComponent_Button1:Button;
      
      public var _CompetitorMajesticAnalysisFooterComponent_HGroup1:HGroup;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label10:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label11:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label12:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label2:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label3:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label4:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label5:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label6:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label7:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label8:Label;
      
      public var _CompetitorMajesticAnalysisFooterComponent_Label9:Label;
      
      private var _1060399231numberFormatter:NumberFormatter;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      private var _583189648headerColumns:IList;
      
      private var _1589792892viewModel:ViewModel;
      
      private var columnSelection:com.enfluid.ltp.view.components.majestic.KeywordColumnsSelection;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CompetitorMajesticAnalysisFooterComponent()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._CompetitorMajesticAnalysisFooterComponent_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_majestic_CompetitorMajesticAnalysisFooterComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CompetitorMajesticAnalysisFooterComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.backgroundFill = this._CompetitorMajesticAnalysisFooterComponent_SolidColor1_c();
         this.layout = this._CompetitorMajesticAnalysisFooterComponent_HorizontalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CompetitorMajesticAnalysisFooterComponent_Array1_c);
         this._CompetitorMajesticAnalysisFooterComponent_NumberFormatter1_i();
         this.addEventListener("creationComplete",this.___CompetitorMajesticAnalysisFooterComponent_BorderContainer1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 31 - 1) * 84 - 110);
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
         CompetitorMajesticAnalysisFooterComponent._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.borderVisible = false;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected final function exportCompetitorAnalysis_clickHandler(param1:MouseEvent) : void
      {
         new ExportDataGridCSVCommand(this.keyword.competitorURLs,this.keyword.strippedKeyword,Constants.COMPETITOR).execute();
      }
      
      private final function averageValueFormatter(param1:Number) : String
      {
         return isNaN(param1) || §§pop() < §§pop()?"-":this.numberFormatter.format(param1);
      }
      
      public final function validateWidth() : void
      {
         this.headerColumns;
      }
      
      public final function toggleColumnsSelection() : void
      {
      }
      
      private final function getColumnStatus(param1:*) : Boolean
      {
         if(param1 == null || param1 === "show")
         {
            return true;
         }
         return false;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_NumberFormatter1_i() : NumberFormatter
      {
         var _loc1_:NumberFormatter = new NumberFormatter();
         _loc1_.trailingZeros = false;
         _loc1_.initialized(this,"numberFormatter");
         this.numberFormatter = _loc1_;
         BindingManager.executeBindings(this,"numberFormatter",this.numberFormatter);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(6526128);
         if(_loc2_)
         {
            §§push((-§§pop() - 55) * 37 - 16 - 65);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 67 - 105) * 67 - 5 + 112);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 80 + 1 - 1 + 63);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Array1_c() : Array
      {
         var _loc1_:Array = [this._CompetitorMajesticAnalysisFooterComponent_HGroup1_i(),this._CompetitorMajesticAnalysisFooterComponent_Label2_i(),this._CompetitorMajesticAnalysisFooterComponent_Label3_i(),this._CompetitorMajesticAnalysisFooterComponent_Label4_i(),this._CompetitorMajesticAnalysisFooterComponent_Label5_i(),this._CompetitorMajesticAnalysisFooterComponent_Label6_i(),this._CompetitorMajesticAnalysisFooterComponent_Label7_i(),this._CompetitorMajesticAnalysisFooterComponent_Label8_i(),this._CompetitorMajesticAnalysisFooterComponent_Label9_i(),this._CompetitorMajesticAnalysisFooterComponent_Label10_i(),this._CompetitorMajesticAnalysisFooterComponent_Label11_i(),this._CompetitorMajesticAnalysisFooterComponent_Label12_i()];
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 82 - 65 + 1 - 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._CompetitorMajesticAnalysisFooterComponent_Button1_i(),this._CompetitorMajesticAnalysisFooterComponent_Label1_c()];
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_HGroup1",this._CompetitorMajesticAnalysisFooterComponent_HGroup1);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push((-§§pop() - 57 + 1) * 32);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(§§pop() + 100 - 1 - 97 - 58 - 40);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 28);
         }
         §§pop().left = §§pop();
         _loc1_.toolTip = "Export Competitor Analysis";
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.setStyle("skinClass",TransparentButtonSkin);
         _loc1_.addEventListener("click",this.___CompetitorMajesticAnalysisFooterComponent_Button1_click);
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Button1",this._CompetitorMajesticAnalysisFooterComponent_Button1);
         return _loc1_;
      }
      
      public final function ___CompetitorMajesticAnalysisFooterComponent_Button1_click(param1:MouseEvent) : void
      {
         this.exportCompetitorAnalysis_clickHandler(param1);
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 + 24) * 3);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 110 - 1 - 1 - 64 + 87);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.text = "Averages";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(--((§§pop() + 1) * 33) * 62));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 79) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","right");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 41 - 6 + 112);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 114 + 30 - 34);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1 - 23 - 117) - 27 + 28);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label2",this._CompetitorMajesticAnalysisFooterComponent_Label2);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 102) - 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 + 109) - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) + 1) - 47 + 44 + 75);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label3 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label3",this._CompetitorMajesticAnalysisFooterComponent_Label3);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label4_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 94 - 67 + 1) + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1 + 1 - 112 - 101) * 95);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label4 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label4",this._CompetitorMajesticAnalysisFooterComponent_Label4);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label5_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() * 4 - 1 - 1) - 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() * 60 * 76) + 73 + 12 + 101 - 59);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() * 82 + 56 - 98) * 104);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label5 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label5",this._CompetitorMajesticAnalysisFooterComponent_Label5);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label6_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(--(§§pop() - 109));
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(§§pop() * 29 + 40 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push((§§pop() + 95 + 56 + 1 - 1) * 52);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label6 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label6",this._CompetitorMajesticAnalysisFooterComponent_Label6);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label7_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 - 47 - 1) * 45 - 1 + 24));
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() - 14 - 21 + 109) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push(((§§pop() + 1) * 3 - 108) * 0 - 39);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label7 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label7",this._CompetitorMajesticAnalysisFooterComponent_Label7);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label8_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() * 27) + 98);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 115) * 71 + 0));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1 + 1) - 66);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label8 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label8",this._CompetitorMajesticAnalysisFooterComponent_Label8);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label9_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1 + 39 + 40) + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() - 95) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push(-((-§§pop() * 50 + 1) * 70) - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label9 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label9",this._CompetitorMajesticAnalysisFooterComponent_Label9);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label10_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 1 + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(--§§pop() * 95);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() + 11 + 1) - 99);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label10";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label10 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label10",this._CompetitorMajesticAnalysisFooterComponent_Label10);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label11_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 67 - 102 + 11 - 112) + 101);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push((§§pop() + 20) * 21 * 55 - 82);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 46) * 52 + 1 - 14 + 6);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label11";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label11 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label11",this._CompetitorMajesticAnalysisFooterComponent_Label11);
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_Label12_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(((§§pop() - 16) * 103 - 75) * 72 - 44);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 93 - 98));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push(§§pop() * 49 * 7 - 30 + 1 - 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorMajesticAnalysisFooterComponent_Label12";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorMajesticAnalysisFooterComponent_Label12 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorMajesticAnalysisFooterComponent_Label12",this._CompetitorMajesticAnalysisFooterComponent_Label12);
         return _loc1_;
      }
      
      public final function ___CompetitorMajesticAnalysisFooterComponent_BorderContainer1_creationComplete(param1:FlexEvent) : void
      {
         this.validateWidth();
         new CalcAllMajesticCompetitorAverage(this.keyword).execute();
      }
      
      private final function _CompetitorMajesticAnalysisFooterComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() + 55) + 1 + 1 - 49) * 45);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() + 100 - 1 + 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_HGroup1.width");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 70) * 35) + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.EXPORT;
         },function(param1:Object):void
         {
            _CompetitorMajesticAnalysisFooterComponent_Button1.setStyle("icon",param1);
         },"_CompetitorMajesticAnalysisFooterComponent_Button1.icon");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 1) * 111 * 80) * 11 + 46);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(1);
            if(_loc1_)
            {
               §§push(§§pop() * 60 + 24 + 67 - 112 - 77);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label2.width");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 94 - 42 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = averageValueFormatter(keyword.competitorAnalysisAverages.majestic_kc);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label2.text");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push((§§pop() + 17 - 1) * 73);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(2);
            if(_loc1_)
            {
               §§push(§§pop() + 42 + 111 - 1 + 1 + 1 + 1 + 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label3.width");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 58);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.trust_flow)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.trust_flow);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label3.text");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(-((-§§pop() + 85) * 45));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(3);
            if(_loc1_)
            {
               §§push(-((-(§§pop() * 92 * 16 * 19) - 1) * 45));
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label4.width");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 82 + 1) - 1 - 94);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.citation_flow)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.citation_flow);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label4.text");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 18) - 97);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(4);
            if(_loc1_)
            {
               §§push(-(§§pop() + 1 + 10 + 1) - 50 + 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label5.width");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1) * 23 + 19 - 29);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.domain_citation)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.domain_citation);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label5.text");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 17) - 57);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(5);
            if(_loc1_)
            {
               §§push(§§pop() + 1 + 86 + 21 - 1 - 104 + 1 - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label6.width");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(§§pop() - 61 - 10 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.domain_trust)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.domain_trust);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label6.text");
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 89) * 61 - 1 - 119);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(6);
            if(_loc1_)
            {
               §§push(-(-((§§pop() * 7 + 80) * 67) - 101 - 1));
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label7.width");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(--(-§§pop() * 62 - 115 + 35));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.external_backlinks)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.external_backlinks);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label7.text");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() + 59 - 79) * 4 - 45 - 1 + 11);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(7);
            if(_loc1_)
            {
               §§push(-(-((§§pop() - 4 + 67) * 103) - 1) * 55);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label8.width");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 + 34) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.referring_domains)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.referring_domains);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label8.text");
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push(((§§pop() - 33 - 115) * 39 + 75 + 75) * 19 * 61);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(8);
            if(_loc2_)
            {
               §§push(-§§pop() + 111 + 1 - 19);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label9.width");
         §§push(result);
         §§push(17);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 12 - 1 - 54 - 9) * 86 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.external_edu_gov)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.external_edu_gov);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label9.text");
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push((§§pop() - 45) * 5 - 1 + 75 + 1 - 23 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(9);
            if(_loc1_)
            {
               §§push(-(§§pop() + 1 - 9 - 1));
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label10.width");
         §§push(result);
         §§push(19);
         if(_loc3_)
         {
            §§push(§§pop() + 53 - 6 - 12);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.internal_links)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.internal_links);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label10.text");
         §§push(result);
         §§push(20);
         if(_loc2_)
         {
            §§push(-(§§pop() - 83 + 55 + 119));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(10);
            if(_loc1_)
            {
               §§push(§§pop() + 1 + 32 - 1 + 20 + 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label11.width");
         §§push(result);
         §§push(21);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 76 - 79 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.indexed_urls)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.indexed_urls);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label11.text");
         §§push(result);
         §§push(22);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1 - 1 - 44 + 48 + 107) * 37);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(11);
            if(_loc2_)
            {
               §§push(-(§§pop() * 79 - 1 + 1 - 24 + 1) - 31);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label12.width");
         §§push(result);
         §§push(23);
         if(_loc3_)
         {
            §§push((---(§§pop() * 117) + 1) * 84);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.siteAgeAvg)?"-":averageValueFormatter(keyword.competitorAnalysisAverages.siteAgeAvg);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorMajesticAnalysisFooterComponent_Label12.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberFormatter() : NumberFormatter
      {
         return this._1060399231numberFormatter;
      }
      
      public function set numberFormatter(param1:NumberFormatter) : void
      {
         var _loc2_:Object = this._1060399231numberFormatter;
         if(_loc2_ !== param1)
         {
            this._1060399231numberFormatter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberFormatter",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keyword() : KeywordVO
      {
         return this._814408215keyword;
      }
      
      public function set keyword(param1:KeywordVO) : void
      {
         var _loc2_:Object = this._814408215keyword;
         if(_loc2_ !== param1)
         {
            this._814408215keyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keyword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerColumns() : IList
      {
         return this._583189648headerColumns;
      }
      
      public function set headerColumns(param1:IList) : void
      {
         var _loc2_:Object = this._583189648headerColumns;
         if(_loc2_ !== param1)
         {
            this._583189648headerColumns = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerColumns",_loc2_,param1));
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
