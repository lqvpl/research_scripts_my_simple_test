package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import mx.collections.IList;
   import flash.filesystem.File;
   import spark.components.gridClasses.GridLayer;
   import flash.events.MouseEvent;
   import mx.controls.Alert;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.util.CSV;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.FileSystemOperations;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   
   public final class ExportDataGridCSVCommand extends Command implements IPhotonCommand
   {
       
      
      private var exportType:String;
      
      private var exportData:IList;
      
      private var fileName:String;
      
      private var file:File;
      
      private var domainsList:Array;
      
      private var cnf:CurrencyAndNumberFormatter;
      
      public function ExportDataGridCSVCommand(param1:IList, param2:String, param3:String = "")
      {
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
               §§push(---(§§pop() - 3) + 44);
            }
            §§pop().buttonWidth = §§pop();
            §§push(Alert);
            §§push(30);
            if(_loc1_)
            {
               §§push(-(-§§pop() - 87 - 110) + 0 - 1);
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
         var _loc7_:CompetitorUrlVO = null;
         var _loc8_:Array = null;
         var _loc9_:RankCheckItemVO = null;
         var _loc10_:Array = null;
         var _loc1_:CSV = new CSV();
         _loc1_.headerOverwrite = true;
         _loc1_.fieldSeperator = ",";
         _loc1_.recordsetDelimiter = "\n";
         _loc1_.fieldEnclosureToken = "\"";
         if(this.exportData is KeywordArrayCollection)
         {
            _loc1_.header = this.getHeaders();
            §§push(0);
            if(_loc14_)
            {
               §§push(--(§§pop() * 115 + 14));
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
               if(model.selectedProject.source != "majestic")
               {
                  _loc1_.header = ["Title","URL","KC-Keyword","PA-Page Authority","PL-Page Links","JPL-Juice Page Link","DA-Domain Authority","MR-MOZ Rank","PR-Page Rank","SA-Site Age"];
                  §§push(0);
                  if(_loc13_)
                  {
                     §§push(-(§§pop() + 1) + 1);
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
               else
               {
                  _loc1_.header = ["Title","URL","KC-Keyword","Trust Flow","Citation Flow","Domain Trust Flow","Domain Citation Flow","External Backlinks","Referring Domains","Edu/Gov Backlinks","Internal Links","Indexed URLs","Site Age"];
                  §§push(0);
                  if(_loc14_)
                  {
                     §§push(((§§pop() - 39) * 47 + 96 + 43) * 9);
                  }
                  for each(_loc7_ in this.exportData)
                  {
                     _loc8_ = [];
                     _loc8_.push(_loc7_.title);
                     _loc8_.push(_loc7_.url);
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.majestic_kc));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.trust_flow));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.citation_flow));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.domain_trust));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.domain_citation));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.external_backlinks));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.referring_domains));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.ext_backlinks_edu + _loc7_.ext_backlinks_gov));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.internal_links));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.indexed_urls));
                     _loc8_.push(this.cnf.formattedNumberValue(_loc7_.siteAge));
                     _loc8_.push("");
                     _loc1_.addRecordSet(_loc8_);
                  }
               }
            }
            else if(this.exportType == Constants.RANK_CHECKER)
            {
               _loc1_.header = ["Domain Or Url ","Search Term","Google","Yahoo!","Bing"];
               §§push(0);
               if(_loc14_)
               {
                  §§push(§§pop() + 51 - 1 - 1 - 64 - 44);
               }
               for each(_loc9_ in this.exportData)
               {
                  _loc10_ = [];
                  _loc10_.push(_loc9_.domain);
                  _loc10_.push(_loc9_.searchTerm);
                  _loc10_.push(_loc9_.googleRank);
                  _loc10_.push(_loc9_.yahooRank);
                  _loc10_.push(_loc9_.bingRank);
                  _loc10_.push("");
                  _loc1_.addRecordSet(_loc10_);
               }
            }
         }
         _loc1_.encode();
         var _loc2_:String = _loc1_.data;
         FileSystemOperations.instance.writeFileInUserSelectedLocation(_loc2_,this.fileName + ".csv",true);
      }
      
      private final function getHeaders() : Array
      {
         var _loc1_:Array = [];
         _loc1_.push("Keywords");
         if(viewModel.selectedKeywordsTab.isFavoritesTab)
         {
            _loc1_.push("Project");
         }
         _loc1_.push("Notes");
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
         _loc1_.push("Available Exact Match Domains");
         _loc1_.push("Available Hyphenated Domains");
         return _loc1_;
      }
      
      private final function getRecordSet(param1:KeywordVO) : Array
      {
         var _loc5_:String = null;
         var _loc2_:Array = [];
         var _loc3_:* = "";
         var _loc4_:* = "";
         _loc2_.push(param1.strippedKeyword);
         if(viewModel.selectedKeywordsTab.isFavoritesTab)
         {
            _loc2_.push(param1.projectTitle);
         }
         _loc2_.push(param1.notes);
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
         if(_loc8_)
         {
            §§push(-(§§pop() * 100 + 109) + 10 + 47 - 71);
         }
         for each(_loc5_ in this.domainsList)
         {
            if(param1.domainsExact && §§pop() == §§pop())
            {
               _loc3_ = _loc3_ + "." + _loc5_ + " ";
            }
            if(param1.domainsHyphenated && §§pop() == §§pop())
            {
               _loc4_ = _loc4_ + "." + _loc5_ + " ";
            }
         }
         _loc2_.push(_loc3_);
         _loc2_.push(_loc4_);
         _loc2_.push("");
         return _loc2_;
      }
   }
}
