package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.util.KeywordUtil;
   import flash.events.Event;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.DataModel;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   
   use namespace bi_internal;
   
   [BelongsTo("seedKeyword",className="SeedKeywordVO")]
   [BelongsTo("project",className="ProjectVO")]
   public dynamic class KeywordVO extends ActiveRecord
   {
       
      
      private var _keyword:String;
      
      private var _1578666738strippedKeyword:String;
      
      private var _1896299837numWords:int;
      
      private var _257519846isFavorite:Boolean;
      
      private var _780247117isOwnKeyword:Boolean;
      
      private var _1349102729isInTrash:Boolean;
      
      private var _105008833notes:String;
      
      private var _1562596355isExpanded:Boolean;
      
      private var _929099455projectTitle:String;
      
      private var _1215429740advertiserCompetition:String = "";
      
      private var _44342566suggestedBid:Number = -1;
      
      private var _269656971suggestedBidString:String = "";
      
      private var _714784025globalSearches:int = -1;
      
      private var _549236511localSearches:int = -1;
      
      private var _2025799520googleTitleCompetition:int = -1;
      
      private var _206268249bingTitleCompetition:int = -1;
      
      private var _domainsExact:com.enfluid.ltp.model.vo.DomainsVO;
      
      private var _domainsHyphenated:com.enfluid.ltp.model.vo.DomainsVO;
      
      private var _133379673domainsTimestamp:Number;
      
      private var _93198250avgKC:int = -1;
      
      private var _749998022keywordStemmed:String;
      
      private var _902721954competitorAnalysisAverages:com.enfluid.ltp.model.vo.CompetitorAnalysisAverageVO;
      
      private var _1236803795isNoteTyping:Boolean = false;
      
      private var _308069162movedToOwnKeywordsThisSession:Boolean = false;
      
      private var _1528703739quickAddedThisSession:Boolean = false;
      
      private var _1191395761showQuickAddDoesntMatchFilterWarning:Boolean = false;
      
      private var _1274954357competitorAnalysisColumns:com.enfluid.ltp.model.vo.CompetitorColumnsVO;
      
      private var _901024775filterState:com.enfluid.ltp.model.vo.KeywordFilterStateVO;
      
      private var _competitorUrls:ArrayCollection;
      
      private var _strippedKeyword:String;
      
      public function KeywordVO()
      {
         this._902721954competitorAnalysisAverages = new com.enfluid.ltp.model.vo.CompetitorAnalysisAverageVO();
         this._1274954357competitorAnalysisColumns = new com.enfluid.ltp.model.vo.CompetitorColumnsVO();
         this._901024775filterState = new com.enfluid.ltp.model.vo.KeywordFilterStateVO();
         super();
      }
      
      [Bindable(event="keywordChange")]
      public function get keyword() : String
      {
         return this._keyword;
      }
      
      public function set keyword(param1:String) : void
      {
         if(this._keyword !== param1)
         {
            this._keyword = param1;
            this.strippedKeyword = KeywordUtil.stripKeyword(this.keyword);
            this.numWords = this.keyword.split(" ").length;
            this.domainsExact.domainWithoutExtension = KeywordUtil.calcDomainWithoutExtension(this.strippedKeyword,false);
            this.domainsHyphenated.domainWithoutExtension = KeywordUtil.calcDomainWithoutExtension(this.strippedKeyword,true);
            this.dispatchEvent(new Event("keywordChange"));
         }
      }
      
      [NotPersisted]
      public function get projectID() : int
      {
         return this.project_id;
      }
      
      [NotPersisted]
      public function get seedKeywordID() : int
      {
         return this.seedKeyword_id;
      }
      
      [Bindable(event="domainsExactChange")]
      [NotPersisted]
      public function get domainsExact() : com.enfluid.ltp.model.vo.DomainsVO
      {
         if(!this._domainsExact)
         {
            this._domainsExact = new com.enfluid.ltp.model.vo.DomainsVO();
            this._domainsExact.setKeyword(this);
         }
         return this._domainsExact;
      }
      
      public function set domainsExact(param1:com.enfluid.ltp.model.vo.DomainsVO) : void
      {
         if(this._domainsExact !== param1)
         {
            this._domainsExact = param1;
            this._domainsExact.setKeyword(this);
            this.dispatchEvent(new Event("domainsExactChange"));
         }
      }
      
      [Bindable(event="domainsHyphenatedChange")]
      [NotPersisted]
      public function get domainsHyphenated() : com.enfluid.ltp.model.vo.DomainsVO
      {
         if(!this._domainsHyphenated)
         {
            this._domainsHyphenated = new com.enfluid.ltp.model.vo.DomainsVO();
            this._domainsHyphenated.setKeyword(this);
         }
         return this._domainsHyphenated;
      }
      
      public function set domainsHyphenated(param1:com.enfluid.ltp.model.vo.DomainsVO) : void
      {
         if(this._domainsHyphenated !== param1)
         {
            this._domainsHyphenated = param1;
            this._domainsHyphenated.setKeyword(this);
            this.dispatchEvent(new Event("domainsHyphenatedChange"));
         }
      }
      
      public function get domainsExactString() : String
      {
         if(this._domainsExact)
         {
            return JSON.stringify(this._domainsExact,this.replacerJSONFunction);
         }
         return "";
      }
      
      public function get domainsHyphenatedString() : String
      {
         if(this._domainsHyphenated)
         {
            return JSON.stringify(this._domainsHyphenated,this.replacerJSONFunction);
         }
         return "";
      }
      
      private function set _107684799domainsExactString(param1:String) : void
      {
         if(param1)
         {
            this.domainsExact.fillFromJson(param1);
         }
      }
      
      private function set _450780100domainsHyphenatedString(param1:String) : void
      {
         if(param1)
         {
            this.domainsHyphenated.fillFromJson(param1);
         }
      }
      
      public function get competitorURLs() : ArrayCollection
      {
         var _loc1_:CompetitorUrlVO = null;
         if(!this._competitorUrls)
         {
            _loc1_ = new CompetitorUrlVO();
            this._competitorUrls = new ArrayCollection(_loc1_.findBySQLWithoutParams("SELECT * FROM CompetitorUrlVOs WHERE keyword_id = " + id + ";"));
         }
         return this._competitorUrls;
      }
      
      private function set _365485136competitorURLs(param1:ArrayCollection) : void
      {
         this._competitorUrls = param1;
      }
      
      [NotPersisted]
      public function get hasAvailableDomain() : Boolean
      {
         if(this.domainsExact.hasAvailableDomain(DataModel.instance.selectedKeywordCollection.project.domainsExactMatchExtensions.selectedExtensions))
         {
            return true;
         }
         if(this.domainsHyphenated.hasAvailableDomain(DataModel.instance.selectedKeywordCollection.project.domainsHyphenatedExtensions.selectedExtensions))
         {
            return true;
         }
         return false;
      }
      
      public function replacerJSONFunction(param1:String, param2:*) : *
      {
         if(param1 == "keyword")
         {
            return undefined;
         }
         return param2;
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         if(param1 is PropertyChangeEvent)
         {
            this.filterState.hasInvalidFilterState = true;
         }
         return super.dispatchEvent(param1);
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get strippedKeyword() : String
      {
         return this._1578666738strippedKeyword;
      }
      
      public function set strippedKeyword(param1:String) : void
      {
         var _loc2_:Object = this._1578666738strippedKeyword;
         if(_loc2_ !== param1)
         {
            this._1578666738strippedKeyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"strippedKeyword",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get numWords() : int
      {
         return this._1896299837numWords;
      }
      
      public function set numWords(param1:int) : void
      {
         var _loc2_:Object = this._1896299837numWords;
         if(_loc2_ !== param1)
         {
            this._1896299837numWords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numWords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFavorite() : Boolean
      {
         return this._257519846isFavorite;
      }
      
      public function set isFavorite(param1:Boolean) : void
      {
         var _loc2_:Object = this._257519846isFavorite;
         if(_loc2_ !== param1)
         {
            this._257519846isFavorite = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFavorite",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isOwnKeyword() : Boolean
      {
         return this._780247117isOwnKeyword;
      }
      
      public function set isOwnKeyword(param1:Boolean) : void
      {
         var _loc2_:Object = this._780247117isOwnKeyword;
         if(_loc2_ !== param1)
         {
            this._780247117isOwnKeyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isOwnKeyword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isInTrash() : Boolean
      {
         return this._1349102729isInTrash;
      }
      
      public function set isInTrash(param1:Boolean) : void
      {
         var _loc2_:Object = this._1349102729isInTrash;
         if(_loc2_ !== param1)
         {
            this._1349102729isInTrash = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isInTrash",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get notes() : String
      {
         return this._105008833notes;
      }
      
      public function set notes(param1:String) : void
      {
         var _loc2_:Object = this._105008833notes;
         if(_loc2_ !== param1)
         {
            this._105008833notes = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"notes",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isExpanded() : Boolean
      {
         return this._1562596355isExpanded;
      }
      
      public function set isExpanded(param1:Boolean) : void
      {
         var _loc2_:Object = this._1562596355isExpanded;
         if(_loc2_ !== param1)
         {
            this._1562596355isExpanded = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isExpanded",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get projectTitle() : String
      {
         return this._929099455projectTitle;
      }
      
      public function set projectTitle(param1:String) : void
      {
         var _loc2_:Object = this._929099455projectTitle;
         if(_loc2_ !== param1)
         {
            this._929099455projectTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"projectTitle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get advertiserCompetition() : String
      {
         return this._1215429740advertiserCompetition;
      }
      
      public function set advertiserCompetition(param1:String) : void
      {
         var _loc2_:Object = this._1215429740advertiserCompetition;
         if(_loc2_ !== param1)
         {
            this._1215429740advertiserCompetition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"advertiserCompetition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get suggestedBid() : Number
      {
         return this._44342566suggestedBid;
      }
      
      public function set suggestedBid(param1:Number) : void
      {
         var _loc2_:Object = this._44342566suggestedBid;
         if(_loc2_ !== param1)
         {
            this._44342566suggestedBid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suggestedBid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get suggestedBidString() : String
      {
         return this._269656971suggestedBidString;
      }
      
      public function set suggestedBidString(param1:String) : void
      {
         var _loc2_:Object = this._269656971suggestedBidString;
         if(_loc2_ !== param1)
         {
            this._269656971suggestedBidString = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suggestedBidString",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get globalSearches() : int
      {
         return this._714784025globalSearches;
      }
      
      public function set globalSearches(param1:int) : void
      {
         var _loc2_:Object = this._714784025globalSearches;
         if(_loc2_ !== param1)
         {
            this._714784025globalSearches = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"globalSearches",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get localSearches() : int
      {
         return this._549236511localSearches;
      }
      
      public function set localSearches(param1:int) : void
      {
         var _loc2_:Object = this._549236511localSearches;
         if(_loc2_ !== param1)
         {
            this._549236511localSearches = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"localSearches",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get googleTitleCompetition() : int
      {
         return this._2025799520googleTitleCompetition;
      }
      
      public function set googleTitleCompetition(param1:int) : void
      {
         var _loc2_:Object = this._2025799520googleTitleCompetition;
         if(_loc2_ !== param1)
         {
            this._2025799520googleTitleCompetition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"googleTitleCompetition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bingTitleCompetition() : int
      {
         return this._206268249bingTitleCompetition;
      }
      
      public function set bingTitleCompetition(param1:int) : void
      {
         var _loc2_:Object = this._206268249bingTitleCompetition;
         if(_loc2_ !== param1)
         {
            this._206268249bingTitleCompetition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bingTitleCompetition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set domainsExactString(param1:String) : void
      {
         var _loc2_:Object = this.domainsExactString;
         if(_loc2_ !== param1)
         {
            this._107684799domainsExactString = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsExactString",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set domainsHyphenatedString(param1:String) : void
      {
         var _loc2_:Object = this.domainsHyphenatedString;
         if(_loc2_ !== param1)
         {
            this._450780100domainsHyphenatedString = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsHyphenatedString",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainsTimestamp() : Number
      {
         return this._133379673domainsTimestamp;
      }
      
      public function set domainsTimestamp(param1:Number) : void
      {
         var _loc2_:Object = this._133379673domainsTimestamp;
         if(_loc2_ !== param1)
         {
            this._133379673domainsTimestamp = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainsTimestamp",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avgKC() : int
      {
         return this._93198250avgKC;
      }
      
      public function set avgKC(param1:int) : void
      {
         var _loc2_:Object = this._93198250avgKC;
         if(_loc2_ !== param1)
         {
            this._93198250avgKC = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avgKC",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordStemmed() : String
      {
         return this._749998022keywordStemmed;
      }
      
      public function set keywordStemmed(param1:String) : void
      {
         var _loc2_:Object = this._749998022keywordStemmed;
         if(_loc2_ !== param1)
         {
            this._749998022keywordStemmed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordStemmed",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function set competitorURLs(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this.competitorURLs;
         if(_loc2_ !== param1)
         {
            this._365485136competitorURLs = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"competitorURLs",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get competitorAnalysisAverages() : com.enfluid.ltp.model.vo.CompetitorAnalysisAverageVO
      {
         return this._902721954competitorAnalysisAverages;
      }
      
      public function set competitorAnalysisAverages(param1:com.enfluid.ltp.model.vo.CompetitorAnalysisAverageVO) : void
      {
         var _loc2_:Object = this._902721954competitorAnalysisAverages;
         if(_loc2_ !== param1)
         {
            this._902721954competitorAnalysisAverages = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"competitorAnalysisAverages",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get isNoteTyping() : Boolean
      {
         return this._1236803795isNoteTyping;
      }
      
      public function set isNoteTyping(param1:Boolean) : void
      {
         var _loc2_:Object = this._1236803795isNoteTyping;
         if(_loc2_ !== param1)
         {
            this._1236803795isNoteTyping = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isNoteTyping",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get movedToOwnKeywordsThisSession() : Boolean
      {
         return this._308069162movedToOwnKeywordsThisSession;
      }
      
      public function set movedToOwnKeywordsThisSession(param1:Boolean) : void
      {
         var _loc2_:Object = this._308069162movedToOwnKeywordsThisSession;
         if(_loc2_ !== param1)
         {
            this._308069162movedToOwnKeywordsThisSession = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"movedToOwnKeywordsThisSession",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get quickAddedThisSession() : Boolean
      {
         return this._1528703739quickAddedThisSession;
      }
      
      public function set quickAddedThisSession(param1:Boolean) : void
      {
         var _loc2_:Object = this._1528703739quickAddedThisSession;
         if(_loc2_ !== param1)
         {
            this._1528703739quickAddedThisSession = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quickAddedThisSession",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get showQuickAddDoesntMatchFilterWarning() : Boolean
      {
         return this._1191395761showQuickAddDoesntMatchFilterWarning;
      }
      
      public function set showQuickAddDoesntMatchFilterWarning(param1:Boolean) : void
      {
         var _loc2_:Object = this._1191395761showQuickAddDoesntMatchFilterWarning;
         if(_loc2_ !== param1)
         {
            this._1191395761showQuickAddDoesntMatchFilterWarning = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showQuickAddDoesntMatchFilterWarning",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get competitorAnalysisColumns() : com.enfluid.ltp.model.vo.CompetitorColumnsVO
      {
         return this._1274954357competitorAnalysisColumns;
      }
      
      public function set competitorAnalysisColumns(param1:com.enfluid.ltp.model.vo.CompetitorColumnsVO) : void
      {
         var _loc2_:Object = this._1274954357competitorAnalysisColumns;
         if(_loc2_ !== param1)
         {
            this._1274954357competitorAnalysisColumns = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"competitorAnalysisColumns",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get filterState() : com.enfluid.ltp.model.vo.KeywordFilterStateVO
      {
         return this._901024775filterState;
      }
      
      public function set filterState(param1:com.enfluid.ltp.model.vo.KeywordFilterStateVO) : void
      {
         var _loc2_:Object = this._901024775filterState;
         if(_loc2_ !== param1)
         {
            this._901024775filterState = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filterState",_loc2_,param1));
            }
         }
      }
   }
}
