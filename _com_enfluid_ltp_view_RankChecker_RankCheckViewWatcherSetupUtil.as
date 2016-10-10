package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.RankChecker.RankCheckView;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_RankChecker_RankCheckViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_RankChecker_RankCheckViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RankCheckView.watcherSetupUtil = new _com_enfluid_ltp_view_RankChecker_RankCheckViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3]],param2);
         param5[2] = new PropertyWatcher("isCheckingRanks",{"propertyChange":true},[param4[1],param4[2],param4[3]],null);
         param5[1] = new PropertyWatcher("gridDataChanged",{"propertyChange":true},[param4[0]],null);
         param5[5] = new PropertyWatcher("resultsGrid",{"propertyChange":true},[param4[6],param4[7],param4[8],param4[9],param4[10],param4[11]],param2);
         param5[6] = new PropertyWatcher("width",{"widthChanged":true},[param4[6],param4[7],param4[8],param4[9],param4[10],param4[11]],null);
         param5[4] = new PropertyWatcher("rankCheckItems",{"propertyChange":true},[param4[5]],param2);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[1]);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[4].updateParent(param1);
      }
   }
}
