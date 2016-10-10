package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.majestic.CompetitorMajesticAnalysisFooterComponent;
   import mx.binding.PropertyWatcher;
   import mx.binding.FunctionReturnWatcher;
   
   public class _com_enfluid_ltp_view_components_majestic_CompetitorMajesticAnalysisFooterComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_majestic_CompetitorMajesticAnalysisFooterComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CompetitorMajesticAnalysisFooterComponent.watcherSetupUtil = new _com_enfluid_ltp_view_components_majestic_CompetitorMajesticAnalysisFooterComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[7] = new PropertyWatcher("keyword",{"propertyChange":true},[bindings[3],bindings[5],bindings[7],bindings[9],bindings[11],bindings[13],bindings[15],bindings[17],bindings[19],bindings[21],bindings[23]],propertyGetter);
         watchers[8] = new PropertyWatcher("competitorAnalysisAverages",{"propertyChange":true},[bindings[3],bindings[5],bindings[7],bindings[9],bindings[11],bindings[13],bindings[15],bindings[17],bindings[19],bindings[21],bindings[23]],null);
         watchers[12] = new PropertyWatcher("trust_flow",{"propertyChange":true},[bindings[5]],null);
         watchers[48] = new PropertyWatcher("siteAgeAvg",{"propertyChange":true},[bindings[23]],null);
         watchers[32] = new PropertyWatcher("referring_domains",{"propertyChange":true},[bindings[15]],null);
         watchers[9] = new PropertyWatcher("majestic_kc",{"propertyChange":true},[bindings[3]],null);
         watchers[36] = new PropertyWatcher("external_edu_gov",{"propertyChange":true},[bindings[17]],null);
         watchers[40] = new PropertyWatcher("internal_links",{"propertyChange":true},[bindings[19]],null);
         watchers[20] = new PropertyWatcher("domain_citation",{"propertyChange":true},[bindings[9]],null);
         watchers[24] = new PropertyWatcher("domain_trust",{"propertyChange":true},[bindings[11]],null);
         watchers[44] = new PropertyWatcher("indexed_urls",{"propertyChange":true},[bindings[21]],null);
         watchers[28] = new PropertyWatcher("external_backlinks",{"propertyChange":true},[bindings[13]],null);
         watchers[16] = new PropertyWatcher("citation_flow",{"propertyChange":true},[bindings[7]],null);
         watchers[0] = new PropertyWatcher("headerColumns",{"propertyChange":true},[bindings[0],bindings[2],bindings[4],bindings[6],bindings[8],bindings[10],bindings[12],bindings[14],bindings[16],bindings[18],bindings[20],bindings[22]],propertyGetter);
         watchers[34] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [8];
         },null,[bindings[16]],null);
         watchers[35] = new PropertyWatcher("width",null,[bindings[16]],null);
         watchers[1] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },null,[bindings[0]],null);
         watchers[2] = new PropertyWatcher("width",null,[bindings[0]],null);
         watchers[18] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },null,[bindings[8]],null);
         watchers[19] = new PropertyWatcher("width",null,[bindings[8]],null);
         watchers[38] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [9];
         },null,[bindings[18]],null);
         watchers[39] = new PropertyWatcher("width",null,[bindings[18]],null);
         watchers[4] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },null,[bindings[2]],null);
         watchers[5] = new PropertyWatcher("width",null,[bindings[2]],null);
         watchers[22] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [5];
         },null,[bindings[10]],null);
         watchers[23] = new PropertyWatcher("width",null,[bindings[10]],null);
         watchers[42] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [10];
         },null,[bindings[20]],null);
         watchers[43] = new PropertyWatcher("width",null,[bindings[20]],null);
         watchers[10] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },null,[bindings[4]],null);
         watchers[11] = new PropertyWatcher("width",null,[bindings[4]],null);
         watchers[26] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [6];
         },null,[bindings[12]],null);
         watchers[27] = new PropertyWatcher("width",null,[bindings[12]],null);
         watchers[46] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [11];
         },null,[bindings[22]],null);
         watchers[47] = new PropertyWatcher("width",null,[bindings[22]],null);
         watchers[14] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },null,[bindings[6]],null);
         watchers[15] = new PropertyWatcher("width",null,[bindings[6]],null);
         watchers[30] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [7];
         },null,[bindings[14]],null);
         watchers[31] = new PropertyWatcher("width",null,[bindings[14]],null);
         watchers[7].updateParent(target);
         watchers[7].addChild(watchers[8]);
         watchers[8].addChild(watchers[12]);
         watchers[8].addChild(watchers[48]);
         watchers[8].addChild(watchers[32]);
         watchers[8].addChild(watchers[9]);
         watchers[8].addChild(watchers[36]);
         watchers[8].addChild(watchers[40]);
         watchers[8].addChild(watchers[20]);
         watchers[8].addChild(watchers[24]);
         watchers[8].addChild(watchers[44]);
         watchers[8].addChild(watchers[28]);
         watchers[8].addChild(watchers[16]);
         watchers[0].updateParent(target);
         watchers[34].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[34]);
         watchers[34].addChild(watchers[35]);
         watchers[1].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[1]);
         watchers[1].addChild(watchers[2]);
         watchers[18].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[18]);
         watchers[18].addChild(watchers[19]);
         watchers[38].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[38]);
         watchers[38].addChild(watchers[39]);
         watchers[4].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[4]);
         watchers[4].addChild(watchers[5]);
         watchers[22].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[22]);
         watchers[22].addChild(watchers[23]);
         watchers[42].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[42]);
         watchers[42].addChild(watchers[43]);
         watchers[10].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[10]);
         watchers[10].addChild(watchers[11]);
         watchers[26].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[26]);
         watchers[26].addChild(watchers[27]);
         watchers[46].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[46]);
         watchers[46].addChild(watchers[47]);
         watchers[14].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[14]);
         watchers[14].addChild(watchers[15]);
         watchers[30].parentWatcher = watchers[0];
         watchers[0].addChild(watchers[30]);
         watchers[30].addChild(watchers[31]);
      }
   }
}
