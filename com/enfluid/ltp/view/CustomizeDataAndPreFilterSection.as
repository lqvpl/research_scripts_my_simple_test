package com.enfluid.ltp.view
{
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.view.dataandfilters.SuggestedBidSection;
   import com.enfluid.ltp.view.dataandfilters.LocalSearchesSection;
   import com.enfluid.ltp.view.dataandfilters.AdvertiserCompetitionSection;
   import com.enfluid.ltp.view.dataandfilters.NumWordsSection;
   import mx.controls.Spacer;
   import spark.components.Label;
   import com.enfluid.ltp.view.dataandfilters.GlobalSearchVolumeSection;
   import com.enfluid.ltp.view.dataandfilters.domain.DomainAvailabilitySection;
   import com.enfluid.ltp.view.dataandfilters.GoogleTitleCompetitionSection;
   import com.enfluid.ltp.view.dataandfilters.BingTitleCompetitionSection;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   
   public final class CustomizeDataAndPreFilterSection extends CollapsiblePanel
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      public function CustomizeDataAndPreFilterSection()
      {
         this._104069929model = DataModel.instance;
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 108 * 102 + 1 + 23) - 74);
         }
         §§pop().percentWidth = §§pop();
         this.title = "Customize Data & Pre-Filter";
         this.layout = this._CustomizeDataAndPreFilterSection_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._CustomizeDataAndPreFilterSection_Array1_c);
         this.addEventListener("creationComplete",this.___CustomizeDataAndPreFilterSection_CollapsiblePanel1_creationComplete);
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
            this.color = 6710886;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected final function initPanel(param1:FlexEvent) : void
      {
         var event:FlexEvent = param1;
         addEventListener("collapsedChanged",function():void
         {
            if(!collapsed)
            {
               new SetUserEvent("UserEvent.FindKeywords.CustomizeData.Opened").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.FindKeywords.CustomizeData.Closed").execute();
            }
         });
      }
      
      private final function _CustomizeDataAndPreFilterSection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 7);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 105 + 1) * 116);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 77 - 35 + 48 + 37) * 22);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 66 - 88 - 2 + 1);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._CustomizeDataAndPreFilterSection_SuggestedBidSection1_c(),this._CustomizeDataAndPreFilterSection_LocalSearchesSection1_c(),this._CustomizeDataAndPreFilterSection_AdvertiserCompetitionSection1_c(),this._CustomizeDataAndPreFilterSection_NumWordsSection1_c(),this._CustomizeDataAndPreFilterSection_Spacer1_c(),this._CustomizeDataAndPreFilterSection_Label1_c(),this._CustomizeDataAndPreFilterSection_GlobalSearchVolumeSection1_c(),this._CustomizeDataAndPreFilterSection_DomainAvailabilitySection1_c(),this._CustomizeDataAndPreFilterSection_GoogleTitleCompetitionSection1_c(),this._CustomizeDataAndPreFilterSection_BingTitleCompetitionSection1_c(),this._CustomizeDataAndPreFilterSection_SetDefaultSection1_c()];
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_SuggestedBidSection1_c() : SuggestedBidSection
      {
         var _loc1_:SuggestedBidSection = new SuggestedBidSection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_LocalSearchesSection1_c() : LocalSearchesSection
      {
         var _loc1_:LocalSearchesSection = new LocalSearchesSection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_AdvertiserCompetitionSection1_c() : AdvertiserCompetitionSection
      {
         var _loc1_:AdvertiserCompetitionSection = new AdvertiserCompetitionSection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_NumWordsSection1_c() : NumWordsSection
      {
         var _loc1_:NumWordsSection = new NumWordsSection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(15);
         if(_loc3_)
         {
            §§push((-§§pop() + 1) * 101);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "The following require additional processing time:";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_GlobalSearchVolumeSection1_c() : GlobalSearchVolumeSection
      {
         var _loc1_:GlobalSearchVolumeSection = new GlobalSearchVolumeSection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_DomainAvailabilitySection1_c() : DomainAvailabilitySection
      {
         var _loc1_:DomainAvailabilitySection = new DomainAvailabilitySection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_GoogleTitleCompetitionSection1_c() : GoogleTitleCompetitionSection
      {
         var _loc1_:GoogleTitleCompetitionSection = new GoogleTitleCompetitionSection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_BingTitleCompetitionSection1_c() : BingTitleCompetitionSection
      {
         var _loc1_:BingTitleCompetitionSection = new BingTitleCompetitionSection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _CustomizeDataAndPreFilterSection_SetDefaultSection1_c() : SetDefaultSection
      {
         var _loc1_:SetDefaultSection = new SetDefaultSection();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___CustomizeDataAndPreFilterSection_CollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
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
   }
}
