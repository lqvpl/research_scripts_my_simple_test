package com.enfluid.ltp.model.vo
{
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import mx.graphics.SolidColorStroke;
   import flash.events.Event;
   import mx.graphics.SolidColor;
   import mx.graphics.LinearGradient;
   import flash.events.MouseEvent;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import mx.collections.ArrayCollection;
   import com.photon.controller.PhotonCommand;
   import com.photon.controller.IPhotonCommand;
   import com.photon.controller.PhotonCommandCompletionEvent;
   import com.enfluid.ltp.model.constants.Values;
   
   public final class CompetitorAnalysisAverageVO implements IEventDispatcher
   {
       
      
      private var _1023830699keywordCompetitivenessAvg:Number;
      
      private var _158897986pageAuthorityAvg:Number;
      
      private var _603835384pageLinksAvg:Number;
      
      private var _1699024423juiceLinksAvg:Number;
      
      private var _986461043domainAuthorityAvg:Number;
      
      private var _1808104654mozRankAvg:Number;
      
      private var _188334729pageRankAvg:Number;
      
      private var _223187078siteAgeAvg:Number;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function CompetitorAnalysisAverageVO()
      {
         this._1023830699keywordCompetitivenessAvg = Values.NO_VALUE;
         this._158897986pageAuthorityAvg = Values.NO_VALUE;
         this._603835384pageLinksAvg = Values.NO_VALUE;
         this._1699024423juiceLinksAvg = Values.NO_VALUE;
         this._986461043domainAuthorityAvg = Values.NO_VALUE;
         this._1808104654mozRankAvg = Values.NO_VALUE;
         this._188334729pageRankAvg = Values.NO_VALUE;
         this._223187078siteAgeAvg = Values.NO_VALUE;
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordCompetitivenessAvg() : Number
      {
         return this._1023830699keywordCompetitivenessAvg;
      }
      
      public function set keywordCompetitivenessAvg(param1:Number) : void
      {
         var _loc2_:Object = this._1023830699keywordCompetitivenessAvg;
         if(_loc2_ !== param1)
         {
            this._1023830699keywordCompetitivenessAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordCompetitivenessAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageAuthorityAvg() : Number
      {
         return this._158897986pageAuthorityAvg;
      }
      
      public function set pageAuthorityAvg(param1:Number) : void
      {
         var _loc2_:Object = this._158897986pageAuthorityAvg;
         if(_loc2_ !== param1)
         {
            this._158897986pageAuthorityAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageAuthorityAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageLinksAvg() : Number
      {
         return this._603835384pageLinksAvg;
      }
      
      public function set pageLinksAvg(param1:Number) : void
      {
         var _loc2_:Object = this._603835384pageLinksAvg;
         if(_loc2_ !== param1)
         {
            this._603835384pageLinksAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageLinksAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get juiceLinksAvg() : Number
      {
         return this._1699024423juiceLinksAvg;
      }
      
      public function set juiceLinksAvg(param1:Number) : void
      {
         var _loc2_:Object = this._1699024423juiceLinksAvg;
         if(_loc2_ !== param1)
         {
            this._1699024423juiceLinksAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"juiceLinksAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainAuthorityAvg() : Number
      {
         return this._986461043domainAuthorityAvg;
      }
      
      public function set domainAuthorityAvg(param1:Number) : void
      {
         var _loc2_:Object = this._986461043domainAuthorityAvg;
         if(_loc2_ !== param1)
         {
            this._986461043domainAuthorityAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainAuthorityAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozRankAvg() : Number
      {
         return this._1808104654mozRankAvg;
      }
      
      public function set mozRankAvg(param1:Number) : void
      {
         var _loc2_:Object = this._1808104654mozRankAvg;
         if(_loc2_ !== param1)
         {
            this._1808104654mozRankAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozRankAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageRankAvg() : Number
      {
         return this._188334729pageRankAvg;
      }
      
      public function set pageRankAvg(param1:Number) : void
      {
         var _loc2_:Object = this._188334729pageRankAvg;
         if(_loc2_ !== param1)
         {
            this._188334729pageRankAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageRankAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get siteAgeAvg() : Number
      {
         return this._223187078siteAgeAvg;
      }
      
      public function set siteAgeAvg(param1:Number) : void
      {
         var _loc2_:Object = this._223187078siteAgeAvg;
         if(_loc2_ !== param1)
         {
            this._223187078siteAgeAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"siteAgeAvg",_loc2_,param1));
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
