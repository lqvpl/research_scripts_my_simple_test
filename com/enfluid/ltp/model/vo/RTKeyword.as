package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import com.enfluid.ltp.model.constants.SearchEngines;
   import flash.events.Event;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteProjectCommand;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.PropertyChangeEvent;
   
   [BelongsTo("domain",className="RTDomain")]
   [HasMany("ranks",property="keyword",className="RTRank")]
   public dynamic class RTKeyword extends ActiveRecord
   {
       
      
      private var _1785703590allRanks:ArrayCollection;
      
      private var _590598050currentGoogleRank:com.enfluid.ltp.model.vo.RTRank;
      
      private var _814408215keyword:String;
      
      private var _1901043637location:String;
      
      private var _googleRanks:ArrayList;
      
      public function RTKeyword()
      {
         this._1785703590allRanks = new ArrayCollection();
         super();
      }
      
      [Bindable(event="googleRanksChange")]
      [NotPersisted]
      public function get googleRanks() : ArrayList
      {
         if(!this._googleRanks)
         {
            this._googleRanks = this.loadRanks(SearchEngines.GOOGLE);
         }
         return this._googleRanks;
      }
      
      public function loadRanks(param1:String) : ArrayList
      {
         var _loc2_:com.enfluid.ltp.model.vo.RTRank = new com.enfluid.ltp.model.vo.RTRank();
         §§push(Math);
         §§push(new Date().time);
         §§push(1000);
         if(_loc4_)
         {
            §§push(-(§§pop() - 1 + 1) + 1 - 82 - 1);
         }
         §§push(§§pop().round(§§pop() / §§pop()));
         §§push(60);
         if(_loc5_)
         {
            §§push(-((-§§pop() - 1) * 7) * 69 + 1);
         }
         §§push(§§pop() * §§pop());
         §§push(24);
         if(_loc4_)
         {
            §§push(§§pop() - 39 + 1 - 1 + 94 - 52);
         }
         var _loc3_:int = §§pop() - §§pop() * §§pop() * DataModel.instance.preferences.rankTrackerDaysToLoad;
         return new ArrayList(_loc2_.findBySQLWithoutParams("SELECT * FROM RTRanks WHERE keyword_id = " + this.id + " AND dateTime > " + _loc3_ + " AND searchengine = \'" + param1 + "\';"));
      }
      
      public function refreshRankData() : void
      {
         this._googleRanks = this.loadRanks(SearchEngines.GOOGLE);
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get allRanks() : ArrayCollection
      {
         return this._1785703590allRanks;
      }
      
      public function set allRanks(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1785703590allRanks;
         if(_loc2_ !== param1)
         {
            this._1785703590allRanks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allRanks",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get currentGoogleRank() : com.enfluid.ltp.model.vo.RTRank
      {
         return this._590598050currentGoogleRank;
      }
      
      public function set currentGoogleRank(param1:com.enfluid.ltp.model.vo.RTRank) : void
      {
         var _loc2_:Object = this._590598050currentGoogleRank;
         if(_loc2_ !== param1)
         {
            this._590598050currentGoogleRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentGoogleRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keyword() : String
      {
         return this._814408215keyword;
      }
      
      public function set keyword(param1:String) : void
      {
         var _loc2_:Object = this._814408215keyword;
         if(_loc2_ !== param1)
         {
            this._814408215keyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keyword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get location() : String
      {
         return this._1901043637location;
      }
      
      public function set location(param1:String) : void
      {
         var _loc2_:Object = this._1901043637location;
         if(_loc2_ !== param1)
         {
            this._1901043637location = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"location",_loc2_,param1));
            }
         }
      }
   }
}
