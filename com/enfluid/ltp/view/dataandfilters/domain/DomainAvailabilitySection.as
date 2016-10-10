package com.enfluid.ltp.view.dataandfilters.domain
{
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import spark.layouts.VerticalLayout;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.filterviews.DomainAvailabilityFilterView;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import com.enfluid.ltp.view.AddYourOwnKeywordsSection;
   import spark.components.Label;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.HGroup;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralComboBoxButtonSkin;
   import mx.binding.Binding;
   import assets.TextAssets;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class DomainAvailabilitySection extends CheckBoxCollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _DomainAvailabilitySection_DomainsGroup1:com.enfluid.ltp.view.dataandfilters.domain.DomainsGroup;
      
      public var _DomainAvailabilitySection_DomainsGroup2:com.enfluid.ltp.view.dataandfilters.domain.DomainsGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DomainAvailabilitySection()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._DomainAvailabilitySection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_dataandfilters_domain_DomainAvailabilitySectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DomainAvailabilitySection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(((-(§§pop() - 48 + 1) - 110) * 25 + 1) * 61);
         }
         §§pop().percentWidth = §§pop();
         this.title = "Domain Availability";
         this.layout = this._DomainAvailabilitySection_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._DomainAvailabilitySection_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 35 + 58);
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
         DomainAvailabilitySection._watcherSetupUtil = param1;
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
      
      private final function _DomainAvailabilitySection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         return _loc1_;
      }
      
      private final function _DomainAvailabilitySection_Array1_c() : Array
      {
         var _loc1_:Array = [this._DomainAvailabilitySection_DomainAvailabilityFilterView1_c(),this._DomainAvailabilitySection_Spacer1_c(),this._DomainAvailabilitySection_Label1_c(),this._DomainAvailabilitySection_DomainsGroup1_i(),this._DomainAvailabilitySection_Spacer2_c(),this._DomainAvailabilitySection_Label2_c(),this._DomainAvailabilitySection_DomainsGroup2_i()];
         return _loc1_;
      }
      
      private final function _DomainAvailabilitySection_DomainAvailabilityFilterView1_c() : DomainAvailabilityFilterView
      {
         var _loc1_:DomainAvailabilityFilterView = new DomainAvailabilityFilterView();
         _loc1_.liveRefresh = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DomainAvailabilitySection_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() - 72) - 1 + 119);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DomainAvailabilitySection_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Exact Match Domain Names:";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DomainAvailabilitySection_DomainsGroup1_i() : com.enfluid.ltp.view.dataandfilters.domain.DomainsGroup
      {
         var _loc1_:com.enfluid.ltp.view.dataandfilters.domain.DomainsGroup = new com.enfluid.ltp.view.dataandfilters.domain.DomainsGroup();
         _loc1_.liveRefresh = false;
         _loc1_.id = "_DomainAvailabilitySection_DomainsGroup1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainAvailabilitySection_DomainsGroup1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainAvailabilitySection_DomainsGroup1",this._DomainAvailabilitySection_DomainsGroup1);
         return _loc1_;
      }
      
      private final function _DomainAvailabilitySection_Spacer2_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 61 + 1) + 102);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DomainAvailabilitySection_Label2_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Hyphenated Domain Names:";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _DomainAvailabilitySection_DomainsGroup2_i() : com.enfluid.ltp.view.dataandfilters.domain.DomainsGroup
      {
         var _loc1_:com.enfluid.ltp.view.dataandfilters.domain.DomainsGroup = new com.enfluid.ltp.view.dataandfilters.domain.DomainsGroup();
         _loc1_.liveRefresh = false;
         _loc1_.id = "_DomainAvailabilitySection_DomainsGroup2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainAvailabilitySection_DomainsGroup2 = _loc1_;
         BindingManager.executeBindings(this,"_DomainAvailabilitySection_DomainsGroup2",this._DomainAvailabilitySection_DomainsGroup2);
         return _loc1_;
      }
      
      private final function _DomainAvailabilitySection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 42);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_DOMAIN_AVAILABILITY_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpTitle");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(--((-§§pop() - 1 + 1) * 99) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_DOMAIN_AVAILABILITY_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpContent");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() * 117) + 1 - 16 - 7);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.domainsEnabled;
         },null,"this.expanded");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() * 59 + 1 - 49 - 23);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainExtensionOptions
         {
            return model.selectedProject.domainsExactMatchExtensions;
         },null,"_DomainAvailabilitySection_DomainsGroup1.domainsHyphenatedExtensions");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() + 84 - 1 - 1 + 11 + 39 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainExtensionOptions
         {
            return model.selectedProject.domainsHyphenatedExtensions;
         },null,"_DomainAvailabilitySection_DomainsGroup2.domainsHyphenatedExtensions");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(--§§pop() + 1 + 84);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.expanded;
         },function(param1:*):void
         {
            model.selectedProject.domainsEnabled = param1;
         },"model.selectedProject.domainsEnabled");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 116) + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 63 + 83 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 80 - 1 + 1 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 1 + 1) * 93 - 4) + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() * 74 - 1) + 110);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _DomainAvailabilitySection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedProject.domainsEnabled = this.expanded;
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
