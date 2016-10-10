package com.enfluid.ltp.model.vo
{
   import flash.events.IEventDispatcher;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.skins.target;
   import mx.states.State;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import com.enfluid.ltp.util.KeywordUtil;
   import system.errors.ConcurrencyError;
   
   use namespace mx_internal;
   
   public final class PreferencesVO implements IEventDispatcher
   {
       
      
      private var _95032251maxRankTrackerChartValue:int = 500;
      
      private var _1009979452rankTrackerDaysToLoad:int = 90;
      
      private var _1713233305selectedProjectID:uint;
      
      private var _907891976selectedCountryCode:String;
      
      private var _2073249980selectedCountryCodeRankTracker:String;
      
      private var _1173061728selectedLanguageCode:String;
      
      private var _1593401115userSeoMozAccessId:String;
      
      private var _775301367userSeoMozSecretKey:String;
      
      private var _674386552lastSelectedExportDirectory:String;
      
      private var _260546994showDebugPanel:Boolean = false;
      
      private var _813514394showRuntimeErrors:Boolean = false;
      
      private var _697385748eulaAccepted:Boolean = false;
      
      private var _635258332showHelpIcons:Boolean = true;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function PreferencesVO()
      {
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get maxRankTrackerChartValue() : int
      {
         return this._95032251maxRankTrackerChartValue;
      }
      
      public function set maxRankTrackerChartValue(param1:int) : void
      {
         var _loc2_:Object = this._95032251maxRankTrackerChartValue;
         if(_loc2_ !== param1)
         {
            this._95032251maxRankTrackerChartValue = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxRankTrackerChartValue",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankTrackerDaysToLoad() : int
      {
         return this._1009979452rankTrackerDaysToLoad;
      }
      
      public function set rankTrackerDaysToLoad(param1:int) : void
      {
         var _loc2_:Object = this._1009979452rankTrackerDaysToLoad;
         if(_loc2_ !== param1)
         {
            this._1009979452rankTrackerDaysToLoad = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankTrackerDaysToLoad",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedProjectID() : uint
      {
         return this._1713233305selectedProjectID;
      }
      
      public function set selectedProjectID(param1:uint) : void
      {
         var _loc2_:Object = this._1713233305selectedProjectID;
         if(_loc2_ !== param1)
         {
            this._1713233305selectedProjectID = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedProjectID",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedCountryCode() : String
      {
         return this._907891976selectedCountryCode;
      }
      
      public function set selectedCountryCode(param1:String) : void
      {
         var _loc2_:Object = this._907891976selectedCountryCode;
         if(_loc2_ !== param1)
         {
            this._907891976selectedCountryCode = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedCountryCode",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedCountryCodeRankTracker() : String
      {
         return this._2073249980selectedCountryCodeRankTracker;
      }
      
      public function set selectedCountryCodeRankTracker(param1:String) : void
      {
         var _loc2_:Object = this._2073249980selectedCountryCodeRankTracker;
         if(_loc2_ !== param1)
         {
            this._2073249980selectedCountryCodeRankTracker = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedCountryCodeRankTracker",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedLanguageCode() : String
      {
         return this._1173061728selectedLanguageCode;
      }
      
      public function set selectedLanguageCode(param1:String) : void
      {
         var _loc2_:Object = this._1173061728selectedLanguageCode;
         if(_loc2_ !== param1)
         {
            this._1173061728selectedLanguageCode = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedLanguageCode",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userSeoMozAccessId() : String
      {
         return this._1593401115userSeoMozAccessId;
      }
      
      public function set userSeoMozAccessId(param1:String) : void
      {
         var _loc2_:Object = this._1593401115userSeoMozAccessId;
         if(_loc2_ !== param1)
         {
            this._1593401115userSeoMozAccessId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userSeoMozAccessId",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userSeoMozSecretKey() : String
      {
         return this._775301367userSeoMozSecretKey;
      }
      
      public function set userSeoMozSecretKey(param1:String) : void
      {
         var _loc2_:Object = this._775301367userSeoMozSecretKey;
         if(_loc2_ !== param1)
         {
            this._775301367userSeoMozSecretKey = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userSeoMozSecretKey",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastSelectedExportDirectory() : String
      {
         return this._674386552lastSelectedExportDirectory;
      }
      
      public function set lastSelectedExportDirectory(param1:String) : void
      {
         var _loc2_:Object = this._674386552lastSelectedExportDirectory;
         if(_loc2_ !== param1)
         {
            this._674386552lastSelectedExportDirectory = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastSelectedExportDirectory",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showDebugPanel() : Boolean
      {
         return this._260546994showDebugPanel;
      }
      
      public function set showDebugPanel(param1:Boolean) : void
      {
         var _loc2_:Object = this._260546994showDebugPanel;
         if(_loc2_ !== param1)
         {
            this._260546994showDebugPanel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showDebugPanel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showRuntimeErrors() : Boolean
      {
         return this._813514394showRuntimeErrors;
      }
      
      public function set showRuntimeErrors(param1:Boolean) : void
      {
         var _loc2_:Object = this._813514394showRuntimeErrors;
         if(_loc2_ !== param1)
         {
            this._813514394showRuntimeErrors = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showRuntimeErrors",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eulaAccepted() : Boolean
      {
         return this._697385748eulaAccepted;
      }
      
      public function set eulaAccepted(param1:Boolean) : void
      {
         var _loc2_:Object = this._697385748eulaAccepted;
         if(_loc2_ !== param1)
         {
            this._697385748eulaAccepted = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eulaAccepted",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showHelpIcons() : Boolean
      {
         return this._635258332showHelpIcons;
      }
      
      public function set showHelpIcons(param1:Boolean) : void
      {
         var _loc2_:Object = this._635258332showHelpIcons;
         if(_loc2_ !== param1)
         {
            this._635258332showHelpIcons = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHelpIcons",_loc2_,param1));
            }
         }
      }
      
      public final function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public final function dispatchEvent(param1:Event) : Boolean
      {
         return this._bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public final function hasEventListener(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.hasEventListener(param1);
      }
      
      public final function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this._bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public final function willTrigger(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.willTrigger(param1);
      }
   }
}
