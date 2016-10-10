package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.missingdatacallouts.DomainsMissingDataCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_missingdatacallouts_DomainsMissingDataCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_missingdatacallouts_DomainsMissingDataCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DomainsMissingDataCallout.watcherSetupUtil = new _com_enfluid_ltp_view_missingdatacallouts_DomainsMissingDataCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3]],param2);
         param5[1] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3]],null);
         param5[4] = new PropertyWatcher("project",{"propertyChange":true},[param4[2],param4[3]],null);
         param5[6] = new PropertyWatcher("domainsHyphenatedExtensions",{"propertyChange":true},[param4[3]],null);
         param5[5] = new PropertyWatcher("domainsExactMatchExtensions",{"propertyChange":true},[param4[2]],null);
         param5[3] = new PropertyWatcher("length",{"collectionChange":true},[param4[1]],null);
         param5[2] = new PropertyWatcher("missingDomainAvailabilityCount",{"propertyChange":true},[param4[0],param4[1]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[4]);
         param5[4].addChild(param5[6]);
         param5[4].addChild(param5[5]);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[2]);
      }
   }
}
