package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.CompetitorAnalysisFooterComponent;
   import mx.binding.PropertyWatcher;
   import mx.binding.FunctionReturnWatcher;
   
   public class _com_enfluid_ltp_view_components_CompetitorAnalysisFooterComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_CompetitorAnalysisFooterComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CompetitorAnalysisFooterComponent.watcherSetupUtil = new _com_enfluid_ltp_view_components_CompetitorAnalysisFooterComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[7] = new PropertyWatcher("keyword",{"propertyChange":true},[bindings[3],bindings[5],bindings[7],bindings[9],bindings[11],bindings[13],bindings[15],bindings[17]],propertyGetter);
         watchers[8] = new PropertyWatcher("competitorAnalysisAverages",{"propertyChange":true},[bindings[3],bindings[5],bindings[7],bindings[9],bindings[11],bindings[13],bindings[15],bindings[17]],null);
         watchers[9] = new PropertyWatcher("keywordCompetitivenessAvg",{"propertyChange":true},[bindings[3]],null);
         watchers[27] = new PropertyWatcher("pageRankAvg",{"propertyChange":true},[bindings[15]],null);
         watchers[21] = new PropertyWatcher("domainAuthorityAvg",{"propertyChange":true},[bindings[11]],null);
         watchers[12] = new PropertyWatcher("pageAuthorityAvg",{"propertyChange":true},[bindings[5]],null);
         watchers[30] = new PropertyWatcher("siteAgeAvg",{"propertyChange":true},[bindings[17]],null);
         watchers[15] = new PropertyWatcher("pageLinksAvg",{"propertyChange":true},[bindings[7]],null);
         watchers[18] = new PropertyWatcher("juiceLinksAvg",{"propertyChange":true},[bindings[9]],null);
         watchers[24] = new PropertyWatcher("mozRankAvg",{"propertyChange":true},[bindings[13]],null);
         watchers[0] = new PropertyWatcher("headerColumns",{"propertyChange":true},[bindings[0],bindings[2],bindings[4],bindings[6],bindings[8],bindings[10],bindings[12],bindings[14],bindings[16]],propertyGetter);
         watchers[16] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },null,[bindings[8]],null);
         watchers[17] = new PropertyWatcher("width",null,[bindings[8]],null);
         watchers[1] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },null,[bindings[0]],null);
         watchers[2] = new PropertyWatcher("width",null,[bindings[0]],null);
         watchers[19] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [5];
         },null,[bindings[10]],null);
         watchers[20] = new PropertyWatcher("width",null,[bindings[10]],null);
         watchers[4] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },null,[bindings[2]],null);
         watchers[5] = new PropertyWatcher("width",null,[bindings[2]],null);
         watchers[22] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [6];
         },null,[bindings[12]],null);
         watchers[23] = new PropertyWatcher("width",null,[bindings[12]],null);
         watchers[25] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [7];
         },null,[bindings[14]],null);
         watchers[26] = new PropertyWatcher("width",null,[bindings[14]],null);
         watchers[10] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },null,[bindings[4]],null);
         watchers[11] = new PropertyWatcher("width",null,[bindings[4]],null);
         watchers[28] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [8];
         },null,[bindings[16]],null);
         watchers[29] = new PropertyWatcher("width",null,[bindings[16]],null);
         watchers[13] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },null,[bindings[6]],null);
         watchers[14] = new PropertyWatcher("width",null,[bindings[6]],null);
         watchers[7].updateParent(target);
         watchers[7].addChild(watchers[8]);
         watchers[8].addChild(watchers[9]);
         watchers[8].addChild(watchers[27]);
         watchers[8].addChild(watchers[21]);
         watchers[8].addChild(watchers[12]);
         watchers[8].addChild(watchers[30]);
         watchers[8].addChild(watchers[15]);
         watchers[8].addChild(watchers[18]);
         watchers[8].addChild(watchers[24]);
         watchers[0].updateParent(target);
         watchers[16].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[16]);
         watchers[16].addChild(watchers[17]);
         watchers[1].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[1]);
         watchers[1].addChild(watchers[2]);
         watchers[19].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[19]);
         watchers[19].addChild(watchers[20]);
         watchers[4].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[4]);
         watchers[4].addChild(watchers[5]);
         watchers[22].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[22]);
         watchers[22].addChild(watchers[23]);
         watchers[25].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[25]);
         watchers[25].addChild(watchers[26]);
         watchers[10].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[10]);
         watchers[10].addChild(watchers[11]);
         watchers[28].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[28]);
         watchers[28].addChild(watchers[29]);
         watchers[13].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[13]);
         watchers[13].addChild(watchers[14]);
      }
   }
}
