package com.enfluid.ltp.view.renderers
{
   import com.enfluid.ltp.view.components.LTPItemRenderer;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.effects.AddAction;
   import spark.effects.Fade;
   import com.enfluid.ltp.view.components.FormattedSelfAdjustingLabel;
   import spark.components.Label;
   import spark.effects.RemoveAction;
   import spark.effects.Resize;
   import com.enfluid.ltp.view.components.SelfAdjustingLabel;
   import mx.states.SetProperty;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.view.CompetitorAnalysisView;
   import mx.states.Transition;
   import com.enfluid.ltp.view.components.SelfAdjustingGroup;
   import spark.effects.easing.Power;
   import spark.components.HGroup;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.view.components.DomainRendererCallout;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import mx.events.FlexEvent;
   import flash.ui.ContextMenuItem;
   import flash.events.ContextMenuEvent;
   import flash.ui.ContextMenu;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import com.enfluid.ltp.model.constants.Values;
   import mx.binding.BindingManager;
   import mx.effects.Sequence;
   import system.data.stacks.ArrayStack;
   import system.data.lists.ArrayList;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import mx.binding.Binding;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import spark.components.Image;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class KeywordItemRenderer extends LTPItemRenderer implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _KeywordItemRenderer_AddAction1:AddAction;
      
      public var _KeywordItemRenderer_CalculatableValueGroup1:com.enfluid.ltp.view.renderers.CalculatableValueGroup;
      
      public var _KeywordItemRenderer_CalculatableValueGroup2:com.enfluid.ltp.view.renderers.CalculatableValueGroup;
      
      public var _KeywordItemRenderer_Fade1:Fade;
      
      public var _KeywordItemRenderer_Fade2:Fade;
      
      public var _KeywordItemRenderer_FormattedSelfAdjustingLabel1:FormattedSelfAdjustingLabel;
      
      public var _KeywordItemRenderer_FormattedSelfAdjustingLabel2:FormattedSelfAdjustingLabel;
      
      public var _KeywordItemRenderer_FormattedSelfAdjustingLabel3:FormattedSelfAdjustingLabel;
      
      public var _KeywordItemRenderer_FormattedSelfAdjustingLabel4:FormattedSelfAdjustingLabel;
      
      public var _KeywordItemRenderer_FormattedSelfAdjustingLabel5:FormattedSelfAdjustingLabel;
      
      public var _KeywordItemRenderer_KeywordColumnRenderer1:com.enfluid.ltp.view.renderers.KeywordColumnRenderer;
      
      public var _KeywordItemRenderer_Label1:Label;
      
      public var _KeywordItemRenderer_Label2:Label;
      
      public var _KeywordItemRenderer_RemoveAction1:RemoveAction;
      
      public var _KeywordItemRenderer_Resize1:Resize;
      
      public var _KeywordItemRenderer_Resize2:Resize;
      
      public var _KeywordItemRenderer_SelfAdjustingLabel1:SelfAdjustingLabel;
      
      public var _KeywordItemRenderer_SelfAdjustingLabel2:SelfAdjustingLabel;
      
      public var _KeywordItemRenderer_SelfAdjustingLabel3:SelfAdjustingLabel;
      
      private var _383255065_KeywordItemRenderer_SetProperty1:SetProperty;
      
      private var _500352562_KeywordItemRenderer_VerticalLayout1:VerticalLayout;
      
      private var _1368433629caView:CompetitorAnalysisView;
      
      private var _501020694closingTransition:Transition;
      
      private var _2022178536domainRendererGroup:SelfAdjustingGroup;
      
      private var _531899376domainsExact:com.enfluid.ltp.view.renderers.DomainRenderer;
      
      private var _1736443437domainsHyphenated:com.enfluid.ltp.view.renderers.DomainRenderer;
      
      private var _1148833997openingTransition:Transition;
      
      private var _22944400powerEasing:Power;
      
      private var _21521605rowGroup:HGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var domainRendererCallout:DomainRendererCallout;
      
      private var _1777058202isRolledOver:Boolean = false;
      
      private var _1481525732_bgcol:uint = 14936300;
      
      private var _1668865033_nowcol:uint;
      
      private var _814408215keyword:KeywordVO;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _104069929model:DataModel;
      
      private var _1841624252isSelecteDomainExact:Boolean = false;
      
      private var _216455016isdomainsRendererCallout:Boolean;
      
      private var _1313897455topBottomPadding:int = 10;
      
      private var _1356814210AdWordsRestrictedToolTip:String = "";
      
      private var _62434079AdWordsRestrictedGlobalToolTip:String = "";
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordItemRenderer()
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
         var bindings:Array = this._KeywordItemRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_KeywordItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(§§pop() - 44) * 3 - 21);
         }
         §§pop().percentWidth = §§pop();
         this.transitions = [this._KeywordItemRenderer_Transition1_i(),this._KeywordItemRenderer_Transition2_i()];
         this.layout = this._KeywordItemRenderer_VerticalLayout1_i();
         this.mxmlContent = [this._KeywordItemRenderer_Label1_i(),this._KeywordItemRenderer_Label2_i(),this._KeywordItemRenderer_HGroup1_i()];
         this._KeywordItemRenderer_Power1_i();
         this.addEventListener("creationComplete",this.___KeywordItemRenderer_LTPItemRenderer1_creationComplete);
         this.addEventListener("rollOut",this.___KeywordItemRenderer_LTPItemRenderer1_rollOut);
         this.addEventListener("rollOver",this.___KeywordItemRenderer_LTPItemRenderer1_rollOver);
         var _KeywordItemRenderer_CompetitorAnalysisView1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._KeywordItemRenderer_CompetitorAnalysisView1_i);
         §§push();
         §§push();
         §§push("name");
         §§push("closedstate");
         §§push("overrides");
         §§push(new SetProperty());
         §§push("name");
         §§push("height");
         §§push("value");
         §§push(30);
         if(_loc3_)
         {
            §§push(-((-(§§pop() - 29) + 98) * 28));
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("caView");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 71 * 23 * 16 + 108 - 78 - 1);
         }
         §§push(new §§pop().State(null));
         §§push();
         §§push("name");
         §§push("openstate");
         §§push("overrides");
         §§push(new AddItems().initializeFromObject({
            "itemsFactory":_KeywordItemRenderer_CompetitorAnalysisView1_factory,
            "destination":null,
            "propertyName":"mxmlContent",
            "position":"after",
            "relativeTo":["rowGroup"]
         }));
         §§push(this._KeywordItemRenderer_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
            "name":"height",
            "value":undefined
         })));
         §§push(new SetProperty());
         §§push("target");
         §§push("_KeywordItemRenderer_VerticalLayout1");
         §§push("name");
         §§push("paddingBottom");
         §§push("value");
         §§push(10);
         if(_loc4_)
         {
            §§push(-((§§pop() - 1) * 56));
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("_KeywordItemRenderer_VerticalLayout1");
         §§push("name");
         §§push("paddingTop");
         §§push("value");
         §§push(5);
         if(_loc4_)
         {
            §§push(-(§§pop() * 13 * 55 + 1) + 1 - 45 + 57);
         }
         §§push(§§pop().initializeFromObject(null));
         §§push(new SetProperty());
         §§push("target");
         §§push("caView");
         §§push("name");
         §§push("alpha");
         §§push("value");
         §§push(1);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 1 - 1);
         }
         §§pop().states = null;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_SetProperty1",this._KeywordItemRenderer_SetProperty1);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 78 - 99 + 1 + 92);
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
         KeywordItemRenderer._watcherSetupUtil = param1;
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
            this.color = 3355443;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1 != this.keyword)
         {
            this.transitions = null;
            super.data = param1;
            this.keyword = KeywordVO(param1);
            this.transitions = [this.openingTransition,this.closingTransition];
         }
         if(this.keyword && this.viewModel.selectedKeywordsTab.isFavoritesTab)
         {
            this.keyword.projectTitle = this.model.projectTitle[this.keyword.projectID] == null?"-":this.model.projectTitle[this.keyword.projectID];
         }
      }
      
      override public function get selected() : Boolean
      {
         return false;
      }
      
      override public function get showsCaret() : Boolean
      {
         return false;
      }
      
      override protected function get hovered() : Boolean
      {
         return false;
      }
      
      override protected function get down() : Boolean
      {
         return false;
      }
      
      protected final function domainsGroup_rollOverHandler(param1:MouseEvent) : void
      {
         §§push(this.domainsExact.width);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 101 + 96 - 80);
         }
         if(§§pop() <= §§pop() && §§pop() <= §§pop() || !this.keyword.domainsExact.domainWithoutExtension && !this.keyword.domainsHyphenated.domainWithoutExtension)
         {
            if(this.domainRendererCallout)
            {
               this.domainRendererCallout.close();
            }
            return;
         }
         if(this.domainsExact.domainRendererWidth > this.domainsExact.width || this.domainsHyphenated.domainRendererWidth > this.domainsHyphenated.width)
         {
            if(!this.isdomainsRendererCallout)
            {
               this.domainRendererCallout = new DomainRendererCallout();
               this.isdomainsRendererCallout = true;
               this.domainRendererCallout.keyword = this.keyword;
               this.domainRendererCallout.open(this.domainRendererGroup);
            }
         }
      }
      
      protected final function calloutCloseHandler(param1:* = null) : void
      {
         if(this.isdomainsRendererCallout)
         {
            this.isdomainsRendererCallout = false;
            if(this.domainRendererCallout)
            {
               this.domainRendererCallout.isPopUp = false;
               this.domainRendererCallout.close();
               this.domainRendererCallout.removeEventListener("calloutCloseEvent",this.calloutCloseHandler);
            }
         }
      }
      
      protected final function onCreationComplete(param1:FlexEvent) : void
      {
         var _loc2_:ContextMenuItem = new ContextMenuItem("Copy");
         _loc2_.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,this.onCopyClickHandler);
         var _loc3_:ContextMenu = new ContextMenu();
         _loc3_.hideBuiltInItems();
         _loc3_.customItems = [_loc2_];
         this.rowGroup.contextMenu = _loc3_;
      }
      
      private final function onCopyClickHandler(param1:ContextMenuEvent) : void
      {
         var _loc2_:CurrencyAndNumberFormatter = new CurrencyAndNumberFormatter();
         var _loc3_:String = this.keyword.strippedKeyword;
         if(this.viewModel.selectedKeywordsTab.isFavoritesTab)
         {
            _loc3_ = _loc3_ + ("\t" + this.keyword.projectTitle);
         }
         if(this.model.selectedKeywordCollection.project.suggestedBidEnabled)
         {
            if(this.keyword.suggestedBidString == null || this.keyword.suggestedBidString == "–")
            {
               _loc3_ = _loc3_ + ("\t" + " ");
            }
            else
            {
               _loc3_ = _loc3_ + ("\t" + this.keyword.suggestedBidString);
            }
         }
         if(this.model.selectedKeywordCollection.project.localSearchesEnabled)
         {
            _loc3_ = _loc3_ + ("\t" + _loc2_.formattedNumberValue(this.keyword.localSearches));
         }
         if(this.model.selectedKeywordCollection.project.globalSearchesEnabled)
         {
            _loc3_ = _loc3_ + ("\t" + _loc2_.formattedNumberValue(this.keyword.globalSearches));
         }
         if(this.model.selectedKeywordCollection.project.advertiserCompEnabled)
         {
            if(this.keyword.advertiserCompetition == null || this.keyword.advertiserCompetition == "–")
            {
               _loc3_ = _loc3_ + ("\t" + " ");
            }
            else
            {
               _loc3_ = _loc3_ + ("\t" + this.keyword.advertiserCompetition);
            }
         }
         if(this.model.selectedKeywordCollection.project.numWordsEnabled)
         {
            _loc3_ = _loc3_ + ("\t" + _loc2_.formattedNumberValue(this.keyword.numWords));
         }
         if(this.model.selectedKeywordCollection.project.googleTitleCompEnabled)
         {
            _loc3_ = _loc3_ + ("\t" + _loc2_.formattedNumberValue(this.keyword.googleTitleCompetition));
         }
         if(this.model.selectedKeywordCollection.project.bingTitleCompEnabled)
         {
            _loc3_ = _loc3_ + ("\t" + _loc2_.formattedNumberValue(this.keyword.bingTitleCompetition));
         }
         if(this.model.isPlatinum)
         {
            _loc3_ = _loc3_ + ("\t" + _loc2_.formattedNumberValue(this.keyword.avgKC));
         }
         Clipboard.generalClipboard.setData(ClipboardFormats.TEXT_FORMAT,_loc3_);
      }
      
      private final function calcSearchesLabel(param1:KeywordVO, param2:String) : *
      {
         if(param2 == "local")
         {
            if(param1.localSearches != Values.NOT_FETCHED)
            {
               if(param1.isGoogleRestrictedSearches)
               {
                  this.AdWordsRestrictedToolTip = "This is the search volume range. The exact volume is not available due to the data restriction on your AdWords account.";
                  return param1.localSearchesRange;
               }
               this.AdWordsRestrictedToolTip = "";
               return param1.localSearches;
            }
            return Values.NOT_FETCHED;
         }
         if(param2 == "global")
         {
            if(param1.globalSearches != Values.NOT_FETCHED)
            {
               if(param1.isGoogleRestrictedSearches)
               {
                  this.AdWordsRestrictedGlobalToolTip = "This is the search volume range. The exact volume is not available due to the data restriction on your AdWords account.";
                  return param1.globalSearchesRange;
               }
               this.AdWordsRestrictedToolTip = "";
               return param1.globalSearches;
            }
            return Values.NOT_FETCHED;
         }
      }
      
      private final function _KeywordItemRenderer_Power1_i() : Power
      {
         var _loc1_:Power = new Power();
         §§push(_loc1_);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() * 116 + 1 - 1));
         }
         §§pop().exponent = §§pop();
         this.powerEasing = _loc1_;
         BindingManager.executeBindings(this,"powerEasing",this.powerEasing);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Transition1_i() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "closedstate";
         _loc1_.toState = "openstate";
         _loc1_.effect = this._KeywordItemRenderer_Sequence1_c();
         this.openingTransition = _loc1_;
         BindingManager.executeBindings(this,"openingTransition",this.openingTransition);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Sequence1_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._KeywordItemRenderer_AddAction1_i(),this._KeywordItemRenderer_Resize1_i(),this._KeywordItemRenderer_Fade1_i()];
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_AddAction1_i() : AddAction
      {
         var _loc1_:AddAction = new AddAction();
         this._KeywordItemRenderer_AddAction1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_AddAction1",this._KeywordItemRenderer_AddAction1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Resize1_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(400);
         if(_loc2_)
         {
            §§push((§§pop() * 59 - 86 - 40 + 92) * 84);
         }
         §§pop().duration = §§pop();
         this._KeywordItemRenderer_Resize1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_Resize1",this._KeywordItemRenderer_Resize1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(200);
         if(_loc3_)
         {
            §§push((-§§pop() + 72) * 41 - 1 - 22 - 1 + 11);
         }
         §§pop().duration = §§pop();
         this._KeywordItemRenderer_Fade1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_Fade1",this._KeywordItemRenderer_Fade1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Transition2_i() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "openstate";
         _loc1_.toState = "closedstate";
         _loc1_.effect = this._KeywordItemRenderer_Sequence2_c();
         this.closingTransition = _loc1_;
         BindingManager.executeBindings(this,"closingTransition",this.closingTransition);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Sequence2_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         _loc1_.children = [this._KeywordItemRenderer_Fade2_i(),this._KeywordItemRenderer_Resize2_i(),this._KeywordItemRenderer_RemoveAction1_i()];
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Fade2_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         §§push(_loc1_);
         §§push(200);
         if(_loc3_)
         {
            §§push(((§§pop() + 59) * 101 + 1) * 32 - 1 + 52);
         }
         §§pop().duration = §§pop();
         this._KeywordItemRenderer_Fade2 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_Fade2",this._KeywordItemRenderer_Fade2);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Resize2_i() : Resize
      {
         var _loc1_:Resize = new Resize();
         §§push(_loc1_);
         §§push(200);
         if(_loc3_)
         {
            §§push(§§pop() + 85 - 75 + 52 - 1);
         }
         §§pop().duration = §§pop();
         this._KeywordItemRenderer_Resize2 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_Resize2",this._KeywordItemRenderer_Resize2);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_RemoveAction1_i() : RemoveAction
      {
         var _loc1_:RemoveAction = new RemoveAction();
         this._KeywordItemRenderer_RemoveAction1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_RemoveAction1",this._KeywordItemRenderer_RemoveAction1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_VerticalLayout1_i() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.verticalAlign = "top";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 90 + 54 + 1 + 1) * 61);
         }
         §§pop().gap = §§pop();
         this._KeywordItemRenderer_VerticalLayout1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_VerticalLayout1",this._KeywordItemRenderer_VerticalLayout1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "FYI: This keyword doesn\'t you match your filters, so it won\'t appear the next time you run Long Tail Pro.";
         §§push(_loc1_);
         §§push("color");
         §§push(1851498);
         if(_loc3_)
         {
            §§push(-(((§§pop() + 1) * 10 - 1 - 22 + 1) * 110));
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(11);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 90 * 118);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() + 46 + 1 - 1) * 7);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 57 - 77 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_KeywordItemRenderer_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_Label1",this._KeywordItemRenderer_Label1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "FYI: This keyword already existed under one of your seed keywords.  It has been moved to the My Own Keywords tab.";
         §§push(_loc1_);
         §§push("color");
         §§push(1851498);
         if(_loc3_)
         {
            §§push(§§pop() - 88 + 114 - 1 + 80 + 83);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(11);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 27) * 12 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingLeft");
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 1 + 56 - 5);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(5);
         if(_loc2_)
         {
            §§push((---§§pop() * 52 + 1) * 74 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "_KeywordItemRenderer_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_Label2",this._KeywordItemRenderer_Label2);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 73 + 78) - 1 - 16);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(-§§pop() - 85 + 1);
         }
         §§pop().height = §§pop();
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 21) + 12) + 1);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(-(§§pop() * 49) - 64) + 15) * 21);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._KeywordItemRenderer_KeywordColumnRenderer1_i(),this._KeywordItemRenderer_SelfAdjustingLabel1_i(),this._KeywordItemRenderer_SelfAdjustingLabel2_i(),this._KeywordItemRenderer_FormattedSelfAdjustingLabel1_i(),this._KeywordItemRenderer_FormattedSelfAdjustingLabel2_i(),this._KeywordItemRenderer_SelfAdjustingLabel3_i(),this._KeywordItemRenderer_FormattedSelfAdjustingLabel3_i(),this._KeywordItemRenderer_FormattedSelfAdjustingLabel4_i(),this._KeywordItemRenderer_FormattedSelfAdjustingLabel5_i(),this._KeywordItemRenderer_SelfAdjustingGroup1_i(),this._KeywordItemRenderer_CalculatableValueGroup1_i(),this._KeywordItemRenderer_CalculatableValueGroup2_i()];
         _loc1_.id = "rowGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.rowGroup = _loc1_;
         BindingManager.executeBindings(this,"rowGroup",this.rowGroup);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_KeywordColumnRenderer1_i() : com.enfluid.ltp.view.renderers.KeywordColumnRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.KeywordColumnRenderer = new com.enfluid.ltp.view.renderers.KeywordColumnRenderer();
         _loc1_.id = "_KeywordItemRenderer_KeywordColumnRenderer1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_KeywordColumnRenderer1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_KeywordColumnRenderer1",this._KeywordItemRenderer_KeywordColumnRenderer1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_SelfAdjustingLabel1_i() : SelfAdjustingLabel
      {
         var _loc1_:SelfAdjustingLabel = new SelfAdjustingLabel();
         _loc1_.id = "_KeywordItemRenderer_SelfAdjustingLabel1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_SelfAdjustingLabel1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_SelfAdjustingLabel1",this._KeywordItemRenderer_SelfAdjustingLabel1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_SelfAdjustingLabel2_i() : SelfAdjustingLabel
      {
         var _loc1_:SelfAdjustingLabel = new SelfAdjustingLabel();
         _loc1_.id = "_KeywordItemRenderer_SelfAdjustingLabel2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_SelfAdjustingLabel2 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_SelfAdjustingLabel2",this._KeywordItemRenderer_SelfAdjustingLabel2);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_FormattedSelfAdjustingLabel1_i() : FormattedSelfAdjustingLabel
      {
         var _loc1_:FormattedSelfAdjustingLabel = new FormattedSelfAdjustingLabel();
         _loc1_.id = "_KeywordItemRenderer_FormattedSelfAdjustingLabel1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_FormattedSelfAdjustingLabel1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_FormattedSelfAdjustingLabel1",this._KeywordItemRenderer_FormattedSelfAdjustingLabel1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_FormattedSelfAdjustingLabel2_i() : FormattedSelfAdjustingLabel
      {
         var _loc1_:FormattedSelfAdjustingLabel = new FormattedSelfAdjustingLabel();
         _loc1_.id = "_KeywordItemRenderer_FormattedSelfAdjustingLabel2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_FormattedSelfAdjustingLabel2 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_FormattedSelfAdjustingLabel2",this._KeywordItemRenderer_FormattedSelfAdjustingLabel2);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_SelfAdjustingLabel3_i() : SelfAdjustingLabel
      {
         var _loc1_:SelfAdjustingLabel = new SelfAdjustingLabel();
         _loc1_.id = "_KeywordItemRenderer_SelfAdjustingLabel3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_SelfAdjustingLabel3 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_SelfAdjustingLabel3",this._KeywordItemRenderer_SelfAdjustingLabel3);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_FormattedSelfAdjustingLabel3_i() : FormattedSelfAdjustingLabel
      {
         var _loc1_:FormattedSelfAdjustingLabel = new FormattedSelfAdjustingLabel();
         _loc1_.id = "_KeywordItemRenderer_FormattedSelfAdjustingLabel3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_FormattedSelfAdjustingLabel3 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_FormattedSelfAdjustingLabel3",this._KeywordItemRenderer_FormattedSelfAdjustingLabel3);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_FormattedSelfAdjustingLabel4_i() : FormattedSelfAdjustingLabel
      {
         var _loc1_:FormattedSelfAdjustingLabel = new FormattedSelfAdjustingLabel();
         _loc1_.id = "_KeywordItemRenderer_FormattedSelfAdjustingLabel4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_FormattedSelfAdjustingLabel4 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_FormattedSelfAdjustingLabel4",this._KeywordItemRenderer_FormattedSelfAdjustingLabel4);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_FormattedSelfAdjustingLabel5_i() : FormattedSelfAdjustingLabel
      {
         var _loc1_:FormattedSelfAdjustingLabel = new FormattedSelfAdjustingLabel();
         _loc1_.id = "_KeywordItemRenderer_FormattedSelfAdjustingLabel5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_FormattedSelfAdjustingLabel5 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_FormattedSelfAdjustingLabel5",this._KeywordItemRenderer_FormattedSelfAdjustingLabel5);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_SelfAdjustingGroup1_i() : SelfAdjustingGroup
      {
         var _loc1_:SelfAdjustingGroup = new SelfAdjustingGroup();
         _loc1_.layout = this._KeywordItemRenderer_VerticalLayout2_c();
         _loc1_.mxmlContent = [this._KeywordItemRenderer_DomainRenderer1_i(),this._KeywordItemRenderer_DomainRenderer2_i()];
         _loc1_.addEventListener("rollOut",this.__domainRendererGroup_rollOut);
         _loc1_.addEventListener("rollOver",this.__domainRendererGroup_rollOver);
         _loc1_.id = "domainRendererGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainRendererGroup = _loc1_;
         BindingManager.executeBindings(this,"domainRendererGroup",this.domainRendererGroup);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_VerticalLayout2_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1 + 1 - 1) + 87);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_DomainRenderer1_i() : com.enfluid.ltp.view.renderers.DomainRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainRenderer = new com.enfluid.ltp.view.renderers.DomainRenderer();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 52 - 117 + 1 - 38 - 1) * 76 * 15);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "domainsExact";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainsExact = _loc1_;
         BindingManager.executeBindings(this,"domainsExact",this.domainsExact);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_DomainRenderer2_i() : com.enfluid.ltp.view.renderers.DomainRenderer
      {
         var _loc1_:com.enfluid.ltp.view.renderers.DomainRenderer = new com.enfluid.ltp.view.renderers.DomainRenderer();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 67 - 1 - 8 + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "domainsHyphenated";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.domainsHyphenated = _loc1_;
         BindingManager.executeBindings(this,"domainsHyphenated",this.domainsHyphenated);
         return _loc1_;
      }
      
      public final function __domainRendererGroup_rollOut(param1:MouseEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      public final function __domainRendererGroup_rollOver(param1:MouseEvent) : void
      {
         this.domainsGroup_rollOverHandler(param1);
      }
      
      private final function _KeywordItemRenderer_CalculatableValueGroup1_i() : com.enfluid.ltp.view.renderers.CalculatableValueGroup
      {
         var _loc1_:com.enfluid.ltp.view.renderers.CalculatableValueGroup = new com.enfluid.ltp.view.renderers.CalculatableValueGroup();
         _loc1_.id = "_KeywordItemRenderer_CalculatableValueGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_CalculatableValueGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_CalculatableValueGroup1",this._KeywordItemRenderer_CalculatableValueGroup1);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_CalculatableValueGroup2_i() : com.enfluid.ltp.view.renderers.CalculatableValueGroup
      {
         var _loc1_:com.enfluid.ltp.view.renderers.CalculatableValueGroup = new com.enfluid.ltp.view.renderers.CalculatableValueGroup();
         _loc1_.id = "_KeywordItemRenderer_CalculatableValueGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._KeywordItemRenderer_CalculatableValueGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordItemRenderer_CalculatableValueGroup2",this._KeywordItemRenderer_CalculatableValueGroup2);
         return _loc1_;
      }
      
      private final function _KeywordItemRenderer_CompetitorAnalysisView1_i() : CompetitorAnalysisView
      {
         var _loc1_:CompetitorAnalysisView = new CompetitorAnalysisView();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() + 26) * 31 * 79 + 1 - 51);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.addEventListener("show",this.__caView_show);
         _loc1_.id = "caView";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.caView = _loc1_;
         BindingManager.executeBindings(this,"caView",this.caView);
         return _loc1_;
      }
      
      public final function __caView_show(param1:FlexEvent) : void
      {
      }
      
      public final function ___KeywordItemRenderer_LTPItemRenderer1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
      }
      
      public final function ___KeywordItemRenderer_LTPItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.isRolledOver = false;
      }
      
      public final function ___KeywordItemRenderer_LTPItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.isRolledOver = true;
      }
      
      private final function _KeywordItemRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 45 - 1 + 1 + 1) + 47);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            §§push(caView.height);
            §§push(45);
            if(_loc1_)
            {
               §§push((§§pop() + 46 - 1) * 26 * 59);
            }
            return §§pop() + §§pop();
         },null,"_KeywordItemRenderer_SetProperty1.value");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 98 + 59) + 1 + 24 - 3);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = !!keyword.isExpanded?"openstate":"closedstate";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.currentState");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 94) * 20);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_KeywordItemRenderer_AddAction1.target","caView");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() * 26 + 62) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_KeywordItemRenderer_Resize1.target");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() + 86 + 1 + 1 - 93 + 1 - 37);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_KeywordItemRenderer_Resize1.easer","powerEasing");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(--§§pop() - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_KeywordItemRenderer_Fade1.easer","powerEasing");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_KeywordItemRenderer_Fade1.target","caView");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(((§§pop() - 1 - 1) * 24 + 109) * 82 - 107 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_KeywordItemRenderer_Fade2.target","caView");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 112 - 1 + 105);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_KeywordItemRenderer_Fade2.easer","powerEasing");
         §§push(result);
         §§push(9);
         if(_loc2_)
         {
            §§push(§§pop() + 104 - 1 - 8);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_KeywordItemRenderer_Resize2.easer","powerEasing");
         §§push(result);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 68 - 1 + 1 + 16 + 6 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return this;
         },null,"_KeywordItemRenderer_Resize2.target");
         §§push(result);
         §§push(11);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1 + 1) + 1 + 105) * 69);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_KeywordItemRenderer_RemoveAction1.target","caView");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 + 73);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return keyword.showQuickAddDoesntMatchFilterWarning && keyword.isExpanded;
         },null,"_KeywordItemRenderer_Label1.includeInLayout");
         §§push(result);
         §§push(13);
         if(_loc3_)
         {
            §§push(--(§§pop() - 95 - 1) + 40);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return keyword.showQuickAddDoesntMatchFilterWarning && keyword.isExpanded;
         },null,"_KeywordItemRenderer_Label1.visible");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push((§§pop() + 112) * 61 + 20 - 1 + 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return keyword.movedToOwnKeywordsThisSession && keyword.isExpanded;
         },null,"_KeywordItemRenderer_Label2.includeInLayout");
         §§push(result);
         §§push(15);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1 + 18 + 75) + 1 - 117);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return keyword.movedToOwnKeywordsThisSession && keyword.isExpanded;
         },null,"_KeywordItemRenderer_Label2.visible");
         §§push(result);
         §§push(16);
         if(_loc3_)
         {
            §§push((§§pop() - 29 - 1 + 1 - 46 - 1) * 55);
         }
         §§pop()[§§pop()] = new Binding(this,function():KeywordVO
         {
            return keyword;
         },null,"_KeywordItemRenderer_KeywordColumnRenderer1.keyword");
         §§push(result);
         §§push(17);
         if(_loc2_)
         {
            §§push(§§pop() * 15 - 1 + 95);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver;
         },null,"_KeywordItemRenderer_KeywordColumnRenderer1.isRolledOver");
         §§push(result);
         §§push(18);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 92 + 99) + 23 - 1 + 29);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.keywords;
         },null,"_KeywordItemRenderer_KeywordColumnRenderer1.column");
         §§push(result);
         §§push(19);
         if(_loc2_)
         {
            §§push(--(§§pop() + 64 + 32 - 1 + 89) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = keyword.projectTitle;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_SelfAdjustingLabel1.text");
         §§push(result);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() + 103 + 97 - 76) + 33);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.project;
         },null,"_KeywordItemRenderer_SelfAdjustingLabel1.column");
         §§push(result);
         §§push(21);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) + 1 - 16) * 117 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = keyword.suggestedBidString;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_SelfAdjustingLabel2.text");
         §§push(result);
         §§push(22);
         if(_loc2_)
         {
            §§push(-((-§§pop() + 1) * 15 - 45 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.suggestedBid;
         },null,"_KeywordItemRenderer_SelfAdjustingLabel2.column");
         §§push(result);
         §§push(23);
         if(_loc2_)
         {
            §§push(-((§§pop() + 106 - 1 + 1) * 118));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcSearchesLabel(keyword,"local");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel1.text");
         §§push(result);
         §§push(24);
         if(_loc2_)
         {
            §§push(-((§§pop() * 82 - 1) * 44 - 85) + 1 + 8);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = AdWordsRestrictedToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel1.toolTip");
         §§push(result);
         §§push(25);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 + 4));
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.localSearches;
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel1.column");
         §§push(result);
         §§push(26);
         if(_loc3_)
         {
            §§push(---(§§pop() + 5 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcSearchesLabel(keyword,"global");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel2.text");
         §§push(result);
         §§push(27);
         if(_loc3_)
         {
            §§push(§§pop() + 91 + 1 - 71 + 55);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = AdWordsRestrictedGlobalToolTip;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel2.toolTip");
         §§push(result);
         §§push(28);
         if(_loc2_)
         {
            §§push(§§pop() + 51 - 48 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.globalSearches;
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel2.column");
         §§push(result);
         §§push(29);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 1 + 1 - 106);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = keyword.advertiserCompetition;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_SelfAdjustingLabel3.text");
         §§push(result);
         §§push(30);
         if(_loc2_)
         {
            §§push(((§§pop() - 85) * 119 + 1) * 110 - 80 - 89);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.advertizerCompetition;
         },null,"_KeywordItemRenderer_SelfAdjustingLabel3.column");
         §§push(result);
         §§push(31);
         if(_loc3_)
         {
            §§push(-((§§pop() * 39 - 112 - 78) * 19));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = keyword.numWords;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel3.text");
         §§push(result);
         §§push(32);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1 - 57 - 1) - 108);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.numWords;
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel3.column");
         §§push(result);
         §§push(33);
         if(_loc2_)
         {
            §§push(-(§§pop() - 54 - 1) - 29 - 93);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = keyword.googleTitleCompetition;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel4.text");
         §§push(result);
         §§push(34);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.googleTitleCompetition;
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel4.column");
         §§push(result);
         §§push(35);
         if(_loc3_)
         {
            §§push((§§pop() + 6 - 55 + 58 - 78) * 13);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = keyword.bingTitleCompetition;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel5.text");
         §§push(result);
         §§push(36);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 81) - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.bingTitleCompetition;
         },null,"_KeywordItemRenderer_FormattedSelfAdjustingLabel5.column");
         §§push(result);
         §§push(37);
         if(_loc2_)
         {
            §§push((§§pop() - 113 - 1 + 1) * 100 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.domainAvailability;
         },null,"domainRendererGroup.column");
         §§push(result);
         §§push(38);
         if(_loc3_)
         {
            §§push(-(§§pop() * 27 + 52 - 1) * 22 * 13);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainsVO
         {
            return keyword.domainsExact;
         },null,"domainsExact.domainsVO");
         §§push(result);
         §§push(39);
         if(_loc2_)
         {
            §§push(-§§pop() * 26 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainExtensionOptions
         {
            return model.selectedKeywordCollection.project.domainsExactMatchExtensions;
         },null,"domainsExact.options");
         §§push(result);
         §§push(40);
         if(_loc2_)
         {
            §§push(§§pop() * 47 + 1 - 1 + 77 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainsVO
         {
            return keyword.domainsHyphenated;
         },null,"domainsHyphenated.domainsVO");
         §§push(result);
         §§push(41);
         if(_loc3_)
         {
            §§push((§§pop() - 58 - 3 - 107) * 85);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainExtensionOptions
         {
            return model.selectedKeywordCollection.project.domainsHyphenatedExtensions;
         },null,"domainsHyphenated.options");
         §§push(result);
         §§push(42);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 - 1) * 26 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return keyword.amazonKC;
         },null,"_KeywordItemRenderer_CalculatableValueGroup1.value");
         §§push(result);
         §§push(43);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 - 1 - 1 + 113 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.amazonKC;
         },null,"_KeywordItemRenderer_CalculatableValueGroup1.column");
         §§push(result);
         §§push(44);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver;
         },null,"_KeywordItemRenderer_CalculatableValueGroup1.isRolledOverRow");
         §§push(result);
         §§push(45);
         if(_loc3_)
         {
            §§push(-((§§pop() - 30 + 9) * 70) * 52);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = CalculatableValueGroup.TYPE_AMAZON_KC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_CalculatableValueGroup1.type");
         §§push(result);
         §§push(46);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1) - 95);
         }
         §§pop()[§§pop()] = new Binding(this,function():KeywordVO
         {
            return keyword;
         },null,"_KeywordItemRenderer_CalculatableValueGroup1.keyword");
         §§push(result);
         §§push(47);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 106 - 1 - 1 - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return keyword.avgKC;
         },null,"_KeywordItemRenderer_CalculatableValueGroup2.value");
         §§push(result);
         §§push(48);
         if(_loc3_)
         {
            §§push(§§pop() + 74 - 78 - 93 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():GridColumn
         {
            return viewModel.keywordColumns.avgKC;
         },null,"_KeywordItemRenderer_CalculatableValueGroup2.column");
         §§push(result);
         §§push(49);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return isRolledOver;
         },null,"_KeywordItemRenderer_CalculatableValueGroup2.isRolledOverRow");
         §§push(result);
         §§push(50);
         if(_loc2_)
         {
            §§push(-(§§pop() - 82 - 56 - 89 + 1 - 24));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = CalculatableValueGroup.TYPE_AVG_KC;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_KeywordItemRenderer_CalculatableValueGroup2.type");
         §§push(result);
         §§push(51);
         if(_loc3_)
         {
            §§push(-(§§pop() - 106 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():KeywordVO
         {
            return keyword;
         },null,"_KeywordItemRenderer_CalculatableValueGroup2.keyword");
         §§push(result);
         §§push(52);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1 + 1 - 1) * 0 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():KeywordVO
         {
            return keyword;
         },null,"caView.keyword");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _KeywordItemRenderer_SetProperty1() : SetProperty
      {
         return this._383255065_KeywordItemRenderer_SetProperty1;
      }
      
      public function set _KeywordItemRenderer_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._383255065_KeywordItemRenderer_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._383255065_KeywordItemRenderer_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_KeywordItemRenderer_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _KeywordItemRenderer_VerticalLayout1() : VerticalLayout
      {
         return this._500352562_KeywordItemRenderer_VerticalLayout1;
      }
      
      public function set _KeywordItemRenderer_VerticalLayout1(param1:VerticalLayout) : void
      {
         var _loc2_:Object = this._500352562_KeywordItemRenderer_VerticalLayout1;
         if(_loc2_ !== param1)
         {
            this._500352562_KeywordItemRenderer_VerticalLayout1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_KeywordItemRenderer_VerticalLayout1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get caView() : CompetitorAnalysisView
      {
         return this._1368433629caView;
      }
      
      public function set caView(param1:CompetitorAnalysisView) : void
      {
         var _loc2_:Object = this._1368433629caView;
         if(_loc2_ !== param1)
         {
            this._1368433629caView = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"caView",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get closingTransition() : Transition
      {
         return this._501020694closingTransition;
      }
      
      public function set closingTransition(param1:Transition) : void
      {
         var _loc2_:Object = this._501020694closingTransition;
         if(_loc2_ !== param1)
         {
            this._501020694closingTransition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"closingTransition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainRendererGroup() : SelfAdjustingGroup
      {
         return this._2022178536domainRendererGroup;
      }
      
      public function set domainRendererGroup(param1:SelfAdjustingGroup) : void
      {
         var _loc2_:Object = this._2022178536domainRendererGroup;
         if(_loc2_ !== param1)
         {
            this._2022178536domainRendererGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainRendererGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainsExact() : com.enfluid.ltp.view.renderers.DomainRenderer
      {
         return this._531899376domainsExact;
      }
      
      public function set domainsExact(param1:com.enfluid.ltp.view.renderers.DomainRenderer) : void
      {
         var _loc2_:Object = this._531899376domainsExact;
         if(_loc2_ !== param1)
         {
            this._531899376domainsExact = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsExact",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainsHyphenated() : com.enfluid.ltp.view.renderers.DomainRenderer
      {
         return this._1736443437domainsHyphenated;
      }
      
      public function set domainsHyphenated(param1:com.enfluid.ltp.view.renderers.DomainRenderer) : void
      {
         var _loc2_:Object = this._1736443437domainsHyphenated;
         if(_loc2_ !== param1)
         {
            this._1736443437domainsHyphenated = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsHyphenated",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openingTransition() : Transition
      {
         return this._1148833997openingTransition;
      }
      
      public function set openingTransition(param1:Transition) : void
      {
         var _loc2_:Object = this._1148833997openingTransition;
         if(_loc2_ !== param1)
         {
            this._1148833997openingTransition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openingTransition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get powerEasing() : Power
      {
         return this._22944400powerEasing;
      }
      
      public function set powerEasing(param1:Power) : void
      {
         var _loc2_:Object = this._22944400powerEasing;
         if(_loc2_ !== param1)
         {
            this._22944400powerEasing = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"powerEasing",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rowGroup() : HGroup
      {
         return this._21521605rowGroup;
      }
      
      public function set rowGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._21521605rowGroup;
         if(_loc2_ !== param1)
         {
            this._21521605rowGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rowGroup",_loc2_,param1));
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
      private function get _bgcol() : uint
      {
         return this._1481525732_bgcol;
      }
      
      private function set _bgcol(param1:uint) : void
      {
         var _loc2_:Object = this._1481525732_bgcol;
         if(_loc2_ !== param1)
         {
            this._1481525732_bgcol = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_bgcol",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _nowcol() : uint
      {
         return this._1668865033_nowcol;
      }
      
      private function set _nowcol(param1:uint) : void
      {
         var _loc2_:Object = this._1668865033_nowcol;
         if(_loc2_ !== param1)
         {
            this._1668865033_nowcol = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_nowcol",_loc2_,param1));
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
      private function get isSelecteDomainExact() : Boolean
      {
         return this._1841624252isSelecteDomainExact;
      }
      
      private function set isSelecteDomainExact(param1:Boolean) : void
      {
         var _loc2_:Object = this._1841624252isSelecteDomainExact;
         if(_loc2_ !== param1)
         {
            this._1841624252isSelecteDomainExact = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSelecteDomainExact",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get isdomainsRendererCallout() : Boolean
      {
         return this._216455016isdomainsRendererCallout;
      }
      
      private function set isdomainsRendererCallout(param1:Boolean) : void
      {
         var _loc2_:Object = this._216455016isdomainsRendererCallout;
         if(_loc2_ !== param1)
         {
            this._216455016isdomainsRendererCallout = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isdomainsRendererCallout",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get topBottomPadding() : int
      {
         return this._1313897455topBottomPadding;
      }
      
      private function set topBottomPadding(param1:int) : void
      {
         var _loc2_:Object = this._1313897455topBottomPadding;
         if(_loc2_ !== param1)
         {
            this._1313897455topBottomPadding = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topBottomPadding",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get AdWordsRestrictedToolTip() : String
      {
         return this._1356814210AdWordsRestrictedToolTip;
      }
      
      private function set AdWordsRestrictedToolTip(param1:String) : void
      {
         var _loc2_:Object = this._1356814210AdWordsRestrictedToolTip;
         if(_loc2_ !== param1)
         {
            this._1356814210AdWordsRestrictedToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"AdWordsRestrictedToolTip",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get AdWordsRestrictedGlobalToolTip() : String
      {
         return this._62434079AdWordsRestrictedGlobalToolTip;
      }
      
      private function set AdWordsRestrictedGlobalToolTip(param1:String) : void
      {
         var _loc2_:Object = this._62434079AdWordsRestrictedGlobalToolTip;
         if(_loc2_ !== param1)
         {
            this._62434079AdWordsRestrictedGlobalToolTip = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"AdWordsRestrictedGlobalToolTip",_loc2_,param1));
            }
         }
      }
   }
}
