package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.effects.Fade;
   import mx.binding.BindingManager;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.core.IFlexModuleFactory;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import spark.components.Label;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class AvgKCFilterView extends RangeFilterView implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function AvgKCFilterView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._AvgKCFilterView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_filterviews_AvgKCFilterViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AvgKCFilterView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-((§§pop() + 1) * 90));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 32 - 12);
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
         AvgKCFilterView._watcherSetupUtil = param1;
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
      
      private final function _AvgKCFilterView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(((-§§pop() + 85) * 37 - 98) * 10 + 74 - 111);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.avgKCFilterMin;
         },null,"this.min");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() + 63 + 1 + 1 - 1 - 20 - 67);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.avgKCFilterMax;
         },null,"this.max");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(((-(§§pop() - 16) - 7) * 112 - 106) * 102);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.min;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.avgKCFilterMin = param1;
         },"DataModel.instance.selectedKeywordCollection.project.avgKCFilterMin");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(--((§§pop() - 29) * 32) - 30));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 8) * 52 - 71);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 33 - 1) * 88 - 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 105 - 75 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 - 85);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 1 + 0 + 1 - 48 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.max;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.avgKCFilterMax = param1;
         },"DataModel.instance.selectedKeywordCollection.project.avgKCFilterMax");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(((§§pop() + 1 + 106) * 113 * 69 - 1) * 18));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1) * 84);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 21) * 90);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-((§§pop() - 89) * 71) * 109);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 62 + 13 + 1 + 1 + 1));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _AvgKCFilterView_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         DataModel.instance.selectedKeywordCollection.project.avgKCFilterMin = this.min;
         DataModel.instance.selectedKeywordCollection.project.avgKCFilterMax = this.max;
      }
   }
}
