package com.enfluid.ltp.view.dataandfilters
{
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import flash.events.ContextMenuEvent;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   import flash.desktop.Clipboard;
   import flash.desktop.ClipboardFormats;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import com.enfluid.ltp.view.filterviews.NumWordsFilterView;
   import spark.components.DataGroup;
   import mx.binding.Binding;
   import assets.TextAssets;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class NumWordsSection extends CheckBoxCollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NumWordsSection()
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
         var bindings:Array = this._NumWordsSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_dataandfilters_NumWordsSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return NumWordsSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 75) + 33);
         }
         §§pop().percentWidth = §§pop();
         this.title = "Num Words";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._NumWordsSection_Array1_c);
         this.addEventListener("creationComplete",this.___NumWordsSection_CheckBoxCollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 41 + 101 + 1 + 32);
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
         NumWordsSection._watcherSetupUtil = param1;
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
               new SetUserEvent("UserEvent.FindKeywords.Customize.NumWords.Checked").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.FindKeywords.Customize.NumWords.Unchecked").execute();
            }
         });
      }
      
      private final function _NumWordsSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._NumWordsSection_NumWordsFilterView1_c()];
         return _loc1_;
      }
      
      private final function _NumWordsSection_NumWordsFilterView1_c() : NumWordsFilterView
      {
         var _loc1_:NumWordsFilterView = new NumWordsFilterView();
         _loc1_.liveRefresh = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___NumWordsSection_CheckBoxCollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _NumWordsSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1) * 5 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_NUM_WORDS_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpTitle");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 34 - 14 + 1 - 1 - 84);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_NUM_WORDS_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpContent");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 0 - 1) * 57 - 42 + 1 - 1 + 2);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.numWordsEnabled;
         },null,"this.expanded");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((-§§pop() - 1 - 28 - 96 + 1) * 37 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.expanded;
         },function(param1:*):void
         {
            model.selectedProject.numWordsEnabled = param1;
         },"model.selectedProject.numWordsEnabled");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() * 119) + 1 - 67);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 67 + 1) * 20);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() + 8 - 1) * 76 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(--((§§pop() - 1 + 72) * 2) - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() * 43 * 67) + 1 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _NumWordsSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedProject.numWordsEnabled = this.expanded;
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
