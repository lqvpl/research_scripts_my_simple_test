package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.missingdatacallouts.BingTitleCompMissingDataCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_missingdatacallouts_BingTitleCompMissingDataCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_missingdatacallouts_BingTitleCompMissingDataCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         BingTitleCompMissingDataCallout.watcherSetupUtil = new _com_enfluid_ltp_view_missingdatacallouts_BingTitleCompMissingDataCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[6] = new PropertyWatcher("_BingTitleCompMissingDataCallout_AvgDelayComponent1",{"propertyChange":true},[param4[2]],param2);
         param5[7] = new PropertyWatcher("avgDelay",{"propertyChange":true},[param4[2]],null);
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[0],param4[1]],null);
         param5[4] = new PropertyWatcher("project",{"propertyChange":true},[param4[1]],null);
         param5[5] = new PropertyWatcher("bingTitleCompAvgDelay",{"propertyChange":true},[param4[1]],null);
         param5[3] = new PropertyWatcher("length",{"collectionChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("missingBingTitleCompCount",{"propertyChange":true},[param4[0]],null);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[4]);
         param5[4].addChild(param5[5]);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[2]);
      }
   }
}
