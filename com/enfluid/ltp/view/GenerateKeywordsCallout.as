package com.enfluid.ltp.view
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import spark.layouts.VerticalLayout;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.FindKeywordsButtonSkin;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.AddSeedKeywordsCommand;
   import com.enfluid.ltp.controller.keywordresearch.GenerateKeywordsCommand;
   import mx.events.FlexMouseEvent;
   import mx.graphics.RadialGradient;
   import spark.events.PopUpEvent;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class GenerateKeywordsCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
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
            §§push(-(§§pop() + 107) + 60);
         }
         §§pop().width = §§pop();
         this.horizontalPosition = "after";
         this.layout = this._GenerateKeywordsCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GenerateKeywordsCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___GenerateKeywordsCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___GenerateKeywordsCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(((§§pop() - 1 - 1) * 78 + 43 + 35) * 25);
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
      
      private final function _GenerateKeywordsCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push((-(§§pop() * 74) - 1 + 1) * 75 + 49 + 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 97 * 114);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() - 50 + 116 - 1) * 45) - 1 + 119);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 1);
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() * 69 - 38 + 49 - 1));
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
            §§push((§§pop() + 38 - 67) * 94 * 105 - 45);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() * 16) + 1);
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
         if(_loc3_)
         {
            §§push(§§pop() - 110 + 33 - 52 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(--(--(§§pop() * 56) - 1) * 32);
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 34) - 1 + 54 + 1);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._GenerateKeywordsCallout_KeywordPlannerSection1_i(),this._GenerateKeywordsCallout_AddYourOwnKeywordsSection1_i(),this._GenerateKeywordsCallout_Spacer1_c(),this._GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1_c()];
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
            §§push(-(-(§§pop() - 66 - 1) - 69));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.collapsed = true;
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc3_)
         {
            §§push(§§pop() - 34 - 1 - 1 + 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "keywordPlannerSection";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.keywordPlannerSection = _loc1_;
         BindingManager.executeBindings(this,"keywordPlannerSection",this.keywordPlannerSection);
         return _loc1_;
      }
      
      private final function _GenerateKeywordsCallout_AddYourOwnKeywordsSection1_i() : com.enfluid.ltp.view.AddYourOwnKeywordsSection
      {
         var _loc1_:com.enfluid.ltp.view.AddYourOwnKeywordsSection = new com.enfluid.ltp.view.AddYourOwnKeywordsSection();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 25 + 1 + 96));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.collapsed = true;
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 64 + 24) + 1 - 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "addYourOwnKeywordsSection";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.addYourOwnKeywordsSection = _loc1_;
         BindingManager.executeBindings(this,"addYourOwnKeywordsSection",this.addYourOwnKeywordsSection);
         return _loc1_;
      }
      
      private final function _GenerateKeywordsCallout_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1) + 48 - 99);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1_c() : CustomizeDataAndPreFilterSection
      {
         var _loc1_:CustomizeDataAndPreFilterSection = new CustomizeDataAndPreFilterSection();
         _loc1_.collapsed = true;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GenerateKeywordsCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 47) * 19);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(60);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 46 - 1) + 58) * 22);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 + 3) * 3));
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
         new AddSeedKeywordsCommand(this.keywordPlannerSection.mySeedKeywordsInput.text).execute();
         new GenerateKeywordsCommand().execute();
         this.viewModel.showGenerateKeywordsCallout = false;
      }
      
      public final function ___GenerateKeywordsCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___GenerateKeywordsCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.viewModel.showGenerateKeywordsCallout = false;
      }
      
      private final function _GenerateKeywordsCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) + 1) * 117 + 1 + 102);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !model.isPlatinum;
         },null,"addYourOwnKeywordsSection.showLock");
         return result;
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
