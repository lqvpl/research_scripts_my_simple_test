package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.dataandfilters.domain.DomainAvailabilitySection;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_dataandfilters_domain_DomainAvailabilitySectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_dataandfilters_domain_DomainAvailabilitySectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DomainAvailabilitySection.watcherSetupUtil = new _com_enfluid_ltp_view_dataandfilters_domain_DomainAvailabilitySectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("model",{"propertyChange":true},[param4[2],param4[3],param4[4]],param2);
         param5[3] = new PropertyWatcher("selectedProject",{"propertyChange":true},[param4[2],param4[3],param4[4]],null);
         param5[4] = new PropertyWatcher("domainsEnabled",{"propertyChange":true},[param4[2]],null);
         param5[6] = new PropertyWatcher("domainsHyphenatedExtensions",{"propertyChange":true},[param4[4]],null);
         param5[5] = new PropertyWatcher("domainsExactMatchExtensions",{"propertyChange":true},[param4[3]],null);
         param5[7] = new PropertyWatcher("expanded",{"collapsedChanged":true},[param4[5]],param2);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[3].addChild(param5[4]);
         param5[3].addChild(param5[6]);
         param5[3].addChild(param5[5]);
         param5[7].updateParent(param1);
      }
   }
}
