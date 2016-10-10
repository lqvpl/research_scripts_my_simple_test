package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import com.enfluid.ltp.model.constants.RankCheckConstants;
   import spark.effects.Resize;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import mx.events.PropertyChangeEvent;
   import mx.events.FlexEvent;
   
   [BelongsTo("project",className="ProjectVO")]
   public dynamic class SeedKeywordVO extends ActiveRecord
   {
       
      
      private var _362584156excludeKeywords:String;
      
      private var _2133274738includeKeywords:String;
      
      private var _814408215keyword:String;
      
      private var _523149226keywords:KeywordArrayCollection;
      
      public function SeedKeywordVO(param1:ProjectVO = null)
      {
         super();
         this.project = param1;
         if(param1)
         {
            this.init(param1);
         }
      }
      
      public function get projectID() : int
      {
         return this.project_id;
      }
      
      public function init(param1:ProjectVO) : void
      {
         this.project = param1;
         this.keywords = new KeywordArrayCollection(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get excludeKeywords() : String
      {
         return this._362584156excludeKeywords;
      }
      
      public function set excludeKeywords(param1:String) : void
      {
         var _loc2_:Object = this._362584156excludeKeywords;
         if(_loc2_ !== param1)
         {
            this._362584156excludeKeywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"excludeKeywords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get includeKeywords() : String
      {
         return this._2133274738includeKeywords;
      }
      
      public function set includeKeywords(param1:String) : void
      {
         var _loc2_:Object = this._2133274738includeKeywords;
         if(_loc2_ !== param1)
         {
            this._2133274738includeKeywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"includeKeywords",_loc2_,param1));
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
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get keywords() : KeywordArrayCollection
      {
         return this._523149226keywords;
      }
      
      public function set keywords(param1:KeywordArrayCollection) : void
      {
         var _loc2_:Object = this._523149226keywords;
         if(_loc2_ !== param1)
         {
            this._523149226keywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywords",_loc2_,param1));
            }
         }
      }
   }
}
