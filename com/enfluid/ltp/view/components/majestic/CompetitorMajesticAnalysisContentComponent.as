package com.enfluid.ltp.view.components.majestic
{
   import spark.components.DataGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.util.Util;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.collections.IList;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.view.filterviews.NumWordsFilterView;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.majestic.CompetitorAnalysisListItemRenderer;
   import spark.layouts.VerticalLayout;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.view.components.FormattedSelfAdjustingLabel;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class CompetitorMajesticAnalysisContentComponent extends DataGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      private var _583189648headerColumns:IList;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CompetitorMajesticAnalysisContentComponent()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._CompetitorMajesticAnalysisContentComponent_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_majestic_CompetitorMajesticAnalysisContentComponentWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CompetitorMajesticAnalysisContentComponent[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() * 46 + 1) * 3 + 1);
         }
         §§pop().percentHeight = §§pop();
         this.itemRenderer = this._CompetitorMajesticAnalysisContentComponent_ClassFactory1_c();
         this.layout = this._CompetitorMajesticAnalysisContentComponent_VerticalLayout1_c();
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 1 - 1) + 1 - 113) * 90);
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
         CompetitorMajesticAnalysisContentComponent._watcherSetupUtil = param1;
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
      
      private final function createEmptyData() : ArrayCollection
      {
         var _loc3_:CompetitorUrlVO = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 87 - 1 + 91));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_++);
            §§push(10);
            if(_loc5_)
            {
               §§push(§§pop() * 46 - 1 + 16);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            _loc3_ = new CompetitorUrlVO();
            _loc3_.rankOnPage = _loc2_;
            _loc1_.addItem(_loc3_);
         }
         return _loc1_;
      }
      
      private final function getDataProvider(param1:ArrayCollection, param2:int) : ArrayCollection
      {
         if(param1 && §§pop() > §§pop())
         {
            return param1;
         }
         return this.createEmptyData();
      }
      
      private final function _CompetitorMajesticAnalysisContentComponent_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CompetitorAnalysisListItemRenderer;
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisContentComponent_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.verticalAlign = "top";
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) * 68 + 1 - 21 - 114) * 24);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _CompetitorMajesticAnalysisContentComponent_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 61 + 106 - 99 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return getDataProvider(keyword.competitorURLs,keyword.competitorURLs.length);
         },null,"this.dataProvider");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get keyword() : KeywordVO
      {
         return this._814408215keyword;
      }
      
      public function set keyword(param1:KeywordVO) : void
      {
         var _loc2_:Object = this._814408215keyword;
         if(_loc2_ !== param1)
         {
            this._814408215keyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keyword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerColumns() : IList
      {
         return this._583189648headerColumns;
      }
      
      public function set headerColumns(param1:IList) : void
      {
         var _loc2_:Object = this._583189648headerColumns;
         if(_loc2_ !== param1)
         {
            this._583189648headerColumns = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerColumns",_loc2_,param1));
            }
         }
      }
   }
}
