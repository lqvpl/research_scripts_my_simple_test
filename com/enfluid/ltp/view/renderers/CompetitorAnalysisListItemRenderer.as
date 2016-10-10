package com.enfluid.ltp.view.renderers
{
   import spark.components.supportClasses.ItemRenderer;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Label;
   import com.enfluid.ltp.view.components.Link;
   import spark.components.RichText;
   import mx.graphics.SolidColor;
   import spark.components.VGroup;
   import spark.components.Image;
   import spark.formatters.NumberFormatter;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import mx.collections.IList;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import com.enfluid.ltp.model.constants.Values;
   import spark.components.BorderContainer;
   import mx.core.DeferredInstanceFromFunction;
   import spark.layouts.HorizontalLayout;
   import mx.collections.ArrayCollection;
   import mx.binding.Binding;
   import flashx.textLayout.elements.TextFlow;
   import flashx.textLayout.conversion.TextConverter;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   
   use namespace mx_internal;
   
   public final class CompetitorAnalysisListItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CompetitorAnalysisListItemRenderer_Label1:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label2:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label3:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label4:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label5:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label6:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label7:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label8:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Link1:Link;
      
      public var _CompetitorAnalysisListItemRenderer_RichText1:RichText;
      
      public var _CompetitorAnalysisListItemRenderer_SolidColor1:SolidColor;
      
      public var _CompetitorAnalysisListItemRenderer_VGroup1:VGroup;
      
      private var _950503696lockImage:Image;
      
      private var _1060399231numberFormatter:NumberFormatter;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _583189648headerColumns:IList;
      
      private var _403851133competitorUrl:CompetitorUrlVO;
      
      private var _2937174_len:int;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _104069929model:DataModel;
      
      private var _1777058202isRolledOver:Boolean = false;
      
      private var _13660111pageAuthorityToolTip:String = "";
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CompetitorAnalysisListItemRenderer()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._1589792892viewModel = ViewModel.instance;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._CompetitorAnalysisListItemRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_CompetitorAnalysisListItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CompetitorAnalysisListItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 21 * 20 + 1 + 81) + 32));
         }
         §§pop().percentWidth = §§pop();
         this.autoDrawBackground = false;
         this.mxmlContent = [this._CompetitorAnalysisListItemRenderer_BorderContainer1_c()];
         this.currentState = "normal";
         this._CompetitorAnalysisListItemRenderer_NumberFormatter1_i();
         this.addEventListener("creationComplete",this.___CompetitorAnalysisListItemRenderer_ItemRenderer1_creationComplete);
         this.addEventListener("rollOut",this.___CompetitorAnalysisListItemRenderer_ItemRenderer1_rollOut);
         this.addEventListener("rollOver",this.___CompetitorAnalysisListItemRenderer_ItemRenderer1_rollOver);
         states = [new State({
            "name":"normal",
            "overrides":[]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 18 - 1 + 96);
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
         CompetitorAnalysisListItemRenderer._watcherSetupUtil = param1;
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
            this.color = 5592405;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.competitorUrl = param1 as CompetitorUrlVO;
      }
      
      protected final function itemrenderer1_creationCompleteHandler(param1:FlexEvent) : void
      {
         var event:FlexEvent = param1;
         this._len = this.width;
         callLater(function(param1:Object):void
         {
            headerColumns = param1.headerColumns;
         },[parent]);
      }
      
      private final function openLinkInBrowser(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(param1.currentTarget.url));
      }
      
      private final function calcLabel(param1:Number) : String
      {
         if(param1 == Values.NOT_FETCHED)
         {
            return "...";
         }
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 41 - 1 - 43) * 63);
         }
         if(§§pop() < §§pop())
         {
            return "-";
         }
         return String(!!isNaN(Number(param1))?param1:this.numberFormatter.format(param1));
      }
      
      private final function calcLabelPageAuthority(param1:Number) : String
      {
         this.pageAuthorityToolTip = "";
         if(param1 == Values.NOT_FETCHED)
         {
            return "...";
         }
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 1) * 79) - 1 + 1 + 60);
         }
         if(§§pop() < §§pop())
         {
            return "-";
         }
         §§push(param1);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 79 - 108 - 26));
         }
         if(§§pop() == §§pop())
         {
            if(!isNaN(Number(this.competitorUrl.domainAuthority)) && §§pop() >= §§pop())
            {
               this.pageAuthorityToolTip = "This Page Authority has not been assigned by Moz.  A value has been calculated based upon our own estimates";
               return Math.round(Number(this.competitorUrl.domainAuthority) * 0.55) + "*";
            }
            return "-";
         }
         return String(!!isNaN(Number(param1))?param1:this.numberFormatter.format(param1));
      }
      
      private final function _CompetitorAnalysisListItemRenderer_NumberFormatter1_i() : NumberFormatter
      {
         var _loc1_:NumberFormatter = new NumberFormatter();
         _loc1_.trailingZeros = false;
         _loc1_.initialized(this,"numberFormatter");
         this.numberFormatter = _loc1_;
         BindingManager.executeBindings(this,"numberFormatter",this.numberFormatter);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_BorderContainer1_c() : BorderContainer
      {
         var _loc1_:BorderContainer = new BorderContainer();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--((§§pop() + 1 + 1 - 1) * 31) - 52);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc3_)
         {
            §§push(-(§§pop() + 34 - 55 - 1 + 82));
         }
         §§pop().height = §§pop();
         _loc1_.backgroundFill = this._CompetitorAnalysisListItemRenderer_SolidColor1_i();
         _loc1_.layout = this._CompetitorAnalysisListItemRenderer_HorizontalLayout1_c();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._CompetitorAnalysisListItemRenderer_Array3_c);
         _loc1_.setStyle("borderVisible",false);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.alpha = 0.75;
         this._CompetitorAnalysisListItemRenderer_SolidColor1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_SolidColor1",this._CompetitorAnalysisListItemRenderer_SolidColor1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_HorizontalLayout1_c() : HorizontalLayout
      {
         var _loc1_:HorizontalLayout = new HorizontalLayout();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 22);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Array3_c() : Array
      {
         var _loc1_:Array = [this._CompetitorAnalysisListItemRenderer_VGroup1_i(),this._CompetitorAnalysisListItemRenderer_Label1_i(),this._CompetitorAnalysisListItemRenderer_Image1_i(),this._CompetitorAnalysisListItemRenderer_Label2_i(),this._CompetitorAnalysisListItemRenderer_Label3_i(),this._CompetitorAnalysisListItemRenderer_Label4_i(),this._CompetitorAnalysisListItemRenderer_Label5_i(),this._CompetitorAnalysisListItemRenderer_Label6_i(),this._CompetitorAnalysisListItemRenderer_Label7_i(),this._CompetitorAnalysisListItemRenderer_Label8_i()];
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 10 - 1 - 1 - 1) * 11 - 56);
         }
         §§pop().paddingLeft = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 109) * 72);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._CompetitorAnalysisListItemRenderer_RichText1_i(),this._CompetitorAnalysisListItemRenderer_Link1_i()];
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_VGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_VGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_VGroup1",this._CompetitorAnalysisListItemRenderer_VGroup1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_RichText1_i() : RichText
      {
         var _loc1_:RichText = new RichText();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1) + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 15 - 1);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 1) * 80) + 79 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 46 - 24 - 1 + 68);
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 10);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","left");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_RichText1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_RichText1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_RichText1",this._CompetitorAnalysisListItemRenderer_RichText1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Link1_i() : Link
      {
         var _loc1_:Link = new Link();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 66) + 18) * 88);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc2_)
         {
            §§push(-(§§pop() - 91 + 1 - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(13);
         if(_loc2_)
         {
            §§push(§§pop() - 7 - 30 + 110);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.___CompetitorAnalysisListItemRenderer_Link1_click);
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Link1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Link1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Link1",this._CompetitorAnalysisListItemRenderer_Link1);
         return _loc1_;
      }
      
      public final function ___CompetitorAnalysisListItemRenderer_Link1_click(param1:MouseEvent) : void
      {
         this.openLinkInBrowser(param1);
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(--(§§pop() * 40 + 1) + 1 - 17);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 50 - 3 - 44);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingRight");
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() * 109 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label1",this._CompetitorAnalysisListItemRenderer_Label1);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 23 - 1) * 112 + 1));
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 69 - 81) * 62 + 1 - 114);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.__lockImage_click);
         _loc1_.id = "lockImage";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lockImage = _loc1_;
         BindingManager.executeBindings(this,"lockImage",this.lockImage);
         return _loc1_;
      }
      
      public final function __lockImage_click(param1:MouseEvent) : void
      {
         ViewModel.instance.showUpgradeToPlatinumPopup = true;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 1) * 89 + 5) + 35);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 1 + 1 + 14);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingRight");
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 90) - 1 + 19 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label2",this._CompetitorAnalysisListItemRenderer_Label2);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 1 - 1 + 90 - 117);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label3 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label3",this._CompetitorAnalysisListItemRenderer_Label3);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label4_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() - 45 + 118 - 66) - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label4 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label4",this._CompetitorAnalysisListItemRenderer_Label4);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label5_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() - 90 - 72 + 109 + 114 - 99) + 65);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label5 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label5",this._CompetitorAnalysisListItemRenderer_Label5);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label6_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1 - 1) * 110 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label6 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label6",this._CompetitorAnalysisListItemRenderer_Label6);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label7_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push(-((§§pop() * 16 - 1) * 73) + 114 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label7 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label7",this._CompetitorAnalysisListItemRenderer_Label7);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label8_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(15);
         if(_loc2_)
         {
            §§push((§§pop() - 58 - 36) * 12 * 97 * 73 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label8 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label8",this._CompetitorAnalysisListItemRenderer_Label8);
         return _loc1_;
      }
      
      public final function ___CompetitorAnalysisListItemRenderer_ItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.itemrenderer1_creationCompleteHandler(param1);
      }
      
      public final function ___CompetitorAnalysisListItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.isRolledOver = false;
      }
      
      public final function ___CompetitorAnalysisListItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.isRolledOver = true;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 91 + 60) * 93 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():uint
         {
            §§push(this.itemIndex);
            §§push(2);
            if(_loc1_)
            {
               §§push((§§pop() - 1 - 104) * 90 - 1 + 1 + 1 - 1);
            }
            §§push(§§pop() % §§pop());
            §§push(0);
            if(_loc2_)
            {
               §§push((§§pop() - 1 + 6) * 107 - 1 - 1 + 1 - 95);
            }
            if(§§pop() == §§pop())
            {
               §§push(15001836);
               if(_loc2_)
               {
                  §§push(-((§§pop() - 108 + 10 + 1 + 1 + 1) * 86));
               }
               §§push(uint(§§pop()));
            }
            else
            {
               §§push(16119800);
               if(_loc1_)
               {
                  §§push((-§§pop() + 80 + 58 - 101) * 21);
               }
               §§push(uint(§§pop()));
            }
            return §§pop();
         },null,"_CompetitorAnalysisListItemRenderer_SolidColor1.color");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() * 3 + 34) * 49 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(0);
            if(_loc2_)
            {
               §§push(-((§§pop() - 31) * 55 + 73) + 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_VGroup1.width");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 - 112);
         }
         §§pop()[§§pop()] = new Binding(this,function():TextFlow
         {
            return !Boolean(competitorUrl.boldedTitle)?TextConverter.importToFlow("...",TextConverter.PLAIN_TEXT_FORMAT):TextConverter.importToFlow(competitorUrl.boldedTitle,TextConverter.TEXT_FIELD_HTML_FORMAT);
         },null,"_CompetitorAnalysisListItemRenderer_RichText1.textFlow");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() - 48 + 80 - 1) * 102 * 14 - 1 + 25);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = unescape(competitorUrl.url || "");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Link1.text");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 1 - 1 - 70);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = competitorUrl.url;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Link1.url");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() + 54 + 1) - 89 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(1);
            if(_loc1_)
            {
               §§push(§§pop() * 33 * 100 * 111 - 23);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label1.width");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-(----(§§pop() * 69) + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !lockImage.includeInLayout;
         },null,"_CompetitorAnalysisListItemRenderer_Label1.includeInLayout");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1) * 52 + 9);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(1);
            if(_loc1_)
            {
               §§push((§§pop() - 57) * 30 - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label1.maxWidth");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push((-(-§§pop() * 73) + 22) * 11 + 1 + 3);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.keywordCompetitiveness);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label1.text");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(-§§pop() + 74 - 41);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !lockImage.includeInLayout;
         },null,"_CompetitorAnalysisListItemRenderer_Label1.visible");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(1);
            if(_loc2_)
            {
               §§push(-(§§pop() * 79) - 70);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"lockImage.width");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(§§pop() + 116 + 82 - 38 + 1 + 45);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isPlatinum && §§pop() < §§pop();
         },null,"lockImage.includeInLayout");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 + 1 + 117) * 54);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.LOCK;
         },null,"lockImage.source");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(§§pop() * 30 * 83 * 5);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isPlatinum && isRolledOver && §§pop() < §§pop();
         },null,"lockImage.visible");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 + 46) + 1) - 36);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(2);
            if(_loc2_)
            {
               §§push((-((§§pop() + 78) * 101 * 75) + 1 - 65) * 58);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label2.width");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 33 - 92) + 16));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageAuthorityToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label2.toolTip");
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push(-((§§pop() + 85) * 41 + 21) + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(2);
            if(_loc2_)
            {
               §§push((§§pop() + 1 - 88) * 61 * 88 + 1 - 50);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label2.maxWidth");
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push(-(§§pop() * 94 * 13 + 74 - 65 - 113));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabelPageAuthority(competitorUrl.pageAuthority);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label2.text");
         §§push(result);
         §§push(18);
         if(_loc2_)
         {
            §§push(--(§§pop() - 116 + 34) * 111 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(3);
            if(_loc1_)
            {
               §§push(--(-(§§pop() - 1) + 18) - 13);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label3.width");
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push(----(§§pop() - 21) * 28);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.seomozLinks);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label3.text");
         §§push(result);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() * 56 * 116 + 46);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(4);
            if(_loc1_)
            {
               §§push(-((§§pop() - 1 - 30 + 1) * 93));
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label4.width");
         §§push(result);
         §§push(21);
         if(_loc3_)
         {
            §§push(§§pop() + 59 + 1 + 76 - 118 + 35);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.juiceLinks);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label4.text");
         §§push(result);
         §§push(22);
         if(_loc3_)
         {
            §§push(--(§§pop() * 80) - 111);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(5);
            if(_loc1_)
            {
               §§push((--§§pop() - 1 - 20 - 55) * 7 + 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label5.width");
         §§push(result);
         §§push(23);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 69 + 1 - 113) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.domainAuthority);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label5.text");
         §§push(result);
         §§push(24);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 105 - 1 - 119) * 105 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(6);
            if(_loc1_)
            {
               §§push((§§pop() + 1) * 69 + 1 + 4 + 28 + 83 - 16);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label6.width");
         §§push(result);
         §§push(25);
         if(_loc3_)
         {
            §§push((§§pop() - 65 - 1 + 61 + 1) * 9);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.mozRank);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label6.text");
         §§push(result);
         §§push(26);
         if(_loc3_)
         {
            §§push(--((§§pop() * 93 + 1) * 103 + 1 + 58));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(7);
            if(_loc2_)
            {
               §§push(--(§§pop() - 1) - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label7.width");
         §§push(result);
         §§push(27);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 23));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.pageRank);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label7.text");
         §§push(result);
         §§push(28);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 + 7 - 77 - 1 - 1) * 113);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(8);
            if(_loc2_)
            {
               §§push(§§pop() + 70 - 101 - 1 + 27);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label8.width");
         §§push(result);
         §§push(29);
         if(_loc3_)
         {
            §§push(-((-§§pop() - 1 + 30) * 94));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.siteAge);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label8.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get lockImage() : Image
      {
         return this._950503696lockImage;
      }
      
      public function set lockImage(param1:Image) : void
      {
         var _loc2_:Object = this._950503696lockImage;
         if(_loc2_ !== param1)
         {
            this._950503696lockImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockImage",_loc2_,param1));
            }
         }
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
      private function get competitorUrl() : CompetitorUrlVO
      {
         return this._403851133competitorUrl;
      }
      
      private function set competitorUrl(param1:CompetitorUrlVO) : void
      {
         var _loc2_:Object = this._403851133competitorUrl;
         if(_loc2_ !== param1)
         {
            this._403851133competitorUrl = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"competitorUrl",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _len() : int
      {
         return this._2937174_len;
      }
      
      private function set _len(param1:int) : void
      {
         var _loc2_:Object = this._2937174_len;
         if(_loc2_ !== param1)
         {
            this._2937174_len = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_len",_loc2_,param1));
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
      private function get isRolledOver() : Boolean
      {
         return this._1777058202isRolledOver;
      }
      
      private function set isRolledOver(param1:Boolean) : void
      {
         var _loc2_:Object = this._1777058202isRolledOver;
         if(_loc2_ !== param1)
         {
            this._1777058202isRolledOver = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRolledOver",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageAuthorityToolTip() : String
      {
         return this._13660111pageAuthorityToolTip;
      }
      
      private function set pageAuthorityToolTip(param1:String) : void
      {
         var _loc2_:Object = this._13660111pageAuthorityToolTip;
         if(_loc2_ !== param1)
         {
            this._13660111pageAuthorityToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageAuthorityToolTip",_loc2_,param1));
            }
         }
      }
   }
}
