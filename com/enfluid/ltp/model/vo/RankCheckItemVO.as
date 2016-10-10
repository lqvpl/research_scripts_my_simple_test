package com.enfluid.ltp.model.vo
{
   import flash.events.IEventDispatcher;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.controller.keywordresearch.SaveTopTenToServerCommand;
   import com.enfluid.ltp.controller.keywordresearch.SaveAvgKCToServer;
   import com.enfluid.ltp.view.components.Link;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import com.hurlant.math.BigInteger;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class RankCheckItemVO implements IEventDispatcher
   {
       
      
      private var _942136047bingPage:String;
      
      private var _942195852bingRank:String;
      
      private var _1326197564domain:String;
      
      private var _1535283096googlePage:String;
      
      private var _1535223291googleRank:String;
      
      private var _710473164searchTerm:String;
      
      private var _1191572123selected:Boolean;
      
      private var _1310818577yahooPage:String;
      
      private var _1310758772yahooRank:String;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function RankCheckItemVO()
      {
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get bingPage() : String
      {
         return this._942136047bingPage;
      }
      
      public function set bingPage(param1:String) : void
      {
         var _loc2_:Object = this._942136047bingPage;
         if(_loc2_ !== param1)
         {
            this._942136047bingPage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bingPage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bingRank() : String
      {
         return this._942195852bingRank;
      }
      
      public function set bingRank(param1:String) : void
      {
         var _loc2_:Object = this._942195852bingRank;
         if(_loc2_ !== param1)
         {
            this._942195852bingRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bingRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domain() : String
      {
         return this._1326197564domain;
      }
      
      public function set domain(param1:String) : void
      {
         var _loc2_:Object = this._1326197564domain;
         if(_loc2_ !== param1)
         {
            this._1326197564domain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googlePage() : String
      {
         return this._1535283096googlePage;
      }
      
      public function set googlePage(param1:String) : void
      {
         var _loc2_:Object = this._1535283096googlePage;
         if(_loc2_ !== param1)
         {
            this._1535283096googlePage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googlePage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleRank() : String
      {
         return this._1535223291googleRank;
      }
      
      public function set googleRank(param1:String) : void
      {
         var _loc2_:Object = this._1535223291googleRank;
         if(_loc2_ !== param1)
         {
            this._1535223291googleRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchTerm() : String
      {
         return this._710473164searchTerm;
      }
      
      public function set searchTerm(param1:String) : void
      {
         var _loc2_:Object = this._710473164searchTerm;
         if(_loc2_ !== param1)
         {
            this._710473164searchTerm = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchTerm",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selected() : Boolean
      {
         return this._1191572123selected;
      }
      
      public function set selected(param1:Boolean) : void
      {
         var _loc2_:Object = this._1191572123selected;
         if(_loc2_ !== param1)
         {
            this._1191572123selected = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selected",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yahooPage() : String
      {
         return this._1310818577yahooPage;
      }
      
      public function set yahooPage(param1:String) : void
      {
         var _loc2_:Object = this._1310818577yahooPage;
         if(_loc2_ !== param1)
         {
            this._1310818577yahooPage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yahooPage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yahooRank() : String
      {
         return this._1310758772yahooRank;
      }
      
      public function set yahooRank(param1:String) : void
      {
         var _loc2_:Object = this._1310758772yahooRank;
         if(_loc2_ !== param1)
         {
            this._1310758772yahooRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yahooRank",_loc2_,param1));
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
