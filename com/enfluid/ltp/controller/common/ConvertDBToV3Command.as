package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.util.Logger;
   import mx.graphics.SolidColor;
   import flash.filesystem.File;
   import flash.data.SQLConnection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.states.AddItems;
   import mx.binding.Binding;
   import assets.TextAssets;
   import spark.components.DataGroup;
   import mx.binding.BindingManager;
   import spark.components.VGroup;
   import flash.events.SQLEvent;
   import flash.events.SQLErrorEvent;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.utils.setTimeout;
   import flash.events.Event;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import flash.errors.SQLError;
   import mx.collections.IList;
   import com.enfluid.ltp.model.DataModel;
   import flash.data.SQLStatement;
   import flash.net.Responder;
   import flash.data.SQLResult;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass2;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Languages;
   import com.enfluid.ltp.model.constants.Countries;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.SetDefaultConfigurationCommand;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.target;
   import com.enfluid.ltp.view.components.SelfAdjustingLabel;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.view.components.FilterValueTextInput;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.display.Graphics;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import mx.core.FlexGlobals;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.util.KeywordUtil;
   import spark.components.Group;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   
   use namespace mx_internal;
   
   public final class ConvertDBToV3Command extends Command implements IPhotonCommand
   {
      
      private static const COMPLETED_SUCCESSFULLY:String = "completedSuccessfully";
       
      
      private var KEYWORD_DB_FILE:File;
      
      private var KEYWORD_DB_FILE_OLD:File;
      
      private var MAIN_DB_FILE:File;
      
      private var connection:SQLConnection;
      
      private var projectsToSave:Array;
      
      private var keywordsToConvert:Array;
      
      private var domainsToConvert:Array;
      
      private var keywordsToSave:Array;
      
      private var seedKeywordsToConvert:Array;
      
      private var projectIdMap:Object;
      
      private var seedKeywordIdMap:Object;
      
      private var keywordIdMap:Object;
      
      private var app:LongTailPro;
      
      private var domainConversionCount:int = 0;
      
      private var keywordConversionCount:int = 0;
      
      private var keywordSavedCount:int = 0;
      
      public function ConvertDBToV3Command()
      {
         this.KEYWORD_DB_FILE = File.applicationStorageDirectory.resolvePath("keywordResearch.db");
         this.KEYWORD_DB_FILE_OLD = File.applicationStorageDirectory.resolvePath("keywordResearch.db.old2");
         this.MAIN_DB_FILE = File.applicationStorageDirectory.resolvePath("main.db");
         this.connection = new SQLConnection();
         this.projectsToSave = [];
         this.keywordsToConvert = [];
         this.domainsToConvert = [];
         this.keywordsToSave = [];
         this.seedKeywordsToConvert = [];
         this.projectIdMap = {};
         this.seedKeywordIdMap = {};
         this.keywordIdMap = {};
         this.app = FlexGlobals.topLevelApplication as LongTailPro;
         super();
      }
      
      private static function domainExtensionOptionsFromBitmask(param1:uint) : DomainExtensionOptions
      {
         var _loc2_:DomainExtensionOptions = new DomainExtensionOptions();
         §§push(_loc2_);
         §§push(param1);
         §§push(1);
         if(_loc4_)
         {
            §§push((§§pop() * 26 - 90 + 98) * 59);
         }
         §§push(§§pop() & §§pop());
         §§push(1);
         if(_loc3_)
         {
            §§push(-§§pop() * 14 * 64 * 90);
         }
         §§pop().ca = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(2);
         if(_loc3_)
         {
            §§push(-((§§pop() - 30) * 37 + 1 - 15 + 118 - 82));
         }
         §§push(§§pop() & §§pop());
         §§push(2);
         if(_loc4_)
         {
            §§push(§§pop() + 1 - 34 - 1);
         }
         §§pop().co = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() - 66 - 22 - 1 - 1 + 1);
         }
         §§push(§§pop() & §§pop());
         §§push(4);
         if(_loc4_)
         {
            §§push(-(§§pop() - 1) + 93 - 95 - 117 - 32);
         }
         §§pop().com = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(8);
         if(_loc4_)
         {
            §§push(-(§§pop() - 118 - 1 + 1));
         }
         §§push(§§pop() & §§pop());
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 1 + 111);
         }
         §§pop().comau = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(16);
         if(_loc3_)
         {
            §§push(--(§§pop() * 28 + 53) + 39);
         }
         §§push(§§pop() & §§pop());
         §§push(16);
         if(_loc4_)
         {
            §§push((§§pop() * 53 - 106 - 26 - 96) * 85 - 39 - 1);
         }
         §§pop().couk = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(32);
         if(_loc3_)
         {
            §§push(-§§pop() * 39 + 1 - 3 + 111 - 51);
         }
         §§push(§§pop() & §§pop());
         §§push(32);
         if(_loc3_)
         {
            §§push(-§§pop() - 27 - 31 - 1);
         }
         §§pop().de = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(64);
         if(_loc4_)
         {
            §§push(-(-§§pop() - 1 + 58) - 27);
         }
         §§push(§§pop() & §§pop());
         §§push(64);
         if(_loc4_)
         {
            §§push(-(§§pop() + 80 - 82 - 3) - 1);
         }
         §§pop().dk = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(128);
         if(_loc4_)
         {
            §§push((§§pop() + 1 - 1 - 70 - 1) * 54);
         }
         §§push(§§pop() & §§pop());
         §§push(128);
         if(_loc4_)
         {
            §§push(-(§§pop() + 22 - 1 - 1 - 1 + 71));
         }
         §§pop().info = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(256);
         if(_loc4_)
         {
            §§push(§§pop() * 114 + 1 - 57);
         }
         §§push(§§pop() & §§pop());
         §§push(256);
         if(_loc4_)
         {
            §§push(§§pop() * 70 + 1 + 1);
         }
         §§pop().net = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(512);
         if(_loc3_)
         {
            §§push(-§§pop() - 49 - 74 - 92);
         }
         §§push(§§pop() & §§pop());
         §§push(512);
         if(_loc4_)
         {
            §§push(-(§§pop() - 64 - 119) + 33 - 1 - 80);
         }
         §§pop().nl = §§pop() == §§pop();
         §§push(_loc2_);
         §§push(param1);
         §§push(1024);
         if(_loc4_)
         {
            §§push(-(-(§§pop() - 11 + 44) - 85 - 1 + 1));
         }
         §§push(§§pop() & §§pop());
         §§push(1024);
         if(_loc3_)
         {
            §§push(-((§§pop() * 117 - 9 - 1) * 35) * 85);
         }
         §§pop().org = §§pop() == §§pop();
         return _loc2_;
      }
      
      public function execute() : void
      {
         if(!this.KEYWORD_DB_FILE.exists)
         {
            this.done();
            return;
         }
         viewModel.startupText = "Converting Database...";
         viewModel.showConvertingDBPopup = true;
         this.openConnection();
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.connection.close();
         if(param1 == COMPLETED_SUCCESSFULLY)
         {
            Logger.log("About to rename");
            this.KEYWORD_DB_FILE.moveTo(this.KEYWORD_DB_FILE_OLD,true);
            Logger.log("Done Renaming");
         }
         viewModel.showConvertingDBPopup = false;
         super.done();
      }
      
      private final function callLater(param1:Function) : void
      {
         this.app.callLater(param1);
      }
      
      private final function openConnection() : void
      {
         this.connection.addEventListener(SQLEvent.OPEN,this.openHandler);
         this.connection.addEventListener(SQLErrorEvent.ERROR,this.onError);
         this.connection.openAsync(this.KEYWORD_DB_FILE);
      }
      
      private final function startNewStep(param1:String, param2:Function) : void
      {
         viewModel.conversionText = param1;
         §§push(viewModel);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 7 - 1 + 16 + 1 - 1);
         }
         §§pop().dataConverted = §§pop();
         §§push();
         §§push(param2);
         §§push(500);
         if(_loc4_)
         {
            §§push(§§pop() + 1 - 40 - 70 - 1 + 23 - 1);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function openHandler(param1:Event) : void
      {
         this.connection.removeEventListener(SQLEvent.OPEN,this.openHandler);
         this.connection.removeEventListener(SQLErrorEvent.ERROR,this.onError);
         this.startNewStep("Converting Campaigns into Projects",this.fetchCampaigns);
      }
      
      private final function onError(param1:SQLError) : void
      {
         Logger.log("ERROR PULLING DATA FROM KEYWORDRESEARCH.DB\n" + param1.message + "\n" + param1.getStackTrace());
      }
      
      private final function fetchCampaigns() : void
      {
         var _loc1_:Array = new Array();
         var _loc2_:SQLStatement = new SQLStatement();
         _loc2_.sqlConnection = this.connection;
         _loc2_.text = "SELECT * FROM main.Campaigns ORDER BY CampaignId ASC";
         §§push(_loc2_);
         §§push(-1);
         if(_loc4_)
         {
            §§push(-(§§pop() - 85 - 100) * 16 - 67 + 1);
         }
         §§pop().execute(§§pop(),new Responder(this.onFetchCampaigns,this.onError));
      }
      
      private final function onFetchCampaigns(param1:SQLResult) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ProjectVO = null;
         var _loc4_:String = null;
         if(!param1.data || §§pop() == §§pop() && §§pop() == §§pop())
         {
            this.done(COMPLETED_SUCCESSFULLY);
            return;
         }
         viewModel.dataToConvert = param1.data.length;
         §§push(0);
         if(_loc8_)
         {
            §§push(-((§§pop() + 1 + 1) * 37 * 48) - 38 - 1);
         }
         for each(_loc2_ in param1.data)
         {
            _loc3_ = new ProjectVO();
            this.projectIdMap[_loc2_["CampaignId"]] = _loc3_;
            _loc3_.language = Languages.findLanguageByName(_loc2_["LanguageId"]);
            _loc4_ = _loc2_["CountryId"];
            if(_loc4_ == "Russian Federation")
            {
               _loc4_ = "Russia";
            }
            _loc3_.country = Countries.findCountryByName(_loc4_);
            _loc3_.searchNetwork = _loc2_["SearchNetworkId"];
            _loc3_.includeAdultAreas = _loc2_["IncludeAdultAreas"];
            _loc3_.title = _loc2_["Title"];
            _loc3_.googleTitleCompAvgDelay = _loc2_["AvgDelayBetweenRequests"];
            _loc3_.bingTitleCompAvgDelay = _loc2_["AvgDelayBetweenRequestsBing"];
            _loc3_.domainsEnabled = _loc2_["CheckDomainAvailability"];
            _loc3_.domainsExactMatchExtensions = domainExtensionOptionsFromBitmask(_loc2_["ExactMatchOptions"]);
            _loc3_.domainsHyphenatedExtensions = domainExtensionOptionsFromBitmask(_loc2_["HyphenatedOptions"]);
            _loc3_.googleTitleCompEnabled = _loc2_["FetchTitleCompetitionGoogle"];
            _loc3_.bingTitleCompEnabled = _loc2_["FetchTitleCompetitionBing"];
            §§push(_loc2_["CampaignId"] as int);
            §§push(1000);
            if(_loc8_)
            {
               §§push(--((§§pop() - 1 + 1) * 46) * 36 + 52);
            }
            if(§§pop() == §§pop())
            {
               new SetDefaultConfigurationCommand(_loc3_).execute();
            }
            else
            {
               this.projectsToSave.push(_loc3_);
            }
         }
         this.fetchFilters();
      }
      
      private final function fetchFilters() : void
      {
         var _loc1_:SQLStatement = new SQLStatement();
         _loc1_.sqlConnection = this.connection;
         _loc1_.text = "SELECT * FROM main.Filters";
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push((-((-§§pop() - 1) * 62 * 15) + 1) * 58);
         }
         §§pop().execute(§§pop(),new Responder(this.onFetchFilters,this.onError));
      }
      
      private final function onFetchFilters(param1:SQLResult) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         var _loc4_:ProjectVO = null;
         if(!param1.data)
         {
            this.fetchSeedKeywords();
            return;
         }
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() - 29) * 66 - 1);
         }
         for each(_loc3_ in param1.data)
         {
            _loc4_ = this.projectIdMap[_loc3_["CampaignId"]];
            if(!_loc4_)
            {
               continue;
            }
            if("bingTitleCompetition" === _loc7_)
            {
               §§push(0);
               if(_loc8_)
               {
                  §§push(§§pop() + 106 - 1 - 54);
               }
            }
            else if("cpc" === _loc7_)
            {
               §§push(1);
               if(_loc9_)
               {
                  §§push(§§pop() + 1 - 55 - 56 + 22 - 1);
               }
            }
            else if("globalSearches" === _loc7_)
            {
               §§push(2);
               if(_loc9_)
               {
                  §§push((§§pop() - 23 + 91 - 104 + 1 + 1) * 33);
               }
            }
            else if("titleCompetition" === _loc7_)
            {
               §§push(3);
               if(_loc8_)
               {
                  §§push(-(§§pop() - 1) - 14 + 57);
               }
            }
            else if("hasAvailableDomain" === _loc7_)
            {
               §§push(4);
               if(_loc8_)
               {
                  §§push(§§pop() + 58 + 1 - 71);
               }
            }
            else if("localSearches" === _loc7_)
            {
               §§push(5);
               if(_loc9_)
               {
                  §§push(--(§§pop() - 1 + 50) + 29);
               }
            }
            else if("numKeywords" === _loc7_)
            {
               §§push(6);
               if(_loc8_)
               {
                  §§push((-(§§pop() * 54) - 57) * 51 + 1);
               }
            }
            else
            {
               §§push(7);
               if(_loc9_)
               {
                  §§push(-((§§pop() - 49) * 66) - 1 + 1 - 94);
               }
            }
            switch(§§pop())
            {
               case 0:
                  if(_loc3_["Enabled"])
                  {
                     _loc4_.bingTitleCompFilterMin = _loc3_["Min"];
                     _loc4_.bingTitleCompFilterMax = _loc3_["Max"];
                  }
                  continue;
               case 1:
                  if(_loc3_["Enabled"])
                  {
                     _loc4_.suggestedBidFilterMin = _loc3_["Min"];
                     _loc4_.suggestedBidFilterMax = _loc3_["Max"];
                  }
                  continue;
               case 2:
                  if(_loc3_["Enabled"])
                  {
                     _loc4_.globalSearchesFilterMin = _loc3_["Min"];
                     _loc4_.globalSearchesFilterMax = _loc3_["Max"];
                  }
                  continue;
               case 3:
                  if(_loc3_["Enabled"])
                  {
                     _loc4_.googleTitleCompFilterMin = _loc3_["Min"];
                     _loc4_.googleTitleCompFilterMax = _loc3_["Max"];
                  }
                  continue;
               case 4:
                  if(_loc3_["Enabled"])
                  {
                     _loc4_.domainsHasAvailableFilter = true;
                  }
                  continue;
               case 5:
                  if(_loc3_["Enabled"])
                  {
                     _loc4_.localSearchesFilterMin = _loc3_["Min"];
                     _loc4_.localSearchesFilterMax = _loc3_["Max"];
                  }
                  continue;
               case 6:
                  if(_loc3_["Enabled"])
                  {
                     _loc4_.numWordsFilterMin = _loc3_["Min"];
                     _loc4_.numWordsFilterMax = _loc3_["Max"];
                  }
                  continue;
               default:
                  continue;
            }
         }
         viewModel.dataToConvert = this.projectsToSave.length;
         this.saveProjects();
      }
      
      private final function saveProjects() : void
      {
         var _loc1_:ProjectVO = this.projectsToSave.shift();
         _loc1_.save();
         §§push(this.projectsToSave.length);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 11));
         }
         if(§§pop() == §§pop())
         {
            this.startNewStep("Converting Seed Keywords",this.fetchSeedKeywords);
         }
         else
         {
            this.callLater(this.saveProjects);
            viewModel.dataConverted = viewModel.dataToConvert - this.projectsToSave.length;
         }
      }
      
      private final function fetchSeedKeywords() : void
      {
         var _loc1_:SQLStatement = new SQLStatement();
         _loc1_.sqlConnection = this.connection;
         _loc1_.text = "SELECT * FROM main.SeedKeywords";
         §§push(_loc1_);
         §§push(-1);
         if(_loc2_)
         {
            §§push(---§§pop() + 1 + 1 - 1);
         }
         §§pop().execute(§§pop(),new Responder(this.onFetchSeedKeywords,this.onError));
      }
      
      private final function onFetchSeedKeywords(param1:SQLResult) : void
      {
         if(!param1.data)
         {
            this.startNewStep("Converting Keywords",this.fetchKeywords);
            return;
         }
         this.seedKeywordsToConvert = param1.data;
         viewModel.dataToConvert = this.seedKeywordsToConvert.length;
         this.convertSeedKeyword();
      }
      
      private final function convertSeedKeyword() : void
      {
         var _loc3_:SeedKeywordVO = null;
         var _loc1_:* = this.seedKeywordsToConvert.shift();
         var _loc2_:ProjectVO = this.projectIdMap[_loc1_["CampaignId"]];
         if(_loc2_)
         {
            _loc3_ = new SeedKeywordVO(_loc2_);
            this.seedKeywordIdMap[_loc1_["SeedKeywordId"]] = _loc3_;
            _loc3_.excludeKeywords = _loc1_["ExcludeKeywords"];
            _loc3_.includeKeywords = _loc1_["IncludeKeywords"];
            _loc3_.keyword = _loc1_["Keyword"];
            _loc3_.save();
         }
         viewModel.dataConverted = viewModel.dataToConvert - this.seedKeywordsToConvert.length;
         §§push(this.seedKeywordsToConvert.length);
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() - 1 - 1) * 3) - 39);
         }
         if(§§pop() == §§pop())
         {
            this.startNewStep("Converting Keywords",this.fetchKeywords);
         }
         else
         {
            this.callLater(this.convertSeedKeyword);
         }
      }
      
      private final function fetchKeywords() : void
      {
         var _loc1_:Array = new Array();
         var _loc2_:SQLStatement = new SQLStatement();
         _loc2_.sqlConnection = this.connection;
         _loc2_.text = "SELECT * FROM main.Keywords ORDER BY KeywordId ASC";
         §§push(_loc2_);
         §§push(-1);
         if(_loc4_)
         {
            §§push((((§§pop() + 58) * 62 + 1) * 7 * 103 + 1) * 2);
         }
         §§pop().execute(§§pop(),new Responder(this.onFetchKeywords,this.onError));
      }
      
      private final function onFetchKeywords(param1:SQLResult) : void
      {
         if(!param1.data)
         {
            this.done(COMPLETED_SUCCESSFULLY);
            return;
         }
         this.keywordsToConvert = param1.data;
         viewModel.dataToConvert = this.keywordsToConvert.length;
         this.convertKeyword();
      }
      
      private final function convertKeyword() : void
      {
         var _loc2_:KeywordVO = null;
         var _loc5_:String = null;
         var _loc6_:ProjectVO = null;
         var _loc1_:* = this.keywordsToConvert.shift();
         _loc2_ = new KeywordVO();
         _loc2_.isFavorite = _loc1_["IsFavorite"];
         var _loc3_:ProjectVO = this.projectIdMap[_loc1_["CampaignId"]];
         if(!_loc3_ && _loc2_.isFavorite)
         {
            _loc5_ = _loc1_["CampaignTitle"];
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() + 1) * 80 * 107);
            }
            for each(_loc6_ in this.projectsToSave)
            {
               if(_loc5_ == _loc6_.title)
               {
                  _loc3_ = _loc6_;
               }
            }
         }
         _loc2_.project = _loc3_;
         var _loc4_:SeedKeywordVO = this.seedKeywordIdMap[_loc1_["SeedKeywordId"]];
         _loc2_.seedKeyword = _loc4_;
         if(_loc3_ && !_loc3_.seedKeywords.contains(_loc4_))
         {
            _loc4_ = null;
         }
         _loc2_.avgKC = this.parseInteger(_loc1_["AvgKC"]);
         §§push(_loc2_.avgKC);
         §§push(0);
         if(_loc9_)
         {
            §§push(-(--§§pop() + 65 + 21 + 1));
         }
         if(§§pop() == §§pop())
         {
            _loc2_.avgKC = Values.NOT_FETCHED;
         }
         _loc2_.bingTitleCompetition = this.parseInteger(_loc1_["TitleCompetitionBing"]);
         _loc2_.advertiserCompetition = _loc1_["Competition"];
         _loc2_.globalSearches = this.parseInteger(_loc1_["GlobalSearches"]);
         _loc2_.suggestedBidString = _loc1_["CPC"];
         _loc2_.suggestedBid = Number(KeywordUtil.removeNonNumericChars(_loc2_.suggestedBidString));
         _loc2_.keyword = _loc1_["Keyword"];
         _loc2_.localSearches = this.parseInteger(_loc1_["LocalSearches"]);
         _loc2_.notes = _loc1_["Notes"];
         _loc2_.googleTitleCompetition = this.parseInteger(_loc1_["TitleCompetitionGoogle"]);
         if(!_loc2_.seedKeyword)
         {
            _loc2_.isOwnKeyword = true;
         }
         if(_loc3_ || _loc2_.isFavorite)
         {
            this.keywordIdMap[_loc1_["KeywordId"]] = _loc2_;
            this.keywordsToSave.push(_loc2_);
         }
         this.keywordConversionCount++;
         §§push(this.keywordsToConvert.length);
         §§push(0);
         if(_loc10_)
         {
            §§push((§§pop() + 114 + 1 - 53) * 46 - 106);
         }
         if(§§pop() == §§pop())
         {
            this.startNewStep("Converting Domains",this.fetchDomains);
         }
         else
         {
            §§push(this.keywordConversionCount);
            §§push(50);
            if(_loc9_)
            {
               §§push(§§pop() - 1 + 1 - 1);
            }
            §§push(§§pop() % §§pop());
            §§push(0);
            if(_loc10_)
            {
               §§push(§§pop() - 1 - 36 + 1 - 72 + 1 + 1);
            }
            if(§§pop() == §§pop())
            {
               viewModel.dataConverted = viewModel.dataToConvert - this.keywordsToConvert.length;
               this.callLater(this.convertKeyword);
            }
            else
            {
               this.convertKeyword();
            }
         }
      }
      
      private final function parseInteger(param1:String) : int
      {
         if(!param1)
         {
            return Values.NOT_FETCHED;
         }
         param1 = KeywordUtil.removeNonNumericChars(param1);
         var _loc2_:Number = int(param1);
         return _loc2_;
      }
      
      private final function fetchDomains() : void
      {
         var _loc1_:SQLStatement = new SQLStatement();
         _loc1_.sqlConnection = this.connection;
         _loc1_.text = "SELECT * FROM main.Domains";
         §§push(_loc1_);
         §§push(-1);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1 - 1) + 71 - 1 - 68);
         }
         §§pop().execute(§§pop(),new Responder(this.onFetchDomains,this.onError));
      }
      
      private final function onFetchDomains(param1:SQLResult) : void
      {
         if(!param1.data)
         {
            this.startNewStep("Saving Data",this.saveKeyword);
            viewModel.dataToConvert = this.keywordsToSave.length;
            return;
         }
         this.domainsToConvert = param1.data;
         viewModel.dataToConvert = this.domainsToConvert.length;
         this.convertDomain();
      }
      
      private final function convertDomain() : void
      {
         var _loc2_:KeywordVO = null;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:* = false;
         var _loc6_:DomainsVO = null;
         var _loc7_:String = null;
         var _loc8_:* = undefined;
         var _loc1_:* = this.domainsToConvert.shift();
         try
         {
            _loc2_ = this.keywordIdMap[_loc1_["KeywordId"]];
            if(_loc2_)
            {
               _loc3_ = _loc1_["Extension"];
               _loc4_ = String(_loc1_["Domain"]).replace("." + _loc3_,"");
               §§push(_loc4_.indexOf("-"));
               §§push(0);
               if(_loc11_)
               {
                  §§push(((§§pop() + 1 + 95 + 111) * 47 + 88) * 36 + 1);
               }
               _loc5_ = §§pop() >= §§pop();
               _loc6_ = !!_loc5_?_loc2_.domainsHyphenated:_loc2_.domainsExact;
               _loc6_.domainWithoutExtension = _loc4_;
               _loc6_.isHyphenated = _loc5_;
               _loc7_ = _loc1_["Availability"];
               if("Available" === _loc9_)
               {
                  §§push(0);
                  if(_loc12_)
                  {
                     §§push(-(§§pop() + 0) - 3);
                  }
               }
               else if("Unavailable" === _loc9_)
               {
                  §§push(1);
                  if(_loc12_)
                  {
                     §§push((-§§pop() + 1) * 56 + 1);
                  }
               }
               else if("Error" === _loc9_)
               {
                  §§push(2);
                  if(_loc11_)
                  {
                     §§push(-(((§§pop() - 1) * 29 * 118 + 1 - 1) * 15));
                  }
               }
               else if("NotFetched" === _loc9_)
               {
                  §§push(3);
                  if(_loc11_)
                  {
                     §§push(-((§§pop() - 74 - 1 - 1) * 69) + 41);
                  }
               }
               else if("Premium" === _loc9_)
               {
                  §§push(4);
                  if(_loc11_)
                  {
                     §§push(§§pop() + 1 - 38 - 1 - 26 - 46 - 1 - 1);
                  }
               }
               else
               {
                  §§push(5);
                  if(_loc11_)
                  {
                     §§push((§§pop() - 50 + 1) * 109);
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     _loc6_[_loc3_.replace(".","")] = DomainStatuses.AVAILABLE;
                     break;
                  case 1:
                     _loc6_[_loc3_.replace(".","")] = DomainStatuses.UNAVAILABLE;
                     break;
                  case 2:
                     _loc6_[_loc3_.replace(".","")] = DomainStatuses.ERROR;
                     break;
                  case 3:
                     _loc6_[_loc3_.replace(".","")] = DomainStatuses.NOT_FETCHED;
                     break;
                  case 4:
                     _loc6_[_loc3_.replace(".","")] = DomainStatuses.UNAVAILABLE;
                     break;
                  default:
                     _loc6_[_loc3_.replace(".","")] = DomainStatuses.NOT_FETCHED;
               }
               _loc8_ = _loc1_["LastCheckDate"];
               if(!_loc2_.domainsTimestamp || _loc8_ < _loc2_.domainsTimestamp)
               {
                  _loc2_.domainsTimestamp = _loc8_;
               }
            }
         }
         catch(err:Error)
         {
         }
         this.domainConversionCount++;
         §§push(this.domainsToConvert.length);
         §§push(0);
         if(_loc12_)
         {
            §§push(§§pop() + 110 + 100 + 111);
         }
         if(§§pop() == §§pop())
         {
            this.startNewStep("Saving Data",this.saveKeyword);
            viewModel.dataToConvert = this.keywordsToSave.length;
         }
         else
         {
            §§push(this.domainConversionCount);
            §§push(100);
            if(_loc12_)
            {
               §§push(--(§§pop() - 103 - 1) + 56);
            }
            §§push(§§pop() % §§pop());
            §§push(0);
            if(_loc12_)
            {
               §§push(-((-(§§pop() - 13) - 1) * 83));
            }
            if(§§pop() == §§pop())
            {
               viewModel.dataConverted = viewModel.dataToConvert - this.domainsToConvert.length;
               this.callLater(this.convertDomain);
            }
            else
            {
               this.convertDomain();
            }
         }
      }
      
      private final function saveKeyword() : void
      {
         §§push(this.keywordsToSave.length);
         §§push(0);
         if(_loc4_)
         {
            §§push(((§§pop() - 81 - 1) * 68 - 1) * 38);
         }
         if(§§pop() == §§pop())
         {
            this.done(COMPLETED_SUCCESSFULLY);
            return;
         }
         var _loc1_:KeywordVO = this.keywordsToSave.shift();
         _loc1_.save();
         this.keywordSavedCount++;
         §§push(this.keywordsToSave.length);
         §§push(0);
         if(_loc4_)
         {
            §§push((--(§§pop() - 1) - 1) * 75 * 90);
         }
         if(§§pop() == §§pop())
         {
            this.done(COMPLETED_SUCCESSFULLY);
         }
         else
         {
            §§push(this.keywordSavedCount);
            §§push(10);
            if(_loc4_)
            {
               §§push(-(§§pop() + 119) + 49 + 1);
            }
            §§push(§§pop() % §§pop());
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() - 1 + 1 - 1));
            }
            if(§§pop() == §§pop())
            {
               viewModel.dataConverted = viewModel.dataToConvert - this.keywordsToSave.length;
               this.callLater(this.saveKeyword);
            }
            else
            {
               this.saveKeyword();
            }
         }
      }
   }
}
