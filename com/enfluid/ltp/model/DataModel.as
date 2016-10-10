package com.enfluid.ltp.model
{
   import com.photon.model.PhotonModel;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.collections.ArrayCollection;
   import mx.collections.IList;
   import flash.utils.Dictionary;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.vo.DefaultConfigVO;
   import com.enfluid.ltp.model.vo.PreferencesVO;
   import com.enfluid.ltp.controller.common.LoadPreferencesCommand;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.model.vo.RTDomain;
   import com.enfluid.ltp.controller.keywordresearch.GenerateKeywordsCommand;
   import com.enfluid.ltp.controller.rankchecker.CheckAllRanksCommand;
   import mx.events.PropertyChangeEvent;
   
   public final class DataModel extends PhotonModel
   {
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
       
      
      private var _308889716proxies:ArrayCollection;
      
      private var _1210095332mostRecentGoogleSearchResult:String = "";
      
      private var _1134868115mostRecentFailedSEOMozREsult:String = "";
      
      private var _1290599891autoLoginGoogle:Boolean = false;
      
      private var _946442764avgDelayBetweenGoogleRequests:Number = 2;
      
      private var _998696838projects:IList;
      
      private var _929099455projectTitle:Dictionary;
      
      private var _341711505logText:String;
      
      private var _1123173970checkingInitialLoginState:Boolean = true;
      
      private var _1522920191currentSeedKeyword:SeedKeywordVO;
      
      private var _1057542022currentSeedKeywordId:int;
      
      private var _2105196597defaultConfiguration:DefaultConfigVO;
      
      private var _1785238953favorites:ArrayCollection;
      
      private var _130553930flatDomainKeywordList:ArrayCollection;
      
      private var _202586078gPassword:String = "";
      
      private var _1686238595gUserName:String = "";
      
      private var _933663612gridDataChanged:Boolean = false;
      
      private var _1081502070isPlatinum:Boolean = false;
      
      private var _835449624isRTKeywordsLimitExceeded:Boolean = false;
      
      private var _1604442894isSharifyRegistered:Boolean = false;
      
      private var _2072034316isTrial:Boolean = true;
      
      private var _1486764441keywordsCancelledFetchingKC:ArrayCollection;
      
      private var _560783260keywordsCurrentlyFetchingKC:ArrayCollection;
      
      private var _1893381229licenseStatus:int = 0;
      
      private var _1069179641allowUserIn:Boolean = false;
      
      private var _439999511trialDaysRemaining:int = 0;
      
      private var _989611538loginPending:Boolean = false;
      
      private var _1611519160notificationText:String = "";
      
      private var _1582398419notificationTitle:String = "";
      
      private var _643452208numDomainsFetched:int;
      
      private var _859421962numDomainsToFetch:int = 0;
      
      private var _1989861112preferences:PreferencesVO;
      
      private var _175285402loadPreferencesCommamd:LoadPreferencesCommand;
      
      private var _720643868rankCheckItems:ArrayCollection;
      
      private var _823114141rankDomains:ArrayCollection;
      
      private var _323866915rankTrackerDomains:ArrayCollection;
      
      private var _874193922selectedProject:ProjectVO;
      
      private var _387420172selectedKeywordCollection:KeywordArrayCollection;
      
      private var _1379291442selectedKeyword:KeywordVO;
      
      private var _392947835selectedCountry:CountryVO;
      
      private var _585003535selectedCountryRankTracker:CountryVO;
      
      private var _1945100525selectedLanguage:LanguageVO;
      
      private var _758001675selectedRankTrackerDomain:RTDomain;
      
      private var _2067288832skipCBank:Boolean = false;
      
      private var _497894775skipSharify:Boolean = false;
      
      private var _1827690160srtAccountCreated:Boolean = false;
      
      private var _699499758srtLastDateChecked:Number = 0;
      
      private var _315299473userEmail:String = "";
      
      private var _145215405currentGenerateKeywordsCommand:GenerateKeywordsCommand;
      
      private var _431226698currentCheckAllRanksCommand:CheckAllRanksCommand;
      
      private var _166867673allFavoriteKeywords:KeywordArrayCollection;
      
      private var _520330527allTrashKeywords:KeywordArrayCollection;
      
      private var _2113785445isFetchingMissingBingTitleCompetition:Boolean = false;
      
      private var _1198789484isFetchingMissingGoogleTitleCompetition:Boolean = false;
      
      private var _1815105861isFetchingMissingDomains:Boolean = false;
      
      private var _2055529203isFetchingMissingGlobalSearches:Boolean = false;
      
      private var _403636995isCheckingRanks:Boolean = false;
      
      private var _3240753isDK:Boolean = false;
      
      public function DataModel()
      {
         this._308889716proxies = new ArrayCollection();
         this._929099455projectTitle = new Dictionary();
         this._1785238953favorites = new ArrayCollection();
         this._1486764441keywordsCancelledFetchingKC = new ArrayCollection();
         this._560783260keywordsCurrentlyFetchingKC = new ArrayCollection();
         this._720643868rankCheckItems = new ArrayCollection();
         this._823114141rankDomains = new ArrayCollection();
         this._323866915rankTrackerDomains = new ArrayCollection();
         super();
      }
      
      public static function get instance() : DataModel
      {
         return DataModel(getInstanceOf(DataModel));
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      [Bindable(event="propertyChange")]
      public function get gUserName() : String
      {
         return this._1686238595gUserName;
      }
      
      public function set gUserName(param1:String) : void
      {
         var _loc2_:Object = this._1686238595gUserName;
         if(_loc2_ !== param1)
         {
            this._1686238595gUserName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gUserName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get srtLastDateChecked() : Number
      {
         return this._699499758srtLastDateChecked;
      }
      
      public function set srtLastDateChecked(param1:Number) : void
      {
         var _loc2_:Object = this._699499758srtLastDateChecked;
         if(_loc2_ !== param1)
         {
            this._699499758srtLastDateChecked = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"srtLastDateChecked",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isTrial() : Boolean
      {
         return this._2072034316isTrial;
      }
      
      public function set isTrial(param1:Boolean) : void
      {
         var _loc2_:Object = this._2072034316isTrial;
         if(_loc2_ !== param1)
         {
            this._2072034316isTrial = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isTrial",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gridDataChanged() : Boolean
      {
         return this._933663612gridDataChanged;
      }
      
      public function set gridDataChanged(param1:Boolean) : void
      {
         var _loc2_:Object = this._933663612gridDataChanged;
         if(_loc2_ !== param1)
         {
            this._933663612gridDataChanged = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gridDataChanged",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFetchingMissingGoogleTitleCompetition() : Boolean
      {
         return this._1198789484isFetchingMissingGoogleTitleCompetition;
      }
      
      public function set isFetchingMissingGoogleTitleCompetition(param1:Boolean) : void
      {
         var _loc2_:Object = this._1198789484isFetchingMissingGoogleTitleCompetition;
         if(_loc2_ !== param1)
         {
            this._1198789484isFetchingMissingGoogleTitleCompetition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFetchingMissingGoogleTitleCompetition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numDomainsFetched() : int
      {
         return this._643452208numDomainsFetched;
      }
      
      public function set numDomainsFetched(param1:int) : void
      {
         var _loc2_:Object = this._643452208numDomainsFetched;
         if(_loc2_ !== param1)
         {
            this._643452208numDomainsFetched = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numDomainsFetched",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skipCBank() : Boolean
      {
         return this._2067288832skipCBank;
      }
      
      public function set skipCBank(param1:Boolean) : void
      {
         var _loc2_:Object = this._2067288832skipCBank;
         if(_loc2_ !== param1)
         {
            this._2067288832skipCBank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipCBank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedLanguage() : LanguageVO
      {
         return this._1945100525selectedLanguage;
      }
      
      public function set selectedLanguage(param1:LanguageVO) : void
      {
         var _loc2_:Object = this._1945100525selectedLanguage;
         if(_loc2_ !== param1)
         {
            this._1945100525selectedLanguage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedLanguage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loginPending() : Boolean
      {
         return this._989611538loginPending;
      }
      
      public function set loginPending(param1:Boolean) : void
      {
         var _loc2_:Object = this._989611538loginPending;
         if(_loc2_ !== param1)
         {
            this._989611538loginPending = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loginPending",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentGenerateKeywordsCommand() : GenerateKeywordsCommand
      {
         return this._145215405currentGenerateKeywordsCommand;
      }
      
      public function set currentGenerateKeywordsCommand(param1:GenerateKeywordsCommand) : void
      {
         var _loc2_:Object = this._145215405currentGenerateKeywordsCommand;
         if(_loc2_ !== param1)
         {
            this._145215405currentGenerateKeywordsCommand = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentGenerateKeywordsCommand",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankDomains() : ArrayCollection
      {
         return this._823114141rankDomains;
      }
      
      public function set rankDomains(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._823114141rankDomains;
         if(_loc2_ !== param1)
         {
            this._823114141rankDomains = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankDomains",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loadPreferencesCommamd() : LoadPreferencesCommand
      {
         return this._175285402loadPreferencesCommamd;
      }
      
      public function set loadPreferencesCommamd(param1:LoadPreferencesCommand) : void
      {
         var _loc2_:Object = this._175285402loadPreferencesCommamd;
         if(_loc2_ !== param1)
         {
            this._175285402loadPreferencesCommamd = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loadPreferencesCommamd",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skipSharify() : Boolean
      {
         return this._497894775skipSharify;
      }
      
      public function set skipSharify(param1:Boolean) : void
      {
         var _loc2_:Object = this._497894775skipSharify;
         if(_loc2_ !== param1)
         {
            this._497894775skipSharify = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipSharify",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isRTKeywordsLimitExceeded() : Boolean
      {
         return this._835449624isRTKeywordsLimitExceeded;
      }
      
      public function set isRTKeywordsLimitExceeded(param1:Boolean) : void
      {
         var _loc2_:Object = this._835449624isRTKeywordsLimitExceeded;
         if(_loc2_ !== param1)
         {
            this._835449624isRTKeywordsLimitExceeded = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRTKeywordsLimitExceeded",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get trialDaysRemaining() : int
      {
         return this._439999511trialDaysRemaining;
      }
      
      public function set trialDaysRemaining(param1:int) : void
      {
         var _loc2_:Object = this._439999511trialDaysRemaining;
         if(_loc2_ !== param1)
         {
            this._439999511trialDaysRemaining = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trialDaysRemaining",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get favorites() : ArrayCollection
      {
         return this._1785238953favorites;
      }
      
      public function set favorites(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1785238953favorites;
         if(_loc2_ !== param1)
         {
            this._1785238953favorites = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"favorites",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get projects() : IList
      {
         return this._998696838projects;
      }
      
      public function set projects(param1:IList) : void
      {
         var _loc2_:Object = this._998696838projects;
         if(_loc2_ !== param1)
         {
            this._998696838projects = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"projects",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFetchingMissingBingTitleCompetition() : Boolean
      {
         return this._2113785445isFetchingMissingBingTitleCompetition;
      }
      
      public function set isFetchingMissingBingTitleCompetition(param1:Boolean) : void
      {
         var _loc2_:Object = this._2113785445isFetchingMissingBingTitleCompetition;
         if(_loc2_ !== param1)
         {
            this._2113785445isFetchingMissingBingTitleCompetition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFetchingMissingBingTitleCompetition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get srtAccountCreated() : Boolean
      {
         return this._1827690160srtAccountCreated;
      }
      
      public function set srtAccountCreated(param1:Boolean) : void
      {
         var _loc2_:Object = this._1827690160srtAccountCreated;
         if(_loc2_ !== param1)
         {
            this._1827690160srtAccountCreated = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"srtAccountCreated",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get flatDomainKeywordList() : ArrayCollection
      {
         return this._130553930flatDomainKeywordList;
      }
      
      public function set flatDomainKeywordList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._130553930flatDomainKeywordList;
         if(_loc2_ !== param1)
         {
            this._130553930flatDomainKeywordList = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flatDomainKeywordList",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentSeedKeyword() : SeedKeywordVO
      {
         return this._1522920191currentSeedKeyword;
      }
      
      public function set currentSeedKeyword(param1:SeedKeywordVO) : void
      {
         var _loc2_:Object = this._1522920191currentSeedKeyword;
         if(_loc2_ !== param1)
         {
            this._1522920191currentSeedKeyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentSeedKeyword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allowUserIn() : Boolean
      {
         return this._1069179641allowUserIn;
      }
      
      public function set allowUserIn(param1:Boolean) : void
      {
         var _loc2_:Object = this._1069179641allowUserIn;
         if(_loc2_ !== param1)
         {
            this._1069179641allowUserIn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allowUserIn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get notificationTitle() : String
      {
         return this._1582398419notificationTitle;
      }
      
      public function set notificationTitle(param1:String) : void
      {
         var _loc2_:Object = this._1582398419notificationTitle;
         if(_loc2_ !== param1)
         {
            this._1582398419notificationTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"notificationTitle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedCountryRankTracker() : CountryVO
      {
         return this._585003535selectedCountryRankTracker;
      }
      
      public function set selectedCountryRankTracker(param1:CountryVO) : void
      {
         var _loc2_:Object = this._585003535selectedCountryRankTracker;
         if(_loc2_ !== param1)
         {
            this._585003535selectedCountryRankTracker = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedCountryRankTracker",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gPassword() : String
      {
         return this._202586078gPassword;
      }
      
      public function set gPassword(param1:String) : void
      {
         var _loc2_:Object = this._202586078gPassword;
         if(_loc2_ !== param1)
         {
            this._202586078gPassword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gPassword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFetchingMissingGlobalSearches() : Boolean
      {
         return this._2055529203isFetchingMissingGlobalSearches;
      }
      
      public function set isFetchingMissingGlobalSearches(param1:Boolean) : void
      {
         var _loc2_:Object = this._2055529203isFetchingMissingGlobalSearches;
         if(_loc2_ !== param1)
         {
            this._2055529203isFetchingMissingGlobalSearches = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFetchingMissingGlobalSearches",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get autoLoginGoogle() : Boolean
      {
         return this._1290599891autoLoginGoogle;
      }
      
      public function set autoLoginGoogle(param1:Boolean) : void
      {
         var _loc2_:Object = this._1290599891autoLoginGoogle;
         if(_loc2_ !== param1)
         {
            this._1290599891autoLoginGoogle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoLoginGoogle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get licenseStatus() : int
      {
         return this._1893381229licenseStatus;
      }
      
      public function set licenseStatus(param1:int) : void
      {
         var _loc2_:Object = this._1893381229licenseStatus;
         if(_loc2_ !== param1)
         {
            this._1893381229licenseStatus = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"licenseStatus",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedKeywordCollection() : KeywordArrayCollection
      {
         return this._387420172selectedKeywordCollection;
      }
      
      public function set selectedKeywordCollection(param1:KeywordArrayCollection) : void
      {
         var _loc2_:Object = this._387420172selectedKeywordCollection;
         if(_loc2_ !== param1)
         {
            this._387420172selectedKeywordCollection = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedKeywordCollection",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isDK() : Boolean
      {
         return this._3240753isDK;
      }
      
      public function set isDK(param1:Boolean) : void
      {
         var _loc2_:Object = this._3240753isDK;
         if(_loc2_ !== param1)
         {
            this._3240753isDK = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isDK",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get userEmail() : String
      {
         return this._315299473userEmail;
      }
      
      public function set userEmail(param1:String) : void
      {
         var _loc2_:Object = this._315299473userEmail;
         if(_loc2_ !== param1)
         {
            this._315299473userEmail = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"userEmail",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get projectTitle() : Dictionary
      {
         return this._929099455projectTitle;
      }
      
      public function set projectTitle(param1:Dictionary) : void
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
      public function get rankTrackerDomains() : ArrayCollection
      {
         return this._323866915rankTrackerDomains;
      }
      
      public function set rankTrackerDomains(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._323866915rankTrackerDomains;
         if(_loc2_ !== param1)
         {
            this._323866915rankTrackerDomains = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankTrackerDomains",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedProject() : ProjectVO
      {
         return this._874193922selectedProject;
      }
      
      public function set selectedProject(param1:ProjectVO) : void
      {
         var _loc2_:Object = this._874193922selectedProject;
         if(_loc2_ !== param1)
         {
            this._874193922selectedProject = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedProject",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isCheckingRanks() : Boolean
      {
         return this._403636995isCheckingRanks;
      }
      
      public function set isCheckingRanks(param1:Boolean) : void
      {
         var _loc2_:Object = this._403636995isCheckingRanks;
         if(_loc2_ !== param1)
         {
            this._403636995isCheckingRanks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isCheckingRanks",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentSeedKeywordId() : int
      {
         return this._1057542022currentSeedKeywordId;
      }
      
      public function set currentSeedKeywordId(param1:int) : void
      {
         var _loc2_:Object = this._1057542022currentSeedKeywordId;
         if(_loc2_ !== param1)
         {
            this._1057542022currentSeedKeywordId = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentSeedKeywordId",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mostRecentGoogleSearchResult() : String
      {
         return this._1210095332mostRecentGoogleSearchResult;
      }
      
      public function set mostRecentGoogleSearchResult(param1:String) : void
      {
         var _loc2_:Object = this._1210095332mostRecentGoogleSearchResult;
         if(_loc2_ !== param1)
         {
            this._1210095332mostRecentGoogleSearchResult = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mostRecentGoogleSearchResult",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankCheckItems() : ArrayCollection
      {
         return this._720643868rankCheckItems;
      }
      
      public function set rankCheckItems(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._720643868rankCheckItems;
         if(_loc2_ !== param1)
         {
            this._720643868rankCheckItems = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankCheckItems",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get avgDelayBetweenGoogleRequests() : Number
      {
         return this._946442764avgDelayBetweenGoogleRequests;
      }
      
      public function set avgDelayBetweenGoogleRequests(param1:Number) : void
      {
         var _loc2_:Object = this._946442764avgDelayBetweenGoogleRequests;
         if(_loc2_ !== param1)
         {
            this._946442764avgDelayBetweenGoogleRequests = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"avgDelayBetweenGoogleRequests",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkingInitialLoginState() : Boolean
      {
         return this._1123173970checkingInitialLoginState;
      }
      
      public function set checkingInitialLoginState(param1:Boolean) : void
      {
         var _loc2_:Object = this._1123173970checkingInitialLoginState;
         if(_loc2_ !== param1)
         {
            this._1123173970checkingInitialLoginState = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkingInitialLoginState",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordsCancelledFetchingKC() : ArrayCollection
      {
         return this._1486764441keywordsCancelledFetchingKC;
      }
      
      public function set keywordsCancelledFetchingKC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1486764441keywordsCancelledFetchingKC;
         if(_loc2_ !== param1)
         {
            this._1486764441keywordsCancelledFetchingKC = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordsCancelledFetchingKC",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allTrashKeywords() : KeywordArrayCollection
      {
         return this._520330527allTrashKeywords;
      }
      
      public function set allTrashKeywords(param1:KeywordArrayCollection) : void
      {
         var _loc2_:Object = this._520330527allTrashKeywords;
         if(_loc2_ !== param1)
         {
            this._520330527allTrashKeywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allTrashKeywords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get preferences() : PreferencesVO
      {
         return this._1989861112preferences;
      }
      
      public function set preferences(param1:PreferencesVO) : void
      {
         var _loc2_:Object = this._1989861112preferences;
         if(_loc2_ !== param1)
         {
            this._1989861112preferences = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preferences",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isPlatinum() : Boolean
      {
         return this._1081502070isPlatinum;
      }
      
      public function set isPlatinum(param1:Boolean) : void
      {
         var _loc2_:Object = this._1081502070isPlatinum;
         if(_loc2_ !== param1)
         {
            this._1081502070isPlatinum = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isPlatinum",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordsCurrentlyFetchingKC() : ArrayCollection
      {
         return this._560783260keywordsCurrentlyFetchingKC;
      }
      
      public function set keywordsCurrentlyFetchingKC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._560783260keywordsCurrentlyFetchingKC;
         if(_loc2_ !== param1)
         {
            this._560783260keywordsCurrentlyFetchingKC = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordsCurrentlyFetchingKC",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentCheckAllRanksCommand() : CheckAllRanksCommand
      {
         return this._431226698currentCheckAllRanksCommand;
      }
      
      public function set currentCheckAllRanksCommand(param1:CheckAllRanksCommand) : void
      {
         var _loc2_:Object = this._431226698currentCheckAllRanksCommand;
         if(_loc2_ !== param1)
         {
            this._431226698currentCheckAllRanksCommand = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentCheckAllRanksCommand",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get notificationText() : String
      {
         return this._1611519160notificationText;
      }
      
      public function set notificationText(param1:String) : void
      {
         var _loc2_:Object = this._1611519160notificationText;
         if(_loc2_ !== param1)
         {
            this._1611519160notificationText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"notificationText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedRankTrackerDomain() : RTDomain
      {
         return this._758001675selectedRankTrackerDomain;
      }
      
      public function set selectedRankTrackerDomain(param1:RTDomain) : void
      {
         var _loc2_:Object = this._758001675selectedRankTrackerDomain;
         if(_loc2_ !== param1)
         {
            this._758001675selectedRankTrackerDomain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedRankTrackerDomain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logText() : String
      {
         return this._341711505logText;
      }
      
      public function set logText(param1:String) : void
      {
         var _loc2_:Object = this._341711505logText;
         if(_loc2_ !== param1)
         {
            this._341711505logText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get defaultConfiguration() : DefaultConfigVO
      {
         return this._2105196597defaultConfiguration;
      }
      
      public function set defaultConfiguration(param1:DefaultConfigVO) : void
      {
         var _loc2_:Object = this._2105196597defaultConfiguration;
         if(_loc2_ !== param1)
         {
            this._2105196597defaultConfiguration = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defaultConfiguration",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isSharifyRegistered() : Boolean
      {
         return this._1604442894isSharifyRegistered;
      }
      
      public function set isSharifyRegistered(param1:Boolean) : void
      {
         var _loc2_:Object = this._1604442894isSharifyRegistered;
         if(_loc2_ !== param1)
         {
            this._1604442894isSharifyRegistered = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSharifyRegistered",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedKeyword() : KeywordVO
      {
         return this._1379291442selectedKeyword;
      }
      
      public function set selectedKeyword(param1:KeywordVO) : void
      {
         var _loc2_:Object = this._1379291442selectedKeyword;
         if(_loc2_ !== param1)
         {
            this._1379291442selectedKeyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedKeyword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allFavoriteKeywords() : KeywordArrayCollection
      {
         return this._166867673allFavoriteKeywords;
      }
      
      public function set allFavoriteKeywords(param1:KeywordArrayCollection) : void
      {
         var _loc2_:Object = this._166867673allFavoriteKeywords;
         if(_loc2_ !== param1)
         {
            this._166867673allFavoriteKeywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allFavoriteKeywords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedCountry() : CountryVO
      {
         return this._392947835selectedCountry;
      }
      
      public function set selectedCountry(param1:CountryVO) : void
      {
         var _loc2_:Object = this._392947835selectedCountry;
         if(_loc2_ !== param1)
         {
            this._392947835selectedCountry = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedCountry",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFetchingMissingDomains() : Boolean
      {
         return this._1815105861isFetchingMissingDomains;
      }
      
      public function set isFetchingMissingDomains(param1:Boolean) : void
      {
         var _loc2_:Object = this._1815105861isFetchingMissingDomains;
         if(_loc2_ !== param1)
         {
            this._1815105861isFetchingMissingDomains = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFetchingMissingDomains",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get proxies() : ArrayCollection
      {
         return this._308889716proxies;
      }
      
      public function set proxies(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._308889716proxies;
         if(_loc2_ !== param1)
         {
            this._308889716proxies = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"proxies",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mostRecentFailedSEOMozREsult() : String
      {
         return this._1134868115mostRecentFailedSEOMozREsult;
      }
      
      public function set mostRecentFailedSEOMozREsult(param1:String) : void
      {
         var _loc2_:Object = this._1134868115mostRecentFailedSEOMozREsult;
         if(_loc2_ !== param1)
         {
            this._1134868115mostRecentFailedSEOMozREsult = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mostRecentFailedSEOMozREsult",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numDomainsToFetch() : int
      {
         return this._859421962numDomainsToFetch;
      }
      
      public function set numDomainsToFetch(param1:int) : void
      {
         var _loc2_:Object = this._859421962numDomainsToFetch;
         if(_loc2_ !== param1)
         {
            this._859421962numDomainsToFetch = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numDomainsToFetch",_loc2_,param1));
            }
         }
      }
   }
}
