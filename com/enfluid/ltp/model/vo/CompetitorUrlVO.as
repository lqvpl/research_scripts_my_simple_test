package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import com.enfluid.ltp.model.constants.Values;
   import flash.events.Event;
   import mx.events.PropertyChangeEvent;
   
   [BelongsTo("keyword",className="KeywordVO")]
   public dynamic class CompetitorUrlVO extends ActiveRecord
   {
       
      
      private var _1117865050rankOnPage:int = -1;
      
      private var _116079url:String;
      
      private var _110371416title:String;
      
      private var _1724546052description:String;
      
      private var _523149226keywords:String;
      
      private var _1106106307keywordCompetitiveness:int = -1;
      
      private var _1543910772pageAuthority:int = -1;
      
      private var _1935313186seomozLinks:int = -1;
      
      private var _1429358023juiceLinks:int = -1;
      
      private var _1505455839domainAuthority:int = -1;
      
      private var _1246698340mozRank:Number = -1;
      
      private var _859390811pageRank:int = -1;
      
      private var _siteCreationDate:Date = null;
      
      private var _2099972152siteAge:Number = -1;
      
      private var _1163730709titleStemmed:String;
      
      private var _65380555urlAsKeywords:String;
      
      private var _831599848urlAsKeywordsStemmed:String;
      
      private var _1702623532boldedTitle:String;
      
      public function CompetitorUrlVO()
      {
         super();
      }
      
      [Bindable(event="siteCreationDateChange")]
      public function get siteCreationDate() : Date
      {
         return this._siteCreationDate;
      }
      
      public function set siteCreationDate(param1:Date) : void
      {
         var _loc2_:Date = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this._siteCreationDate !== param1)
         {
            this._siteCreationDate = param1;
            if(this._siteCreationDate.time == Values.ERROR_DATE.time)
            {
               this.siteAge = Values.ERROR;
            }
            else if(this._siteCreationDate == Values.NOT_FETCHED_DATE)
            {
               this.siteAge = Values.NOT_FETCHED;
            }
            else
            {
               _loc2_ = new Date();
               _loc3_ = _loc2_.time - this._siteCreationDate.time;
               _loc4_ = _loc3_ / 31557600000;
               this.siteAge = Math.round(_loc4_ * 10) / 10;
            }
            dispatchEvent(new Event("siteCreationDateChange"));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankOnPage() : int
      {
         return this._1117865050rankOnPage;
      }
      
      public function set rankOnPage(param1:int) : void
      {
         var _loc2_:Object = this._1117865050rankOnPage;
         if(_loc2_ !== param1)
         {
            this._1117865050rankOnPage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankOnPage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set url(param1:String) : void
      {
         var _loc2_:Object = this._116079url;
         if(_loc2_ !== param1)
         {
            this._116079url = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : String
      {
         return this._110371416title;
      }
      
      public function set title(param1:String) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get description() : String
      {
         return this._1724546052description;
      }
      
      public function set description(param1:String) : void
      {
         var _loc2_:Object = this._1724546052description;
         if(_loc2_ !== param1)
         {
            this._1724546052description = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"description",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywords() : String
      {
         return this._523149226keywords;
      }
      
      public function set keywords(param1:String) : void
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
      
      [Bindable(event="propertyChange")]
      public function get keywordCompetitiveness() : int
      {
         return this._1106106307keywordCompetitiveness;
      }
      
      public function set keywordCompetitiveness(param1:int) : void
      {
         var _loc2_:Object = this._1106106307keywordCompetitiveness;
         if(_loc2_ !== param1)
         {
            this._1106106307keywordCompetitiveness = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordCompetitiveness",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageAuthority() : int
      {
         return this._1543910772pageAuthority;
      }
      
      public function set pageAuthority(param1:int) : void
      {
         var _loc2_:Object = this._1543910772pageAuthority;
         if(_loc2_ !== param1)
         {
            this._1543910772pageAuthority = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageAuthority",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get seomozLinks() : int
      {
         return this._1935313186seomozLinks;
      }
      
      public function set seomozLinks(param1:int) : void
      {
         var _loc2_:Object = this._1935313186seomozLinks;
         if(_loc2_ !== param1)
         {
            this._1935313186seomozLinks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seomozLinks",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get juiceLinks() : int
      {
         return this._1429358023juiceLinks;
      }
      
      public function set juiceLinks(param1:int) : void
      {
         var _loc2_:Object = this._1429358023juiceLinks;
         if(_loc2_ !== param1)
         {
            this._1429358023juiceLinks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"juiceLinks",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainAuthority() : int
      {
         return this._1505455839domainAuthority;
      }
      
      public function set domainAuthority(param1:int) : void
      {
         var _loc2_:Object = this._1505455839domainAuthority;
         if(_loc2_ !== param1)
         {
            this._1505455839domainAuthority = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainAuthority",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozRank() : Number
      {
         return this._1246698340mozRank;
      }
      
      public function set mozRank(param1:Number) : void
      {
         var _loc2_:Object = this._1246698340mozRank;
         if(_loc2_ !== param1)
         {
            this._1246698340mozRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageRank() : int
      {
         return this._859390811pageRank;
      }
      
      public function set pageRank(param1:int) : void
      {
         var _loc2_:Object = this._859390811pageRank;
         if(_loc2_ !== param1)
         {
            this._859390811pageRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageRank",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get siteAge() : Number
      {
         return this._2099972152siteAge;
      }
      
      public function set siteAge(param1:Number) : void
      {
         var _loc2_:Object = this._2099972152siteAge;
         if(_loc2_ !== param1)
         {
            this._2099972152siteAge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"siteAge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleStemmed() : String
      {
         return this._1163730709titleStemmed;
      }
      
      public function set titleStemmed(param1:String) : void
      {
         var _loc2_:Object = this._1163730709titleStemmed;
         if(_loc2_ !== param1)
         {
            this._1163730709titleStemmed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleStemmed",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urlAsKeywords() : String
      {
         return this._65380555urlAsKeywords;
      }
      
      public function set urlAsKeywords(param1:String) : void
      {
         var _loc2_:Object = this._65380555urlAsKeywords;
         if(_loc2_ !== param1)
         {
            this._65380555urlAsKeywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlAsKeywords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urlAsKeywordsStemmed() : String
      {
         return this._831599848urlAsKeywordsStemmed;
      }
      
      public function set urlAsKeywordsStemmed(param1:String) : void
      {
         var _loc2_:Object = this._831599848urlAsKeywordsStemmed;
         if(_loc2_ !== param1)
         {
            this._831599848urlAsKeywordsStemmed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlAsKeywordsStemmed",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boldedTitle() : String
      {
         return this._1702623532boldedTitle;
      }
      
      public function set boldedTitle(param1:String) : void
      {
         var _loc2_:Object = this._1702623532boldedTitle;
         if(_loc2_ !== param1)
         {
            this._1702623532boldedTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boldedTitle",_loc2_,param1));
            }
         }
      }
   }
}
