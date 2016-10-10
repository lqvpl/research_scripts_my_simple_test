package com.enfluid.ltp.util
{
   import mx.collections.ArrayCollection;
   import com.hurlant.math.BigInteger;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass4;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import system.data.lists.ArrayList;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.components.HGroup;
   import mx.graphics.SolidColor;
   import flash.events.Event;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.model.vo.DomainExtensionOptions;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import spark.effects.Fade;
   import com.enfluid.ltp.model.constants.Values;
   import mx.graphics.SolidColorStroke;
   import mx.controls.HRule;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import spark.primitives.Rect;
   import spark.components.Label;
   import system.Reflection;
   import spark.components.Image;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import com.enfluid.ltp.controller.common.FetchCompetitorUrls;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticCacheKcCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticBatchPagesDataCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticDomainsBulkKcCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticPagesBulkKcCommand;
   import com.enfluid.ltp.model.constants.AdvertiserCompetitionValues;
   import mx.graphics.LinearGradient;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import mx.graphics.RadialGradient;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import spark.events.TextOperationEvent;
   import com.adobe.utils.StringUtil;
   import mx.events.PropertyChangeEvent;
   import flash.utils.setTimeout;
   
   public final class KeywordArrayCollection extends ArrayCollection
   {
       
      
      private var alreadyFiltered:Boolean = false;
      
      private var _309310695project:ProjectVO;
      
      private var _731385813totalCount:int = 0;
      
      private var _1890473006missingBingTitleCompCount:int = 0;
      
      private var _2065023769missingGoogleTitleCompCount:int = 0;
      
      private var _353199158missingDomainAvailabilityCount:int = 0;
      
      private var _622405237missingAvgKCCount:int = 0;
      
      private var _329449549missingAmazonKCCount:int = 0;
      
      private var _1244136400missingGlobalSearchesCount:int = 0;
      
      private var _isTrash:Boolean = false;
      
      private var _trashKeywords:com.enfluid.ltp.util.KeywordArrayCollection;
      
      private var _missingBingTitleCompetitionCount:int = 0;
      
      private var _missingGoogleTitleCompetitionCount:int = 0;
      
      private var _missingDomainAvailabilityCount:int = 0;
      
      private var _missingAvgKCCount:int = 0;
      
      private var _missingAmazonKCCount:int = 0;
      
      private var _missingGlobalSearchesCount:int = 0;
      
      private var _checkFunctions:ArrayCollection;
      
      public function KeywordArrayCollection(param1:ProjectVO, param2:Array = null, param3:Boolean = false)
      {
         var _loc5_:Array = null;
         var _loc6_:KeywordVO = null;
         this._checkFunctions = new ArrayCollection();
         this._isTrash = param3;
         var _loc4_:Array = [];
         if(!param3)
         {
            _loc5_ = [];
            §§push(0);
            if(_loc9_)
            {
               §§push((-§§pop() * 113 * 83 * 73 - 1) * 51);
            }
            for each(_loc6_ in param2)
            {
               if(_loc6_.isInTrash)
               {
                  _loc5_.push(_loc6_);
               }
               else
               {
                  _loc4_.push(_loc6_);
               }
            }
            this._trashKeywords = new com.enfluid.ltp.util.KeywordArrayCollection(param1,_loc5_,true);
         }
         else
         {
            _loc4_ = param2;
         }
         super(_loc4_);
         this.totalCount = this.source.length;
         this.project = param1;
         §§push();
         §§push(this.addFilterChangeWatchers);
         §§push(250);
         if(_loc10_)
         {
            §§push(--(-§§pop() * 85) * 26 + 42);
         }
         §§pop().setTimeout(§§pop(),§§pop());
         this.filterFunction = this.mainFilterFunction;
      }
      
      public function get isTrash() : Boolean
      {
         return this._isTrash;
      }
      
      [Bindable(event="trashKeywordsChange")]
      public function get trashKeywords() : com.enfluid.ltp.util.KeywordArrayCollection
      {
         if(this.isTrash)
         {
            return this;
         }
         return this._trashKeywords;
      }
      
      public final function getAllKeywordsIncludingTrash() : Array
      {
         return source.concat(this.trashKeywords.source);
      }
      
      public final function moveKeywordToTrash(param1:KeywordVO) : void
      {
         this.trashKeywords.addItemInPlace(param1);
         super.removeItem(param1);
         this.totalCount = this.source.length;
      }
      
      public final function moveKeywordOutOfTrash(param1:KeywordVO) : void
      {
         this.trashKeywords.removeItem(param1);
         this.addItemInPlace(param1);
      }
      
      override public function addItem(param1:Object) : void
      {
         if(KeywordVO(param1).isInTrash && !this.isTrash)
         {
            this.trashKeywords.addItem(param1);
         }
         else
         {
            super.addItem(param1);
         }
      }
      
      override public function addItemAt(param1:Object, param2:int) : void
      {
         if(KeywordVO(param1).isInTrash && !this.isTrash)
         {
            this.trashKeywords.addItemAt(param1,param2);
         }
         else
         {
            super.addItemAt(param1,param2);
            this.totalCount = source.length;
         }
      }
      
      public final function addItemInPlace(param1:*) : void
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 74 - 20);
         }
         var _loc2_:* = §§pop();
         if(KeywordVO(param1).isInTrash && !this.isTrash)
         {
            this.trashKeywords.addItemInPlace(param1);
         }
         else
         {
            if(param1.id)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(-§§pop() + 87 - 1 - 57 - 1) * 114);
               }
               _loc2_ = §§pop();
               while(_loc2_ < source.length)
               {
                  if(source[_loc2_].id > param1.id)
                  {
                     §§push(source);
                     §§push(_loc2_);
                     §§push(0);
                     if(_loc3_)
                     {
                        §§push((§§pop() * 37 - 38) * 7 - 48 - 1);
                     }
                     §§pop().splice(§§pop(),§§pop(),param1);
                     this.totalCount = source.length;
                     return;
                  }
                  _loc2_++;
               }
               source.push(param1);
               this.totalCount = source.length;
               return;
            }
            this.addItemAt(param1,this.length);
            this.totalCount = source.length;
         }
      }
      
      override public function removeItem(param1:Object) : Boolean
      {
         var _loc2_:Boolean = false;
         if(KeywordVO(param1).isInTrash && !this.isTrash)
         {
            return this.trashKeywords.removeItem(param1);
         }
         _loc2_ = super.removeItem(param1);
         this.totalCount = source.length;
         return _loc2_;
      }
      
      override public function removeItemAt(param1:int) : Object
      {
         var _loc2_:* = super.removeItemAt(param1);
         this.totalCount = source.length;
         return _loc2_;
      }
      
      override public function removeAll() : void
      {
         super.removeAll();
         this.trashKeywords.removeAll();
         §§push(this);
         §§push(0);
         if(_loc1_)
         {
            §§push(-(§§pop() * 27 + 1) - 1 + 37);
         }
         §§pop().totalCount = §§pop();
      }
      
      public final function updateCounts() : void
      {
         var _loc1_:KeywordVO = null;
         §§push(this);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 92 - 58 + 68 + 111 + 1 - 96);
         }
         §§pop()._missingBingTitleCompetitionCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 93 * 2 - 1 - 1) * 42);
         }
         §§pop()._missingGoogleTitleCompetitionCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-(§§pop() - 1) + 111 - 42));
         }
         §§pop()._missingDomainAvailabilityCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc5_)
         {
            §§push(--(§§pop() + 1 - 1) * 19 + 1);
         }
         §§pop()._missingAvgKCCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 17 - 112 + 1 - 48 - 80 - 26);
         }
         §§pop()._missingAmazonKCCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 31 - 1 - 33 - 1);
         }
         §§pop()._missingGlobalSearchesCount = §§pop();
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 10) * 2 * 12 - 1 - 1);
         }
         for each(_loc1_ in this)
         {
            this.count(_loc1_);
         }
         this.missingBingTitleCompCount = this._missingBingTitleCompetitionCount;
         this.missingGoogleTitleCompCount = this._missingGoogleTitleCompetitionCount;
         this.missingDomainAvailabilityCount = this._missingDomainAvailabilityCount;
         this.missingAvgKCCount = this._missingAvgKCCount;
         this.missingAmazonKCCount = this._missingAmazonKCCount;
         this.missingGlobalSearchesCount = this._missingGlobalSearchesCount;
      }
      
      override public function refresh() : Boolean
      {
         if(this.project.specialFilter == SpecialFilterConstants.TRASH && !this.isTrash)
         {
            return this.trashKeywords.refresh();
         }
         §§push(this);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((-(§§pop() + 11 + 1) + 1) * 11));
         }
         §§pop()._missingBingTitleCompetitionCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 105) * 52));
         }
         §§pop()._missingGoogleTitleCompetitionCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 12 - 55 + 1 - 100 + 1 + 1);
         }
         §§pop()._missingDomainAvailabilityCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 116 * 107 - 1 - 1 - 1 + 3) * 106);
         }
         §§pop()._missingAvgKCCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 33 + 103));
         }
         §§pop()._missingAmazonKCCount = §§pop();
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 55 + 49) + 16 + 1);
         }
         §§pop()._missingGlobalSearchesCount = §§pop();
         var _loc1_:Boolean = super.refresh();
         this.missingBingTitleCompCount = this._missingBingTitleCompetitionCount;
         this.missingGoogleTitleCompCount = this._missingGoogleTitleCompetitionCount;
         this.missingDomainAvailabilityCount = this._missingDomainAvailabilityCount;
         this.missingAvgKCCount = this._missingAvgKCCount;
         this.missingAmazonKCCount = this._missingAmazonKCCount;
         this.missingGlobalSearchesCount = this._missingGlobalSearchesCount;
         if(filterFunction == this.mainFilterFunction)
         {
            this._checkFunctions = new ArrayCollection();
         }
         return _loc1_;
      }
      
      public final function mainFilterFunction(param1:KeywordVO) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         if(!this.project)
         {
            return true;
         }
         if(param1.filterState.hasInvalidFilterState)
         {
            this.checkAll(param1);
         }
         else
         {
            this.checkNecessary(param1);
         }
         if(param1.filterState.meetsAllFilters)
         {
            this.count(param1);
         }
         if(param1.quickAddedThisSession)
         {
            return true;
         }
         return param1.filterState.meetsAllFilters;
      }
      
      public final function deleteAllKeywords(param1:Boolean = false) : void
      {
         var _loc4_:KeywordVO = null;
         var _loc5_:* = null;
         var _loc6_:CompetitorUrlVO = null;
         var _loc2_:Array = [];
         var _loc3_:Array = this.getAllKeywordsIncludingTrash();
         §§push(_loc3_.length);
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 105 + 1 + 94);
         }
         if(§§pop() == §§pop())
         {
            return;
         }
         §§push(0);
         if(_loc10_)
         {
            §§push(-(-§§pop() + 109) - 1);
         }
         for each(_loc4_ in _loc3_)
         {
            if(!_loc4_.isFavorite || param1)
            {
               _loc4_.isDeleted = true;
               _loc2_.push(_loc4_.id);
            }
         }
         _loc5_ = "DELETE FROM KeywordVOs WHERE id IN (" + _loc2_.join(", ") + ")";
         _loc4_.query(_loc5_);
         _loc5_ = "DELETE FROM CompetitorUrlVOs WHERE keyword_id IN (" + _loc2_.join(", ") + ")";
         _loc6_ = new CompetitorUrlVO();
         _loc6_.query(_loc5_);
      }
      
      public final function removeDeletedKeywords() : void
      {
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 47) + 1);
         }
         var _loc1_:* = §§pop();
         §§push(source.length);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 1);
         }
         if(§§pop() > §§pop())
         {
            _loc1_ = int(source.length - 1);
            while(true)
            {
               §§push(_loc1_);
               §§push(0);
               if(_loc2_)
               {
                  §§push((§§pop() - 1 + 1 - 99 + 1) * 33);
               }
               if(§§pop() < §§pop())
               {
                  break;
               }
               if(KeywordVO(source[_loc1_]).isDeleted)
               {
                  §§push(source);
                  §§push(_loc1_);
                  §§push(1);
                  if(_loc3_)
                  {
                     §§push(§§pop() * 3 + 43 - 23 - 57 + 1);
                  }
                  §§pop().splice(§§pop(),§§pop());
               }
               _loc1_--;
            }
         }
         if(!this.isTrash)
         {
            this.trashKeywords.removeDeletedKeywords();
         }
         this.totalCount = source.length;
         this.refresh();
      }
      
      protected final function checkKeywordFilter(param1:KeywordVO) : void
      {
         param1.filterState.meetsKeywordFilter = !this.project.keywordFilterText || this.matchKeyword(this.project,param1.keyword);
      }
      
      protected final function checkProjectFilter(param1:KeywordVO) : void
      {
         param1.filterState.meetsProjectFilter = !this.project.projectFilterText || this.matchProject(this.project.projectFilterText,param1.projectTitle);
      }
      
      protected final function checkSpecialFilter(param1:KeywordVO) : void
      {
         if(SpecialFilterConstants.NONE === _loc2_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(-((§§pop() - 96) * 91 - 1 - 26));
            }
         }
         else if(SpecialFilterConstants.FAVORITES === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push((§§pop() - 93 - 4 + 1 - 1) * 114);
            }
         }
         else if(SpecialFilterConstants.TRASH === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push(-((§§pop() - 97 - 1 - 1 + 1) * 117));
            }
         }
         else if(SpecialFilterConstants.NOTES === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(§§pop() - 28 - 82 - 117);
            }
         }
         else
         {
            §§push(4);
            if(_loc4_)
            {
               §§push((§§pop() + 1 + 1 + 1 + 48) * 90 - 31 - 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               param1.filterState.meetsSpecialFilter = true;
               break;
            case 1:
               param1.filterState.meetsSpecialFilter = param1.isFavorite;
               break;
            case 2:
               param1.filterState.meetsSpecialFilter = param1.isInTrash;
               break;
            case 3:
               param1.filterState.meetsSpecialFilter = param1.notes && §§pop() > §§pop();
               break;
            default:
               param1.filterState.meetsSpecialFilter = true;
         }
      }
      
      protected final function count(param1:KeywordVO) : void
      {
         §§push(param1.bingTitleCompetition);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 1 + 1 - 2 - 1);
         }
         if(§§pop() < §§pop())
         {
            this._missingBingTitleCompetitionCount++;
         }
         §§push(param1.googleTitleCompetition);
         §§push(0);
         if(_loc5_)
         {
            §§push(--(§§pop() - 1 + 1 + 1 - 1) - 28);
         }
         if(§§pop() < §§pop())
         {
            this._missingGoogleTitleCompetitionCount++;
         }
         if(param1.domainsExact.hasMissingData || param1.domainsHyphenated.hasMissingData)
         {
            this._missingDomainAvailabilityCount++;
         }
         §§push(param1.globalSearches);
         §§push(0);
         if(_loc5_)
         {
            §§push(-§§pop() * 89 + 1 - 43 - 1 - 1);
         }
         if(§§pop() < §§pop())
         {
            this._missingGlobalSearchesCount++;
         }
         §§push(param1.avgKC);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 1 - 1) * 65);
         }
         if(§§pop() < §§pop())
         {
            this._missingAvgKCCount++;
         }
         §§push(param1.amazonKC);
         §§push(0);
         if(_loc4_)
         {
            §§push(---(§§pop() - 1));
         }
         if(§§pop() < §§pop())
         {
            this._missingAmazonKCCount++;
         }
      }
      
      private final function addFilterChangeWatchers() : void
      {
         new FilterChangeWatcher(this.project,"localSearchesFilterMin",this.checkLocalSearchMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"localSearchesFilterMax",this.checkLocalSearchMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"globalSearchesFilterMin",this.checkGlobalSearchMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"globalSearchesFilterMax",this.checkGlobalSearchMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"suggestedBidFilterMin",this.checkSuggestedBidMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"suggestedBidFilterMax",this.checkSuggestedBidMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"numWordsFilterMin",this.checkNumWordsMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"numWordsFilterMax",this.checkNumWordsMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"googleTitleCompFilterMin",this.checkGoogleTitleCompMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"googleTitleCompFilterMax",this.checkGoogleTitleCompMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"bingTitleCompFilterMin",this.checkBingTitleCompMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"bingTitleCompFilterMax",this.checkBingTitleCompMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"avgKCFilterMin",this.checkAvgKCMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"avgKCFilterMax",this.checkAvgKCMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"amazonKCFilterMin",this.checkAmazonKCMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"amazonKCFilterMax",this.checkAmazonKCMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"advertiserCompFilterHigh",this.checkAdvertiserCompetition,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"advertiserCompFilterMed",this.checkAdvertiserCompetition,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"advertiserCompFilterLow",this.checkAdvertiserCompetition,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"domainsEnabled",this.checkBothDomainAvailability,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"domainsHasAvailableFilter",this.checkBothDomainAvailability,this.addCheckFunction);
         new FilterChangeWatcher(this.project,["domainsExactMatchExtensions","numExtensions"],this.checkExactDomainAvailability,this.addCheckFunction);
         new FilterChangeWatcher(this.project,["domainsHyphenatedExtensions","numExtensions"],this.checkHyphenatedDomainAvailability,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"keywordFilterText",this.checkKeywordFilter,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"projectFilterText",this.checkProjectFilter,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"specialFilter",this.checkSpecialFilter,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"suggestedBidEnabled",this.checkSuggestedBidMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"suggestedBidEnabled",this.checkSuggestedBidMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"localSearchesEnabled",this.checkLocalSearchMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"localSearchesEnabled",this.checkLocalSearchMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"globalSearchesEnabled",this.checkGlobalSearchMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"globalSearchesEnabled",this.checkGlobalSearchMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"advertiserCompEnabled",this.checkAdvertiserCompetition,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"numWordsEnabled",this.checkNumWordsMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"numWordsEnabled",this.checkNumWordsMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"googleTitleCompEnabled",this.checkGoogleTitleCompMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"googleTitleCompEnabled",this.checkGoogleTitleCompMax,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"bingTitleCompEnabled",this.checkBingTitleCompMin,this.addCheckFunction);
         new FilterChangeWatcher(this.project,"bingTitleCompEnabled",this.checkBingTitleCompMax,this.addCheckFunction);
      }
      
      private final function checkNecessary(param1:KeywordVO) : void
      {
         var _loc2_:Function = null;
         §§push(this._checkFunctions.length);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() - 110 + 73 - 108);
         }
         if(§§pop() > §§pop())
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(((§§pop() - 1) * 16 * 7 - 1 + 1) * 23);
            }
            for each(_loc2_ in this._checkFunctions)
            {
               _loc2_.apply(this,[param1]);
            }
            this.checkMeetsAllFilters(param1);
            param1.filterState.hasInvalidFilterState = false;
         }
      }
      
      private final function checkAll(param1:KeywordVO) : void
      {
         this.checkKeywordFilter(param1);
         this.checkSpecialFilter(param1);
         this.checkProjectFilter(param1);
         this.checkLocalSearchMin(param1);
         this.checkLocalSearchMax(param1);
         this.checkGlobalSearchMin(param1);
         this.checkGlobalSearchMax(param1);
         this.checkSuggestedBidMin(param1);
         this.checkSuggestedBidMax(param1);
         this.checkNumWordsMin(param1);
         this.checkNumWordsMax(param1);
         this.checkGoogleTitleCompMin(param1);
         this.checkGoogleTitleCompMin(param1);
         this.checkBingTitleCompMin(param1);
         this.checkBingTitleCompMax(param1);
         this.checkAdvertiserCompetition(param1);
         this.checkBothDomainAvailability(param1);
         this.checkAvgKCMin(param1);
         this.checkAvgKCMax(param1);
         this.checkAmazonKCMin(param1);
         this.checkAmazonKCMax(param1);
         this.checkMeetsAllFilters(param1);
         param1.filterState.hasInvalidFilterState = false;
      }
      
      private final function checkLocalSearchMin(param1:KeywordVO) : void
      {
         var _loc2_:Array = null;
         if(!param1.isGoogleRestrictedSearches)
         {
            param1.filterState.meetsLocalSearchesMinFilter = !this.project.localSearchesEnabled || !this.project.localSearchesFilterMin || param1.localSearches >= this.project.localSearchesFilterMin;
         }
         else
         {
            _loc2_ = KeywordUtil.getSearchRangeValues(param1.localSearchesRange);
            param1.filterState.meetsLocalSearchesMinFilter = !this.project.localSearchesEnabled || !this.project.localSearchesFilterMin || §§pop() <= §§pop()[§§pop()];
         }
      }
      
      private final function checkLocalSearchMax(param1:KeywordVO) : void
      {
         var _loc2_:Array = null;
         if(!param1.isGoogleRestrictedSearches)
         {
            param1.filterState.meetsLocalSearchesMaxFilter = !this.project.localSearchesEnabled || !this.project.localSearchesFilterMax || param1.localSearches <= this.project.localSearchesFilterMax;
         }
         else
         {
            _loc2_ = KeywordUtil.getSearchRangeValues(param1.localSearchesRange);
            param1.filterState.meetsLocalSearchesMaxFilter = !this.project.localSearchesEnabled || !this.project.localSearchesFilterMax || §§pop() >= §§pop()[§§pop()];
         }
      }
      
      private final function checkGlobalSearchMin(param1:KeywordVO) : void
      {
         var _loc2_:Array = null;
         if(!param1.isGoogleRestrictedSearches)
         {
            param1.filterState.meetsGlobalSearchesMinFilter = !this.project.globalSearchesEnabled || !this.project.globalSearchesFilterMin || param1.globalSearches >= this.project.globalSearchesFilterMin;
         }
         else if(!param1.globalSearchesRange.length)
         {
            param1.filterState.meetsGlobalSearchesMinFilter = !this.project.globalSearchesEnabled || !this.project.globalSearchesFilterMin || this.project.globalSearchesFilterMin <= int(param1.globalSearchesRange);
         }
         else
         {
            _loc2_ = KeywordUtil.getSearchRangeValues(param1.globalSearchesRange);
            param1.filterState.meetsGlobalSearchesMinFilter = !this.project.globalSearchesEnabled || !this.project.globalSearchesFilterMin || §§pop() <= §§pop()[§§pop()];
         }
      }
      
      private final function checkGlobalSearchMax(param1:KeywordVO) : void
      {
         var _loc2_:Array = null;
         if(!param1.isGoogleRestrictedSearches)
         {
            param1.filterState.meetsGlobalSearchesMaxFilter = !this.project.globalSearchesEnabled || !this.project.globalSearchesFilterMax || param1.globalSearches <= this.project.globalSearchesFilterMax;
         }
         else if(!param1.globalSearchesRange.length)
         {
            param1.filterState.meetsGlobalSearchesMaxFilter = !this.project.globalSearchesEnabled || !this.project.globalSearchesFilterMax || this.project.globalSearchesFilterMax <= int(param1.globalSearchesRange);
         }
         else
         {
            _loc2_ = KeywordUtil.getSearchRangeValues(param1.globalSearchesRange);
            param1.filterState.meetsGlobalSearchesMaxFilter = !this.project.globalSearchesEnabled || !this.project.globalSearchesFilterMax || §§pop() >= §§pop()[§§pop()];
         }
      }
      
      private final function checkSuggestedBidMin(param1:KeywordVO) : void
      {
         param1.filterState.meetsSuggestedBidMinFilter = !this.project.suggestedBidEnabled || !this.project.suggestedBidFilterMin || param1.suggestedBid >= this.project.suggestedBidFilterMin;
      }
      
      private final function checkSuggestedBidMax(param1:KeywordVO) : void
      {
         param1.filterState.meetsSuggestedBidMaxFilter = !this.project.suggestedBidEnabled || !this.project.suggestedBidFilterMax || param1.suggestedBid <= this.project.suggestedBidFilterMax;
      }
      
      private final function checkNumWordsMin(param1:KeywordVO) : void
      {
         param1.filterState.meetsNumWordsMinFilter = !this.project.numWordsEnabled || !this.project.numWordsFilterMin || param1.numWords >= this.project.numWordsFilterMin;
      }
      
      private final function checkNumWordsMax(param1:KeywordVO) : void
      {
         param1.filterState.meetsNumWordsMaxFilter = !this.project.numWordsEnabled || !this.project.numWordsFilterMax || param1.numWords <= this.project.numWordsFilterMax;
      }
      
      private final function checkGoogleTitleCompMin(param1:KeywordVO) : void
      {
         param1.filterState.meetsGoogleTitleCompMinFilter = !this.project.googleTitleCompEnabled || !this.project.googleTitleCompFilterMin || param1.googleTitleCompetition >= this.project.googleTitleCompFilterMin;
      }
      
      private final function checkGoogleTitleCompMax(param1:KeywordVO) : void
      {
         param1.filterState.meetsGoogleTitleCompMaxFilter = !this.project.googleTitleCompEnabled || !this.project.googleTitleCompFilterMax || param1.googleTitleCompetition <= this.project.googleTitleCompFilterMax;
      }
      
      private final function checkBingTitleCompMin(param1:KeywordVO) : void
      {
         param1.filterState.meetsBingTitleCompMinFilter = !this.project.bingTitleCompEnabled || !this.project.bingTitleCompFilterMin || param1.bingTitleCompetition >= this.project.bingTitleCompFilterMin;
      }
      
      private final function checkBingTitleCompMax(param1:KeywordVO) : void
      {
         param1.filterState.meetsBingTitleCompMaxFilter = !this.project.bingTitleCompEnabled || !this.project.bingTitleCompFilterMax || param1.bingTitleCompetition <= this.project.bingTitleCompFilterMax;
      }
      
      private final function checkAvgKCMin(param1:KeywordVO) : void
      {
         param1.filterState.meetsAvgKCMinFilter = !this.project.avgKCFilterMin || param1.avgKC >= this.project.avgKCFilterMin;
      }
      
      private final function checkAvgKCMax(param1:KeywordVO) : void
      {
         param1.filterState.meetsAvgKCMaxFilter = !this.project.avgKCFilterMax || param1.avgKC <= this.project.avgKCFilterMax;
      }
      
      private final function checkAmazonKCMin(param1:KeywordVO) : void
      {
         param1.filterState.meetsAmazonKCMinFilter = !this.project.amazonKCFilterMin || param1.amazonKC >= this.project.amazonKCFilterMin;
      }
      
      private final function checkAmazonKCMax(param1:KeywordVO) : void
      {
         param1.filterState.meetsAmazonKCMaxFilter = !this.project.amazonKCFilterMax || param1.amazonKC <= this.project.amazonKCFilterMax;
      }
      
      private final function checkAdvertiserCompetition(param1:KeywordVO) : void
      {
         param1.filterState.meetsAdvertiserCompetitionFilter = !this.project.advertiserCompEnabled || this.project.advertiserCompFilterLow && this.project.advertiserCompFilterMed && this.project.advertiserCompFilterHigh || this.project.advertiserCompFilterLow && param1.advertiserCompetition == AdvertiserCompetitionValues.LOW || this.project.advertiserCompFilterMed && param1.advertiserCompetition == AdvertiserCompetitionValues.MEDIUM || this.project.advertiserCompFilterHigh && param1.advertiserCompetition == AdvertiserCompetitionValues.HIGH;
      }
      
      private final function checkBothDomainAvailability(param1:KeywordVO) : void
      {
         this.checkExactDomainAvailability(param1);
         this.checkHyphenatedDomainAvailability(param1);
      }
      
      private final function checkExactDomainAvailability(param1:KeywordVO) : void
      {
         param1.domainsExact.checkHasMissingData(this.project.domainsExactMatchExtensions.selectedExtensions);
         param1.filterState.meetsHasExactDomainFilter = !this.project.domainsEnabled || !this.project.domainsHasAvailableFilter || param1.domainsExact.hasAvailableDomain(this.project.domainsExactMatchExtensions.selectedExtensions);
      }
      
      private final function checkHyphenatedDomainAvailability(param1:KeywordVO) : void
      {
         param1.domainsHyphenated.checkHasMissingData(this.project.domainsHyphenatedExtensions.selectedExtensions);
         param1.filterState.meetsHasHyphenatedDomainFilter = !this.project.domainsEnabled || !this.project.domainsHasAvailableFilter || param1.domainsHyphenated.hasAvailableDomain(this.project.domainsHyphenatedExtensions.selectedExtensions);
      }
      
      private final function checkMeetsAllFilters(param1:KeywordVO) : void
      {
         param1.filterState.meetsAllFilters = param1.filterState.meetsSuggestedBidMinFilter && param1.filterState.meetsSuggestedBidMaxFilter && param1.filterState.meetsLocalSearchesMinFilter && param1.filterState.meetsLocalSearchesMaxFilter && param1.filterState.meetsGlobalSearchesMinFilter && param1.filterState.meetsGlobalSearchesMaxFilter && param1.filterState.meetsNumWordsMinFilter && param1.filterState.meetsNumWordsMaxFilter && param1.filterState.meetsGoogleTitleCompMinFilter && param1.filterState.meetsGoogleTitleCompMaxFilter && param1.filterState.meetsBingTitleCompMinFilter && param1.filterState.meetsBingTitleCompMaxFilter && param1.filterState.meetsAvgKCMinFilter && param1.filterState.meetsAvgKCMaxFilter && param1.filterState.meetsAmazonKCMinFilter && param1.filterState.meetsAmazonKCMaxFilter && param1.filterState.meetsAdvertiserCompetitionFilter && (param1.filterState.meetsHasExactDomainFilter || param1.filterState.meetsHasHyphenatedDomainFilter) && param1.filterState.meetsKeywordFilter && param1.filterState.meetsProjectFilter && param1.filterState.meetsSpecialFilter;
      }
      
      private final function addCheckFunction(param1:Function) : void
      {
         if(!this._checkFunctions.contains(param1))
         {
            this._checkFunctions.addItem(param1);
         }
      }
      
      private final function matchKeyword(param1:ProjectVO, param2:String) : Boolean
      {
         param2 = param2.toLowerCase();
         var _loc3_:String = "";
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 73 + 94 + 1 - 1 - 1 - 1);
         }
         for each(_loc3_ in param1.unMatchStrings)
         {
            §§push(param2.indexOf(_loc3_));
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() + 1 + 32 + 1) * 63 + 1 + 13 - 1);
            }
            if(§§pop() == §§pop() || §§pop() != §§pop() || §§pop().charAt(§§pop()) == "[" && §§pop() == §§pop())
            {
               return false;
            }
         }
         §§push(param1.matchStrings.length);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-(-§§pop() + 48 + 106) + 56) + 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() - 72 - 2 + 105 + 109) + 103 + 1);
            }
            for each(_loc3_ in param1.matchStrings)
            {
               §§push(param2.indexOf(_loc3_));
               §§push(0);
               if(_loc7_)
               {
                  §§push(-§§pop() + 1 + 1);
               }
               if(§§pop() == §§pop() || §§pop() != §§pop() || §§pop().charAt(§§pop()) == "[" && §§pop() == §§pop())
               {
                  return true;
               }
            }
            return false;
         }
         return true;
      }
      
      private final function matchProject(param1:String, param2:String) : Boolean
      {
         if(!param2 || param2 == null)
         {
            return false;
         }
         param2 = param2.toLowerCase();
         param1 = param1.toLowerCase();
         §§push(param2.indexOf(param1));
         §§push(0);
         if(_loc4_)
         {
            §§push(-((§§pop() + 1) * 47 - 1) + 70 + 1);
         }
         if(§§pop() == §§pop() || §§pop() != §§pop())
         {
            return true;
         }
         return false;
      }
      
      public final function cleanKeywords() : com.enfluid.ltp.util.KeywordArrayCollection
      {
         var _loc5_:KeywordVO = null;
         var _loc6_:String = null;
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         §§push(0);
         if(_loc8_)
         {
            §§push(---(§§pop() + 1 + 1) - 119);
         }
         var _loc3_:uint = §§pop();
         while(_loc3_ < source.length)
         {
            _loc5_ = source[_loc3_];
            _loc6_ = StringUtil.trim(_loc5_.keyword).toLowerCase();
            §§push(_loc1_.indexOf(_loc6_));
            §§push(-1);
            if(_loc8_)
            {
               §§push(--(§§pop() - 1 - 1 + 40) * 48);
            }
            if(§§pop() > §§pop())
            {
               _loc2_.push(_loc5_);
            }
            _loc1_.push(_loc6_);
            _loc3_++;
         }
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-§§pop() - 34 - 61 - 1));
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < _loc2_.length)
         {
            this.removeItem(_loc2_[_loc4_]);
            _loc4_++;
         }
         this.refresh();
         return this;
      }
      
      [Bindable(event="propertyChange")]
      public function get project() : ProjectVO
      {
         return this._309310695project;
      }
      
      public function set project(param1:ProjectVO) : void
      {
         var _loc2_:Object = this._309310695project;
         if(_loc2_ !== param1)
         {
            this._309310695project = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"project",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalCount() : int
      {
         return this._731385813totalCount;
      }
      
      public function set totalCount(param1:int) : void
      {
         var _loc2_:Object = this._731385813totalCount;
         if(_loc2_ !== param1)
         {
            this._731385813totalCount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalCount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get missingBingTitleCompCount() : int
      {
         return this._1890473006missingBingTitleCompCount;
      }
      
      public function set missingBingTitleCompCount(param1:int) : void
      {
         var _loc2_:Object = this._1890473006missingBingTitleCompCount;
         if(_loc2_ !== param1)
         {
            this._1890473006missingBingTitleCompCount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"missingBingTitleCompCount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get missingGoogleTitleCompCount() : int
      {
         return this._2065023769missingGoogleTitleCompCount;
      }
      
      public function set missingGoogleTitleCompCount(param1:int) : void
      {
         var _loc2_:Object = this._2065023769missingGoogleTitleCompCount;
         if(_loc2_ !== param1)
         {
            this._2065023769missingGoogleTitleCompCount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"missingGoogleTitleCompCount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get missingDomainAvailabilityCount() : int
      {
         return this._353199158missingDomainAvailabilityCount;
      }
      
      public function set missingDomainAvailabilityCount(param1:int) : void
      {
         var _loc2_:Object = this._353199158missingDomainAvailabilityCount;
         if(_loc2_ !== param1)
         {
            this._353199158missingDomainAvailabilityCount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"missingDomainAvailabilityCount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get missingAvgKCCount() : int
      {
         return this._622405237missingAvgKCCount;
      }
      
      public function set missingAvgKCCount(param1:int) : void
      {
         var _loc2_:Object = this._622405237missingAvgKCCount;
         if(_loc2_ !== param1)
         {
            this._622405237missingAvgKCCount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"missingAvgKCCount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get missingAmazonKCCount() : int
      {
         return this._329449549missingAmazonKCCount;
      }
      
      public function set missingAmazonKCCount(param1:int) : void
      {
         var _loc2_:Object = this._329449549missingAmazonKCCount;
         if(_loc2_ !== param1)
         {
            this._329449549missingAmazonKCCount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"missingAmazonKCCount",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get missingGlobalSearchesCount() : int
      {
         return this._1244136400missingGlobalSearchesCount;
      }
      
      public function set missingGlobalSearchesCount(param1:int) : void
      {
         var _loc2_:Object = this._1244136400missingGlobalSearchesCount;
         if(_loc2_ !== param1)
         {
            this._1244136400missingGlobalSearchesCount = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"missingGlobalSearchesCount",_loc2_,param1));
            }
         }
      }
   }
}
