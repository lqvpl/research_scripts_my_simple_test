package com.enfluid.ltp.view.dataandfilters
{
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import spark.components.CheckBox;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.view.filterviews.AdvertizerCompetitionFilterView;
   import mx.binding.Binding;
   import assets.TextAssets;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class AdvertiserCompetitionSection extends CheckBoxCollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function AdvertiserCompetitionSection()
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
         var bindings:Array = this._AdvertiserCompetitionSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_dataandfilters_AdvertiserCompetitionSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AdvertiserCompetitionSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 28) - 1 + 93 - 23 - 72);
         }
         §§pop().percentWidth = §§pop();
         this.title = "Advertiser Competition";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._AdvertiserCompetitionSection_Array1_c);
         this.addEventListener("creationComplete",this.___AdvertiserCompetitionSection_CheckBoxCollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 1 - 24);
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
         AdvertiserCompetitionSection._watcherSetupUtil = param1;
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
               new SetUserEvent("UserEvent.FindKeywords.Customize.AdvComp.Checked").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.FindKeywords.Customize.AdvComp.Unchecked").execute();
            }
         });
      }
      
      private final function _AdvertiserCompetitionSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._AdvertiserCompetitionSection_AdvertizerCompetitionFilterView1_c()];
         return _loc1_;
      }
      
      private final function _AdvertiserCompetitionSection_AdvertizerCompetitionFilterView1_c() : AdvertizerCompetitionFilterView
      {
         var _loc1_:AdvertizerCompetitionFilterView = new AdvertizerCompetitionFilterView();
         _loc1_.liveRefresh = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___AdvertiserCompetitionSection_CheckBoxCollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _AdvertiserCompetitionSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1 + 2 - 1 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_ADVERTISER_COMPETITION_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpTitle");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 103) * 30);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_ADVERTISER_COMPETITION_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpContent");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 78 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.advertiserCompEnabled;
         },null,"this.expanded");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(--(§§pop() + 33 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.expanded;
         },function(param1:*):void
         {
            model.selectedProject.advertiserCompEnabled = param1;
         },"model.selectedProject.advertiserCompEnabled");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 1) * 77) - 1 + 1 + 49);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((((§§pop() - 90) * 90 + 1) * 93 - 114 + 1) * 32);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 43 - 1 + 1) * 23 + 1 - 73 - 11);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 58) * 52 + 63));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(--((§§pop() - 2) * 80) - 104 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _AdvertiserCompetitionSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedProject.advertiserCompEnabled = this.expanded;
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
