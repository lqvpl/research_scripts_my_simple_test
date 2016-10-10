package com.enfluid.ltp.view.settings
{
   import spark.components.Callout;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import spark.events.PopUpEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import spark.components.Scroller;
   import spark.components.VGroup;
   import mx.events.FlexMouseEvent;
   import com.enfluid.ltp.model.ViewModel;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   
   public final class SettingsCallout extends Callout
   {
       
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var currentGoogleSpeedValue:int;
      
      private var currentBingSpeedValue:int;
      
      public function SettingsCallout()
      {
         this._104069929model = DataModel.instance;
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(700);
         if(_loc2_)
         {
            §§push(-((§§pop() + 76) * 2) * 91 + 112 - 111);
         }
         §§pop().width = §§pop();
         this.verticalPosition = "after";
         this.layout = this._SettingsCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._SettingsCallout_Array1_c);
         this.addEventListener("mouseDownOutside",this.___SettingsCallout_Callout1_mouseDownOutside);
         this.addEventListener("close",this.___SettingsCallout_Callout1_close);
         this.addEventListener("creationComplete",this.___SettingsCallout_Callout1_creationComplete);
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
         this.currentGoogleSpeedValue = this.model.preferences.googleRequestAvgDelay;
         this.currentBingSpeedValue = this.model.preferences.bingReqeustAvgDelay;
         addEventListener(PopUpEvent.OPEN,function():void
         {
            currentGoogleSpeedValue = model.preferences.googleRequestAvgDelay;
            currentBingSpeedValue = model.preferences.bingReqeustAvgDelay;
         });
         addEventListener(PopUpEvent.CLOSE,function():void
         {
            if(currentGoogleSpeedValue != model.preferences.googleRequestAvgDelay)
            {
               new SetUserEvent("UserEvent.Settings.Speed.GoogleDelay",{"Delay":model.preferences.googleRequestAvgDelay}).execute();
            }
            if(currentBingSpeedValue != model.preferences.bingReqeustAvgDelay)
            {
               new SetUserEvent("UserEvent.Settings.Speed.BingDelay",{"Delay":model.preferences.bingReqeustAvgDelay}).execute();
            }
         });
      }
      
      private final function _SettingsCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() * 41 + 17 + 82) * 111);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() * 75 * 87 + 1) * 78);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() - 45 + 1) * 54 + 70 + 1 + 54);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push((§§pop() * 110 - 1 - 1) * 97);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _SettingsCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._SettingsCallout_Scroller1_c()];
         return _loc1_;
      }
      
      private final function _SettingsCallout_Scroller1_c() : Scroller
      {
         var _loc1_:Scroller = new Scroller();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 65) * 3) * 102 + 78);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 39 + 1 - 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.viewport = this._SettingsCallout_VGroup1_c();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-(§§pop() - 29) - 1) * 62 * 41 - 19);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() + 23 - 0 + 48 - 81);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._SettingsCallout_SettingsHelpSection1_c(),this._SettingsCallout_SettingsUserAccountsSection1_c(),this._SettingsCallout_SettingsDataFetchingSpeedSection1_c(),this._SettingsCallout_SettingsDebugSection1_c()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_SettingsHelpSection1_c() : SettingsHelpSection
      {
         var _loc1_:SettingsHelpSection = new SettingsHelpSection();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--(§§pop() * 104 - 1 - 1) + 20);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.expanded = false;
         _loc1_.title = "Help";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_SettingsUserAccountsSection1_c() : SettingsUserAccountsSection
      {
         var _loc1_:SettingsUserAccountsSection = new SettingsUserAccountsSection();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 36 + 1) + 24 + 5 - 1));
         }
         §§pop().percentWidth = §§pop();
         _loc1_.expanded = false;
         _loc1_.title = "User Accounts";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_SettingsDataFetchingSpeedSection1_c() : SettingsDataFetchingSpeedSection
      {
         var _loc1_:SettingsDataFetchingSpeedSection = new SettingsDataFetchingSpeedSection();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 21) * 103 - 1 + 4);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.expanded = false;
         _loc1_.title = "Data Fetching Speed";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _SettingsCallout_SettingsDebugSection1_c() : SettingsDebugSection
      {
         var _loc1_:SettingsDebugSection = new SettingsDebugSection();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(--(§§pop() - 1) + 31);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.expanded = false;
         _loc1_.title = "Debug";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___SettingsCallout_Callout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___SettingsCallout_Callout1_close(param1:PopUpEvent) : void
      {
         ViewModel.instance.showSettingsCallout = false;
      }
      
      public final function ___SettingsCallout_Callout1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
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
