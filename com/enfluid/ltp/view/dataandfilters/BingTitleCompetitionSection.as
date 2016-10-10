package com.enfluid.ltp.view.dataandfilters
{
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.effects.Fade;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.components.AvgDelayComponent;
   import mx.core.IFlexModuleFactory;
   import system.numeric.Mathematics;
   import com.enfluid.ltp.model.DataModel;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import flash.events.MouseEvent;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.filterviews.BingTitleCompetitionFilterView;
   import assets.TextAssets;
   import mx.events.PropertyChangeEvent;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass11;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class BingTitleCompetitionSection extends CheckBoxCollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1410889605_BingTitleCompetitionSection_AvgDelayComponent1:AvgDelayComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BingTitleCompetitionSection()
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
         var bindings:Array = this._BingTitleCompetitionSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_dataandfilters_BingTitleCompetitionSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return BingTitleCompetitionSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push((§§pop() - 87 + 75 - 1) * 60);
         }
         §§pop().percentWidth = §§pop();
         this.title = "Bing Title Competition";
         this.layout = this._BingTitleCompetitionSection_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._BingTitleCompetitionSection_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 73 - 1) * 1 * 21 + 101 - 38);
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
         BingTitleCompetitionSection._watcherSetupUtil = param1;
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
      
      private final function _BingTitleCompetitionSection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         return _loc1_;
      }
      
      private final function _BingTitleCompetitionSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._BingTitleCompetitionSection_BingTitleCompetitionFilterView1_c(),this._BingTitleCompetitionSection_AvgDelayComponent1_i()];
         return _loc1_;
      }
      
      private final function _BingTitleCompetitionSection_BingTitleCompetitionFilterView1_c() : BingTitleCompetitionFilterView
      {
         var _loc1_:BingTitleCompetitionFilterView = new BingTitleCompetitionFilterView();
         _loc1_.liveRefresh = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BingTitleCompetitionSection_AvgDelayComponent1_i() : AvgDelayComponent
      {
         var _loc1_:AvgDelayComponent = new AvgDelayComponent();
         _loc1_.id = "_BingTitleCompetitionSection_AvgDelayComponent1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BingTitleCompetitionSection_AvgDelayComponent1 = _loc1_;
         BindingManager.executeBindings(this,"_BingTitleCompetitionSection_AvgDelayComponent1",this._BingTitleCompetitionSection_AvgDelayComponent1);
         return _loc1_;
      }
      
      private final function _BingTitleCompetitionSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_BING_TITLE_COMPETITION_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpTitle");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 29 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_BING_TITLE_COMPETITION_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpContent");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-§§pop() + 78 + 23);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.bingTitleCompEnabled;
         },null,"this.expanded");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 19) * 118 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return model.selectedProject.bingTitleCompAvgDelay;
         },null,"_BingTitleCompetitionSection_AvgDelayComponent1.avgDelay");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() - 30) * 41 - 47);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.expanded;
         },function(param1:*):void
         {
            model.selectedProject.bingTitleCompEnabled = param1;
         },"model.selectedProject.bingTitleCompEnabled");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() * 2 - 29) + 6 - 1 - 8);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 54 + 1 + 105 + 87);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 109 - 1 + 1 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((-§§pop() - 108 - 73) * 97);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 66 + 1) + 1 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 0 + 1) - 1 - 6 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _BingTitleCompetitionSection_AvgDelayComponent1.avgDelay;
         },function(param1:*):void
         {
            model.selectedProject.bingTitleCompAvgDelay = param1;
         },"model.selectedProject.bingTitleCompAvgDelay");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 89 + 1 - 1 - 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(--((-§§pop() + 1) * 54));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 9 - 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() * 69 * 25) * 117 * 84);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() * 50 * 63));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _BingTitleCompetitionSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedProject.bingTitleCompEnabled = this.expanded;
         this.model.selectedProject.bingTitleCompAvgDelay = this._BingTitleCompetitionSection_AvgDelayComponent1.avgDelay;
      }
      
      [Bindable(event="propertyChange")]
      public function get _BingTitleCompetitionSection_AvgDelayComponent1() : AvgDelayComponent
      {
         return this._1410889605_BingTitleCompetitionSection_AvgDelayComponent1;
      }
      
      public function set _BingTitleCompetitionSection_AvgDelayComponent1(param1:AvgDelayComponent) : void
      {
         var _loc2_:Object = this._1410889605_BingTitleCompetitionSection_AvgDelayComponent1;
         if(_loc2_ !== param1)
         {
            this._1410889605_BingTitleCompetitionSection_AvgDelayComponent1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_BingTitleCompetitionSection_AvgDelayComponent1",_loc2_,param1));
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
