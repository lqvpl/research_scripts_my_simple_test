package com.enfluid.ltp.view.filterviews
{
   import spark.components.HGroup;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.primitives.Rect;
   import spark.primitives.BitmapImage;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.DataModel;
   import flash.net.URLRequest;
   import flash.net.URLLoaderDataFormat;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.EmptyTrashCommand;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.target;
   import com.enfluid.ltp.view.components.Link;
   
   use namespace mx_internal;
   
   public class FilterView extends HGroup implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _FilterView_BitmapImage1:BitmapImage;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _102246321liveRefresh:Boolean = true;
      
      private var model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function FilterView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._FilterView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_filterviews_FilterViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return FilterView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push((§§pop() + 1 + 103) * 44 - 1);
         }
         §§pop().percentWidth = §§pop();
         this.verticalAlign = "top";
         this.mxmlContent = [this._FilterView_BitmapImage1_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 110 - 109) * 66 + 32 - 1 + 1 - 24);
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
         FilterView._watcherSetupUtil = param1;
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
            this.fontSize = 10;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function set mxmlContent(param1:Array) : void
      {
         var _loc2_:int = super.numElements;
         var _loc3_:int = _loc2_ - 1;
         while(_loc3_ >= 0)
         {
            param1.unshift(super.getElementAt(_loc3_));
            _loc3_--;
         }
         super.mxmlContent = param1;
      }
      
      protected function refreshData() : void
      {
         if(this.liveRefresh && this.model.selectedKeywordCollection)
         {
            this.model.selectedKeywordCollection.refresh();
            this.model.selectedKeywordCollection.project.save();
         }
      }
      
      private final function _FilterView_BitmapImage1_i() : BitmapImage
      {
         var _loc1_:BitmapImage = new BitmapImage();
         §§push(_loc1_);
         §§push(17);
         if(_loc2_)
         {
            §§push(-(§§pop() + 13) + 80 + 1 + 119);
         }
         §§pop().height = §§pop();
         _loc1_.verticalAlign = "middle";
         _loc1_.initialized(this,"_FilterView_BitmapImage1");
         this._FilterView_BitmapImage1 = _loc1_;
         BindingManager.executeBindings(this,"_FilterView_BitmapImage1",this._FilterView_BitmapImage1);
         return _loc1_;
      }
      
      private final function _FilterView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 83 - 0) * 32 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.FILTER_ICON;
         },null,"_FilterView_BitmapImage1.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get liveRefresh() : Boolean
      {
         return this._102246321liveRefresh;
      }
      
      public function set liveRefresh(param1:Boolean) : void
      {
         var _loc2_:Object = this._102246321liveRefresh;
         if(_loc2_ !== param1)
         {
            this._102246321liveRefresh = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"liveRefresh",_loc2_,param1));
            }
         }
      }
   }
}
