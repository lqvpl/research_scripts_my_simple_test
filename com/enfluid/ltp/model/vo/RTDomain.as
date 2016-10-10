package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import com.enfluid.ltp.model.DataModel;
   import mx.collections.ArrayCollection;
   import mx.events.PropertyChangeEvent;
   
   [HasMany("keywords",property="domain",className="RTKeyword")]
   public dynamic class RTDomain extends ActiveRecord
   {
       
      
      private var _1326197564domain:String;
      
      private var _keywordsAC:ArrayCollection;
      
      public function RTDomain()
      {
         super();
      }
      
      [Bindable(event="keywordsACChange")]
      [NotPersisted]
      public function get keywordsAC() : ArrayCollection
      {
         var _loc1_:RTKeyword = null;
         if(!this._keywordsAC)
         {
            _loc1_ = new RTKeyword();
            this._keywordsAC = new ArrayCollection(_loc1_.findBySQLWithoutParams("SELECT * FROM RTKeywords WHERE domain_id = " + this.id + ";"));
         }
         return this._keywordsAC;
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
   }
}
