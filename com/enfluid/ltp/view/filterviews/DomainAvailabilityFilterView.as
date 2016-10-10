package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.CheckBox;
   import mx.core.IFlexModuleFactory;
   import mx.binding.BindingManager;
   import flash.events.Event;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.FlexEvent;
   import spark.components.HGroup;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class DomainAvailabilityFilterView extends FilterView implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _979174762_DomainAvailabilityFilterView_CheckBox1:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DomainAvailabilityFilterView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._DomainAvailabilityFilterView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_filterviews_DomainAvailabilityFilterViewWatcherSetupUtil");
            _loc2_["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DomainAvailabilityFilterView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._DomainAvailabilityFilterView_CheckBox1_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 1 + 111 - 50) * 42);
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
         DomainAvailabilityFilterView._watcherSetupUtil = param1;
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
      
      private final function _DomainAvailabilityFilterView_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() * 59 - 114 - 1) * 87 - 91);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.label = "Has Available Domain";
         _loc1_.addEventListener("change",this.___DomainAvailabilityFilterView_CheckBox1_change);
         _loc1_.id = "_DomainAvailabilityFilterView_CheckBox1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainAvailabilityFilterView_CheckBox1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainAvailabilityFilterView_CheckBox1",this._DomainAvailabilityFilterView_CheckBox1);
         return _loc1_;
      }
      
      public final function ___DomainAvailabilityFilterView_CheckBox1_change(param1:Event) : void
      {
         refreshData();
      }
      
      private final function _DomainAvailabilityFilterView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 29 - 41 - 33) * 58 - 54);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return DataModel.instance.selectedKeywordCollection.project.domainsHasAvailableFilter;
         },null,"_DomainAvailabilityFilterView_CheckBox1.selected");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 65 + 1) * 50 + 1 - 20 - 20);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _DomainAvailabilityFilterView_CheckBox1.selected;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.domainsHasAvailableFilter = param1;
         },"DataModel.instance.selectedKeywordCollection.project.domainsHasAvailableFilter");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 87 - 1 - 1 - 13));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() - 0 + 1 - 1 - 17) * 16 - 39);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 57);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 58 + 85 + 41 - 95 - 55 + 1));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 35);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _DomainAvailabilityFilterView_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         DataModel.instance.selectedKeywordCollection.project.domainsHasAvailableFilter = this._DomainAvailabilityFilterView_CheckBox1.selected;
      }
      
      [Bindable(event="propertyChange")]
      public function get _DomainAvailabilityFilterView_CheckBox1() : CheckBox
      {
         return this._979174762_DomainAvailabilityFilterView_CheckBox1;
      }
      
      public function set _DomainAvailabilityFilterView_CheckBox1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._979174762_DomainAvailabilityFilterView_CheckBox1;
         if(_loc2_ !== param1)
         {
            this._979174762_DomainAvailabilityFilterView_CheckBox1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_DomainAvailabilityFilterView_CheckBox1",_loc2_,param1));
            }
         }
      }
   }
}
