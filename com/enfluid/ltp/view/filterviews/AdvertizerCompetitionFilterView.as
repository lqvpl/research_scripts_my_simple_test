package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.effects.easing.Power;
   import mx.binding.BindingManager;
   import spark.components.CheckBox;
   import mx.core.IFlexModuleFactory;
   import com.hurlant.math.bi_internal;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.Event;
   import mx.binding.Binding;
   import spark.components.HGroup;
   import mx.states.Transition;
   import mx.graphics.SolidColor;
   import flash.events.MouseEvent;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.model.ViewModel;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import com.enfluid.ltp.view.KeywordsDataGrid;
   import flash.utils.ByteArray;
   
   use namespace bi_internal;
   use namespace mx_internal;
   
   public final class AdvertizerCompetitionFilterView extends FilterView implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _382149477highCheckBox:CheckBox;
      
      private var _127407895lowCheckBox:CheckBox;
      
      private var _277488015medCheckBox:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function AdvertizerCompetitionFilterView()
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
         var bindings:Array = this._AdvertizerCompetitionFilterView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_filterviews_AdvertizerCompetitionFilterViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AdvertizerCompetitionFilterView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(30);
         if(_loc4_)
         {
            §§push(-(§§pop() + 2 - 108) - 8);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._AdvertizerCompetitionFilterView_CheckBox1_i(),this._AdvertizerCompetitionFilterView_CheckBox2_i(),this._AdvertizerCompetitionFilterView_CheckBox3_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 29 + 1) * 6 + 1 + 97 + 74));
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
         AdvertizerCompetitionFilterView._watcherSetupUtil = param1;
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
      
      private final function _AdvertizerCompetitionFilterView_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Low";
         _loc1_.addEventListener("change",this.__lowCheckBox_change);
         _loc1_.id = "lowCheckBox";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.lowCheckBox = _loc1_;
         BindingManager.executeBindings(this,"lowCheckBox",this.lowCheckBox);
         return _loc1_;
      }
      
      public final function __lowCheckBox_change(param1:Event) : void
      {
         refreshData();
      }
      
      private final function _AdvertizerCompetitionFilterView_CheckBox2_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "Med";
         _loc1_.addEventListener("change",this.__medCheckBox_change);
         _loc1_.id = "medCheckBox";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.medCheckBox = _loc1_;
         BindingManager.executeBindings(this,"medCheckBox",this.medCheckBox);
         return _loc1_;
      }
      
      public final function __medCheckBox_change(param1:Event) : void
      {
         refreshData();
      }
      
      private final function _AdvertizerCompetitionFilterView_CheckBox3_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         _loc1_.label = "High";
         _loc1_.addEventListener("change",this.__highCheckBox_change);
         _loc1_.id = "highCheckBox";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.highCheckBox = _loc1_;
         BindingManager.executeBindings(this,"highCheckBox",this.highCheckBox);
         return _loc1_;
      }
      
      public final function __highCheckBox_change(param1:Event) : void
      {
         refreshData();
      }
      
      private final function _AdvertizerCompetitionFilterView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 51 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return medCheckBox.selected || highCheckBox.selected;
         },null,"lowCheckBox.enabled");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 18 - 1 + 1 - 104 - 110 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.advertiserCompFilterLow;
         },null,"lowCheckBox.selected");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(--(§§pop() - 105 - 1) + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return lowCheckBox.selected || highCheckBox.selected;
         },null,"medCheckBox.enabled");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) + 1) * 71 - 86);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.advertiserCompFilterMed;
         },null,"medCheckBox.selected");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 79) * 98 - 1 - 57);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return lowCheckBox.selected || medCheckBox.selected;
         },null,"highCheckBox.enabled");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push((-(§§pop() - 25) - 118) * 46 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.advertiserCompFilterHigh;
         },null,"highCheckBox.selected");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((§§pop() + 110 - 90) * 53);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return lowCheckBox.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.advertiserCompFilterLow = param1;
         },"model.selectedKeywordCollection.project.advertiserCompFilterLow");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-(§§pop() + 15 - 69 + 1) - 96 - 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 97 - 1 + 57) * 80);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-((§§pop() + 113) * 23) + 89 + 104 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 41));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push((§§pop() - 34 + 1 + 1) * 4 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(-((§§pop() + 48) * 74 - 32 + 26) * 61));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return medCheckBox.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.advertiserCompFilterMed = param1;
         },"model.selectedKeywordCollection.project.advertiserCompFilterMed");
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(-((§§pop() - 76 + 98) * 119));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 20 - 85 + 14);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 37) * 54 + 50 - 94 + 67 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-((§§pop() - 17) * 55) * 32 + 8 - 7);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 - 40 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() + 118) - 77);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return highCheckBox.selected;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.advertiserCompFilterHigh = param1;
         },"model.selectedKeywordCollection.project.advertiserCompFilterHigh");
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push((-((§§pop() - 1 + 1) * 87) + 73) * 84 + 60);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 95) * 75 * 88 * 0);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 45 - 36 + 37 + 12 - 1 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() * 79 - 51));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() + 78 - 70 + 43) * 39 * 51);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _AdvertizerCompetitionFilterView_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedKeywordCollection.project.advertiserCompFilterLow = this.lowCheckBox.selected;
         this.model.selectedKeywordCollection.project.advertiserCompFilterMed = this.medCheckBox.selected;
         this.model.selectedKeywordCollection.project.advertiserCompFilterHigh = this.highCheckBox.selected;
      }
      
      [Bindable(event="propertyChange")]
      public function get highCheckBox() : CheckBox
      {
         return this._382149477highCheckBox;
      }
      
      public function set highCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._382149477highCheckBox;
         if(_loc2_ !== param1)
         {
            this._382149477highCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"highCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lowCheckBox() : CheckBox
      {
         return this._127407895lowCheckBox;
      }
      
      public function set lowCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._127407895lowCheckBox;
         if(_loc2_ !== param1)
         {
            this._127407895lowCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lowCheckBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medCheckBox() : CheckBox
      {
         return this._277488015medCheckBox;
      }
      
      public function set medCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._277488015medCheckBox;
         if(_loc2_ !== param1)
         {
            this._277488015medCheckBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medCheckBox",_loc2_,param1));
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
