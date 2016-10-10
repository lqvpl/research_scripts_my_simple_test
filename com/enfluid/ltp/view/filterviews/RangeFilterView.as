package com.enfluid.ltp.view.filterviews
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.components.FilterValueTextInput;
   import mx.core.IFlexModuleFactory;
   import mx.effects.Parallel;
   import flash.utils.ByteArray;
   import com.hurlant.math.bi_internal;
   import mx.collections.ArrayCollection;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import spark.events.TextOperationEvent;
   import spark.components.Group;
   import spark.components.Label;
   import mx.states.State;
   import mx.states.SetProperty;
   import com.enfluid.ltp.view.components.Link;
   import spark.components.CheckBox;
   import mx.graphics.SolidColor;
   import spark.components.HGroup;
   import mx.binding.Binding;
   import spark.layouts.VerticalLayout;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.CompetitorColumnsVO;
   import flash.utils.getDefinitionByName;
   
   use namespace bi_internal;
   use namespace mx_internal;
   
   public class RangeFilterView extends FilterView implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _197956983_RangeFilterView_FilterValueTextInput1:FilterValueTextInput;
      
      private var _197956982_RangeFilterView_FilterValueTextInput2:FilterValueTextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _108114min:Number;
      
      private var _107876max:Number;
      
      private var _203492346decimalsAllowed:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function RangeFilterView()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._RangeFilterView_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_filterviews_RangeFilterViewWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return RangeFilterView[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [this._RangeFilterView_FilterValueTextInput1_i(),this._RangeFilterView_Label1_c(),this._RangeFilterView_FilterValueTextInput2_i()];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 25 - 1) * 81 - 77 + 1);
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
         RangeFilterView._watcherSetupUtil = param1;
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
      
      private final function _RangeFilterView_FilterValueTextInput1_i() : FilterValueTextInput
      {
         var _loc1_:FilterValueTextInput = new FilterValueTextInput();
         §§push(_loc1_);
         §§push(17);
         if(_loc3_)
         {
            §§push(--(§§pop() * 81 + 37 - 1));
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(150);
         if(_loc2_)
         {
            §§push(((§§pop() * 54 - 96) * 41 + 77 - 1) * 64);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.prompt = "Min";
         _loc1_.addEventListener("change",this.___RangeFilterView_FilterValueTextInput1_change);
         _loc1_.id = "_RangeFilterView_FilterValueTextInput1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RangeFilterView_FilterValueTextInput1 = _loc1_;
         BindingManager.executeBindings(this,"_RangeFilterView_FilterValueTextInput1",this._RangeFilterView_FilterValueTextInput1);
         return _loc1_;
      }
      
      public final function ___RangeFilterView_FilterValueTextInput1_change(param1:TextOperationEvent) : void
      {
         refreshData();
      }
      
      private final function _RangeFilterView_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "to";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(11);
         if(_loc2_)
         {
            §§push(-(-((§§pop() - 1 + 1) * 37) * 15) + 60);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 59 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _RangeFilterView_FilterValueTextInput2_i() : FilterValueTextInput
      {
         var _loc1_:FilterValueTextInput = new FilterValueTextInput();
         §§push(_loc1_);
         §§push(17);
         if(_loc3_)
         {
            §§push(-(((§§pop() + 19) * 5 * 118 - 1) * 96 + 53));
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(150);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 30) + 3) - 1 + 1);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.prompt = "Max";
         _loc1_.addEventListener("change",this.___RangeFilterView_FilterValueTextInput2_change);
         _loc1_.id = "_RangeFilterView_FilterValueTextInput2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._RangeFilterView_FilterValueTextInput2 = _loc1_;
         BindingManager.executeBindings(this,"_RangeFilterView_FilterValueTextInput2",this._RangeFilterView_FilterValueTextInput2);
         return _loc1_;
      }
      
      public final function ___RangeFilterView_FilterValueTextInput2_change(param1:TextOperationEvent) : void
      {
         refreshData();
      }
      
      private final function _RangeFilterView_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 17 + 1 - 106 + 48);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_RangeFilterView_FilterValueTextInput1.value","min");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 46 - 90 + 18) + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_RangeFilterView_FilterValueTextInput1.decimalsAllowed","decimalsAllowed");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(--(§§pop() + 73));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_RangeFilterView_FilterValueTextInput2.value","max");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() - 37) - 98 + 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_RangeFilterView_FilterValueTextInput2.decimalsAllowed","decimalsAllowed");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push((§§pop() + 104 + 36) * 60 + 46);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _RangeFilterView_FilterValueTextInput1.value;
         },function(param1:*):void
         {
            min = param1;
         },"min");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(-§§pop() - 94 - 1 + 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 70 * 43 + 104 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((--((§§pop() - 1) * 29) + 87 + 66) * 88);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() * 37 + 80) * 12));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 69 + 102 - 71);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 - 1) - 86));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _RangeFilterView_FilterValueTextInput2.value;
         },function(param1:*):void
         {
            max = param1;
         },"max");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 - 1) * 88 + 106 - 50 - 35));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 1 - 1) - 1 + 62));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push((-§§pop() - 1) * 36 + 1 + 1 - 89);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 57 + 5 - 1 - 1 - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1 - 1 - 78 - 1 - 10));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _RangeFilterView_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.min = this._RangeFilterView_FilterValueTextInput1.value;
         this.max = this._RangeFilterView_FilterValueTextInput2.value;
      }
      
      [Bindable(event="propertyChange")]
      public function get _RangeFilterView_FilterValueTextInput1() : FilterValueTextInput
      {
         return this._197956983_RangeFilterView_FilterValueTextInput1;
      }
      
      public function set _RangeFilterView_FilterValueTextInput1(param1:FilterValueTextInput) : void
      {
         var _loc2_:Object = this._197956983_RangeFilterView_FilterValueTextInput1;
         if(_loc2_ !== param1)
         {
            this._197956983_RangeFilterView_FilterValueTextInput1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_RangeFilterView_FilterValueTextInput1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _RangeFilterView_FilterValueTextInput2() : FilterValueTextInput
      {
         return this._197956982_RangeFilterView_FilterValueTextInput2;
      }
      
      public function set _RangeFilterView_FilterValueTextInput2(param1:FilterValueTextInput) : void
      {
         var _loc2_:Object = this._197956982_RangeFilterView_FilterValueTextInput2;
         if(_loc2_ !== param1)
         {
            this._197956982_RangeFilterView_FilterValueTextInput2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_RangeFilterView_FilterValueTextInput2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get min() : Number
      {
         return this._108114min;
      }
      
      public function set min(param1:Number) : void
      {
         var _loc2_:Object = this._108114min;
         if(_loc2_ !== param1)
         {
            this._108114min = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"min",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get max() : Number
      {
         return this._107876max;
      }
      
      public function set max(param1:Number) : void
      {
         var _loc2_:Object = this._107876max;
         if(_loc2_ !== param1)
         {
            this._107876max = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"max",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get decimalsAllowed() : Boolean
      {
         return this._203492346decimalsAllowed;
      }
      
      public function set decimalsAllowed(param1:Boolean) : void
      {
         var _loc2_:Object = this._203492346decimalsAllowed;
         if(_loc2_ !== param1)
         {
            this._203492346decimalsAllowed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decimalsAllowed",_loc2_,param1));
            }
         }
      }
   }
}
