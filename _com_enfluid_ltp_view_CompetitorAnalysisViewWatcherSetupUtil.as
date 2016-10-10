package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.CompetitorAnalysisView;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_CompetitorAnalysisViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_CompetitorAnalysisViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CompetitorAnalysisView.watcherSetupUtil = new _com_enfluid_ltp_view_CompetitorAnalysisViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("preferences",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("selectedProjectID",{"propertyChange":true},[param4[0]],null);
         param5[7] = new PropertyWatcher("competitorColumns",{"propertyChange":true},[param4[5],param4[7]],param2);
         param5[4] = new PropertyWatcher("keyword",{"propertyChange":true},[param4[2],param4[4],param4[6],param4[8],param4[9],param4[11],param4[13]],param2);
         param5[5] = new PropertyWatcher("isExpanded",{"propertyChange":true},[param4[2]],null);
         param5[8] = new PropertyWatcher("competitorColumnsMajestic",{"propertyChange":true},[param4[10],param4[12]],param2);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[2]);
         param5[7].updateParent(param1);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[8].updateParent(param1);
      }
   }
}
