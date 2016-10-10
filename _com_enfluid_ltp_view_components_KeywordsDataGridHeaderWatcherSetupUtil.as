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
         param5[4] = new PropertyWatcher("model",{"propertyChange":true},[param4[2],param4[6],param4[27],param4[29],param4[46],param4[47],param4[54],param4[55],param4[62],param4[63]],param2);
         param5[31] = new PropertyWatcher("isFetchingMissingGlobalSearches",{"propertyChange":true},[param4[29]],null);
         param5[47] = new PropertyWatcher("isFetchingMissingBingTitleCompetition",{"propertyChange":true},[param4[55]],null);
         param5[5] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[2],param4[6],param4[27],param4[46],param4[54],param4[63]],null);
         param5[6] = new PropertyWatcher("project",{"propertyChange":true},[param4[2],param4[6]],null);
         param5[11] = new PropertyWatcher("specialFilter",{"propertyChange":true},[param4[6]],null);
         param5[16] = new PropertyWatcher("totalCount",{"propertyChange":true},[param4[6]],null);
         param5[30] = new PropertyWatcher("missingGlobalSearchesCount",{"propertyChange":true},[param4[27]],null);
         param5[15] = new PropertyWatcher("length",{"collectionChange":true},[param4[6]],null);
         param5[52] = new PropertyWatcher("missingDomainAvailabilityCount",{"propertyChange":true},[param4[63]],null);
         param5[46] = new PropertyWatcher("missingBingTitleCompCount",{"propertyChange":true},[param4[54]],null);
         param5[41] = new PropertyWatcher("missingGoogleTitleCompCount",{"propertyChange":true},[param4[46]],null);
         param5[13] = new PropertyWatcher("trashKeywords",null,[param4[6]],null);
         param5[14] = new PropertyWatcher("totalCount",null,[param4[6]],null);
         param5[42] = new PropertyWatcher("isFetchingMissingGoogleTitleCompetition",{"propertyChange":true},[param4[47]],null);
         param5[51] = new PropertyWatcher("isFetchingMissingDomains",{"propertyChange":true},[param4[62]],null);
         param5[0] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[0],param4[6],param4[10]],param2);
         param5[1] = new PropertyWatcher("dataFiltersChanged",{"propertyChange":true},[param4[0]],null);
         param5[9] = new PropertyWatcher("selectedKeywordsTab",{"propertyChange":true},[param4[6],param4[10]],null);
         param5[10] = new PropertyWatcher("isTrashTab",{"propertyChange":true},[param4[6]],null);
         param5[19] = new PropertyWatcher("isFavoritesTab",{"propertyChange":true},[param4[10]],null);
         param5[2] = new PropertyWatcher("columns",{"columnsChanged":true},[param4[1]],param2);
         param5[3] = new PropertyWatcher("length",null,[param4[1]],null);
         param5[22] = new PropertyWatcher("project",{"propertyChange":true},[param4[15],param4[20],param4[26],param4[33],param4[38],param4[43],param4[52],param4[59]],param2);
         param5[26] = new PropertyWatcher("localSearchesEnabled",{"propertyChange":true},[param4[20]],null);
         param5[34] = new PropertyWatcher("advertiserCompEnabled",{"propertyChange":true},[param4[33]],null);
         param5[23] = new PropertyWatcher("suggestedBidEnabled",{"propertyChange":true},[param4[15]],null);
         param5[50] = new PropertyWatcher("domainsEnabled",{"propertyChange":true},[param4[59]],null);
         param5[37] = new PropertyWatcher("numWordsEnabled",{"propertyChange":true},[param4[38]],null);
         param5[45] = new PropertyWatcher("bingTitleCompEnabled",{"propertyChange":true},[param4[52]],null);
         param5[29] = new PropertyWatcher("globalSearchesEnabled",{"propertyChange":true},[param4[26]],null);
         param5[40] = new PropertyWatcher("googleTitleCompEnabled",{"propertyChange":true},[param4[43]],null);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[31]);
         param5[4].addChild(param5[47]);
         param5[4].addChild(param5[5]);
         param5[5].addChild(param5[6]);
         param5[6].addChild(param5[11]);
         param5[5].addChild(param5[16]);
         param5[5].addChild(param5[30]);
         param5[5].addChild(param5[15]);
         param5[5].addChild(param5[52]);
         param5[5].addChild(param5[46]);
         param5[5].addChild(param5[41]);
         param5[5].addChild(param5[13]);
         param5[13].addChild(param5[14]);
         param5[4].addChild(param5[42]);
         param5[4].addChild(param5[51]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[9]);
         param5[9].addChild(param5[10]);
         param5[9].addChild(param5[19]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[22].updateParent(param1);
         param5[22].addChild(param5[26]);
         param5[22].addChild(param5[34]);
         param5[22].addChild(param5[23]);
         param5[22].addChild(param5[50]);
         param5[22].addChild(param5[37]);
         param5[22].addChild(param5[45]);
         param5[22].addChild(param5[29]);
         param5[22].addChild(param5[40]);
      }
   }
}
