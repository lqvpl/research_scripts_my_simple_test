package com.enfluid.ltp.view.dataandfilters
{
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.AvgDelayComponent;
   import mx.core.IFlexModuleFactory;
   import spark.effects.Resize;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.DataModel;
   import spark.layouts.VerticalLayout;
   import spark.components.Label;
   import com.enfluid.ltp.view.filterviews.GoogleTitleCompetitionFilterView;
   import spark.effects.Rotate;
   import mx.binding.Binding;
   import assets.TextAssets;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class GoogleTitleCompetitionSection extends CheckBoxCollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1687906690_GoogleTitleCompetitionSection_AvgDelayComponent1:AvgDelayComponent;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GoogleTitleCompetitionSection()
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
         var bindings:Array = this._GoogleTitleCompetitionSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_dataandfilters_GoogleTitleCompetitionSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GoogleTitleCompetitionSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() * 106 - 57 + 25 + 1) * 64 * 69);
         }
         §§pop().percentWidth = §§pop();
         this.title = "Google Title Competition";
         this.layout = this._GoogleTitleCompetitionSection_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GoogleTitleCompetitionSection_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 101 + 1));
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
         GoogleTitleCompetitionSection._watcherSetupUtil = param1;
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
      
      private final function _GoogleTitleCompetitionSection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         return _loc1_;
      }
      
      private final function _GoogleTitleCompetitionSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._GoogleTitleCompetitionSection_Label1_c(),this._GoogleTitleCompetitionSection_GoogleTitleCompetitionFilterView1_c(),this._GoogleTitleCompetitionSection_AvgDelayComponent1_i()];
         return _loc1_;
      }
      
      private final function _GoogleTitleCompetitionSection_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(480);
         if(_loc2_)
         {
            §§push(-(§§pop() + 83) - 1 + 1);
         }
         §§pop().width = §§pop();
         _loc1_.text = "Fetching Google Title Competition for a large number of keywords signifiantly increases your chances of getting blocked by Google.  You can reduce your risk of getting blocked by filtering other properties.  Only those keywords that match your filters will have Google Title Competition fetched.";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GoogleTitleCompetitionSection_GoogleTitleCompetitionFilterView1_c() : GoogleTitleCompetitionFilterView
      {
         var _loc1_:GoogleTitleCompetitionFilterView = new GoogleTitleCompetitionFilterView();
         _loc1_.liveRefresh = false;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _GoogleTitleCompetitionSection_AvgDelayComponent1_i() : AvgDelayComponent
      {
         var _loc1_:AvgDelayComponent = new AvgDelayComponent();
         _loc1_.id = "_GoogleTitleCompetitionSection_AvgDelayComponent1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._GoogleTitleCompetitionSection_AvgDelayComponent1 = _loc1_;
         BindingManager.executeBindings(this,"_GoogleTitleCompetitionSection_AvgDelayComponent1",this._GoogleTitleCompetitionSection_AvgDelayComponent1);
         return _loc1_;
      }
      
      private final function _GoogleTitleCompetitionSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 30 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_GOOGLE_TITLE_COMPETITION_TITLE;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpTitle");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = TextAssets.HELP_GOOGLE_TITLE_COMPETITION_CONTENT;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.helpContent");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 60 * 51 - 111);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.googleTitleCompEnabled;
         },null,"this.expanded");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(--(§§pop() + 8));
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return model.selectedProject.googleTitleCompAvgDelay;
         },null,"_GoogleTitleCompetitionSection_AvgDelayComponent1.avgDelay");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 1 + 113 - 62 + 1) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.expanded;
         },function(param1:*):void
         {
            model.selectedProject.googleTitleCompEnabled = param1;
         },"model.selectedProject.googleTitleCompEnabled");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(((§§pop() + 1) * 37 - 1) * 67) - 112);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 1 - 57 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 6 - 1) * 9);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(--§§pop() + 26);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() * 117 - 1 - 1 + 115) * 65 * 85 * 108);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 86 - 1 - 1) * 38 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _GoogleTitleCompetitionSection_AvgDelayComponent1.avgDelay;
         },function(param1:*):void
         {
            model.selectedProject.googleTitleCompAvgDelay = param1;
         },"model.selectedProject.googleTitleCompAvgDelay");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-((§§pop() + 110) * 91));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 101 + 26);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 28) * 16 - 67 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 112 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1) + 13 - 86);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _GoogleTitleCompetitionSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedProject.googleTitleCompEnabled = this.expanded;
         this.model.selectedProject.googleTitleCompAvgDelay = this._GoogleTitleCompetitionSection_AvgDelayComponent1.avgDelay;
      }
      
      [Bindable(event="propertyChange")]
      public function get _GoogleTitleCompetitionSection_AvgDelayComponent1() : AvgDelayComponent
      {
         return this._1687906690_GoogleTitleCompetitionSection_AvgDelayComponent1;
      }
      
      public function set _GoogleTitleCompetitionSection_AvgDelayComponent1(param1:AvgDelayComponent) : void
      {
         var _loc2_:Object = this._1687906690_GoogleTitleCompetitionSection_AvgDelayComponent1;
         if(_loc2_ !== param1)
         {
            this._1687906690_GoogleTitleCompetitionSection_AvgDelayComponent1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_GoogleTitleCompetitionSection_AvgDelayComponent1",_loc2_,param1));
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
