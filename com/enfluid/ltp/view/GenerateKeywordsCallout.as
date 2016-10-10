package com.enfluid.ltp.view
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import mx.core.IFlexModuleFactory;
   import flash.events.MouseEvent;
   import com.adobe.utils.StringUtil;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.AddSeedKeywordsCommand;
   import com.enfluid.ltp.controller.keywordresearch.GenerateKeywordsCommand;
   import spark.events.PopUpEvent;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import spark.layouts.VerticalLayout;
   import flash.events.Event;
   import spark.components.Scroller;
   import flash.utils.setTimeout;
   import spark.components.VGroup;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import mx.binding.Binding;
   import system.data.lists.ArrayList;
   import mx.controls.Spacer;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.FindKeywordsButtonSkin;
   import mx.events.FlexMouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class GenerateKeywordsCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _574600560_GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1:com.enfluid.ltp.view.CustomizeDataAndPreFilterSection;
      
      private var _917824759addYourOwnKeywordsSection:com.enfluid.ltp.view.AddYourOwnKeywordsSection;
      
      private var _1830339324keywordPlannerSection:com.enfluid.ltp.view.KeywordPlannerSection;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _549121814projectDetailsGroup:ArrayCollection;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GenerateKeywordsCallout()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._549121814projectDetailsGroup = new ArrayCollection([{
            "label":"All Keywords",
            "link":false,
            "removeIcon":false
         },{
            "label":"Favorites",
            "link":false,
            "removeIcon":false,
            "icon":AssetsLibrary.YELLOW_STAR
         },{
            "label":"My Own Keywords",
            "link":true,
            "removeIcon":false
         }]);
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._GenerateKeywordsCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_GenerateKeywordsCalloutWatcherSetupUtil");
            _loc2_["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GenerateKeywordsCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(605);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 5 + 1);
         }
         §§pop().width = §§pop();
         this.horizontalPosition = "after";
         this.layout = this._GenerateKeywordsCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GenerateKeywordsCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___GenerateKeywordsCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___GenerateKeywordsCallout_Callout1_close);
         this.addEventListener("creationComplete",this.___GenerateKeywordsCallout_Callout1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 61 - 1) - 85 - 56);
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
         GenerateKeywordsCallout._watcherSetupUtil = param1;
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
            this.color = 0;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected final function generateKeywords(param1:MouseEvent) : void
      {
         var _loc2_:String = StringUtil.trim(this.keywordPlannerSection.mySeedKeywordsInput.text);
         new AddSeedKeywordsCommand(this.keywordPlannerSection.mySeedKeywordsInput.text).execute();
         new GenerateKeywordsCommand().execute();
         this.viewModel.showGenerateKeywordsCallout = false;
         new SetUserEvent("UserEvent.Project.GenerateKeywords",{
            "SeedKeyword":_loc2_,
            "OwnKeywords":this.model.selectedProject.pendingOwnKeywords,
            "suggestedBidFilterMin":this.model.selectedKeywordCollection.project.suggestedBidEnabled,
            "suggestedBidFilterMin":this.model.selectedKeywordCollection.project.suggestedBidFilterMin,
            "suggestedBidFilterMax":this.model.selectedKeywordCollection.project.suggestedBidFilterMax,
            "localSearchesEnabled":this.model.selectedKeywordCollection.project.localSearchesEnabled,
            "localSearchesFilterMin":this.model.selectedKeywordCollection.project.localSearchesFilterMin,
            "localSearchesFilterMax":this.model.selectedKeywordCollection.project.localSearchesFilterMax,
            "advertiserCompEnabled":this.model.selectedKeywordCollection.project.advertiserCompEnabled,
            "localSearchesFilterMin":this.model.selectedKeywordCollection.project.advertiserCompFilterLow,
            "advertiserCompFilterMed":this.model.selectedKeywordCollection.project.advertiserCompFilterMed,
            "advertiserCompFilterHigh":this.model.selectedKeywordCollection.project.advertiserCompFilterHigh,
            "numWordsEnabled":this.model.selectedKeywordCollection.project.numWordsEnabled,
            "numWordsFilterMin":this.model.selectedKeywordCollection.project.numWordsFilterMin,
            "numWordsFilterMax":this.model.selectedKeywordCollection.project.numWordsFilterMax,
            "globalSearchesEnabled":this.model.selectedKeywordCollection.project.globalSearchesEnabled,
            "globalSearchesFilterMin":this.model.selectedKeywordCollection.project.globalSearchesFilterMin,
            "globalSearchesFilterMax":this.model.selectedKeywordCollection.project.globalSearchesFilterMax,
            "domainsEnabled":this.model.selectedKeywordCollection.project.domainsEnabled,
            "googleTitleCompEnabled":this.model.selectedKeywordCollection.project.googleTitleCompEnabled,
            "googleTitleCompFilterMin":this.model.selectedKeywordCollection.project.googleTitleCompFilterMin,
            "googleTitleCompFilterMax":this.model.selectedKeywordCollection.project.googleTitleCompFilterMax,
            "bingTitleCompEnabled":this.model.selectedKeywordCollection.project.bingTitleCompEnabled,
            "bingTitleCompFilterMin":this.model.selectedKeywordCollection.project.bingTitleCompFilterMin,
            "bingTitleCompFilterMax":this.model.selectedKeywordCollection.project.bingTitleCompFilterMax
         }).execute();
      }
      
      protected final function initPanel(param1:FlexEvent) : void
      {
         var event:FlexEvent = param1;
         new SetUserEvent("UserEvent.FindKeywords.Opened").execute();
         addEventListener(PopUpEvent.OPEN,function():void
         {
            new SetUserEvent("UserEvent.FindKeywords.Opened").execute();
         });
         addEventListener(PopUpEvent.CLOSE,function():void
         {
            new SetUserEvent("UserEvent.FindKeywords.Closed").execute();
         });
      }
      
      private final function _GenerateKeywordsCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 90 - 51 - 36 + 1) + 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() * 18 - 5 - 85);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 68 + 20));
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(--(§§pop() * 90) + 77 - 94 - 1);
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 102 - 90));
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _GenerateKeywordsCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._GenerateKeywordsCallout_Scroller1_c(),this._GenerateKeywordsCallout_Button1_c()];
         return _loc1_;
      }
      
      private final function _GenerateKeywordsCallout_Scroller1_c() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 65 + 85 + 72 + 1) * 77 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 90 * 111 * 9 - 87);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.viewport = this._GenerateKeywordsCallout_VGroup1_c();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GenerateKeywordsCallout_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 21 - 40));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(---§§pop());
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 39);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._GenerateKeywordsCallout_KeywordPlannerSection1_i(),this._GenerateKeywordsCallout_AddYourOwnKeywordsSection1_i(),this._GenerateKeywordsCallout_Spacer1_c(),this._GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GenerateKeywordsCallout_KeywordPlannerSection1_i() : com.enfluid.ltp.view.KeywordPlannerSection
      {
         var _loc1_:com.enfluid.ltp.view.KeywordPlannerSection = new com.enfluid.ltp.view.KeywordPlannerSection();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 52 + 5);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc2_)
         {
            §§push(--(§§pop() + 32 - 84 - 50) + 89 - 63);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.__keywordPlannerSection_click);
         _loc1_.id = "keywordPlannerSection";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.keywordPlannerSection = _loc1_;
         BindingManager.executeBindings(this,"keywordPlannerSection",this.keywordPlannerSection);
         return _loc1_;
      }
      
      public final function __keywordPlannerSection_click(param1:MouseEvent) : void
      {
         new SavePreferencesCommand().execute();
      }
      
      private final function _GenerateKeywordsCallout_AddYourOwnKeywordsSection1_i() : com.enfluid.ltp.view.AddYourOwnKeywordsSection
      {
         var _loc1_:com.enfluid.ltp.view.AddYourOwnKeywordsSection = new com.enfluid.ltp.view.AddYourOwnKeywordsSection();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 8) + 1 + 53) - 114);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 - 70));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.__addYourOwnKeywordsSection_click);
         _loc1_.id = "addYourOwnKeywordsSection";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.addYourOwnKeywordsSection = _loc1_;
         BindingManager.executeBindings(this,"addYourOwnKeywordsSection",this.addYourOwnKeywordsSection);
         return _loc1_;
      }
      
      public final function __addYourOwnKeywordsSection_click(param1:MouseEvent) : void
      {
         new SavePreferencesCommand().execute();
      }
      
      private final function _GenerateKeywordsCallout_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((-(§§pop() - 110 + 1 - 1) - 1) * 30);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1_i() : com.enfluid.ltp.view.CustomizeDataAndPreFilterSection
      {
         var _loc1_:com.enfluid.ltp.view.CustomizeDataAndPreFilterSection = new com.enfluid.ltp.view.CustomizeDataAndPreFilterSection();
         _loc1_.addEventListener("click",this.___GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1_click);
         _loc1_.id = "_GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1 = _loc1_;
         BindingManager.executeBindings(this,"_GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1",this._GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1);
         return _loc1_;
      }
      
      public final function ___GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1_click(param1:MouseEvent) : void
      {
         new SavePreferencesCommand().execute();
      }
      
      private final function _GenerateKeywordsCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 96 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(60);
         if(_loc3_)
         {
            §§push(-((§§pop() + 117) * 15));
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() + 84 - 1 + 1 - 1 + 57 + 97 - 29);
         }
         §§pop().right = §§pop();
         _loc1_.label = "Generate Keywords & Fetch Data";
         _loc1_.setStyle("skinClass",FindKeywordsButtonSkin);
         _loc1_.addEventListener("click",this.___GenerateKeywordsCallout_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___GenerateKeywordsCallout_Button1_click(param1:MouseEvent) : void
      {
         this.generateKeywords(param1);
      }
      
      public final function ___GenerateKeywordsCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___GenerateKeywordsCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.viewModel.showGenerateKeywordsCallout = false;
      }
      
      public final function ___GenerateKeywordsCallout_Callout1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _GenerateKeywordsCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 19) * 89 - 1 + 47);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.addSeedKeywordsOpen;
         },null,"keywordPlannerSection.expanded");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 101 + 31 + 30);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isPlatinum;
         },null,"addYourOwnKeywordsSection.showLock");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 1 + 1 - 111 + 82 - 75);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.addMyOwnKeywordsOpen;
         },null,"addYourOwnKeywordsSection.expanded");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((-§§pop() + 1) * 22 + 57 - 9 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.preferences.customizeDataPreFilterOpen;
         },null,"_GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1.expanded");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() - 108 - 2 - 1 + 12);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return keywordPlannerSection.expanded;
         },function(param1:*):void
         {
            model.preferences.addSeedKeywordsOpen = param1;
         },"model.preferences.addSeedKeywordsOpen");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(-((§§pop() + 43) * 82) + 1) + 97);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1 - 1) * 58);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 51 + 84 + 1 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 - 1) - 17 + 78);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() * 56 * 14 + 19);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() * 21 - 88 + 1) * 105 - 69 - 1 - 55);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return addYourOwnKeywordsSection.expanded;
         },function(param1:*):void
         {
            model.preferences.addMyOwnKeywordsOpen = param1;
         },"model.preferences.addMyOwnKeywordsOpen");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 7 + 47) - 70);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 19 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 103 - 94 + 116);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 84 * 23 + 1 + 82 + 103);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 103 + 1) * 89 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() - 38 + 94 - 79);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1.expanded;
         },function(param1:*):void
         {
            model.preferences.customizeDataPreFilterOpen = param1;
         },"model.preferences.customizeDataPreFilterOpen");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((-((§§pop() + 49) * 62) + 1) * 55);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(--(§§pop() - 60 - 1) * 118 * 75 * 92);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 79 + 1 - 72) * 41 * 96);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() - 95 - 1) * 108 - 16);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _GenerateKeywordsCallout_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.preferences.addSeedKeywordsOpen = this.keywordPlannerSection.expanded;
         this.model.preferences.addMyOwnKeywordsOpen = this.addYourOwnKeywordsSection.expanded;
         this.model.preferences.customizeDataPreFilterOpen = this._GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1.expanded;
      }
      
      [Bindable(event="propertyChange")]
      public function get _GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1() : com.enfluid.ltp.view.CustomizeDataAndPreFilterSection
      {
         return this._574600560_GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1;
      }
      
      public function set _GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1(param1:com.enfluid.ltp.view.CustomizeDataAndPreFilterSection) : void
      {
         var _loc2_:Object = this._574600560_GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1;
         if(_loc2_ !== param1)
         {
            this._574600560_GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addYourOwnKeywordsSection() : com.enfluid.ltp.view.AddYourOwnKeywordsSection
      {
         return this._917824759addYourOwnKeywordsSection;
      }
      
      public function set addYourOwnKeywordsSection(param1:com.enfluid.ltp.view.AddYourOwnKeywordsSection) : void
      {
         var _loc2_:Object = this._917824759addYourOwnKeywordsSection;
         if(_loc2_ !== param1)
         {
            this._917824759addYourOwnKeywordsSection = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addYourOwnKeywordsSection",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordPlannerSection() : com.enfluid.ltp.view.KeywordPlannerSection
      {
         return this._1830339324keywordPlannerSection;
      }
      
      public function set keywordPlannerSection(param1:com.enfluid.ltp.view.KeywordPlannerSection) : void
      {
         var _loc2_:Object = this._1830339324keywordPlannerSection;
         if(_loc2_ !== param1)
         {
            this._1830339324keywordPlannerSection = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordPlannerSection",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get projectDetailsGroup() : ArrayCollection
      {
         return this._549121814projectDetailsGroup;
      }
      
      private function set projectDetailsGroup(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._549121814projectDetailsGroup;
         if(_loc2_ !== param1)
         {
            this._549121814projectDetailsGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"projectDetailsGroup",_loc2_,param1));
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
