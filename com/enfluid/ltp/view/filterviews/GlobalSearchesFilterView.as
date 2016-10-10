package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class GlobalSearchesFilterView extends RangeFilterView implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GlobalSearchesFilterView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._GlobalSearchesFilterView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_filterviews_GlobalSearchesFilterViewWatcherSetupUtil");
            _loc2_["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GlobalSearchesFilterView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 66 * 35);
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
         GlobalSearchesFilterView._watcherSetupUtil = param1;
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
      
      private final function _GlobalSearchesFilterView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() - 47 + 75);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.globalSearchesFilterMin;
         },null,"this.min");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 4) * 14 + 64 + 6);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.globalSearchesFilterMax;
         },null,"this.max");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 45 * 106 - 63);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.min;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.globalSearchesFilterMin = param1;
         },"DataModel.instance.selectedKeywordCollection.project.globalSearchesFilterMin");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() * 13 - 1 + 1 - 12 - 8) * 92 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 1) * 71);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 74 - 79) * 107 * 11 + 1 - 1 - 6);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 103 - 21);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1 - 74);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) + 23 + 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.max;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.globalSearchesFilterMax = param1;
         },"DataModel.instance.selectedKeywordCollection.project.globalSearchesFilterMax");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 1) * 114));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1) - 22);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 33 - 33 + 1) - 85 - 4);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() - 54 + 1 + 1 - 66 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _GlobalSearchesFilterView_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         DataModel.instance.selectedKeywordCollection.project.globalSearchesFilterMin = this.min;
         DataModel.instance.selectedKeywordCollection.project.globalSearchesFilterMax = this.max;
      }
   }
}
