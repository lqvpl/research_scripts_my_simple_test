package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.CompetitorAnalysisListItemRenderer;
   import mx.binding.PropertyWatcher;
   import mx.binding.FunctionReturnWatcher;
   
   public class _com_enfluid_ltp_view_renderers_CompetitorAnalysisListItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_CompetitorAnalysisListItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CompetitorAnalysisListItemRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_CompetitorAnalysisListItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[21] = new PropertyWatcher("model",{"propertyChange":true},[bindings[11],bindings[13]],propertyGetter);
         watchers[22] = new PropertyWatcher("isPlatinum",{"propertyChange":true},[bindings[11],bindings[13]],null);
         watchers[1] = new PropertyWatcher("headerColumns",{"propertyChange":true},[bindings[1],bindings[5],bindings[7],bindings[10],bindings[14],bindings[15],bindings[17],bindings[19],bindings[21],bindings[23],bindings[25],bindings[27]],propertyGetter);
         watchers[51] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [8];
         },null,[bindings[27]],null);
         watchers[52] = new PropertyWatcher("width",null,[bindings[27]],null);
         watchers[35] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [4];
         },null,[bindings[19]],null);
         watchers[36] = new PropertyWatcher("width",null,[bindings[19]],null);
         watchers[19] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },null,[bindings[10]],null);
         watchers[20] = new PropertyWatcher("width",null,[bindings[10]],null);
         watchers[2] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [0];
         },null,[bindings[1]],null);
         watchers[3] = new PropertyWatcher("width",null,[bindings[1]],null);
         watchers[39] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [5];
         },null,[bindings[21]],null);
         watchers[40] = new PropertyWatcher("width",null,[bindings[21]],null);
         watchers[25] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },null,[bindings[14]],null);
         watchers[26] = new PropertyWatcher("width",null,[bindings[14]],null);
         watchers[43] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [6];
         },null,[bindings[23]],null);
         watchers[44] = new PropertyWatcher("width",null,[bindings[23]],null);
         watchers[27] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [2];
         },null,[bindings[15]],null);
         watchers[28] = new PropertyWatcher("width",null,[bindings[15]],null);
         watchers[11] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },null,[bindings[5]],null);
         watchers[12] = new PropertyWatcher("width",null,[bindings[5]],null);
         watchers[47] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [7];
         },null,[bindings[25]],null);
         watchers[48] = new PropertyWatcher("width",null,[bindings[25]],null);
         watchers[31] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [3];
         },null,[bindings[17]],null);
         watchers[32] = new PropertyWatcher("width",null,[bindings[17]],null);
         watchers[15] = new FunctionReturnWatcher("getItemAt",target,function():Array
         {
            return [1];
         },null,[bindings[7]],null);
         watchers[16] = new PropertyWatcher("width",null,[bindings[7]],null);
         watchers[13] = new PropertyWatcher("lockImage",{"propertyChange":true},[bindings[6],bindings[9]],propertyGetter);
         watchers[14] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[bindings[6],bindings[9]],null);
         watchers[0] = new PropertyWatcher("itemIndex",{"itemIndexChanged":true},[bindings[0]],propertyGetter);
         watchers[24] = new PropertyWatcher("isRolledOver",{"propertyChange":true},[bindings[13]],propertyGetter);
         watchers[4] = new PropertyWatcher("competitorUrl",{"propertyChange":true},[bindings[2],bindings[3],bindings[4],bindings[8],bindings[11],bindings[13],bindings[16],bindings[18],bindings[20],bindings[22],bindings[24],bindings[26],bindings[28]],propertyGetter);
         watchers[5] = new PropertyWatcher("boldedTitle",{"propertyChange":true},[bindings[2]],null);
         watchers[38] = new PropertyWatcher("juiceLinks",{"propertyChange":true},[bindings[20]],null);
         watchers[50] = new PropertyWatcher("pageRank",{"propertyChange":true},[bindings[26]],null);
         watchers[46] = new PropertyWatcher("mozRank",{"propertyChange":true},[bindings[24]],null);
         watchers[18] = new PropertyWatcher("keywordCompetitiveness",{"propertyChange":true},[bindings[8],bindings[11],bindings[13]],null);
         watchers[54] = new PropertyWatcher("siteAge",{"propertyChange":true},[bindings[28]],null);
         watchers[30] = new PropertyWatcher("pageAuthority",{"propertyChange":true},[bindings[16]],null);
         watchers[42] = new PropertyWatcher("domainAuthority",{"propertyChange":true},[bindings[22]],null);
         watchers[10] = new PropertyWatcher("url",{"propertyChange":true},[bindings[3],bindings[4]],null);
         watchers[34] = new PropertyWatcher("seomozLinks",{"propertyChange":true},[bindings[18]],null);
         watchers[21].updateParent(target);
         watchers[21].addChild(watchers[22]);
         watchers[1].updateParent(target);
         watchers[51].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[51]);
         watchers[51].addChild(watchers[52]);
         watchers[35].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[35]);
         watchers[35].addChild(watchers[36]);
         watchers[19].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[19]);
         watchers[19].addChild(watchers[20]);
         watchers[2].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[2]);
         watchers[2].addChild(watchers[3]);
         watchers[39].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[39]);
         watchers[39].addChild(watchers[40]);
         watchers[25].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[25]);
         watchers[25].addChild(watchers[26]);
         watchers[43].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[43]);
         watchers[43].addChild(watchers[44]);
         watchers[27].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[27]);
         watchers[27].addChild(watchers[28]);
         watchers[11].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[11]);
         watchers[11].addChild(watchers[12]);
         watchers[47].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[47]);
         watchers[47].addChild(watchers[48]);
         watchers[31].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[31]);
         watchers[31].addChild(watchers[32]);
         watchers[15].parentWatcher = watchers[1];
         watchers[1].addChild(watchers[15]);
         watchers[15].addChild(watchers[16]);
         watchers[13].updateParent(target);
         watchers[13].addChild(watchers[14]);
         watchers[0].updateParent(target);
         watchers[24].updateParent(target);
         watchers[4].updateParent(target);
         watchers[4].addChild(watchers[5]);
         watchers[4].addChild(watchers[38]);
         watchers[4].addChild(watchers[50]);
         watchers[4].addChild(watchers[46]);
         watchers[4].addChild(watchers[18]);
         watchers[4].addChild(watchers[54]);
         watchers[4].addChild(watchers[30]);
         watchers[4].addChild(watchers[42]);
         watchers[4].addChild(watchers[10]);
         watchers[4].addChild(watchers[34]);
      }
   }
}
