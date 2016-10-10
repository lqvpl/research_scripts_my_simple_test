package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.RankChecker.AddRankCheckerItemPanel;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_RankChecker_AddRankCheckerItemPanelWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_RankChecker_AddRankCheckerItemPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AddRankCheckerItemPanel.watcherSetupUtil = new _com_enfluid_ltp_view_RankChecker_AddRankCheckerItemPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("rankDomains",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}
