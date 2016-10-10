package com.enfluid.ltp.view.missingdatacallouts
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.components.AvgDelayComponent;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import mx.states.State;
   import mx.states.SetProperty;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchMissingBingTitleCompetitionCommand;
   import spark.events.PopUpEvent;
   import flash.events.Event;
   import spark.layouts.VerticalLayout;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import mx.binding.BindingManager;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.Binding;
   import flash.events.TimerEvent;
   import mx.controls.HRule;
   import spark.components.Button;
   import spark.components.HGroup;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import spark.primitives.Rect;
   import mx.events.FlexMouseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class BingTitleCompMissingDataCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1604619324_BingTitleCompMissingDataCallout_AvgDelayComponent1:AvgDelayComponent;
      
      public var _BingTitleCompMissingDataCallout_Label1:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function BingTitleCompMissingDataCallout()
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
         var bindings:Array = this._BingTitleCompMissingDataCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_missingdatacallouts_BingTitleCompMissingDataCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return BingTitleCompMissingDataCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(-§§pop() + 22 + 37);
         }
         §§pop().percentWidth = §§pop();
         this.verticalPosition = "after";
         this.layout = this._BingTitleCompMissingDataCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._BingTitleCompMissingDataCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___BingTitleCompMissingDataCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___BingTitleCompMissingDataCallout_Callout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() + 107) * 16 - 71) * 37 - 1 - 1);
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
         BingTitleCompMissingDataCallout._watcherSetupUtil = param1;
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
      
      protected final function onClickFetchData(param1:MouseEvent) : void
      {
         new FetchMissingBingTitleCompetitionCommand().execute();
         this.close();
      }
      
      protected final function calloutCloseHandler(param1:PopUpEvent) : void
      {
         dispatchEvent(new Event("calloutCloseEvent"));
      }
      
      private final function _BingTitleCompMissingDataCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 1 - 1);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-((§§pop() + 23 - 1) * 97) + 78 + 78 + 16);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() - 7 + 1 + 1 + 45 + 82) * 11);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) + 1));
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _BingTitleCompMissingDataCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._BingTitleCompMissingDataCallout_Label1_i(),this._BingTitleCompMissingDataCallout_HRule1_c(),this._BingTitleCompMissingDataCallout_AvgDelayComponent1_i(),this._BingTitleCompMissingDataCallout_Button1_c()];
         return _loc1_;
      }
      
      private final function _BingTitleCompMissingDataCallout_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 3) + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "_BingTitleCompMissingDataCallout_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BingTitleCompMissingDataCallout_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_BingTitleCompMissingDataCallout_Label1",this._BingTitleCompMissingDataCallout_Label1);
         return _loc1_;
      }
      
      private final function _BingTitleCompMissingDataCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 81) * 98 + 1));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 20 - 116 - 38 - 95) * 53 - 71);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _BingTitleCompMissingDataCallout_AvgDelayComponent1_i() : AvgDelayComponent
      {
         var _loc1_:AvgDelayComponent = new AvgDelayComponent();
         _loc1_.id = "_BingTitleCompMissingDataCallout_AvgDelayComponent1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._BingTitleCompMissingDataCallout_AvgDelayComponent1 = _loc1_;
         BindingManager.executeBindings(this,"_BingTitleCompMissingDataCallout_AvgDelayComponent1",this._BingTitleCompMissingDataCallout_AvgDelayComponent1);
         return _loc1_;
      }
      
      private final function _BingTitleCompMissingDataCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 75) * 10 + 107);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push(§§pop() + 15 + 1 + 86 - 75 - 118);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Fetch Now";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(20);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1 - 74 + 118) * 38 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___BingTitleCompMissingDataCallout_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___BingTitleCompMissingDataCallout_Button1_click(param1:MouseEvent) : void
      {
         this.onClickFetchData(param1);
      }
      
      public final function ___BingTitleCompMissingDataCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___BingTitleCompMissingDataCallout_Callout1_close(param1:PopUpEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      private final function _BingTitleCompMissingDataCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 62);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.selectedKeywordCollection.missingBingTitleCompCount + " of " + (model.selectedKeywordCollection.length + " keywords are missing Bing Title Competition.");
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_BingTitleCompMissingDataCallout_Label1.text");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 48 + 1) * 88 + 64 - 11);
         }
         §§pop()[§§pop()] = new Binding(this,function():int
         {
            return model.selectedKeywordCollection.project.bingTitleCompAvgDelay;
         },null,"_BingTitleCompMissingDataCallout_AvgDelayComponent1.avgDelay");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 4 * 57 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return _BingTitleCompMissingDataCallout_AvgDelayComponent1.avgDelay;
         },function(param1:*):void
         {
            model.selectedKeywordCollection.project.bingTitleCompAvgDelay = param1;
         },"model.selectedKeywordCollection.project.bingTitleCompAvgDelay");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 21 - 84 - 66);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 8 + 1 - 119 + 62);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(§§pop() * 75 - 1) - 26);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(((§§pop() * 26 - 1 + 1) * 46 + 1 - 21) * 93);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((-(§§pop() * 108 + 1) - 1 + 102) * 116 + 24);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _BingTitleCompMissingDataCallout_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedKeywordCollection.project.bingTitleCompAvgDelay = this._BingTitleCompMissingDataCallout_AvgDelayComponent1.avgDelay;
      }
      
      [Bindable(event="propertyChange")]
      public function get _BingTitleCompMissingDataCallout_AvgDelayComponent1() : AvgDelayComponent
      {
         return this._1604619324_BingTitleCompMissingDataCallout_AvgDelayComponent1;
      }
      
      public function set _BingTitleCompMissingDataCallout_AvgDelayComponent1(param1:AvgDelayComponent) : void
      {
         var _loc2_:Object = this._1604619324_BingTitleCompMissingDataCallout_AvgDelayComponent1;
         if(_loc2_ !== param1)
         {
            this._1604619324_BingTitleCompMissingDataCallout_AvgDelayComponent1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_BingTitleCompMissingDataCallout_AvgDelayComponent1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get model() : DataModel
      {
         return this._104069929model;
      }
      
      public function set model(param1:DataModel) : void
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
