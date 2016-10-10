package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.majestic.CompetitorAnalysisListItemRenderer;
   import mx.binding.PropertyWatcher;
   import mx.binding.FunctionReturnWatcher;
   
   public class _com_enfluid_ltp_view_renderers_majestic_CompetitorAnalysisListItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_majestic_CompetitorAnalysisListItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CompetitorAnalysisListItemRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_majestic_CompetitorAnalysisListItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[22] = new PropertyWatcher("model",{"propertyChange":true},[bindings[12],bindings[14]],propertyGetter);
         watchers[23] = new PropertyWatcher("isPlatinum",{"propertyChange":true},[bindings[12],bindings[14]],null);
         watchers[45] = new PropertyWatcher("pageDomainCitationToolTip",{"propertyChange":true},[bindings[26]],propertyGetter);
         watchers[30] = new PropertyWatcher("pageTrustFlowToolTip",{"propertyChange":true},[bindings[17]],propertyGetter);
         watchers[65] = new PropertyWatcher("pageInternalLinksToolTip",{"propertyChange":true},[bindings[38]],propertyGetter);
         watchers[25] = new PropertyWatcher("isRolledOver",{"propertyChange":true},[bindings[14]],propertyGetter);
         watchers[60] = new PropertyWatcher("pageexternalEduToolTip",{"propertyChange":true},[bindings[35]],propertyGetter);
         watchers[40] = new PropertyWatcher("pageDomainTrustToolTip",{"propertyChange":true},[bindings[23]],propertyGetter);
         watchers[35] = new PropertyWatcher("pageCitationFlowToolTip",{"propertyChange":true},[bindings[20]],propertyGetter);
         watchers[13] = new PropertyWatcher("lockImage",{"propertyChange":true},[bindings[6],bindings[10]],propertyGetter);
         watchers[14] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[bindings[6],bindings[10]],null);
         watchers[1] = new PropertyWatcher("headerColumns",{"propertyChange":true},[bindings[1],bindings[5],bindings[7],bindings[11],bindings[15],bindings[18],bindings[21],bindings[24],bindings[27],bindings[30],bindings[33],bindings[36],bindings[39],bindings[42]],propertyGetter);
         watchers[2] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },null,[bindings[1]],null);
         watchers[3] = new PropertyWatcher("width",null,[bindings[1]],null);
         watchers[71] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [11];
         },null,[bindings[42]],null);
         watchers[72] = new PropertyWatcher("width",null,[bindings[42]],null);
         watchers[36] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },null,[bindings[21]],null);
         watchers[37] = new PropertyWatcher("width",null,[bindings[21]],null);
         watchers[66] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [10];
         },null,[bindings[39]],null);
         watchers[67] = new PropertyWatcher("width",null,[bindings[39]],null);
         watchers[11] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },null,[bindings[5]],null);
         watchers[12] = new PropertyWatcher("width",null,[bindings[5]],null);
         watchers[41] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [5];
         },null,[bindings[24]],null);
         watchers[42] = new PropertyWatcher("width",null,[bindings[24]],null);
         watchers[46] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [6];
         },null,[bindings[27]],null);
         watchers[47] = new PropertyWatcher("width",null,[bindings[27]],null);
         watchers[15] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },null,[bindings[7]],null);
         watchers[16] = new PropertyWatcher("width",null,[bindings[7]],null);
         watchers[51] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [7];
         },null,[bindings[30]],null);
         watchers[52] = new PropertyWatcher("width",null,[bindings[30]],null);
         watchers[20] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },null,[bindings[11]],null);
         watchers[21] = new PropertyWatcher("width",null,[bindings[11]],null);
         watchers[26] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },null,[bindings[15]],null);
         watchers[27] = new PropertyWatcher("width",null,[bindings[15]],null);
         watchers[56] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [8];
         },null,[bindings[33]],null);
         watchers[57] = new PropertyWatcher("width",null,[bindings[33]],null);
         watchers[31] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },null,[bindings[18]],null);
         watchers[32] = new PropertyWatcher("width",null,[bindings[18]],null);
         watchers[61] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [9];
         },null,[bindings[36]],null);
         watchers[62] = new PropertyWatcher("width",null,[bindings[36]],null);
         watchers[70] = new PropertyWatcher("pageIndexedUrlsToolTip",{"propertyChange":true},[bindings[41]],propertyGetter);
         watchers[50] = new PropertyWatcher("pageExternalBackToolTip",{"propertyChange":true},[bindings[29]],propertyGetter);
         watchers[0] = new PropertyWatcher("itemIndex",{"itemIndexChanged":true},[bindings[0]],propertyGetter);
         watchers[4] = new PropertyWatcher("competitorUrl",{"propertyChange":true},[bindings[2],bindings[3],bindings[4],bindings[8],bindings[12],bindings[14],bindings[16],bindings[19],bindings[22],bindings[25],bindings[28],bindings[31],bindings[34],bindings[37],bindings[40],bindings[43]],propertyGetter);
         watchers[5] = new PropertyWatcher("boldedTitle",{"propertyChange":true},[bindings[2]],null);
         watchers[29] = new PropertyWatcher("trust_flow",{"propertyChange":true},[bindings[16]],null);
         watchers[18] = new PropertyWatcher("majestic_kc",{"propertyChange":true},[bindings[8],bindings[12],bindings[14]],null);
         watchers[44] = new PropertyWatcher("domain_citation",{"propertyChange":true},[bindings[25]],null);
         watchers[10] = new PropertyWatcher("url",{"propertyChange":true},[bindings[3],bindings[4]],null);
         watchers[49] = new PropertyWatcher("external_backlinks",{"propertyChange":true},[bindings[28]],null);
         watchers[69] = new PropertyWatcher("indexed_urls",{"propertyChange":true},[bindings[40]],null);
         watchers[74] = new PropertyWatcher("siteAge",{"propertyChange":true},[bindings[43]],null);
         watchers[54] = new PropertyWatcher("referring_domains",{"propertyChange":true},[bindings[31]],null);
         watchers[59] = new PropertyWatcher("external_edu_gov",{"propertyChange":true},[bindings[34]],null);
         watchers[64] = new PropertyWatcher("internal_links",{"propertyChange":true},[bindings[37]],null);
         watchers[39] = new PropertyWatcher("domain_trust",{"propertyChange":true},[bindings[22]],null);
         watchers[34] = new PropertyWatcher("citation_flow",{"propertyChange":true},[bindings[19]],null);
         watchers[19] = new PropertyWatcher("pageKcToolTip",{"propertyChange":true},[bindings[9]],propertyGetter);
         watchers[55] = new PropertyWatcher("pageRedDomainsToolTip",{"propertyChange":true},[bindings[32]],propertyGetter);
         watchers[22].updateParent(target);
         watchers[22].addChild(watchers[23]);
         watchers[45].updateParent(target);
         watchers[30].updateParent(target);
         watchers[65].updateParent(target);
         watchers[25].updateParent(target);
         watchers[60].updateParent(target);
         watchers[40].updateParent(target);
         watchers[35].updateParent(target);
         watchers[13].updateParent(target);
         watchers[13].addChild(watchers[14]);
         watchers[1].updateParent(target);
         watchers[2].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[2]);
         watchers[2].addChild(watchers[3]);
         watchers[71].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[71]);
         watchers[71].addChild(watchers[72]);
         watchers[36].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[36]);
         watchers[36].addChild(watchers[37]);
         watchers[66].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[66]);
         watchers[66].addChild(watchers[67]);
         watchers[11].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[11]);
         watchers[11].addChild(watchers[12]);
         watchers[41].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[41]);
         watchers[41].addChild(watchers[42]);
         watchers[46].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[46]);
         watchers[46].addChild(watchers[47]);
         watchers[15].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[15]);
         watchers[15].addChild(watchers[16]);
         watchers[51].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[51]);
         watchers[51].addChild(watchers[52]);
         watchers[20].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[20]);
         watchers[20].addChild(watchers[21]);
         watchers[26].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[26]);
         watchers[26].addChild(watchers[27]);
         watchers[56].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[56]);
         watchers[56].addChild(watchers[57]);
         watchers[31].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[31]);
         watchers[31].addChild(watchers[32]);
         watchers[61].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[61]);
         watchers[61].addChild(watchers[62]);
         watchers[70].updateParent(target);
         watchers[50].updateParent(target);
         watchers[0].updateParent(target);
         watchers[4].updateParent(target);
         watchers[4].addChild(watchers[5]);
         watchers[4].addChild(watchers[29]);
         watchers[4].addChild(watchers[18]);
         watchers[4].addChild(watchers[44]);
         watchers[4].addChild(watchers[10]);
         watchers[4].addChild(watchers[49]);
         watchers[4].addChild(watchers[69]);
         watchers[4].addChild(watchers[74]);
         watchers[4].addChild(watchers[54]);
         watchers[4].addChild(watchers[59]);
         watchers[4].addChild(watchers[64]);
         watchers[4].addChild(watchers[39]);
         watchers[4].addChild(watchers[34]);
         watchers[19].updateParent(target);
         watchers[55].updateParent(target);
      }
   }
}
