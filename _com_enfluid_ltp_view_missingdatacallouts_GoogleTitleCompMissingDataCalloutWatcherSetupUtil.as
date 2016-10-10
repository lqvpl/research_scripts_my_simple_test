package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.missingdatacallouts.GoogleTitleCompMissingDataCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_missingdatacallouts_GoogleTitleCompMissingDataCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_missingdatacallouts_GoogleTitleCompMissingDataCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GoogleTitleCompMissingDataCallout.watcherSetupUtil = new _com_enfluid_ltp_view_missingdatacallouts_GoogleTitleCompMissingDataCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[0]],null);
         param5[3] = new PropertyWatcher("length",{"collectionChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("missingGoogleTitleCompCount",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[2]);
      }
   }
}
