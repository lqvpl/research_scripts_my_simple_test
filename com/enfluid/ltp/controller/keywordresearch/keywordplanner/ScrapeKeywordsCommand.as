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
       
      
      private var _keywordsTable;
      
      private var waitingForKeywordsCount:int = 0;
      
      private var _nextButton;
      
      private var _prevButton;
      
      private var _searchTermsTable;
      
      private var allTables:Array;
      
      private var fetchGlobalSearchVolume:Boolean;
      
      private var isFirst:Boolean = true;
      
      public function ScrapeKeywordsCommand(param1:Boolean = false)
      {
         this.fetchGlobalSearchVolume = param1;
         super();
      }
      
      private function get keywordsTable() : *
      {
         if(!this._keywordsTable)
         {
            this._keywordsTable = scraper.getVisibleElementContainingInnerText("table","Keyword (by relevance)");
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
         if(_loc1_)
         {
            §§push(-(-(§§pop() + 1) + 1 - 1) + 95);
         }
         §§pop().callDelayed(§§pop(),§§pop());
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
            §§push(done);
            §§push(1000);
            if(_loc1_)
            {
               §§push(§§pop() + 1 - 1 + 39 + 32 + 1);
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
            if(_loc5_)
            {
               §§push((§§pop() + 1 + 1) * 69 * 110 - 76 + 1 + 1);
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
            if(_loc6_)
            {
               §§push((-(§§pop() - 1) + 1 + 18) * 0 - 78);
            }
            if(§§pop() <= §§pop())
            {
               §§push();
               §§push(this.checkDataReady);
               §§push(1000);
               if(_loc6_)
               {
                  §§push((§§pop() - 1 + 1 + 1) * 76 - 1 - 63 + 55);
               }
               §§pop().callDelayed(§§pop(),§§pop());
               return;
            }
            done();
         }
      }
      
      private final function findButtonUnderSectionWithText(param1:String, param2:Array) : *
      {
         var _loc3_:* = undefined;
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 69 + 1 - 10 + 1) * 4 + 1);
         }
         for each(_loc3_ in param2)
         {
            try
            {
               §§push(_loc3_.parentNode.parentNode.parentNode.parentNode.innerText.indexOf(param1));
               §§push(0);
               if(_loc7_)
               {
                  §§push(-(§§pop() - 1) + 1);
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
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 54 - 38) + 1);
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
         var _loc11_:String = null;
         var _loc12_:Boolean = false;
         var _loc13_:KeywordVO = null;
         var _loc14_:String = null;
         §§push(0);
         if(_loc23_)
         {
            §§push((§§pop() - 1) * 66 - 1 - 67);
         }
         var _loc15_:* = §§pop();
         var _loc16_:* = undefined;
         var _loc17_:* = undefined;
         var _loc2_:Array = [];
         §§push(param1.tBodies);
         §§push(0);
         if(_loc22_)
         {
            §§push(-(§§pop() - 1 - 1 - 1) - 1 + 1 - 1);
         }
         var _loc3_:* = §§pop()[§§pop()];
         var _loc4_:Boolean = false;
         §§push(param1.innerText.indexOf("Competition"));
         §§push(0);
         if(_loc22_)
         {
            §§push(-§§pop() - 22 - 5 - 117 - 1);
         }
         if(§§pop() < §§pop() && §§pop() < §§pop())
         {
            _loc4_ = true;
            _loc8_ = param1.nextSibling.firstChild.firstChild;
            §§push(_loc8_.tBodies);
            §§push(0);
            if(_loc22_)
            {
               §§push(((§§pop() - 117) * 97 - 1) * 81);
            }
            _loc9_ = §§pop()[§§pop()];
         }
         var _loc5_:Boolean = true;
         §§push(0);
         if(_loc22_)
         {
            §§push(-(§§pop() * 108) + 1 + 63 + 60 - 89);
         }
         var _loc6_:* = §§pop();
         §§push(0);
         if(_loc22_)
         {
            §§push(-((-§§pop() + 1) * 12 - 1));
         }
         for each(_loc7_ in _loc3_.rows)
         {
            try
            {
               _loc10_ = [];
               if(!_loc4_)
               {
                  §§push(0);
                  if(_loc22_)
                  {
                     §§push(-(§§pop() + 1) + 41);
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
                  if(_loc22_)
                  {
                     §§push(§§pop() + 38 + 1 - 1);
                  }
                  §§pop().push(§§pop()[§§pop()]);
                  _loc17_ = _loc9_.rows[_loc6_];
                  _loc6_++;
                  §§push(0);
                  if(_loc23_)
                  {
                     §§push(-((§§pop() - 97) * 32 - 1) - 17 - 1 - 1);
                  }
                  for each(_loc16_ in _loc17_.childNodes)
                  {
                     _loc10_.push(_loc16_);
                  }
               }
               §§push(TextUtil);
               §§push(_loc10_);
               §§push(0);
               if(_loc23_)
               {
                  §§push(§§pop() + 1 + 1 - 60 - 103);
               }
               _loc11_ = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
               _loc11_ = KeywordUtil.stripBeginningAndEndingSpaces(_loc11_);
               _loc12_ = false;
               _loc13_ = Util.findKeywordVO(_loc11_,model.selectedProject.keywords);
               if(!_loc13_)
               {
                  _loc12_ = true;
                  _loc13_ = new KeywordVO();
               }
               §§push(TextUtil);
               §§push(_loc10_);
               §§push(1);
               if(_loc23_)
               {
                  §§push((-§§pop() - 65) * 26 + 3 + 109);
               }
               _loc14_ = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
               _loc15_ = int(int(KeywordUtil.removeNonNumericChars(_loc14_)));
               if(this.fetchGlobalSearchVolume)
               {
                  _loc13_.globalSearches = _loc15_;
                  _loc13_.save();
               }
               else
               {
                  _loc13_.keyword = _loc11_;
                  _loc13_.localSearches = _loc15_;
                  §§push(_loc13_);
                  §§push(TextUtil);
                  §§push(_loc10_);
                  §§push(2);
                  if(_loc22_)
                  {
                     §§push((§§pop() - 1 - 1 + 1) * 84 - 1 - 1 + 81);
                  }
                  §§pop().advertiserCompetition = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
                  §§push(_loc13_);
                  §§push(TextUtil);
                  §§push(_loc10_);
                  §§push(3);
                  if(_loc23_)
                  {
                     §§push(§§pop() + 1 - 76 - 1 + 46 - 48);
                  }
                  §§pop().suggestedBidString = §§pop().stripLineBreaks(§§pop()[§§pop()].innerText);
                  _loc13_.suggestedBid = Number(KeywordUtil.removeNonNumericChars(_loc13_.suggestedBidString));
                  if(_loc12_)
                  {
                     _loc13_.project = model.selectedProject;
                     _loc13_.seedKeyword = model.currentSeedKeyword;
                     if(model.currentSeedKeyword)
                     {
                        model.currentSeedKeyword.keywords.addItem(_loc13_);
                     }
                     else
                     {
                        model.selectedProject.ownKeywords.addItem(_loc13_);
                     }
                     model.selectedProject.keywords.addItem(_loc13_);
                  }
                  _loc13_.save();
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
      }
   }
}
