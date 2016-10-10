package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.KeywordsDataGridHeader;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_components_KeywordsDataGridHeaderWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_KeywordsDataGridHeaderWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KeywordsDataGridHeader.watcherSetupUtil = new _com_enfluid_ltp_view_components_KeywordsDataGridHeaderWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("model",{"propertyChange":true},[param4[3],param4[7],param4[28],param4[29],param4[31],param4[47],param4[49],param4[50],param4[56],param4[58],param4[59],param4[65],param4[67],param4[68],param4[73],param4[75],param4[76],param4[81],param4[83],param4[84]],param2);
         param5[33] = new PropertyWatcher("isFetchingMissingGlobalSearches",{"propertyChange":true},[param4[31]],null);
         param5[6] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[3],param4[7],param4[29],param4[49],param4[58],param4[68],param4[75],param4[83]],null);
         param5[7] = new PropertyWatcher("project",{"propertyChange":true},[param4[3],param4[7]],null);
         param5[12] = new PropertyWatcher("specialFilter",{"propertyChange":true},[param4[7]],null);
         param5[62] = new PropertyWatcher("missingAmazonKCCount",{"propertyChange":true},[param4[75]],null);
         param5[17] = new PropertyWatcher("totalCount",{"propertyChange":true},[param4[7]],null);
         param5[32] = new PropertyWatcher("missingGlobalSearchesCount",{"propertyChange":true},[param4[29]],null);
         param5[67] = new PropertyWatcher("missingAvgKCCount",{"propertyChange":true},[param4[83]],null);
         param5[16] = new PropertyWatcher("length",{"collectionChange":true},[param4[7]],null);
         param5[57] = new PropertyWatcher("missingDomainAvailabilityCount",{"propertyChange":true},[param4[68]],null);
         param5[50] = new PropertyWatcher("missingBingTitleCompCount",{"propertyChange":true},[param4[58]],null);
         param5[44] = new PropertyWatcher("missingGoogleTitleCompCount",{"propertyChange":true},[param4[49]],null);
         param5[14] = new PropertyWatcher("trashKeywords",null,[param4[7]],null);
         param5[15] = new PropertyWatcher("totalCount",null,[param4[7]],null);
         param5[68] = new PropertyWatcher("isFetchingMissingAvgKC",{"propertyChange":true},[param4[84]],null);
         param5[43] = new PropertyWatcher("fetchMissingGoogleTitleCompetitionCommand",{"propertyChange":true},[param4[47]],null);
         param5[45] = new PropertyWatcher("isFetchingMissingGoogleTitleCompetition",{"propertyChange":true},[param4[50]],null);
         param5[61] = new PropertyWatcher("fetchMissingAmazonKCCommand",{"propertyChange":true},[param4[73]],null);
         param5[31] = new PropertyWatcher("fetchMissingGlobalSearchesCommand",{"propertyChange":true},[param4[28]],null);
         param5[49] = new PropertyWatcher("fetchMissingBingTitleCompetitionCommand",{"propertyChange":true},[param4[56]],null);
         param5[51] = new PropertyWatcher("isFetchingMissingBingTitleCompetition",{"propertyChange":true},[param4[59]],null);
         param5[66] = new PropertyWatcher("fetchMissingAvgKCCommand",{"propertyChange":true},[param4[81]],null);
         param5[55] = new PropertyWatcher("fetchMissingDomainsCommand",{"propertyChange":true},[param4[65]],null);
         param5[56] = new PropertyWatcher("isFetchingMissingDomains",{"propertyChange":true},[param4[67]],null);
         param5[63] = new PropertyWatcher("isFetchingMissingAmazonKC",{"propertyChange":true},[param4[76]],null);
         param5[0] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[0],param4[2],param4[7],param4[11]],param2);
         param5[1] = new PropertyWatcher("dataFiltersChanged",{"propertyChange":true},[param4[0]],null);
         param5[10] = new PropertyWatcher("selectedKeywordsTab",{"propertyChange":true},[param4[7],param4[11]],null);
         param5[11] = new PropertyWatcher("isTrashTab",{"propertyChange":true},[param4[7]],null);
         param5[20] = new PropertyWatcher("isFavoritesTab",{"propertyChange":true},[param4[11]],null);
         param5[4] = new PropertyWatcher("AdwordsRestricted",{"propertyChange":true},[param4[2]],null);
         param5[2] = new PropertyWatcher("columns",{"columnsChanged":true},[param4[1]],param2);
         param5[3] = new PropertyWatcher("length",null,[param4[1]],null);
         param5[23] = new PropertyWatcher("project",{"propertyChange":true},[param4[16],param4[21],param4[26],param4[35],param4[40],param4[45],param4[54],param4[63],param4[69]],param2);
         param5[27] = new PropertyWatcher("localSearchesEnabled",{"propertyChange":true},[param4[21]],null);
         param5[36] = new PropertyWatcher("advertiserCompEnabled",{"propertyChange":true},[param4[35]],null);
         param5[24] = new PropertyWatcher("suggestedBidEnabled",{"propertyChange":true},[param4[16]],null);
         param5[54] = new PropertyWatcher("domainsEnabled",{"propertyChange":true},[param4[63]],null);
         param5[39] = new PropertyWatcher("numWordsEnabled",{"propertyChange":true},[param4[40]],null);
         param5[48] = new PropertyWatcher("bingTitleCompEnabled",{"propertyChange":true},[param4[54]],null);
         param5[30] = new PropertyWatcher("globalSearchesEnabled",{"propertyChange":true},[param4[26]],null);
         param5[58] = new PropertyWatcher("amazonKCEnabled",{"propertyChange":true},[param4[69]],null);
         param5[42] = new PropertyWatcher("googleTitleCompEnabled",{"propertyChange":true},[param4[45]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[33]);
         param5[5].addChild(param5[6]);
         param5[6].addChild(param5[7]);
         param5[7].addChild(param5[12]);
         param5[6].addChild(param5[62]);
         param5[6].addChild(param5[17]);
         param5[6].addChild(param5[32]);
         param5[6].addChild(param5[67]);
         param5[6].addChild(param5[16]);
         param5[6].addChild(param5[57]);
         param5[6].addChild(param5[50]);
         param5[6].addChild(param5[44]);
         param5[6].addChild(param5[14]);
         param5[14].addChild(param5[15]);
         param5[5].addChild(param5[68]);
         param5[5].addChild(param5[43]);
         param5[5].addChild(param5[45]);
         param5[5].addChild(param5[61]);
         param5[5].addChild(param5[31]);
         param5[5].addChild(param5[49]);
         param5[5].addChild(param5[51]);
         param5[5].addChild(param5[66]);
         param5[5].addChild(param5[55]);
         param5[5].addChild(param5[56]);
         param5[5].addChild(param5[63]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[10]);
         param5[10].addChild(param5[11]);
         param5[10].addChild(param5[20]);
         param5[0].addChild(param5[4]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[23].updateParent(param1);
         param5[23].addChild(param5[27]);
         param5[23].addChild(param5[36]);
         param5[23].addChild(param5[24]);
         param5[23].addChild(param5[54]);
         param5[23].addChild(param5[39]);
         param5[23].addChild(param5[48]);
         param5[23].addChild(param5[30]);
         param5[23].addChild(param5[58]);
         param5[23].addChild(param5[42]);
      }
   }
}
