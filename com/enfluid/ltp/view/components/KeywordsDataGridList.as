package com.enfluid.ltp.view.components
{
   import spark.components.List;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.adobe.cairngorm.observer.ObserveValue;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.collections.IList;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import com.enfluid.ltp.model.ViewModel;
   import spark.events.IndexChangeEvent;
   import spark.primitives.BitmapImage;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.KeywordItemRenderer;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class KeywordsDataGridList extends List implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _KeywordsDataGridList_ObserveValue1:ObserveValue;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      private var count:int = 0;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordsDataGridList()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._KeywordsDataGridList_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_KeywordsDataGridListWatcherSetupUtil");
            _loc2_["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordsDataGridList[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.itemRenderer = this._KeywordsDataGridList_ClassFactory1_c();
         this._KeywordsDataGridList_ObserveValue1_i();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 1);
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
         KeywordsDataGridList._watcherSetupUtil = param1;
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
            this.horizontalScrollPolicy = "off";
            this.verticalScrollPolicy = "on";
            this.alternatingItemColors = [14936300,16119800];
            this.borderVisible = false;
            this.interactionMode = "mouse";
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function set dataProvider(param1:IList) : void
      {
         if(param1)
         {
            KeywordArrayCollection(param1).refresh();
         }
         super.dataProvider = param1;
      }
      
      protected final function changeOfKeywordList(param1:IndexChangeEvent) : void
      {
         ensureIndexIsVisible(param1.newIndex);
      }
      
      private final function onResetKeywordScrollPosition() : void
      {
         §§push(layout);
         §§push(0);
         if(_loc1_)
         {
            §§push(-((§§pop() + 61 + 1) * 63 - 109) * 12 * 14);
         }
         §§pop().verticalScrollPosition = §§pop();
      }
      
      private final function _KeywordsDataGridList_ObserveValue1_i() : ObserveValue
      {
         var _loc1_:ObserveValue = new ObserveValue();
         _loc1_.value = true;
         this._KeywordsDataGridList_ObserveValue1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordsDataGridList_ObserveValue1",this._KeywordsDataGridList_ObserveValue1);
         return _loc1_;
      }
      
      private final function _KeywordsDataGridList_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = KeywordItemRenderer;
         return _loc1_;
      }
      
      private final function _KeywordsDataGridList_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 82 - 79);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return viewModel.resetKeywordScrollPosition;
         },null,"_KeywordsDataGridList_ObserveValue1.source");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 84) * 74 * 41);
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return onResetKeywordScrollPosition;
         },null,"_KeywordsDataGridList_ObserveValue1.handler");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get model() : DataModel
      {
         return this._104069929model;
      }
      
      public function set model(param1:DataModel) : void
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
      
      [Bindable(event="propertyChange")]
      private function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      private function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
   }
}
