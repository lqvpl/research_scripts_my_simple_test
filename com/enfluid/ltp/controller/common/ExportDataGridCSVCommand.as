package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import mx.collections.IList;
   import flash.filesystem.File;
   import mx.collections.XMLListCollection;
   import mx.controls.Alert;
   import spark.components.gridClasses.GridColumn;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.util.CSV;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.FileSystemOperations;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   import mx.graphics.SolidColor;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class ExportDataGridCSVCommand extends Command implements IPhotonCommand
   {
       
      
      private var exportType:String;
      
      private var exportData:IList;
      
      private var fileName:String;
      
      private var file:File;
      
      private var domainsFetched:Array;
      
      private var domainsList:Array;
      
      private var cnf:CurrencyAndNumberFormatter;
      
      public function ExportDataGridCSVCommand(param1:IList, param2:String, param3:String = "")
      {
         this.domainsFetched = [];
         this.domainsList = ["com","net","org","co","info","ca","co.uk","com.au","de","nl","dk"];
         this.cnf = new CurrencyAndNumberFormatter();
         super();
         this.exportData = param1;
         this.fileName = param2;
         this.exportType = param3;
      }
      
      public function execute() : void
      {
         if(this.exportData && §§pop() > §§pop())
         {
            this.prepareFileAndExportData();
         }
         else
         {
            Alert.okLabel = "OK";
            §§push(Alert);
            §§push(130);
            if(_loc1_)
            {
               §§push(-(§§pop() - 87 - 78 + 1) * 18);
            }
            §§pop().buttonWidth = §§pop();
            §§push(Alert);
            §§push(30);
            if(_loc2_)
            {
               §§push(--(-(§§pop() * 49) - 1 + 1));
            }
            §§pop().buttonHeight = §§pop();
            Alert.show("There are no results to store!");
         }
      }
      
      private final function prepareFileAndExportData() : void
      {
         var _loc3_:KeywordVO = null;
         var _loc4_:Array = null;
         var _loc5_:CompetitorUrlVO = null;
         var _loc6_:Array = null;
         var _loc7_:RankCheckItemVO = null;
         var _loc8_:Array = null;
         var _loc1_:CSV = new CSV();
         _loc1_.headerOverwrite = true;
         _loc1_.fieldSeperator = ",";
         _loc1_.recordsetDelimiter = "\n";
         _loc1_.fieldEnclosureToken = "\"";
         if(this.exportData is KeywordArrayCollection)
         {
            _loc1_.header = this.getHeaders();
            §§push(0);
            if(_loc12_)
            {
               §§push(§§pop() + 1 - 1 + 1 + 82 - 1 - 2);
            }
            for each(_loc3_ in this.exportData)
            {
               _loc4_ = [];
               _loc4_ = this.getRecordSet(_loc3_);
               _loc1_.addRecordSet(_loc4_);
            }
         }
         else if(this.exportData is ArrayCollection)
         {
            if(this.exportType == Constants.COMPETITOR)
            {
               _loc1_.header = ["Title","URL","KC-Keyword","PA-Page Authority","PL-Page Links","JPL-Juice Page Link","DA-Domain Authority","MR-MOZ Rank","PR-Page Rank","SA-Site Age"];
               §§push(0);
               if(_loc11_)
               {
                  §§push((§§pop() - 57 - 1) * 34 + 1 - 1);
               }
               for each(_loc5_ in this.exportData)
               {
                  _loc6_ = [];
                  _loc6_.push(_loc5_.title);
                  _loc6_.push(_loc5_.url);
                  _loc6_.push(this.cnf.formattedNumberValue(_loc5_.keywordCompetitiveness));
                  _loc6_.push(this.cnf.formattedNumberValue(_loc5_.pageAuthority));
                  _loc6_.push(this.cnf.formattedNumberValue(_loc5_.seomozLinks));
                  _loc6_.push(this.cnf.formattedNumberValue(_loc5_.juiceLinks));
                  _loc6_.push(this.cnf.formattedNumberValue(_loc5_.domainAuthority));
                  _loc6_.push(this.cnf.formattedNumberValue(_loc5_.mozRank));
                  _loc6_.push(this.cnf.formattedNumberValue(_loc5_.pageRank));
                  _loc6_.push(this.cnf.formattedNumberValue(_loc5_.siteAge));
                  _loc6_.push("");
                  _loc1_.addRecordSet(_loc6_);
               }
            }
            else if(this.exportType == Constants.RANK_CHECKER)
            {
               _loc1_.header = ["Domain Or Url ","Search Term","Google","Yahoo!","Bing"];
               §§push(0);
               if(_loc12_)
               {
                  §§push(--(-((§§pop() - 54) * 0) * 1));
               }
               for each(_loc7_ in this.exportData)
               {
                  _loc8_ = [];
                  _loc8_.push(_loc7_.domain);
                  _loc8_.push(_loc7_.searchTerm);
                  _loc8_.push(_loc7_.googleRank);
                  _loc8_.push(_loc7_.yahooRank);
                  _loc8_.push(_loc7_.bingRank);
                  _loc8_.push("");
                  _loc1_.addRecordSet(_loc8_);
               }
            }
         }
         _loc1_.encode();
         var _loc2_:String = _loc1_.data;
         FileSystemOperations.instance.writeFileInUserSelectedLocation(_loc2_,this.fileName + ".csv",true);
      }
      
      private final function getDomainsExactStatus(param1:int) : String
      {
         var _loc2_:String = "";
         §§push(param1);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 103 + 1);
         }
         if(§§pop() == §§pop())
         {
            _loc2_ = "AVAILABLE";
         }
         else
         {
            §§push(param1);
            §§push(0);
            if(_loc3_)
            {
               §§push(-(§§pop() + 1) + 8 - 1);
            }
            if(§§pop() == §§pop())
            {
               _loc2_ = "NOT_FETCHED";
            }
            else
            {
               §§push(param1);
               §§push(-1);
               if(_loc3_)
               {
                  §§push(-(§§pop() + 89 - 21 + 104 - 75));
               }
               if(§§pop() == §§pop())
               {
                  _loc2_ = "UNAVAILABLE";
               }
               else
               {
                  §§push(param1);
                  §§push(-100);
                  if(_loc3_)
                  {
                     §§push(§§pop() - 84 + 1 + 1);
                  }
                  if(§§pop() == §§pop())
                  {
                     _loc2_ = "";
                  }
               }
            }
         }
         return _loc2_;
      }
      
      private final function getHeaders() : Array
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:KeywordVO = null;
         var _loc1_:Array = [];
         _loc1_.push("Keywords");
         if(viewModel.selectedKeywordsTab.isFavoritesTab)
         {
            _loc1_.push("Project");
         }
         _loc1_.push("Suggested Bid");
         _loc1_.push("Local Searches");
         _loc1_.push("Global Searches");
         _loc1_.push("Advertiser Competition");
         _loc1_.push("Number of Words");
         _loc1_.push("Google Title Comp");
         _loc1_.push("Bing Title Comp");
         if(model.isPlatinum)
         {
            _loc1_.push("Avg. KC");
         }
         §§push(0);
         if(_loc10_)
         {
            §§push(-((§§pop() - 115 + 1 + 1 + 69) * 34));
         }
         for each(_loc2_ in this.domainsList)
         {
            _loc3_ = false;
            _loc4_ = false;
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() + 1 - 1 - 1) * 90);
            }
            for each(_loc5_ in this.exportData)
            {
               if(_loc3_ && _loc4_)
               {
                  break;
               }
               if(!_loc3_ && _loc5_.domainsExact && §§pop() != §§pop() && §§pop() != §§pop())
               {
                  _loc3_ = true;
               }
               if(!_loc4_ && _loc5_.domainsHyphenated && §§pop() != §§pop() && §§pop() != §§pop())
               {
                  _loc4_ = true;
               }
            }
            if(_loc3_)
            {
               this.domainsFetched.push(_loc2_);
            }
            if(_loc4_)
            {
               this.domainsFetched.push(_loc2_ + " Hyphenated");
            }
         }
         _loc1_ = _loc1_.concat(this.domainsFetched);
         return _loc1_;
      }
      
      private final function getRecordSet(param1:KeywordVO) : Array
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc2_:Array = [];
         _loc2_.push(param1.strippedKeyword);
         if(viewModel.selectedKeywordsTab.isFavoritesTab)
         {
            _loc2_.push(param1.projectTitle);
         }
         if(param1.suggestedBidString == null || param1.suggestedBidString == "–")
         {
            _loc2_.push("");
         }
         else
         {
            _loc2_.push(param1.suggestedBidString);
         }
         _loc2_.push(this.cnf.formattedNumberValue(param1.localSearches));
         _loc2_.push(this.cnf.formattedNumberValue(param1.globalSearches));
         if(param1.advertiserCompetition == null || param1.advertiserCompetition == "–")
         {
            _loc2_.push("");
         }
         else
         {
            _loc2_.push(param1.advertiserCompetition);
         }
         _loc2_.push(this.cnf.formattedNumberValue(param1.numWords));
         _loc2_.push(this.cnf.formattedNumberValue(param1.googleTitleCompetition));
         _loc2_.push(this.cnf.formattedNumberValue(param1.bingTitleCompetition));
         if(model.isPlatinum)
         {
            _loc2_.push(this.cnf.formattedNumberValue(param1.avgKC));
         }
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-§§pop() + 75) + 1 - 1);
         }
         for each(_loc3_ in this.domainsFetched)
         {
            _loc3_ = _loc3_.replace(".","");
            _loc4_ = "";
            §§push(_loc3_.indexOf("Hyphenated"));
            §§push(-1);
            if(_loc8_)
            {
               §§push(--(§§pop() + 1 - 44));
            }
            if(§§pop() == §§pop() && param1.domainsExact)
            {
               _loc4_ = this.getDomainsExactStatus(param1.domainsExact[_loc3_]);
            }
            else if(param1.domainsHyphenated)
            {
               §§push(this);
               §§push(param1.domainsHyphenated);
               §§push(_loc3_);
               §§push(0);
               if(_loc7_)
               {
                  §§push(§§pop() + 96 - 1 + 1);
               }
               _loc4_ = §§pop().getDomainsExactStatus(§§pop()[§§pop().substr(§§pop(),_loc3_.indexOf(" "))]);
            }
            _loc2_.push(_loc4_);
         }
         _loc2_.push("");
         return _loc2_;
      }
   }
}
