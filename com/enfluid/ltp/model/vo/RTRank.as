package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.SlimHScrollBarTrackSkin;
   import mx.binding.BindingManager;
   import mx.events.PropertyChangeEvent;
   import spark.components.gridClasses.GridLayer;
   
   [BelongsTo("keyword",className="RTKeyword")]
   public dynamic class RTRank extends ActiveRecord
   {
       
      
      private var _1792749467dateTime:int;
      
      private var _3492908rank:int;
      
      private var _636652636rankedURL:String;
      
      private var _629768682searchengine:String;
      
      public function RTRank()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get dateTime() : int
      {
         return this._1792749467dateTime;
      }
      
      public function set dateTime(param1:int) : void
      {
         var _loc2_:Object = this._1792749467dateTime;
         if(_loc2_ !== param1)
         {
            this._1792749467dateTime = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dateTime",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rank() : int
      {
         return this._3492908rank;
      }
      
      public function set rank(param1:int) : void
      {
         var _loc2_:Object = this._3492908rank;
         if(_loc2_ !== param1)
         {
            this._3492908rank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankedURL() : String
      {
         return this._636652636rankedURL;
      }
      
      public function set rankedURL(param1:String) : void
      {
         var _loc2_:Object = this._636652636rankedURL;
         if(_loc2_ !== param1)
         {
            this._636652636rankedURL = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankedURL",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchengine() : String
      {
         return this._629768682searchengine;
      }
      
      public function set searchengine(param1:String) : void
      {
         var _loc2_:Object = this._629768682searchengine;
         if(_loc2_ !== param1)
         {
            this._629768682searchengine = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchengine",_loc2_,param1));
            }
         }
      }
   }
}
