package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchBingTitleCompetitionCommand;
   import com.enfluid.ltp.util.MajesticUtils;
   import mx.rpc.http.HTTPService;
   import spark.components.CheckBox;
   import mx.core.IFlexModuleFactory;
   import flash.events.Event;
   import hr.binaria.asx3m.converters.IConverter;
   import hr.binaria.asx3m.core.ConversionException;
   import spark.components.VGroup;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import spark.components.DataGrid;
   import flash.utils.ByteArray;
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
            §§push(§§pop() - 45 + 1 - 65 + 35);
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
            §§push((§§pop() * 14 + 1) * 57 - 1 + 1);
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
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 107) * 39 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return DataModel.instance.selectedKeywordCollection.project.domainsHasAvailableFilter;
         },null,"_DomainAvailabilityFilterView_CheckBox1.selected");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 16 + 99);
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
            §§push((-§§pop() + 1 - 108 - 1 + 1) * 46);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() + 46) * 41 + 109 - 113) * 94 * 51 - 84);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1 + 96) * 2 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 1) * 68 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1 + 70) * 61);
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
