package com.enfluid.ltp.view.dataandfilters
{
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import flash.events.MouseEvent;
   import hr.binaria.asx3m.annotations.Annotation;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.view.filterviews.LocalSearchesFilterView;
   import mx.controls.Spacer;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.SubmitAndScrapeKeywordPlannerCommand;
   import com.enfluid.ltp.controller.keywordresearch.SaveGlobalSearchesToServerCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.binding.Binding;
   import assets.TextAssets;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class LocalSearchesSection extends CheckBoxCollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function LocalSearchesSection()
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
         var bindings:Array = this._LocalSearchesSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_dataandfilters_LocalSearchesSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return LocalSearchesSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 84 - 1) * 64 + 1 + 1 - 39);
         }
         §§pop().percentWidth = §§pop();
         this.title = "Local Search Volume";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._LocalSearchesSection_Array1_c);
         this.addEventListener("creationComplete",this.___LocalSearchesSection_CheckBoxCollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 106);
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
         LocalSearchesSection._watcherSetupUtil = param1;
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
               new SetUserEvent("UserEvent.FindKeywords.Customize.Local.Checked").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.FindKeywords.Customize.Local.Unchecked").execute();
            }
         });
      }
      
      private final function _LocalSearchesSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._LocalSearchesSection_LocalSearchesFilterView1_c(),this._LocalSearchesSection_Spacer1_c()];
         return _loc1_;
      }
      
      private final function _LocalSearchesSection_LocalSearchesFilterView1_c() : LocalSearchesFilterView
      {
         var _loc1_:LocalSearchesFilterView = new LocalSearchesFilterView();
         _loc1_.liveRefresh = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _LocalSearchesSection_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(((§§pop() - 19) * 25 + 1) * 2 + 21);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___LocalSearchesSection_CheckBoxCollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _LocalSearchesSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 107 + 1 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_LOCAL_SEARCHES_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpTitle");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 100 + 119 + 86) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_LOCAL_SEARCHES_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpContent");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(--(§§pop() + 85 - 1 - 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.localSearchesEnabled;
         },null,"this.expanded");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-((-((§§pop() + 39) * 95) + 1) * 72));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.expanded;
         },function(param1:*):void
         {
            model.selectedProject.localSearchesEnabled = param1;
         },"model.selectedProject.localSearchesEnabled");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() * 28 + 11 - 1 - 1) * 88 - 95);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((-(§§pop() - 111) - 53) * 100);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-((§§pop() - 88 - 46 - 27 + 6) * 42 + 73));
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 94) - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((-((§§pop() * 104 + 64) * 80) - 41 - 75) * 109);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _LocalSearchesSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedProject.localSearchesEnabled = this.expanded;
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
