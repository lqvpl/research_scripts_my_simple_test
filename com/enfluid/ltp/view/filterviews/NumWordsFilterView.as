package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.events.FlexEvent;
   import mx.core.IFlexModuleFactory;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import system.serializers.§eden:release§.debug;
   import system.serializers.eden.strings;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class NumWordsFilterView extends RangeFilterView implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NumWordsFilterView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._NumWordsFilterView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_filterviews_NumWordsFilterViewWatcherSetupUtil");
            _loc2_["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return NumWordsFilterView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 112 + 1) * 76);
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
         NumWordsFilterView._watcherSetupUtil = param1;
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
      
      private final function _NumWordsFilterView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) * 44 - 83 + 61) * 111 * 55);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.numWordsFilterMin;
         },null,"this.min");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 66 + 13 + 91);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.numWordsFilterMax;
         },null,"this.max");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1 + 1 - 70 + 60) * 61);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.min;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.numWordsFilterMin = param1;
         },"DataModel.instance.selectedKeywordCollection.project.numWordsFilterMin");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 8 - 116 + 1 - 57 - 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 92 - 1 + 70 - 43);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((-(§§pop() - 1) + 1) * 63) * 74);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(-§§pop() - 1 - 96 + 94) + 7);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() * 117 - 1) * 20 - 102 + 1 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((-(§§pop() * 12 + 107) + 1) * 2 + 81);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.max;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.numWordsFilterMax = param1;
         },"DataModel.instance.selectedKeywordCollection.project.numWordsFilterMax");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() * 113 + 28 + 94 + 1 - 90) * 84);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 93) * 35 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 49) + 1 + 1 + 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(--(§§pop() - 1 - 1) * 79);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _NumWordsFilterView_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         DataModel.instance.selectedKeywordCollection.project.numWordsFilterMin = this.min;
         DataModel.instance.selectedKeywordCollection.project.numWordsFilterMax = this.max;
      }
   }
}
