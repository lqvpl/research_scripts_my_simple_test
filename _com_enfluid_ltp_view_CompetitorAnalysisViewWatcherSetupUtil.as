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
         param5[1] = new PropertyWatcher("competitorColumns",{"propertyChange":true},[param4[1],param4[3]],param2);
         param5[0] = new PropertyWatcher("keyword",{"propertyChange":true},[param4[0],param4[2],param4[4]],param2);
         param5[1].updateParent(param1);
         param5[0].updateParent(param1);
      }
   }
}
