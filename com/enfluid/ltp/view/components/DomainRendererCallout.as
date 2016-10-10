package com.enfluid.ltp.view.components
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.controls.Alert;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import spark.events.PopUpEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.binding.BindingManager;
   import spark.layouts.VerticalLayout;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.events.FlexMouseEvent;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import mx.events.PropertyChangeEvent;
   import spark.primitives.Rect;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class DomainRendererCallout extends CustomNoteCallout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _DomainRendererCallout_DomainRenderer1:DomainRenderer;
      
      public var _DomainRendererCallout_DomainRenderer2:DomainRenderer;
      
      private var _98629247group:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1671609301statusmessage:String = "";
      
      private var _814408215keyword:KeywordVO;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _104069929model:DataModel;
      
      private var _isdomainsRendererCallout:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function DomainRendererCallout()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._1589792892viewModel = ViewModel.instance;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._DomainRendererCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_DomainRendererCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return DomainRendererCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.horizontalPosition = "before";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._DomainRendererCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___DomainRendererCallout_CustomNoteCallout1_mouseDownOutside);
         this.addEventListener("close",this.___DomainRendererCallout_CustomNoteCallout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(--(§§pop() + 87 + 81));
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
         DomainRendererCallout._watcherSetupUtil = param1;
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
      
      public function get isdomainsRendererCallout() : Boolean
      {
         return this._isdomainsRendererCallout;
      }
      
      public function set isdomainsRendererCallout(param1:Boolean) : void
      {
         this._isdomainsRendererCallout = param1;
      }
      
      protected final function calloutCloseHandler(param1:PopUpEvent) : void
      {
         dispatchEvent(new Event("calloutCloseEvent"));
      }
      
      private final function _DomainRendererCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._DomainRendererCallout_Group1_i()];
         return _loc1_;
      }
      
      private final function _DomainRendererCallout_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 114 * 78 - 18 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 71 - 99);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.layout = this._DomainRendererCallout_VerticalLayout1_c();
         _loc1_.mxmlContent = [this._DomainRendererCallout_DomainRenderer1_i(),this._DomainRendererCallout_DomainRenderer2_i()];
         _loc1_.id = "group";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.group = _loc1_;
         BindingManager.executeBindings(this,"group",this.group);
         return _loc1_;
      }
      
      private final function _DomainRendererCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1));
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _DomainRendererCallout_DomainRenderer1_i() : DomainRenderer
      {
         var _loc1_:DomainRenderer = new DomainRenderer();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() * 10) + 107) * 25 * 84 + 1 + 82);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "_DomainRendererCallout_DomainRenderer1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainRendererCallout_DomainRenderer1 = _loc1_;
         BindingManager.executeBindings(this,"_DomainRendererCallout_DomainRenderer1",this._DomainRendererCallout_DomainRenderer1);
         return _loc1_;
      }
      
      private final function _DomainRendererCallout_DomainRenderer2_i() : DomainRenderer
      {
         var _loc1_:DomainRenderer = new DomainRenderer();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 71) * 108 + 1 + 97);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "_DomainRendererCallout_DomainRenderer2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._DomainRendererCallout_DomainRenderer2 = _loc1_;
         BindingManager.executeBindings(this,"_DomainRendererCallout_DomainRenderer2",this._DomainRendererCallout_DomainRenderer2);
         return _loc1_;
      }
      
      public final function ___DomainRendererCallout_CustomNoteCallout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___DomainRendererCallout_CustomNoteCallout1_close(param1:PopUpEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      private final function _DomainRendererCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 46 - 103) * 106);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainsVO
         {
            return keyword.domainsExact;
         },null,"_DomainRendererCallout_DomainRenderer1.domainsVO");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() * 14) + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainExtensionOptions
         {
            return model.selectedKeywordCollection.project.domainsExactMatchExtensions;
         },null,"_DomainRendererCallout_DomainRenderer1.options");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((--§§pop() * 74 - 87) * 72 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainsVO
         {
            return keyword.domainsHyphenated;
         },null,"_DomainRendererCallout_DomainRenderer2.domainsVO");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 22 - 92 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():DomainExtensionOptions
         {
            return model.selectedKeywordCollection.project.domainsHyphenatedExtensions;
         },null,"_DomainRendererCallout_DomainRenderer2.options");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get group() : Group
      {
         return this._98629247group;
      }
      
      public function set group(param1:Group) : void
      {
         var _loc2_:Object = this._98629247group;
         if(_loc2_ !== param1)
         {
            this._98629247group = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"group",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get statusmessage() : String
      {
         return this._1671609301statusmessage;
      }
      
      private function set statusmessage(param1:String) : void
      {
         var _loc2_:Object = this._1671609301statusmessage;
         if(_loc2_ !== param1)
         {
            this._1671609301statusmessage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusmessage",_loc2_,param1));
            }
         }
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
      
      [Bindable(event="propertyChange")]
      private function get model() : DataModel
      {
         return this._104069929model;
      }
      
      private function set model(param1:DataModel) : void
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
   }
}
