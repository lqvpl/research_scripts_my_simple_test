package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import mx.controls.HRule;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.constants.Countries;
   import com.enfluid.ltp.model.constants.Languages;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.util.KeywordFetcherUtil;
   import mx.events.PropertyChangeEvent;
   import spark.components.Group;
   import mx.binding.BindingManager;
   
   [HasMany("seedKeywordsList",property="project",className="SeedKeywordVO")]
   [HasMany("keywordsList",property="project",className="KeywordVO")]
   public dynamic class ProjectVO extends ActiveRecord
   {
       
      
      private var _110371416title:String;
      
      private var _957831062country:com.enfluid.ltp.model.vo.CountryVO;
      
      private var _1613589672language:com.enfluid.ltp.model.vo.LanguageVO;
      
      private var _1399632564includeAdultAreas:Boolean = false;
      
      private var _1134993562searchNetwork:String;
      
      private var _keywords:KeywordArrayCollection;
      
      private var _seedKeywords:ArrayCollection;
      
      private var _660274062pendingSeedKeywords:ArrayCollection;
      
      private var _1797248825pendingOwnKeywords:String = "";
      
      private var _172110512ownKeywords:KeywordArrayCollection;
      
      private var _1182468343seedKeywordIDMap:Object;
      
      private var _1382857952localSearchesEnabled:Boolean = true;
      
      private var _2031334439localSearchesFilterMin:Number = 0;
      
      private var _2031334677localSearchesFilterMax:Number = 0;
      
      private var _91478040globalSearchesEnabled:Boolean = false;
      
      private var _2034179745globalSearchesFilterMin:int = 0;
      
      private var _2034179507globalSearchesFilterMax:int = 0;
      
      private var _41596679suggestedBidEnabled:Boolean = true;
      
      private var _1069965824suggestedBidFilterMin:Number = 0;
      
      private var _1069965586suggestedBidFilterMax:Number = 0;
      
      private var _269526791advertiserCompEnabled:Boolean = true;
      
      private var _1067470594advertiserCompFilterLow:Boolean = true;
      
      private var _1067471226advertiserCompFilterMed:Boolean = true;
      
      private var _1268275276advertiserCompFilterHigh:Boolean = true;
      
      private var _540842989googleTitleCompEnabled:Boolean = false;
      
      private var _308806644googleTitleCompFilterMin:int = 0;
      
      private var _308806882googleTitleCompFilterMax:int = 0;
      
      private var _1278688282bingTitleCompEnabled:Boolean = false;
      
      private var _209055315bingTitleCompFilterMin:int = 0;
      
      private var _209055077bingTitleCompFilterMax:int = 0;
      
      private var _1809573189amazonKCEnabled:Boolean = true;
      
      private var _340517870domainsEnabled:Boolean = false;
      
      private var _988173943domainsExactMatchExtensions:com.enfluid.ltp.model.vo.DomainExtensionOptions;
      
      private var _2064930375domainsHyphenatedExtensions:com.enfluid.ltp.model.vo.DomainExtensionOptions;
      
      private var _2125981642domainsHasAvailableFilter:Boolean = false;
      
      private var _237613314numWordsEnabled:Boolean = false;
      
      private var _962865097numWordsFilterMin:int = 0;
      
      private var _962865335numWordsFilterMax:int = 0;
      
      private var _711657282amazonKCFilterMin:int = 0;
      
      private var _711657520amazonKCFilterMax:int = 0;
      
      private var _1862932272avgKCFilterMin:int = 0;
      
      private var _1862932034avgKCFilterMax:int = 0;
      
      private var _365485136competitorURLs:ArrayCollection;
      
      private var _896505829source:String;
      
      private var _1205564302keywordFilterText:String = "";
      
      private var _561781570projectFilterText:String = "";
      
      private var _544028419matchStrings:Array;
      
      private var _1610084810unMatchStrings:Array;
      
      private var _1272460911specialFilter:int = 0;
      
      public function ProjectVO()
      {
         this._660274062pendingSeedKeywords = new ArrayCollection();
         this._172110512ownKeywords = new KeywordArrayCollection(this as ProjectVO);
         this._988173943domainsExactMatchExtensions = new com.enfluid.ltp.model.vo.DomainExtensionOptions();
         this._2064930375domainsHyphenatedExtensions = new com.enfluid.ltp.model.vo.DomainExtensionOptions();
         this._365485136competitorURLs = new ArrayCollection();
         this._544028419matchStrings = new Array();
         this._1610084810unMatchStrings = new Array();
         super();
      }
      
      public function get countryCode() : String
      {
         return !!this.country?this.country.code:null;
      }
      
      private function set _1477067101countryCode(param1:String) : void
      {
         this.country = Countries.findCountryByCode(param1);
      }
      
      public function get languageCode() : String
      {
         return !!this.language?this.language.code:null;
      }
      
      private function set _2092349083languageCode(param1:String) : void
      {
         this.language = Languages.findLanguageByCode(param1);
      }
      
      [Bindable(event="keywordsChange")]
      public function get keywords() : KeywordArrayCollection
      {
         var _loc1_:ArrayCollection = null;
         if(!this._keywords)
         {
            if(!this.seedKeywordIDMap)
            {
               _loc1_ = this.seedKeywords;
            }
            this._keywords = KeywordFetcherUtil.fetchKeywordsForProject(this,this.seedKeywordIDMap);
         }
         return this._keywords;
      }
      
      [Bindable(event="seedKeywordsChange")]
      public function get seedKeywords() : ArrayCollection
      {
         var _loc1_:SeedKeywordVO = null;
         if(!this._seedKeywords)
         {
            _loc1_ = new SeedKeywordVO(this);
            this._seedKeywords = new ArrayCollection(_loc1_.findBySQLWithoutParams("SELECT * FROM SeedKeywordVOs WHERE project_id = " + this.id + ";"));
            this.seedKeywordIDMap = {};
            for each(_loc1_ in this._seedKeywords)
            {
               this.seedKeywordIDMap[_loc1_.id] = _loc1_;
               _loc1_.init(this);
            }
         }
         return this._seedKeywords;
      }
      
      public function get domainsExactMatchExtensionsString() : String
      {
         return this.domainsExactMatchExtensions.selectedExtensionsString;
      }
      
      public function get domainsHyphenatedExtensionsString() : String
      {
         return this.domainsHyphenatedExtensions.selectedExtensionsString;
      }
      
      private function set _1360598278domainsExactMatchExtensionsString(param1:String) : void
      {
         this.domainsExactMatchExtensions.selectedExtensionsString = param1;
      }
      
      private function set _1947242808domainsHyphenatedExtensionsString(param1:String) : void
      {
         this.domainsHyphenatedExtensions.selectedExtensionsString = param1;
      }
      
      override public function save() : Boolean
      {
         return super.save();
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
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get country() : com.enfluid.ltp.model.vo.CountryVO
      {
         return this._957831062country;
      }
      
      public function set country(param1:com.enfluid.ltp.model.vo.CountryVO) : void
      {
         var _loc2_:Object = this._957831062country;
         if(_loc2_ !== param1)
         {
            this._957831062country = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"country",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set countryCode(param1:String) : void
      {
         var _loc2_:Object = this.countryCode;
         if(_loc2_ !== param1)
         {
            this._1477067101countryCode = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"countryCode",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get language() : com.enfluid.ltp.model.vo.LanguageVO
      {
         return this._1613589672language;
      }
      
      public function set language(param1:com.enfluid.ltp.model.vo.LanguageVO) : void
      {
         var _loc2_:Object = this._1613589672language;
         if(_loc2_ !== param1)
         {
            this._1613589672language = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"language",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set languageCode(param1:String) : void
      {
         var _loc2_:Object = this.languageCode;
         if(_loc2_ !== param1)
         {
            this._2092349083languageCode = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"languageCode",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get includeAdultAreas() : Boolean
      {
         return this._1399632564includeAdultAreas;
      }
      
      public function set includeAdultAreas(param1:Boolean) : void
      {
         var _loc2_:Object = this._1399632564includeAdultAreas;
         if(_loc2_ !== param1)
         {
            this._1399632564includeAdultAreas = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"includeAdultAreas",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchNetwork() : String
      {
         return this._1134993562searchNetwork;
      }
      
      public function set searchNetwork(param1:String) : void
      {
         var _loc2_:Object = this._1134993562searchNetwork;
         if(_loc2_ !== param1)
         {
            this._1134993562searchNetwork = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchNetwork",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get pendingSeedKeywords() : ArrayCollection
      {
         return this._660274062pendingSeedKeywords;
      }
      
      public function set pendingSeedKeywords(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._660274062pendingSeedKeywords;
         if(_loc2_ !== param1)
         {
            this._660274062pendingSeedKeywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pendingSeedKeywords",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get pendingOwnKeywords() : String
      {
         return this._1797248825pendingOwnKeywords;
      }
      
      public function set pendingOwnKeywords(param1:String) : void
      {
         var _loc2_:Object = this._1797248825pendingOwnKeywords;
         if(_loc2_ !== param1)
         {
            this._1797248825pendingOwnKeywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pendingOwnKeywords",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get ownKeywords() : KeywordArrayCollection
      {
         return this._172110512ownKeywords;
      }
      
      public function set ownKeywords(param1:KeywordArrayCollection) : void
      {
         var _loc2_:Object = this._172110512ownKeywords;
         if(_loc2_ !== param1)
         {
            this._172110512ownKeywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ownKeywords",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get seedKeywordIDMap() : Object
      {
         return this._1182468343seedKeywordIDMap;
      }
      
      public function set seedKeywordIDMap(param1:Object) : void
      {
         var _loc2_:Object = this._1182468343seedKeywordIDMap;
         if(_loc2_ !== param1)
         {
            this._1182468343seedKeywordIDMap = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seedKeywordIDMap",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get localSearchesEnabled() : Boolean
      {
         return this._1382857952localSearchesEnabled;
      }
      
      public function set localSearchesEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._1382857952localSearchesEnabled;
         if(_loc2_ !== param1)
         {
            this._1382857952localSearchesEnabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"localSearchesEnabled",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get localSearchesFilterMin() : Number
      {
         return this._2031334439localSearchesFilterMin;
      }
      
      public function set localSearchesFilterMin(param1:Number) : void
      {
         var _loc2_:Object = this._2031334439localSearchesFilterMin;
         if(_loc2_ !== param1)
         {
            this._2031334439localSearchesFilterMin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"localSearchesFilterMin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get localSearchesFilterMax() : Number
      {
         return this._2031334677localSearchesFilterMax;
      }
      
      public function set localSearchesFilterMax(param1:Number) : void
      {
         var _loc2_:Object = this._2031334677localSearchesFilterMax;
         if(_loc2_ !== param1)
         {
            this._2031334677localSearchesFilterMax = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"localSearchesFilterMax",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get globalSearchesEnabled() : Boolean
      {
         return this._91478040globalSearchesEnabled;
      }
      
      public function set globalSearchesEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._91478040globalSearchesEnabled;
         if(_loc2_ !== param1)
         {
            this._91478040globalSearchesEnabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"globalSearchesEnabled",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get globalSearchesFilterMin() : int
      {
         return this._2034179745globalSearchesFilterMin;
      }
      
      public function set globalSearchesFilterMin(param1:int) : void
      {
         var _loc2_:Object = this._2034179745globalSearchesFilterMin;
         if(_loc2_ !== param1)
         {
            this._2034179745globalSearchesFilterMin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"globalSearchesFilterMin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get globalSearchesFilterMax() : int
      {
         return this._2034179507globalSearchesFilterMax;
      }
      
      public function set globalSearchesFilterMax(param1:int) : void
      {
         var _loc2_:Object = this._2034179507globalSearchesFilterMax;
         if(_loc2_ !== param1)
         {
            this._2034179507globalSearchesFilterMax = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"globalSearchesFilterMax",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get suggestedBidEnabled() : Boolean
      {
         return this._41596679suggestedBidEnabled;
      }
      
      public function set suggestedBidEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._41596679suggestedBidEnabled;
         if(_loc2_ !== param1)
         {
            this._41596679suggestedBidEnabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suggestedBidEnabled",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get suggestedBidFilterMin() : Number
      {
         return this._1069965824suggestedBidFilterMin;
      }
      
      public function set suggestedBidFilterMin(param1:Number) : void
      {
         var _loc2_:Object = this._1069965824suggestedBidFilterMin;
         if(_loc2_ !== param1)
         {
            this._1069965824suggestedBidFilterMin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suggestedBidFilterMin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get suggestedBidFilterMax() : Number
      {
         return this._1069965586suggestedBidFilterMax;
      }
      
      public function set suggestedBidFilterMax(param1:Number) : void
      {
         var _loc2_:Object = this._1069965586suggestedBidFilterMax;
         if(_loc2_ !== param1)
         {
            this._1069965586suggestedBidFilterMax = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suggestedBidFilterMax",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advertiserCompEnabled() : Boolean
      {
         return this._269526791advertiserCompEnabled;
      }
      
      public function set advertiserCompEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._269526791advertiserCompEnabled;
         if(_loc2_ !== param1)
         {
            this._269526791advertiserCompEnabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advertiserCompEnabled",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advertiserCompFilterLow() : Boolean
      {
         return this._1067470594advertiserCompFilterLow;
      }
      
      public function set advertiserCompFilterLow(param1:Boolean) : void
      {
         var _loc2_:Object = this._1067470594advertiserCompFilterLow;
         if(_loc2_ !== param1)
         {
            this._1067470594advertiserCompFilterLow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advertiserCompFilterLow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advertiserCompFilterMed() : Boolean
      {
         return this._1067471226advertiserCompFilterMed;
      }
      
      public function set advertiserCompFilterMed(param1:Boolean) : void
      {
         var _loc2_:Object = this._1067471226advertiserCompFilterMed;
         if(_loc2_ !== param1)
         {
            this._1067471226advertiserCompFilterMed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advertiserCompFilterMed",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advertiserCompFilterHigh() : Boolean
      {
         return this._1268275276advertiserCompFilterHigh;
      }
      
      public function set advertiserCompFilterHigh(param1:Boolean) : void
      {
         var _loc2_:Object = this._1268275276advertiserCompFilterHigh;
         if(_loc2_ !== param1)
         {
            this._1268275276advertiserCompFilterHigh = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advertiserCompFilterHigh",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleTitleCompEnabled() : Boolean
      {
         return this._540842989googleTitleCompEnabled;
      }
      
      public function set googleTitleCompEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._540842989googleTitleCompEnabled;
         if(_loc2_ !== param1)
         {
            this._540842989googleTitleCompEnabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleTitleCompEnabled",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleTitleCompFilterMin() : int
      {
         return this._308806644googleTitleCompFilterMin;
      }
      
      public function set googleTitleCompFilterMin(param1:int) : void
      {
         var _loc2_:Object = this._308806644googleTitleCompFilterMin;
         if(_loc2_ !== param1)
         {
            this._308806644googleTitleCompFilterMin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleTitleCompFilterMin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleTitleCompFilterMax() : int
      {
         return this._308806882googleTitleCompFilterMax;
      }
      
      public function set googleTitleCompFilterMax(param1:int) : void
      {
         var _loc2_:Object = this._308806882googleTitleCompFilterMax;
         if(_loc2_ !== param1)
         {
            this._308806882googleTitleCompFilterMax = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleTitleCompFilterMax",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bingTitleCompEnabled() : Boolean
      {
         return this._1278688282bingTitleCompEnabled;
      }
      
      public function set bingTitleCompEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._1278688282bingTitleCompEnabled;
         if(_loc2_ !== param1)
         {
            this._1278688282bingTitleCompEnabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bingTitleCompEnabled",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bingTitleCompFilterMin() : int
      {
         return this._209055315bingTitleCompFilterMin;
      }
      
      public function set bingTitleCompFilterMin(param1:int) : void
      {
         var _loc2_:Object = this._209055315bingTitleCompFilterMin;
         if(_loc2_ !== param1)
         {
            this._209055315bingTitleCompFilterMin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bingTitleCompFilterMin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bingTitleCompFilterMax() : int
      {
         return this._209055077bingTitleCompFilterMax;
      }
      
      public function set bingTitleCompFilterMax(param1:int) : void
      {
         var _loc2_:Object = this._209055077bingTitleCompFilterMax;
         if(_loc2_ !== param1)
         {
            this._209055077bingTitleCompFilterMax = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bingTitleCompFilterMax",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amazonKCEnabled() : Boolean
      {
         return this._1809573189amazonKCEnabled;
      }
      
      public function set amazonKCEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._1809573189amazonKCEnabled;
         if(_loc2_ !== param1)
         {
            this._1809573189amazonKCEnabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amazonKCEnabled",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainsEnabled() : Boolean
      {
         return this._340517870domainsEnabled;
      }
      
      public function set domainsEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._340517870domainsEnabled;
         if(_loc2_ !== param1)
         {
            this._340517870domainsEnabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsEnabled",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get domainsExactMatchExtensions() : com.enfluid.ltp.model.vo.DomainExtensionOptions
      {
         return this._988173943domainsExactMatchExtensions;
      }
      
      public function set domainsExactMatchExtensions(param1:com.enfluid.ltp.model.vo.DomainExtensionOptions) : void
      {
         var _loc2_:Object = this._988173943domainsExactMatchExtensions;
         if(_loc2_ !== param1)
         {
            this._988173943domainsExactMatchExtensions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsExactMatchExtensions",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get domainsHyphenatedExtensions() : com.enfluid.ltp.model.vo.DomainExtensionOptions
      {
         return this._2064930375domainsHyphenatedExtensions;
      }
      
      public function set domainsHyphenatedExtensions(param1:com.enfluid.ltp.model.vo.DomainExtensionOptions) : void
      {
         var _loc2_:Object = this._2064930375domainsHyphenatedExtensions;
         if(_loc2_ !== param1)
         {
            this._2064930375domainsHyphenatedExtensions = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsHyphenatedExtensions",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set domainsExactMatchExtensionsString(param1:String) : void
      {
         var _loc2_:Object = this.domainsExactMatchExtensionsString;
         if(_loc2_ !== param1)
         {
            this._1360598278domainsExactMatchExtensionsString = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsExactMatchExtensionsString",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set domainsHyphenatedExtensionsString(param1:String) : void
      {
         var _loc2_:Object = this.domainsHyphenatedExtensionsString;
         if(_loc2_ !== param1)
         {
            this._1947242808domainsHyphenatedExtensionsString = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsHyphenatedExtensionsString",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainsHasAvailableFilter() : Boolean
      {
         return this._2125981642domainsHasAvailableFilter;
      }
      
      public function set domainsHasAvailableFilter(param1:Boolean) : void
      {
         var _loc2_:Object = this._2125981642domainsHasAvailableFilter;
         if(_loc2_ !== param1)
         {
            this._2125981642domainsHasAvailableFilter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsHasAvailableFilter",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numWordsEnabled() : Boolean
      {
         return this._237613314numWordsEnabled;
      }
      
      public function set numWordsEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._237613314numWordsEnabled;
         if(_loc2_ !== param1)
         {
            this._237613314numWordsEnabled = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numWordsEnabled",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numWordsFilterMin() : int
      {
         return this._962865097numWordsFilterMin;
      }
      
      public function set numWordsFilterMin(param1:int) : void
      {
         var _loc2_:Object = this._962865097numWordsFilterMin;
         if(_loc2_ !== param1)
         {
            this._962865097numWordsFilterMin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numWordsFilterMin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numWordsFilterMax() : int
      {
         return this._962865335numWordsFilterMax;
      }
      
      public function set numWordsFilterMax(param1:int) : void
      {
         var _loc2_:Object = this._962865335numWordsFilterMax;
         if(_loc2_ !== param1)
         {
            this._962865335numWordsFilterMax = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numWordsFilterMax",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amazonKCFilterMin() : int
      {
         return this._711657282amazonKCFilterMin;
      }
      
      public function set amazonKCFilterMin(param1:int) : void
      {
         var _loc2_:Object = this._711657282amazonKCFilterMin;
         if(_loc2_ !== param1)
         {
            this._711657282amazonKCFilterMin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amazonKCFilterMin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get amazonKCFilterMax() : int
      {
         return this._711657520amazonKCFilterMax;
      }
      
      public function set amazonKCFilterMax(param1:int) : void
      {
         var _loc2_:Object = this._711657520amazonKCFilterMax;
         if(_loc2_ !== param1)
         {
            this._711657520amazonKCFilterMax = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"amazonKCFilterMax",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avgKCFilterMin() : int
      {
         return this._1862932272avgKCFilterMin;
      }
      
      public function set avgKCFilterMin(param1:int) : void
      {
         var _loc2_:Object = this._1862932272avgKCFilterMin;
         if(_loc2_ !== param1)
         {
            this._1862932272avgKCFilterMin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avgKCFilterMin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avgKCFilterMax() : int
      {
         return this._1862932034avgKCFilterMax;
      }
      
      public function set avgKCFilterMax(param1:int) : void
      {
         var _loc2_:Object = this._1862932034avgKCFilterMax;
         if(_loc2_ !== param1)
         {
            this._1862932034avgKCFilterMax = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avgKCFilterMax",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get competitorURLs() : ArrayCollection
      {
         return this._365485136competitorURLs;
      }
      
      public function set competitorURLs(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._365485136competitorURLs;
         if(_loc2_ !== param1)
         {
            this._365485136competitorURLs = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"competitorURLs",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get source() : String
      {
         return this._896505829source;
      }
      
      public function set source(param1:String) : void
      {
         var _loc2_:Object = this._896505829source;
         if(_loc2_ !== param1)
         {
            this._896505829source = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"source",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get keywordFilterText() : String
      {
         return this._1205564302keywordFilterText;
      }
      
      public function set keywordFilterText(param1:String) : void
      {
         var _loc2_:Object = this._1205564302keywordFilterText;
         if(_loc2_ !== param1)
         {
            this._1205564302keywordFilterText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordFilterText",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get projectFilterText() : String
      {
         return this._561781570projectFilterText;
      }
      
      public function set projectFilterText(param1:String) : void
      {
         var _loc2_:Object = this._561781570projectFilterText;
         if(_loc2_ !== param1)
         {
            this._561781570projectFilterText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"projectFilterText",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get matchStrings() : Array
      {
         return this._544028419matchStrings;
      }
      
      public function set matchStrings(param1:Array) : void
      {
         var _loc2_:Object = this._544028419matchStrings;
         if(_loc2_ !== param1)
         {
            this._544028419matchStrings = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"matchStrings",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get unMatchStrings() : Array
      {
         return this._1610084810unMatchStrings;
      }
      
      public function set unMatchStrings(param1:Array) : void
      {
         var _loc2_:Object = this._1610084810unMatchStrings;
         if(_loc2_ !== param1)
         {
            this._1610084810unMatchStrings = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unMatchStrings",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get specialFilter() : int
      {
         return this._1272460911specialFilter;
      }
      
      public function set specialFilter(param1:int) : void
      {
         var _loc2_:Object = this._1272460911specialFilter;
         if(_loc2_ !== param1)
         {
            this._1272460911specialFilter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"specialFilter",_loc2_,param1));
            }
         }
      }
   }
}
