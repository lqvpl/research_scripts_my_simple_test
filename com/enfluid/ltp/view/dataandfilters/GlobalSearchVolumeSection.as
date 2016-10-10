package com.enfluid.ltp.view.dataandfilters
{
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import mx.core.IFlexModuleFactory;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.view.filterviews.GlobalSearchesFilterView;
   import flash.utils.ByteArray;
   import mx.binding.Binding;
   import assets.TextAssets;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import spark.primitives.Rect;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class GlobalSearchVolumeSection extends CheckBoxCollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GlobalSearchVolumeSection()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._GlobalSearchVolumeSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_dataandfilters_GlobalSearchVolumeSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GlobalSearchVolumeSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(-§§pop() * 34 - 64));
         }
         §§pop().percentWidth = §§pop();
         this.title = "Global Search Volume";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GlobalSearchVolumeSection_Array1_c);
         this.addEventListener("creationComplete",this.___GlobalSearchVolumeSection_CheckBoxCollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 71 * 22 * 5 - 76);
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
         GlobalSearchVolumeSection._watcherSetupUtil = param1;
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
      
      protected final function initPanel(param1:FlexEvent) : void
      {
         var event:FlexEvent = param1;
         addEventListener("collapsedChanged",function():void
         {
            if(!collapsed)
            {
               new SetUserEvent("UserEvent.FindKeywords.Customize.GoogleSearchVolume.Checked").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.FindKeywords.Customize.GoogleSearchVolume.Unchecked").execute();
            }
         });
      }
      
      private final function _GlobalSearchVolumeSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._GlobalSearchVolumeSection_GlobalSearchesFilterView1_c()];
         return _loc1_;
      }
      
      private final function _GlobalSearchVolumeSection_GlobalSearchesFilterView1_c() : GlobalSearchesFilterView
      {
         var _loc1_:GlobalSearchesFilterView = new GlobalSearchesFilterView();
         _loc1_.liveRefresh = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___GlobalSearchVolumeSection_CheckBoxCollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _GlobalSearchVolumeSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_GLOBAL_SEARCEHES_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpTitle");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() - 76) - 1 + 20 - 48 + 1) * 65);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_GLOBAL_SEARCEHES_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpContent");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 24 - 1 + 109);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.globalSearchesEnabled;
         },null,"this.expanded");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() * 32 - 1) * 70 + 12 - 22 + 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.expanded;
         },function(param1:*):void
         {
            model.selectedProject.globalSearchesEnabled = param1;
         },"model.selectedProject.globalSearchesEnabled");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 48) * 27 + 1 - 89 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 55 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() * 68 * 115 - 79) + 1 - 1 - 72);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 40 * 89 * 32 * 95);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 39 - 1) * 113 - 99);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _GlobalSearchVolumeSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedProject.globalSearchesEnabled = this.expanded;
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
