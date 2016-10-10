package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import spark.layouts.VerticalLayout;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class GoogleTitleCompetitionFilterView extends RangeFilterView implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GoogleTitleCompetitionFilterView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._GoogleTitleCompetitionFilterView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_filterviews_GoogleTitleCompetitionFilterViewWatcherSetupUtil");
            _loc2_["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GoogleTitleCompetitionFilterView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 81 - 1 - 3 - 57 + 1 + 88);
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
         GoogleTitleCompetitionFilterView._watcherSetupUtil = param1;
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
      
      private final function _GoogleTitleCompetitionFilterView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 35) * 104 * 27 + 1 + 3 - 95 - 56);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.googleTitleCompFilterMin;
         },null,"this.min");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() - 28) + 1) * 108);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return DataModel.instance.selectedKeywordCollection.project.googleTitleCompFilterMax;
         },null,"this.max");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(((-§§pop() - 1) * 17 + 28) * 6);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.min;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.googleTitleCompFilterMin = param1;
         },"DataModel.instance.selectedKeywordCollection.project.googleTitleCompFilterMin");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() - 0 - 1));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 98 + 1) * 58);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1 - 53 + 1) * 19);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 94);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 54) * 75 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() * 115 - 64 - 48 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.max;
         },function(param1:*):void
         {
            DataModel.instance.selectedKeywordCollection.project.googleTitleCompFilterMax = param1;
         },"DataModel.instance.selectedKeywordCollection.project.googleTitleCompFilterMax");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() + 28) + 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 112 - 11 - 1 + 19);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 37) + 1 - 1 - 1 + 86);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 50 * 60 + 35 + 1 - 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() - 65 - 1 + 5 - 1 - 52));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _GoogleTitleCompetitionFilterView_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         DataModel.instance.selectedKeywordCollection.project.googleTitleCompFilterMin = this.min;
         DataModel.instance.selectedKeywordCollection.project.googleTitleCompFilterMax = this.max;
      }
   }
}
