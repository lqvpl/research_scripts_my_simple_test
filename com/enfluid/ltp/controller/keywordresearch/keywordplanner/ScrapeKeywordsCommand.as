package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.TextUtil;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.util.Util;
   
   public final class ScrapeKeywordsCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var isUsersOwnKeywordsQuickAdd:Boolean;
      
      private var isAdwordsRestrictedSearches:Boolean = false;
      
      private var _keywordsTable;
      
      private var waitingForKeywordsCount:int = 0;
      
      private var _nextButton;
      
      private var _prevButton;
      
      private var _searchTermsTable;
      
      private var allTables:Array;
      
      private var fetchGlobalSearchVolume:Boolean;
      
      private var isFirst:Boolean = true;
      
      private var alreadyOutputLog:Boolean = false;
      
      public function ScrapeKeywordsCommand(param1:Boolean = false, param2:Boolean = false)
      {
         this.fetchGlobalSearchVolume = param1;
         this.isUsersOwnKeywordsQuickAdd = param2;
         super();
      }
      
      private function get keywordsTable() : *
      {
         if(!this._keywordsTable)
         {
            this.reEvaluateKeywordsTable();
         }
         return this._keywordsTable;
      }
      
      private function get nextButton() : *
      {
         var _loc1_:Array = null;
         if(!this._nextButton)
         {
            _loc1_ = scraper.getAllElementsWithID("div","gwt-debug-idea-paging-next");
            this._nextButton = this.findButtonUnderSectionWithText("Keyword (by relevance)",_loc1_);
         }
         return this._nextButton;
      }
      
      private function get prevButton() : *
      {
         var _loc1_:Array = null;
         if(!this._prevButton)
         {
            _loc1_ = scraper.getAllElementsWithID("div","gwt-debug-idea-paging-previous");
            this._prevButton = this.findButtonUnderSectionWithText("Keyword (by relevance)",_loc1_);
         }
         return this._prevButton;
      }
      
      private function get searchTermsTable() : *
      {
         var _loc1_:* = undefined;
         if(!this._searchTermsTable)
         {
            _loc1_ = scraper.getAllElementsContainingInnerText("table","Search terms");
            if(_loc1_.length == 0)
            {
               _loc1_ = scraper.getAllElementsContainingInnerText("table","Search Terms");
            }
            this._searchTermsTable = _loc1_[1];
         }
         return this._searchTermsTable;
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount("Getting Results");
         §§push();
         §§push(this.checkDataReady);
         §§push(1000);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 47 * 9 + 82 + 52 + 1);
         }
         §§pop().callDelayed(§§pop(),§§pop());
      }
      
      private final function reEvaluateKeywordsTable() : void
      {
         this._keywordsTable = scraper.getVisibleDataElementContainingInnerText("table","Keyword (by relevance)");
      }
      
      private final function checkForMoreKeyords() : void
      {
         if(this.isButtonEnabled(this.nextButton))
         {
            scraper.click(this.nextButton.firstChild);
            callDelayed(this.parseKeywords);
         }
         else
         {
            §§push();
            §§push(this.done);
            §§push(1000);
            if(_loc1_)
            {
               §§push(-((§§pop() + 1) * 27) * 4 * 111 - 89 + 42);
            }
            §§pop().callDelayed(§§pop(),§§pop());
         }
      }
      
      private final function checkDataReady() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(scraper.hasTextOnPage("There was a problem retrieving ideas, please try again."))
         {
            _loc1_ = scraper.getVisibleElementContainingInnerText("span","Get search volume");
            if(_loc1_)
            {
               scraper.click(_loc1_);
            }
            else
            {
               _loc2_ = scraper.getVisibleElementContainingInnerText("span","Get ideas");
               if(_loc2_)
               {
                  scraper.click(_loc2_);
               }
            }
            §§push();
            §§push(this.checkDataReady);
            §§push(1000);
            if(_loc6_)
            {
               §§push(-((§§pop() * 3 - 1 + 63 - 1) * 87) + 1);
            }
            §§pop().callDelayed(§§pop(),§§pop());
            return;
         }
         if(!this.keywordsTable && !this.searchTermsTable)
         {
            Logger.log("keywordsTable not found");
            callDelayed(this.checkDataReady);
            return;
         }
         if(this.keywordsTable && §§pop() == §§pop() && this.searchTermsTable && §§pop() == §§pop())
         {
            Logger.log("all table rows empty:  reEvaluating the Keywords Table reference");
            this.reEvaluateKeywordsTable();
            callDelayed(this.checkDataReady);
            return;
         }
         this.parseTable(this.searchTermsTable);
         if(this.keywordsTable)
         {
            this.parseKeywords();
         }
         else
         {
            this.waitingForKeywordsCount++;
            §§push(this.waitingForKeywordsCount);
            §§push(20);
            if(_loc5_)
            {
               §§push((§§pop() + 63 + 31) * 95 - 18 + 45 - 1 - 80);
            }
            if(§§pop() <= §§pop())
            {
               §§push();
               §§push(this.checkDataReady);
               §§push(1000);
               if(_loc6_)
               {
                  §§push(§§pop() - 40 + 55 + 16 - 29 + 17 - 1);
               }
               §§pop().callDelayed(§§pop(),§§pop());
               return;
            }
            this.done();
         }
      }
      
      private final function findButtonUnderSectionWithText(param1:String, param2:Array) : *
      {
         var _loc3_:* = undefined;
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 1 + 34 + 105);
         }
         for each(_loc3_ in param2)
         {
            try
            {
               §§push(_loc3_.parentNode.parentNode.parentNode.parentNode.innerText.indexOf(param1));
               §§push(0);
               if(_loc7_)
               {
                  §§push((-(§§pop() - 1) - 82 - 104) * 3 + 1 - 38);
               }
               if(§§pop() >= §§pop())
               {
                  return _loc3_;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         return null;
      }
      
      private final function isButtonEnabled(param1:*) : Boolean
      {
         §§push(param1.outerHTML.indexOf("aria-disabled=\"false\""));
         §§push(0);
         if(_loc2_)
         {
            §§push((--(§§pop() * 60) * 68 - 51) * 25);
         }
         if(§§pop() >= §§pop())
         {
            return true;
         }
         return false;
      }
      
      private final function parseKeywords() : void
      {
         this.parseTable(this.keywordsTable);
         this.checkForMoreKeyords();
      }
      
      private final function parseTable(param1:*) : void
      {
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:Array = null;
         var _loc11_:Boolean = false;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         §§push(0);
         if(_loc28_)
         {
            §§push(-§§pop() - 42 + 1 - 1);
         }
         var _loc15_:* = §§pop();
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc18_:Array = null;
         var _loc19_:KeywordVO = null;
         var _loc20_:Array = null;
         var _loc21_:KeywordVO = null;
         var _loc22_:KeywordVO = null;
         var _loc2_:Array = [];
         §§push(param1.tBodies);
         §§push(0);
         if(_loc27_)
         {
            §§push((-§§pop() - 99) * 48 + 1);
         }
         var _loc3_:* = §§pop()[§§pop()];
         var _loc4_:Boolean = false;
         §§push(param1.innerText.indexOf("Competition"));
         §§push(0);
         if(_loc28_)
         {
            §§push(§§pop() + 77 + 1 + 115 - 1);
         }
         if(§§pop() < §§pop() && §§pop() < §§pop())
         {
            _loc4_ = true;
            _loc8_ = param1.nextSibling.firstChild.firstChild;
            §§push(_loc8_.tBodies);
            §§push(0);
            if(_loc27_)
            {
               §§push(-(-§§pop() + 79 + 1) - 1);
            }
            _loc9_ = §§pop()[§§pop()];
         }
         var _loc5_:Boolean = true;
         §§push(0);
         if(_loc27_)
         {
            §§push((-(§§pop() + 1 - 47 - 1) + 110) * 13 - 94);
         }
         var _loc6_:* = §§pop();
         §§push(_loc3_.rows.length);
         §§push(0);
         if(_loc28_)
         {
            §§push(-(-(-§§pop() + 1 + 52) - 1));
         }
         if(§§pop() == §§pop() && param1.id != "gwt-debug-leftTable" && !this.alreadyOutputLog)
         {
            Logger.log("======================================================");
            Logger.log("========= PLEASE SEND THIS LOG TO SUPPORT    =========");
            Logger.log("======================================================");
            Logger.log("We can find any rows in the keywords table");
            Logger.log("The keywords table we are looking at is: " + param1.id);
            Logger.log("Project Details:");
            Logger.log("Country: " + model.selectedProject.countryCode);
            Logger.log("Language: " + model.selectedProject.languageCode);
            Logger.log("Keyword: " + model.currentSeedKeyword.keyword);
            this.alreadyOutputLog = true;
         }
         §§push(0);
         if(_loc27_)
         {
            §§push(§§pop() + 11 + 88 - 1);
         }
         for each(_loc7_ in _loc3_.rows)
         {
            try
            {
               _loc10_ = [];
               _loc11_ = false;
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc27_)
                  {
                     §§push(-(§§pop() - 21 - 41 + 65) + 56);
                  }
                  for each(_loc16_ in _loc7_.childNodes)
                  {
                     _loc10_.push(_loc16_);
                  }
               }
               else
               {
                  §§push(_loc10_);
                  §§push(_loc7_.childNodes);
                  §§push(0);
                  if(_loc28_)
                  {
                     §§push(-(§§pop() + 35 + 1 + 1 + 70));
                  }
                  §§pop().push(§§pop()[§§pop()]);
                  _loc17_ = _loc9_.rows[_loc6_];
                  _loc6_++;
                  §§push(0);
                  if(_loc28_)
                  {
                     §§push(§§pop() * 113 + 1 + 102);
                  }
                  for each(_loc16_ in _loc17_.childNodes)
                  {
                     _loc10_.push(_loc16_);
                  }
               }
               §§push(TextUtil);
               §§push(_loc10_);
               §§push(0);
               if(_loc28_)
               {
                  §§push((§§pop() + 1 + 1 + 1 - 1 - 95) * 20);
               }
               _loc12_ = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
               _loc12_ = KeywordUtil.stripBeginningAndEndingSpaces(_loc12_);
               §§push(TextUtil);
               §§push(_loc10_);
               §§push(1);
               if(_loc28_)
               {
                  §§push((-(-§§pop() - 10 - 100 + 1) + 1) * 11);
               }
               _loc13_ = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
               _loc14_ = "";
               §§push(_loc13_.length);
               §§push(1);
               if(_loc27_)
               {
                  §§push(-((-§§pop() - 1 + 48 + 1) * 83 - 10));
               }
               if(§§pop() > §§pop() && (§§pop() != §§pop() || §§pop() != §§pop()))
               {
                  _loc14_ = _loc13_;
                  _loc13_ = "0";
                  _loc11_ = true;
                  this.isAdwordsRestrictedSearches = true;
               }
               _loc15_ = int(int(KeywordUtil.removeNonNumericChars(_loc13_)));
               if(this.fetchGlobalSearchVolume)
               {
                  _loc18_ = Util.findKeywordVOs(_loc12_,model.selectedProject.keywords);
                  §§push(0);
                  if(_loc28_)
                  {
                     §§push(§§pop() + 25 + 27 + 1);
                  }
                  for each(_loc19_ in _loc18_)
                  {
                     _loc19_.globalSearches = _loc15_;
                     _loc19_.globalSearchesRange = _loc14_;
                     _loc19_.save();
                  }
               }
               else if(this.isUsersOwnKeywordsQuickAdd)
               {
                  _loc20_ = Util.findKeywordVOs(_loc12_,model.selectedProject.keywords);
                  §§push(0);
                  if(_loc27_)
                  {
                     §§push((-§§pop() - 95) * 90);
                  }
                  for each(_loc21_ in _loc20_)
                  {
                     _loc21_.localSearches = _loc15_;
                     _loc21_.localSearchesRange = _loc14_;
                     §§push(_loc21_);
                     §§push(TextUtil);
                     §§push(_loc10_);
                     §§push(2);
                     if(_loc27_)
                     {
                        §§push(§§pop() - 30 - 1 - 5 + 46 + 27 - 43);
                     }
                     §§pop().advertiserCompetition = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
                     §§push(_loc21_);
                     §§push(TextUtil);
                     §§push(_loc10_);
                     §§push(3);
                     if(_loc27_)
                     {
                        §§push(-§§pop() * 46 + 40);
                     }
                     §§pop().suggestedBidString = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
                     _loc21_.suggestedBid = Number(KeywordUtil.removeNonNumericChars(_loc21_.suggestedBidString));
                     _loc21_.save();
                  }
               }
               else
               {
                  _loc22_ = new KeywordVO();
                  _loc22_.keyword = _loc12_;
                  _loc22_.localSearches = _loc15_;
                  _loc22_.localSearchesRange = _loc14_;
                  §§push(_loc22_);
                  §§push(TextUtil);
                  §§push(_loc10_);
                  §§push(2);
                  if(_loc28_)
                  {
                     §§push(-§§pop() - 1 + 67);
                  }
                  §§pop().advertiserCompetition = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
                  §§push(_loc22_);
                  §§push(TextUtil);
                  §§push(_loc10_);
                  §§push(3);
                  if(_loc28_)
                  {
                     §§push(-((§§pop() + 1) * 29 + 14 - 70 + 76 - 1));
                  }
                  §§pop().suggestedBidString = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
                  _loc22_.suggestedBid = Number(KeywordUtil.removeNonNumericChars(_loc22_.suggestedBidString));
                  _loc22_.project = model.selectedProject;
                  _loc22_.seedKeyword = model.currentSeedKeyword;
                  _loc22_.isGoogleRestrictedSearches = _loc11_;
                  if(model.currentSeedKeyword)
                  {
                     model.currentSeedKeyword.keywords.addItem(_loc22_);
                  }
                  else
                  {
                     model.selectedProject.ownKeywords.addItem(_loc22_);
                  }
                  model.selectedProject.keywords.addItem(_loc22_);
                  _loc22_.source = "majestic";
                  _loc22_.save();
                  _loc22_.projectID = model.selectedProject.id;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         if(model.currentSeedKeyword)
         {
            model.currentSeedKeyword.save();
         }
         model.selectedKeywordCollection.updateCounts();
      }
      
      override protected function done(param1:String = "success") : void
      {
         model.selectedKeywordCollection.cleanKeywords();
         if(this.isAdwordsRestrictedSearches)
         {
            viewModel.AdwordsRestricted = true;
         }
         super.done(param1);
      }
   }
}
