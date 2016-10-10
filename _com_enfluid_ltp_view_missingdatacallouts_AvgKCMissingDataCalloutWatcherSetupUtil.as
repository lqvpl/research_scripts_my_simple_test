package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.missingdatacallouts.AvgKCMissingDataCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_missingdatacallouts_AvgKCMissingDataCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_missingdatacallouts_AvgKCMissingDataCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AvgKCMissingDataCallout.watcherSetupUtil = new _com_enfluid_ltp_view_missingdatacallouts_AvgKCMissingDataCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[2],param4[3],param4[4],param4[5]],param2);
         param5[7] = new PropertyWatcher("isTrial",{"propertyChange":true},[param4[3],param4[4],param4[5]],null);
         param5[1] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[0],param4[2]],null);
         param5[3] = new PropertyWatcher("length",{"collectionChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("missingAvgKCCount",{"propertyChange":true},[param4[0],param4[2]],null);
         param5[4] = new PropertyWatcher("numMissingLabel",{"propertyChange":true},[param4[1]],param2);
         param5[5] = new PropertyWatcher("width",{"widthChanged":true},[param4[1]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[7]);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[2]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
      }
   }
}
