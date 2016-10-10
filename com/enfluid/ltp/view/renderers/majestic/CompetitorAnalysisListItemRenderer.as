package com.enfluid.ltp.view.renderers.majestic
{
   import spark.components.supportClasses.ItemRenderer;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import com.enfluid.ltp.view.components.Link;
   import spark.components.RichText;
   import mx.graphics.SolidColor;
   import spark.components.VGroup;
   import spark.components.Image;
   import spark.formatters.NumberFormatter;
   import mx.core.IFlexModuleFactory;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import mx.collections.IList;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.events.FlexEvent;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import spark.components.Group;
   import flash.net.URLRequest;
   import system.errors.NoSuchElementError;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.constants.Values;
   import spark.components.BorderContainer;
   import mx.core.DeferredInstanceFromFunction;
   import spark.layouts.HorizontalLayout;
   import mx.controls.Spacer;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import com.enfluid.ltp.controller.common.FetchCompetitorUrls;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticDataCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticDomainDataCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticPagesKcCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchSiteAgeCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.CalcAllMajesticCompetitorAverage;
   import com.enfluid.ltp.controller.keywordresearch.SaveAvgKCToServer;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import com.enfluid.ltp.view.skins.ToggleSwitchSkin;
   import com.adobe.cairngorm.observer.Observe;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.primitives.Rect;
   import mx.graphics.GradientEntry;
   import com.photon.controller.IPhotonCommand;
   import com.photon.controller.PhotonCommand;
   import flashx.textLayout.elements.TextFlow;
   import flashx.textLayout.conversion.TextConverter;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public final class CompetitorAnalysisListItemRenderer extends ItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _CompetitorAnalysisListItemRenderer_Label1:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label10:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label11:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label2:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label3:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label4:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label5:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label6:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label7:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label8:Label;
      
      public var _CompetitorAnalysisListItemRenderer_Label9:Label;
      
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
      
      private var _1208278428pageKcToolTip:String = "";
      
      private var _1988228596pageTrustFlowToolTip:String = "";
      
      private var _401122721pageCitationFlowToolTip:String = "";
      
      private var _2066590430pageExternalBackToolTip:String = "";
      
      private var _1325074646pageRedDomainsToolTip:String = "";
      
      private var _624175687pageexternalEduToolTip:String = "";
      
      private var _516345462pageInternalLinksToolTip:String = "";
      
      private var _941013603pageIndexedUrlsToolTip:String = "";
      
      private var _1535919554pageDomainTrustToolTip:String = "";
      
      private var _252849591pageDomainCitationToolTip:String = "";
      
      private var _814408215keyword:KeywordVO;
      
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
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_majestic_CompetitorAnalysisListItemRendererWatcherSetupUtil");
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
            §§push((§§pop() + 42 + 1) * 116 - 112 - 1);
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
            §§push(--(-§§pop() + 28 - 26 + 17) - 1);
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
            keyword = param1.keyword;
         },[parent]);
      }
      
      private final function openLinkInBrowser(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(param1.currentTarget.url));
      }
      
      private final function calcLabel(param1:Number, param2:String) : String
      {
         if(param1 == Values.NOT_FETCHED)
         {
            return "...";
         }
         if(param1 == Values.CACHE_NULL_VALUE || §§pop() < §§pop())
         {
            if("kc" === _loc3_)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(§§pop() - 1 - 1 - 1));
               }
            }
            else if("trustflow" === _loc3_)
            {
               §§push(1);
               if(_loc5_)
               {
                  §§push(§§pop() * 57 - 1 - 85);
               }
            }
            else if("citationflow" === _loc3_)
            {
               §§push(2);
               if(_loc5_)
               {
                  §§push(((§§pop() + 90) * 13 - 85 - 70) * 118 + 1);
               }
            }
            else if("domaintrust" === _loc3_)
            {
               §§push(3);
               if(_loc5_)
               {
                  §§push(((§§pop() - 1 - 30) * 41 - 47) * 53);
               }
            }
            else if("domaincitation" === _loc3_)
            {
               §§push(4);
               if(_loc4_)
               {
                  §§push(-(§§pop() - 29) + 6 - 1 - 8);
               }
            }
            else if("eback" === _loc3_)
            {
               §§push(5);
               if(_loc5_)
               {
                  §§push(§§pop() * 54 + 1 + 105 + 87);
               }
            }
            else if("refdomains" === _loc3_)
            {
               §§push(6);
               if(_loc4_)
               {
                  §§push(§§pop() + 109 - 1 + 1 + 1);
               }
            }
            else if("extedu" === _loc3_)
            {
               §§push(7);
               if(_loc4_)
               {
                  §§push((-§§pop() - 108 - 73) * 97);
               }
            }
            else if("internallinks" === _loc3_)
            {
               §§push(8);
               if(_loc5_)
               {
                  §§push(-(-§§pop() * 66 + 1) + 1 - 1);
               }
            }
            else if("indexed" === _loc3_)
            {
               §§push(9);
               if(_loc4_)
               {
                  §§push(-(-(§§pop() + 0 + 1) - 1 - 6 - 1));
               }
            }
            else
            {
               §§push(10);
               if(_loc5_)
               {
                  §§push(-§§pop() + 1 - 89 + 1 - 1 - 1 + 1);
               }
            }
            switch(§§pop())
            {
               case 0:
                  this.pageKcToolTip = "Keyword Competitiveness information is not yet available from Majestic";
                  break;
               case 1:
                  this.pageTrustFlowToolTip = "Trust FLow information is not yet available from Majestic.";
                  break;
               case 2:
                  this.pageCitationFlowToolTip = "Citation Flow information is not yet available from Majestic.";
                  break;
               case 3:
                  this.pageDomainTrustToolTip = "Domain Trust Flow information is not yet available from Majestic.";
                  break;
               case 4:
                  this.pageDomainCitationToolTip = "Domain Citation Flow information is not yet available from Majestic.";
                  break;
               case 5:
                  this.pageExternalBackToolTip = "External Backlinks information is not yet available from Majestic.";
                  break;
               case 6:
                  this.pageRedDomainsToolTip = "Referring Domains information is not yet available from Majestic.";
                  break;
               case 7:
                  this.pageexternalEduToolTip = "Edu/Gov BackLinks information is not yet available from Majestic.";
                  break;
               case 8:
                  this.pageInternalLinksToolTip = "Internal Links information is not yet available from Majestic.";
                  break;
               case 9:
                  this.pageIndexedUrlsToolTip = "Indexed URLs information is not yet available from Majestic.";
            }
            return "- *";
         }
         return String(!!isNaN(Number(param1))?"-":this.numberFormatter.format(param1));
      }
      
      private final function getColumnStatus(param1:*) : Boolean
      {
         if(param1 == null || param1 === "show")
         {
            return true;
         }
         return false;
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
         if(_loc3_)
         {
            §§push(-(§§pop() + 28) + 1 + 4 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(40);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 1 + 1 + 83 - 1) * 25));
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
            §§push(-((-§§pop() + 1) * 50 * 63) * 52 - 1);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Array3_c() : Array
      {
         var _loc1_:Array = [this._CompetitorAnalysisListItemRenderer_VGroup1_i(),this._CompetitorAnalysisListItemRenderer_Label1_i(),this._CompetitorAnalysisListItemRenderer_Image1_i(),this._CompetitorAnalysisListItemRenderer_Label2_i(),this._CompetitorAnalysisListItemRenderer_Label3_i(),this._CompetitorAnalysisListItemRenderer_Label4_i(),this._CompetitorAnalysisListItemRenderer_Label5_i(),this._CompetitorAnalysisListItemRenderer_Label6_i(),this._CompetitorAnalysisListItemRenderer_Label7_i(),this._CompetitorAnalysisListItemRenderer_Label8_i(),this._CompetitorAnalysisListItemRenderer_Label9_i(),this._CompetitorAnalysisListItemRenderer_Label10_i(),this._CompetitorAnalysisListItemRenderer_Label11_i()];
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() * 22 - 1) + 1);
         }
         §§pop().paddingLeft = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 75 - 1) * 60);
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
            §§push(((§§pop() - 39) * 1 * 21 + 101 - 38 - 1) * 3);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 + 1 + 57 + 56) * 31));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 114 - 10 + 1 - 55);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 4 + 10 + 2 + 26));
         }
         §§pop().maxDisplayedLines = §§pop();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() - 79) * 31 * 22 * 103 * 97);
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
         if(_loc2_)
         {
            §§push(-(§§pop() - 74 + 1) - 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(8947848);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) + 1 + 1 + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(13);
         if(_loc2_)
         {
            §§push(§§pop() * 23 * 24 - 78 - 1 + 1 + 47);
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
         §§push(13);
         if(_loc3_)
         {
            §§push((§§pop() + 43 + 112 - 1 + 46) * 71);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 - 102 - 1 - 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingRight");
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 46 + 1) * 34 * 81);
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
         if(_loc3_)
         {
            §§push(-((§§pop() + 43 - 1) * 63 * 95 + 45 + 22));
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 9 + 1) - 1);
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
         §§push(13);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 58 + 45 - 96);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 + 1 - 1) * 70 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingRight");
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 30 + 1 + 1);
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
         §§push(13);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) * 16 - 1);
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
         §§push(13);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 111 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingRight");
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1 + 113 - 62 + 1) + 1);
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
         §§push(13);
         if(_loc2_)
         {
            §§push(-((§§pop() * 37 - 1) * 67) - 112);
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
         §§push(13);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 57 + 1 + 6 + 1);
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
         §§push(13);
         if(_loc3_)
         {
            §§push((--(§§pop() * 9 + 0) + 26 - 119) * 117);
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
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() - 47) * 95 - 29 + 79 + 86);
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
      
      private final function _CompetitorAnalysisListItemRenderer_Label9_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(13);
         if(_loc2_)
         {
            §§push(((§§pop() - 1) * 38 - 1 + 0 + 110) * 91);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label9 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label9",this._CompetitorAnalysisListItemRenderer_Label9);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label10_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(13);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 101 + 26);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label10";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label10 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label10",this._CompetitorAnalysisListItemRenderer_Label10);
         return _loc1_;
      }
      
      private final function _CompetitorAnalysisListItemRenderer_Label11_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push("fontSize");
         §§push(13);
         if(_loc2_)
         {
            §§push(-§§pop() * 16 - 67);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("lineBreak","explicit");
         _loc1_.id = "_CompetitorAnalysisListItemRenderer_Label11";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CompetitorAnalysisListItemRenderer_Label11 = _loc1_;
         BindingManager.executeBindings(this,"_CompetitorAnalysisListItemRenderer_Label11",this._CompetitorAnalysisListItemRenderer_Label11);
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
            §§push(-§§pop() - 1 - 62);
         }
         §§pop()[§§pop()] = new Binding(this,function():uint
         {
            §§push(this.itemIndex);
            §§push(2);
            if(_loc1_)
            {
               §§push(-(-(§§pop() + 20) - 1 + 1));
            }
            §§push(§§pop() % §§pop());
            §§push(0);
            if(_loc2_)
            {
               §§push((-§§pop() + 1 - 46) * 85 + 1);
            }
            if(§§pop() == §§pop())
            {
               §§push(15001836);
               if(_loc2_)
               {
                  §§push(((§§pop() + 118 + 16) * 24 - 1 - 117) * 111);
               }
               §§push(uint(§§pop()));
            }
            else
            {
               §§push(16119800);
               if(_loc1_)
               {
                  §§push(-(§§pop() + 62 - 1 + 1 - 38));
               }
               §§push(uint(§§pop()));
            }
            return §§pop();
         },null,"_CompetitorAnalysisListItemRenderer_SolidColor1.color");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-§§pop() + 13 - 86 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-§§pop() * 93));
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_VGroup1.width");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 80 - 111 - 85 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():TextFlow
         {
            return !Boolean(competitorUrl.boldedTitle)?TextConverter.importToFlow("...",TextConverter.PLAIN_TEXT_FORMAT):TextConverter.importToFlow(competitorUrl.boldedTitle,TextConverter.TEXT_FIELD_HTML_FORMAT);
         },null,"_CompetitorAnalysisListItemRenderer_RichText1.textFlow");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((-§§pop() - 57 + 25 + 1) * 64 * 69);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = unescape(competitorUrl.url || "");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Link1.text");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() * 101 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = competitorUrl.url;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Link1.url");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1 - 1) + 112) * 78 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(1);
            if(_loc2_)
            {
               §§push(-(§§pop() + 57 - 1 + 70) - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label1.width");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 18 * 23 - 118 + 58);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !lockImage.includeInLayout;
         },null,"_CompetitorAnalysisListItemRenderer_Label1.includeInLayout");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() * 100 * 101 - 1 + 1 + 88);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(1);
            if(_loc1_)
            {
               §§push(§§pop() - 38 - 1 - 42 - 1 + 13);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label1.maxWidth");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() + 104 + 1 + 27);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.majestic_kc,"kc");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label1.text");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push(§§pop() * 40 - 1 - 1 + 1 + 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageKcToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label1.toolTip");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() + 61 + 38) * 91);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !lockImage.includeInLayout;
         },null,"_CompetitorAnalysisListItemRenderer_Label1.visible");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(§§pop() - 36 + 86 - 90 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(1);
            if(_loc1_)
            {
               §§push(--(§§pop() - 1 - 1));
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"lockImage.width");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 1 + 1 + 1 - 82 - 81);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isPlatinum && §§pop() < §§pop();
         },null,"lockImage.includeInLayout");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(--(§§pop() + 32 - 1) * 59 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.LOCK;
         },null,"lockImage.source");
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push((--§§pop() + 1) * 116);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isPlatinum && isRolledOver && §§pop() < §§pop();
         },null,"lockImage.visible");
         §§push(result);
         §§push(15);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 1 + 1) * 54) + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(2);
            if(_loc1_)
            {
               §§push(-(§§pop() * 29 * 101) * 80 - 97);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label2.width");
         §§push(result);
         §§push(16);
         if(_loc2_)
         {
            §§push(§§pop() + 8 + 15 - 104 + 1 - 1 - 92 + 36);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.trust_flow,"trustflow");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label2.text");
         §§push(result);
         §§push(17);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 90 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageTrustFlowToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label2.toolTip");
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push((--(§§pop() + 75) - 33) * 95 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(3);
            if(_loc1_)
            {
               §§push((-(§§pop() + 1 + 1) + 1 - 1) * 22 - 112);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label3.width");
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push(§§pop() * 1 - 1 + 70 + 104 - 48 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.citation_flow,"citationflow");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label3.text");
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageCitationFlowToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label3.toolTip");
         §§push(result);
         §§push(21);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1) * 30 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(4);
            if(_loc2_)
            {
               §§push((§§pop() * 25 - 108 + 1) * 68 + 48 - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label4.width");
         §§push(result);
         §§push(22);
         if(_loc3_)
         {
            §§push(--(§§pop() - 95) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.domain_trust,"domaintrust");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label4.text");
         §§push(result);
         §§push(23);
         if(_loc2_)
         {
            §§push(§§pop() + 32 + 57 + 1 + 0);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageDomainTrustToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label4.toolTip");
         §§push(result);
         §§push(24);
         if(_loc2_)
         {
            §§push(--(§§pop() - 14) + 92 - 82 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(5);
            if(_loc1_)
            {
               §§push(-(§§pop() + 30 + 1 + 1) * 71 - 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label5.width");
         §§push(result);
         §§push(25);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.domain_citation,"domaincitation");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label5.text");
         §§push(result);
         §§push(26);
         if(_loc2_)
         {
            §§push(-((-((§§pop() + 58) * 106) - 12) * 96));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageDomainCitationToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label5.toolTip");
         §§push(result);
         §§push(27);
         if(_loc3_)
         {
            §§push(-((-§§pop() - 1 - 46) * 48));
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(6);
            if(_loc1_)
            {
               §§push((§§pop() + 2) * 32 * 53);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label6.width");
         §§push(result);
         §§push(28);
         if(_loc3_)
         {
            §§push((§§pop() + 20) * 10 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.external_backlinks,"eback");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label6.text");
         §§push(result);
         §§push(29);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) * 44 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageExternalBackToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label6.toolTip");
         §§push(result);
         §§push(30);
         if(_loc3_)
         {
            §§push(§§pop() + 67 + 118 - 30 - 1 + 62);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(7);
            if(_loc1_)
            {
               §§push(-(-(§§pop() * 99 + 79) - 69 + 17));
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label7.width");
         §§push(result);
         §§push(31);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.referring_domains,"refdomains");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label7.text");
         §§push(result);
         §§push(32);
         if(_loc2_)
         {
            §§push(-((-(§§pop() - 48) + 1 + 27) * 66));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageRedDomainsToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label7.toolTip");
         §§push(result);
         §§push(33);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 + 65 - 1 + 1) + 17);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(8);
            if(_loc2_)
            {
               §§push(-(§§pop() * 90 - 1 - 1 - 80) + 93);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label8.width");
         §§push(result);
         §§push(34);
         if(_loc3_)
         {
            §§push((-(§§pop() * 89) - 105) * 78);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.external_edu_gov,"extedu");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label8.text");
         §§push(result);
         §§push(35);
         if(_loc2_)
         {
            §§push(§§pop() - 82 + 17 + 119 - 82 - 47 - 80);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageexternalEduToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label8.toolTip");
         §§push(result);
         §§push(36);
         if(_loc2_)
         {
            §§push((§§pop() - 18) * 91 - 83 + 1 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(9);
            if(_loc1_)
            {
               §§push((§§pop() - 32) * 45 * 94 * 95);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label9.width");
         §§push(result);
         §§push(37);
         if(_loc2_)
         {
            §§push(§§pop() - 33 + 3 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.internal_links,"internallinks");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label9.text");
         §§push(result);
         §§push(38);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 1) * 82 * 67) + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageInternalLinksToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label9.toolTip");
         §§push(result);
         §§push(39);
         if(_loc2_)
         {
            §§push(--(-(§§pop() - 1) * 1) * 84 + 20);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(10);
            if(_loc2_)
            {
               §§push((-(§§pop() - 1 + 61) - 1) * 90 + 1);
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label10.width");
         §§push(result);
         §§push(40);
         if(_loc2_)
         {
            §§push(§§pop() + 8 - 114 + 35 - 93 - 104 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.indexed_urls,"indexed");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label10.text");
         §§push(result);
         §§push(41);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 57 - 1 - 111 - 1 - 108);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = pageIndexedUrlsToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label10.toolTip");
         §§push(result);
         §§push(42);
         if(_loc3_)
         {
            §§push(-§§pop() + 6 + 66 + 75 - 42 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(headerColumns);
            §§push(11);
            if(_loc1_)
            {
               §§push(--(§§pop() - 1 + 1));
            }
            return §§pop().getItemAt(§§pop()).width;
         },null,"_CompetitorAnalysisListItemRenderer_Label11.width");
         §§push(result);
         §§push(43);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 60) - 66) + 6);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcLabel(competitorUrl.siteAge,"site_age");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_CompetitorAnalysisListItemRenderer_Label11.text");
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
      
      [Bindable(event="propertyChange")]
      private function get pageKcToolTip() : String
      {
         return this._1208278428pageKcToolTip;
      }
      
      private function set pageKcToolTip(param1:String) : void
      {
         var _loc2_:Object = this._1208278428pageKcToolTip;
         if(_loc2_ !== param1)
         {
            this._1208278428pageKcToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageKcToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageTrustFlowToolTip() : String
      {
         return this._1988228596pageTrustFlowToolTip;
      }
      
      private function set pageTrustFlowToolTip(param1:String) : void
      {
         var _loc2_:Object = this._1988228596pageTrustFlowToolTip;
         if(_loc2_ !== param1)
         {
            this._1988228596pageTrustFlowToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageTrustFlowToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageCitationFlowToolTip() : String
      {
         return this._401122721pageCitationFlowToolTip;
      }
      
      private function set pageCitationFlowToolTip(param1:String) : void
      {
         var _loc2_:Object = this._401122721pageCitationFlowToolTip;
         if(_loc2_ !== param1)
         {
            this._401122721pageCitationFlowToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageCitationFlowToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageExternalBackToolTip() : String
      {
         return this._2066590430pageExternalBackToolTip;
      }
      
      private function set pageExternalBackToolTip(param1:String) : void
      {
         var _loc2_:Object = this._2066590430pageExternalBackToolTip;
         if(_loc2_ !== param1)
         {
            this._2066590430pageExternalBackToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageExternalBackToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageRedDomainsToolTip() : String
      {
         return this._1325074646pageRedDomainsToolTip;
      }
      
      private function set pageRedDomainsToolTip(param1:String) : void
      {
         var _loc2_:Object = this._1325074646pageRedDomainsToolTip;
         if(_loc2_ !== param1)
         {
            this._1325074646pageRedDomainsToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageRedDomainsToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageexternalEduToolTip() : String
      {
         return this._624175687pageexternalEduToolTip;
      }
      
      private function set pageexternalEduToolTip(param1:String) : void
      {
         var _loc2_:Object = this._624175687pageexternalEduToolTip;
         if(_loc2_ !== param1)
         {
            this._624175687pageexternalEduToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageexternalEduToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageInternalLinksToolTip() : String
      {
         return this._516345462pageInternalLinksToolTip;
      }
      
      private function set pageInternalLinksToolTip(param1:String) : void
      {
         var _loc2_:Object = this._516345462pageInternalLinksToolTip;
         if(_loc2_ !== param1)
         {
            this._516345462pageInternalLinksToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageInternalLinksToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageIndexedUrlsToolTip() : String
      {
         return this._941013603pageIndexedUrlsToolTip;
      }
      
      private function set pageIndexedUrlsToolTip(param1:String) : void
      {
         var _loc2_:Object = this._941013603pageIndexedUrlsToolTip;
         if(_loc2_ !== param1)
         {
            this._941013603pageIndexedUrlsToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageIndexedUrlsToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageDomainTrustToolTip() : String
      {
         return this._1535919554pageDomainTrustToolTip;
      }
      
      private function set pageDomainTrustToolTip(param1:String) : void
      {
         var _loc2_:Object = this._1535919554pageDomainTrustToolTip;
         if(_loc2_ !== param1)
         {
            this._1535919554pageDomainTrustToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageDomainTrustToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get pageDomainCitationToolTip() : String
      {
         return this._252849591pageDomainCitationToolTip;
      }
      
      private function set pageDomainCitationToolTip(param1:String) : void
      {
         var _loc2_:Object = this._252849591pageDomainCitationToolTip;
         if(_loc2_ !== param1)
         {
            this._252849591pageDomainCitationToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageDomainCitationToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get keyword() : KeywordVO
      {
         return this._814408215keyword;
      }
      
      private function set keyword(param1:KeywordVO) : void
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
   }
}
