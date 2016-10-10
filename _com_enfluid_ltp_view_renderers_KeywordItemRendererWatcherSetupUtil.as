package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.KeywordItemRenderer;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_KeywordItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_KeywordItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KeywordItemRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_KeywordItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[7] = new PropertyWatcher("isRolledOver",{"propertyChange":true},[param4[17],param4[41]],param2);
         param5[29] = new PropertyWatcher("model",{"propertyChange":true},[param4[37],param4[39]],param2);
         param5[30] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[37],param4[39]],null);
         param5[31] = new PropertyWatcher("project",{"propertyChange":true},[param4[37],param4[39]],null);
         param5[34] = new PropertyWatcher("domainsHyphenatedExtensions",{"propertyChange":true},[param4[39]],null);
         param5[32] = new PropertyWatcher("domainsExactMatchExtensions",{"propertyChange":true},[param4[37]],null);
         param5[0] = new PropertyWatcher("caView",{"propertyChange":true},[param4[0],param4[2],param4[6],param4[7],param4[11]],param2);
         param5[1] = new PropertyWatcher("height",{"heightChanged":true},[param4[0]],null);
         param5[8] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[18],param4[20],param4[22],param4[24],param4[26],param4[28],param4[30],param4[32],param4[34],param4[35],param4[40]],param2);
         param5[9] = new PropertyWatcher("keywordColumns",{"propertyChange":true},[param4[18],param4[20],param4[22],param4[24],param4[26],param4[28],param4[30],param4[32],param4[34],param4[35],param4[40]],null);
         param5[16] = new PropertyWatcher("localSearches",{"propertyChange":true},[param4[24]],null);
         param5[26] = new PropertyWatcher("bingTitleCompetition",{"propertyChange":true},[param4[34]],null);
         param5[22] = new PropertyWatcher("numWords",{"propertyChange":true},[param4[30]],null);
         param5[12] = new PropertyWatcher("project",{"propertyChange":true},[param4[20]],null);
         param5[14] = new PropertyWatcher("suggestedBid",{"propertyChange":true},[param4[22]],null);
         param5[10] = new PropertyWatcher("keywords",{"propertyChange":true},[param4[18]],null);
         param5[18] = new PropertyWatcher("globalSearches",{"propertyChange":true},[param4[26]],null);
         param5[27] = new PropertyWatcher("domainAvailability",{"propertyChange":true},[param4[35]],null);
         param5[20] = new PropertyWatcher("advertizerCompetition",{"propertyChange":true},[param4[28]],null);
         param5[35] = new PropertyWatcher("avgKC",{"propertyChange":true},[param4[40]],null);
         param5[24] = new PropertyWatcher("googleTitleCompetition",{"propertyChange":true},[param4[32]],null);
         param5[2] = new PropertyWatcher("keyword",{"propertyChange":true},[param4[1],param4[12],param4[13],param4[14],param4[15],param4[16],param4[19],param4[21],param4[23],param4[25],param4[27],param4[29],param4[31],param4[33],param4[36],param4[38],param4[42],param4[43]],param2);
         param5[15] = new PropertyWatcher("localSearches",{"propertyChange":true},[param4[23]],null);
         param5[25] = new PropertyWatcher("bingTitleCompetition",{"propertyChange":true},[param4[33]],null);
         param5[6] = new PropertyWatcher("movedToOwnKeywordsThisSession",{"propertyChange":true},[param4[14],param4[15]],null);
         param5[11] = new PropertyWatcher("projectTitle",{"propertyChange":true},[param4[19]],null);
         param5[19] = new PropertyWatcher("advertiserCompetition",{"propertyChange":true},[param4[27]],null);
         param5[23] = new PropertyWatcher("googleTitleCompetition",{"propertyChange":true},[param4[31]],null);
         param5[28] = new PropertyWatcher("domainsExact",{"domainsExactChange":true},[param4[36]],null);
         param5[21] = new PropertyWatcher("numWords",{"propertyChange":true},[param4[29]],null);
         param5[17] = new PropertyWatcher("globalSearches",{"propertyChange":true},[param4[25]],null);
         param5[3] = new PropertyWatcher("isExpanded",{"propertyChange":true},[param4[1],param4[12],param4[13],param4[14],param4[15]],null);
         param5[13] = new PropertyWatcher("suggestedBidString",{"propertyChange":true},[param4[21]],null);
         param5[33] = new PropertyWatcher("domainsHyphenated",{"domainsHyphenatedChange":true},[param4[38]],null);
         param5[5] = new PropertyWatcher("showQuickAddDoesntMatchFilterWarning",{"propertyChange":true},[param4[12],param4[13]],null);
         param5[4] = new PropertyWatcher("powerEasing",{"propertyChange":true},[param4[4],param4[5],param4[8],param4[9]],param2);
         param5[7].updateParent(param1);
         param5[29].updateParent(param1);
         param5[29].addChild(param5[30]);
         param5[30].addChild(param5[31]);
         param5[31].addChild(param5[34]);
         param5[31].addChild(param5[32]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[9].addChild(param5[16]);
         param5[9].addChild(param5[26]);
         param5[9].addChild(param5[22]);
         param5[9].addChild(param5[12]);
         param5[9].addChild(param5[14]);
         param5[9].addChild(param5[10]);
         param5[9].addChild(param5[18]);
         param5[9].addChild(param5[27]);
         param5[9].addChild(param5[20]);
         param5[9].addChild(param5[35]);
         param5[9].addChild(param5[24]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[15]);
         param5[2].addChild(param5[25]);
         param5[2].addChild(param5[6]);
         param5[2].addChild(param5[11]);
         param5[2].addChild(param5[19]);
         param5[2].addChild(param5[23]);
         param5[2].addChild(param5[28]);
         param5[2].addChild(param5[21]);
         param5[2].addChild(param5[17]);
         param5[2].addChild(param5[3]);
         param5[2].addChild(param5[13]);
         param5[2].addChild(param5[33]);
         param5[2].addChild(param5[5]);
         param5[4].updateParent(param1);
      }
   }
}
