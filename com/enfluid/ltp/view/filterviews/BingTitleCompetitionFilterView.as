package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.HelpButton;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import spark.filters.DropShadowFilter;
   import com.enfluid.ltp.util.Logger;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import spark.components.CheckBox;
   import spark.layouts.VerticalLayout;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class BingTitleCompetitionFilterView extends RangeFilterView implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BingTitleCompetitionFilterView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._BingTitleCompetitionFilterView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_filterviews_BingTitleCompetitionFilterViewWatcherSetupUtil");
            _loc2_["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return BingTitleCompetitionFilterView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 34) * 94 * 61 + 19);
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
         BingTitleCompetitionFilterView._watcherSetupUtil = param1;
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
      
      private final function _BingTitleCompetitionFilterView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 91 + 1) * 47);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.bingTitleCompFilterMin;
         },null,"this.min");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() + 83 - 1 + 45) + 1) * 58);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.bingTitleCompFilterMax;
         },null,"this.max");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 65 - 55 + 43 + 111);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.min;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.bingTitleCompFilterMin = param1;
         },"DataModel.instance.selectedKeywordCollection.project.bingTitleCompFilterMin");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() * 108 - 75) + 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 37 - 40) - 98);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 113 - 56 + 1) + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 1) + 1));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() * 117) + 1 + 2 + 119);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.max;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.bingTitleCompFilterMax = param1;
         },"DataModel.instance.selectedKeywordCollection.project.bingTitleCompFilterMax");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 5 - 1 + 32 + 41 + 75);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 17 + 113 + 18 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1 - 1 + 1) + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 4 + 1) * 82 * 9 + 54 - 103);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((-(-§§pop() - 1) * 90 - 33) * 15);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _BingTitleCompetitionFilterView_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         DataModel.instance.selectedKeywordCollection.project.bingTitleCompFilterMin = this.min;
         DataModel.instance.selectedKeywordCollection.project.bingTitleCompFilterMax = this.max;
      }
   }
}
