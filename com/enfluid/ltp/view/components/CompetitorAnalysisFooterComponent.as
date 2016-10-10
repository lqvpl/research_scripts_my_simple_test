package com.enfluid.ltp.view.components
{
   import spark.components.BorderContainer;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Button;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.formatters.NumberFormatter;
   import mx.core.IFlexModuleFactory;
   import mx.graphics.RadialGradient;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.collections.IList;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import spark.layouts.HorizontalLayout;
   import com.enfluid.ltp.view.skins.TransparentButtonSkin;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.ProjectDropDownItemRenderer;
   import mx.binding.Binding;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.view.SetDefaultSection;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.competitoranalysis.CalcAllCompetitorAnalysisAverages;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class CompetitorAnalysisFooterComponent extends BorderContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CompetitorAnalysisFooterComponent_Button1:Button;
      
      public var _CompetitorAnalysisFooterComponent_HGroup1:HGroup;
      
      public var _CompetitorAnalysisFooterComponent_Label2:Label;
      
      public var _CompetitorAnalysisFooterComponent_Label3:Label;
      
      public var _CompetitorAnalysisFooterComponent_Label4:Label;
      
      public var _CompetitorAnalysisFooterComponent_Label5:Label;
      
      public var _CompetitorAnalysisFooterComponent_Label6:Label;
      
      public var _CompetitorAnalysisFooterComponent_Label7:Label;
      
      public var _CompetitorAnalysisFooterComponent_Label8:Label;
      
      public var _CompetitorAnalysisFooterComponent_Label9:Label;
      
      private var _1060399231numberFormatter:NumberFormatter;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      private var _583189648headerColumns:IList;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CompetitorAnalysisFooterComponent()
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
         var bindings:Array = this._CompetitorAnalysisFooterComponent_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_CompetitorAnalysisFooterComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CompetitorAnalysisFooterComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.backgroundFill = this._CompetitorAnalysisFooterComponent_SolidColor1_c();
         this.layout = this._CompetitorAnalysisFooterComponent_HorizontalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CompetitorAnalysisFooterComponent_Array1_c);
         this._CompetitorAnalysisFooterComponent_NumberFormatter1_i();
         this.addEventListener("creationComplete",this.___CompetitorAnalysisFooterComponent_BorderContainer1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() - 1 + 83);
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
         CompetitorAnalysisFooterComponent._watcherSetupUtil = param1;
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
      
      private final function _CompetitorAnalysisFooterComponent_NumberFormatter1_i() : NumberFormatter
      {
         var _loc1_:NumberFormatter = new NumberFormatter();
         _loc1_.trailingZeros = false;
         _loc1_.initialized(this,"numberFormatter");
         this.numberFormatter = _loc1_;
         BindingManager.executeBindings(this,"numberFormatter",this.numberFormatter);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_SolidColor1_c() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         §§push(_loc1_);
         §§push(6526128);
         if(_loc2_)
         {
            §§push((§§pop() - 46 - 100 + 1) * 53 + 80);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 33 + 48 + 57) * 19 - 1);
         }
         §§pop().alpha = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 58 + 1 - 88);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_Array1_c() : Array
      {
         var _loc1_:Array = [this._CompetitorAnalysisFooterComponent_HGroup1_i(),this._CompetitorAnalysisFooterComponent_Label2_i(),this._CompetitorAnalysisFooterComponent_Label3_i(),this._CompetitorAnalysisFooterComponent_Label4_i(),this._CompetitorAnalysisFooterComponent_Label5_i(),this._CompetitorAnalysisFooterComponent_Label6_i(),this._CompetitorAnalysisFooterComponent_Label7_i(),this._CompetitorAnalysisFooterComponent_Label8_i(),this._CompetitorAnalysisFooterComponent_Label9_i()];
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 60 * 103 - 74 + 1) * 39);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._CompetitorAnalysisFooterComponent_Button1_i(),this._CompetitorAnalysisFooterComponent_Label1_c()];
         _loc1_.id = "_CompetitorAnalysisFooterComponent_HGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_HGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_HGroup1",this._CompetitorAnalysisFooterComponent_HGroup1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() + 28 - 65 - 107);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-§§pop() + 12 - 38 + 98 + 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 84 + 83);
         }
         §§pop().left = §§pop();
         _loc1_.toolTip = "Export Competitor Analysis";
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.setStyle("skinClass",TransparentButtonSkin);
         _loc1_.addEventListener("click",this.___CompetitorAnalysisFooterComponent_Button1_click);
         _loc1_.id = "_CompetitorAnalysisFooterComponent_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_Button1",this._CompetitorAnalysisFooterComponent_Button1);
         return _loc1_;
      }
      
      public final function ___CompetitorAnalysisFooterComponent_Button1_click(param1:MouseEvent) : void
      {
         this.exportCompetitorAnalysis_clickHandler(param1);
      }
      
      private final function _CompetitorAnalysisFooterComponent_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((§§pop() - 96 - 1 + 17 - 1) * 69 - 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 73) * 88));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.text = "Averages";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 112 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(§§pop() - 85 + 95 - 1 + 71);
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
      
      private final function _CompetitorAnalysisFooterComponent_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 91 + 1 + 41 - 99);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 24 - 1 - 69);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push(-((§§pop() - 90 + 85) * 58 * 69) - 1 - 24);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisFooterComponent_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_Label2",this._CompetitorAnalysisFooterComponent_Label2);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((§§pop() - 39) * 95) - 91 + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 1 - 24 - 1) * 86));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(((§§pop() - 104) * 29 - 1 + 1 - 1) * 33);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisFooterComponent_Label3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_Label3 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_Label3",this._CompetitorAnalysisFooterComponent_Label3);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_Label4_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 23 - 1 + 1) * 30 - 1 + 11);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push((--(§§pop() + 57) - 1) * 94 - 34 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() + 8 + 1) * 28 - 78 + 48);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisFooterComponent_Label4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_Label4 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_Label4",this._CompetitorAnalysisFooterComponent_Label4);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_Label5_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(((§§pop() + 1 - 16) * 57 - 1 - 33) * 4);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-((§§pop() + 42 + 1) * 4) * 56);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push((--§§pop() - 111) * 16);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisFooterComponent_Label5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_Label5 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_Label5",this._CompetitorAnalysisFooterComponent_Label5);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_Label6_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(--((§§pop() + 1 - 1 - 1) * 75 - 1));
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 55 + 1) * 99);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 84 - 67);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisFooterComponent_Label6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_Label6 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_Label6",this._CompetitorAnalysisFooterComponent_Label6);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_Label7_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 78 + 102 - 1) * 90 + 1 + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(§§pop() + 55 - 104 + 1 - 12) + 77);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() - 63 + 1 + 47 - 3) * 44);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisFooterComponent_Label7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_Label7 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_Label7",this._CompetitorAnalysisFooterComponent_Label7);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_Label8_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 + 1) - 16 + 79 - 43));
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc3_)
         {
            §§push(§§pop() - 107 + 90 + 38 + 98 - 1 + 96);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 - 66 + 1) * 73);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisFooterComponent_Label8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_Label8 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_Label8",this._CompetitorAnalysisFooterComponent_Label8);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisFooterComponent_Label9_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 5 - 56 + 10) * 42 - 1 + 1);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-§§pop() - 70 - 35);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(12);
         if(_loc3_)
         {
            §§push(§§pop() * 31 - 67 - 1 + 1 - 1 - 1 + 18);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisFooterComponent_Label9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisFooterComponent_Label9 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisFooterComponent_Label9",this._CompetitorAnalysisFooterComponent_Label9);
         return _loc1_;
      }
      
      public final function ___CompetitorAnalysisFooterComponent_BorderContainer1_creationComplete(param1:FlexEvent) : void
      {
         new CalcAllCompetitorAnalysisAverages(this.keyword).execute();
      }
      
      private final function _CompetitorAnalysisFooterComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 30 + 1) * 48 + 110 - 1 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(0);
            if(_loc1_)
            {
               §§push(-(§§pop() * 69 * 94));
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisFooterComponent_HGroup1.width");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() * 54 * 74 - 1) * 81 + 1 - 103);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.EXPORT;
         },function(param1:Object):void
         {
            _CompetitorAnalysisFooterComponent_Button1.setStyle("icon",param1);
         },"_CompetitorAnalysisFooterComponent_Button1.icon");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 + 1) * 69 + 103);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(1);
            if(_loc2_)
            {
               §§push(§§pop() * 88 + 1 - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisFooterComponent_Label2.width");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 83 - 4 - 1 + 19);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = averageValueFormatter(keyword.competitorAnalysisAverages.keywordCompetitivenessAvg);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisFooterComponent_Label2.text");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() - 110) + 1 - 93);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(2);
            if(_loc1_)
            {
               §§push(-(§§pop() + 4) + 1 + 117 - 1 + 5 - 94);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisFooterComponent_Label3.width");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((-(§§pop() * 70 - 1 - 1) * 9 - 1) * 46);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.pageAuthorityAvg)?"-":keyword.competitorAnalysisAverages.pageAuthorityAvg;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisFooterComponent_Label3.text");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 80);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(3);
            if(_loc1_)
            {
               §§push((-§§pop() * 89 + 34 + 1) * 4 + 37 - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisFooterComponent_Label4.width");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() * 43 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.pageLinksAvg)?"-":keyword.competitorAnalysisAverages.pageLinksAvg;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisFooterComponent_Label4.text");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 113) * 18);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(4);
            if(_loc1_)
            {
               §§push(-(§§pop() - 1) + 102 - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisFooterComponent_Label5.width");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 76));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.juiceLinksAvg)?"-":keyword.competitorAnalysisAverages.juiceLinksAvg;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisFooterComponent_Label5.text");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push((-(§§pop() - 66 + 1) * 46 + 106) * 51);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(5);
            if(_loc1_)
            {
               §§push((§§pop() + 84) * 117 + 40 - 28 + 113);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisFooterComponent_Label6.width");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push(-((-(§§pop() * 75) - 44 + 1) * 29));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.domainAuthorityAvg)?"-":keyword.competitorAnalysisAverages.domainAuthorityAvg;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisFooterComponent_Label6.text");
         §§push(result);
         §§push(12);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 42) - 78);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(6);
            if(_loc1_)
            {
               §§push((§§pop() - 32 - 1 + 1) * 78 + 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisFooterComponent_Label7.width");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(§§pop() + 43 - 76 + 86 + 42);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.mozRankAvg)?"-":keyword.competitorAnalysisAverages.mozRankAvg;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisFooterComponent_Label7.text");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push(-(§§pop() - 85) * 31 + 28 + 67);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(7);
            if(_loc2_)
            {
               §§push(-(-(§§pop() - 12) + 1 - 62) - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisFooterComponent_Label8.width");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push((-§§pop() + 5) * 11 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.pageRankAvg)?"-":keyword.competitorAnalysisAverages.pageRankAvg;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisFooterComponent_Label8.text");
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) - 1) + 25);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(8);
            if(_loc1_)
            {
               §§push(§§pop() + 1 - 1 + 1 - 1 - 51 - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisFooterComponent_Label9.width");
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push(§§pop() * 106 + 87 + 1 - 110 + 32);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!isNaN(keyword.competitorAnalysisAverages.siteAgeAvg)?"-":keyword.competitorAnalysisAverages.siteAgeAvg;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisFooterComponent_Label9.text");
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
