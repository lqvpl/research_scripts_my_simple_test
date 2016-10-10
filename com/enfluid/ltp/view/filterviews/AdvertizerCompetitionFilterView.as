package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.controller.rankchecker.SaveRankItemsCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.model.constants.RankCheckConstants;
   import com.enfluid.ltp.util.Util;
   import flash.utils.setTimeout;
   import spark.components.CheckBox;
   import mx.core.IFlexModuleFactory;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.DataModel;
   import mx.graphics.SolidColor;
   import flash.events.Event;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import system.data.ListIterator;
   import system.data.iterators.ArrayListIterator;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.Group;
   import mx.events.FlexMouseEvent;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.controller.common.SaveGoogleCredentialsCommand;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   import flash.utils.getDefinitionByName;
   
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
            §§push(§§pop() - 1 - 89 + 1 + 1 + 1);
         }
         §§pop().minWidth = §§pop();
         this.mxmlContent = [this._AdvertizerCompetitionFilterView_CheckBox1_i(),this._AdvertizerCompetitionFilterView_CheckBox2_i(),this._AdvertizerCompetitionFilterView_CheckBox3_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((((§§pop() + 88) * 119 + 103) * 90 - 1) * 22 - 67);
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
            §§push(-(§§pop() * 55) - 37);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return medCheckBox.selected || highCheckBox.selected;
         },null,"lowCheckBox.enabled");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() * 49 + 1 + 55);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.advertiserCompFilterLow;
         },null,"lowCheckBox.selected");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(---§§pop());
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return lowCheckBox.selected || highCheckBox.selected;
         },null,"medCheckBox.enabled");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((-(§§pop() - 4) + 107) * 81 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.advertiserCompFilterMed;
         },null,"medCheckBox.selected");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 19 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return lowCheckBox.selected || medCheckBox.selected;
         },null,"highCheckBox.enabled");
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.selectedKeywordCollection.project.advertiserCompFilterHigh;
         },null,"highCheckBox.selected");
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(-((--§§pop() - 89) * 18 * 111));
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
            §§push(-(§§pop() * 53) * 27 * 10);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 6) - 34);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 110 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(--§§pop() + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() - 117 - 1 + 1 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 1 + 1 + 1 - 3 - 96);
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
         if(_loc2_)
         {
            §§push((-(§§pop() * 104 - 1) + 1) * 56);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-§§pop() + 14 - 95 - 1 - 30 + 46);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-§§pop() - 72 - 1 - 71 - 30);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() * 42 - 1) * 64 - 104 + 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 + 72 - 1 + 1 + 117);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 5) * 45 + 65) - 111 - 108);
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
         if(_loc2_)
         {
            §§push(-((§§pop() - 6 - 1) * 56 - 1 - 1 + 1));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(--(§§pop() * 111 + 39) - 22 - 7 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() + 115 - 3 - 20 - 1 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() - 27 - 1 + 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(8);
         if(_loc3_)
         {
            §§push(--(--§§pop() * 13) + 1 - 1);
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
