package com.enfluid.ltp.view.dataandfilters
{
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.layouts.VerticalLayout;
   import flash.utils.ByteArray;
   import spark.components.Label;
   import com.enfluid.ltp.view.filterviews.GoogleTitleCompetitionFilterView;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import spark.primitives.Line;
   import mx.binding.Binding;
   import assets.TextAssets;
   import com.enfluid.ltp.util.Logger;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class GoogleTitleCompetitionSection extends CheckBoxCollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
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
            §§push((§§pop() * 23 * 22 - 56 + 1) * 18 - 1);
         }
         §§pop().percentWidth = §§pop();
         this.title = "Google Title Competition";
         this.layout = this._GoogleTitleCompetitionSection_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._GoogleTitleCompetitionSection_Array1_c);
         this.addEventListener("creationComplete",this.___GoogleTitleCompetitionSection_CheckBoxCollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 61);
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
      
      protected final function initPanel(param1:FlexEvent) : void
      {
         var event:FlexEvent = param1;
         addEventListener("collapsedChanged",function():void
         {
            if(!collapsed)
            {
               new SetUserEvent("UserEvent.FindKeywords.Customize.GoogleTitleComp.Checked").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.FindKeywords.Customize.GoogleTitleComp.Unchecked").execute();
            }
         });
      }
      
      private final function _GoogleTitleCompetitionSection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         return _loc1_;
      }
      
      private final function _GoogleTitleCompetitionSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._GoogleTitleCompetitionSection_Label1_c(),this._GoogleTitleCompetitionSection_GoogleTitleCompetitionFilterView1_c()];
         return _loc1_;
      }
      
      private final function _GoogleTitleCompetitionSection_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(480);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 81 + 36 + 1) - 1 - 1);
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
      
      public final function ___GoogleTitleCompetitionSection_CheckBoxCollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _GoogleTitleCompetitionSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 56 - 25) - 66);
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
            §§push((§§pop() * 27 - 1 + 1) * 112 + 116);
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
            §§push((§§pop() - 21) * 72 * 48);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedProject.googleTitleCompEnabled;
         },null,"this.expanded");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 92) * 99 + 114 + 1 - 70);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.expanded;
         },function(param1:*):void
         {
            model.selectedProject.googleTitleCompEnabled = param1;
         },"model.selectedProject.googleTitleCompEnabled");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1 + 105) + 63) * 96);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((-§§pop() * 36 + 77) * 105 + 1 + 94);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 31 - 1 + 1 + 0) * 52);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((-(§§pop() - 14) - 1) * 93 * 45);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() * 102) + 5 - 1 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _GoogleTitleCompetitionSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedProject.googleTitleCompEnabled = this.expanded;
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
