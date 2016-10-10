package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.filterviews.DomainAvailabilityFilterView;
   import mx.binding.StaticPropertyWatcher;
   import mx.binding.PropertyWatcher;
   import com.enfluid.ltp.model.DataModel;
   
   public class _com_enfluid_ltp_view_filterviews_DomainAvailabilityFilterViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_filterviews_DomainAvailabilityFilterViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DomainAvailabilityFilterView.watcherSetupUtil = new _com_enfluid_ltp_view_filterviews_DomainAvailabilityFilterViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new StaticPropertyWatcher("instance",null,[param4[0]],null);
         param5[1] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("project",{"propertyChange":true},[param4[0]],null);
         param5[3] = new PropertyWatcher("domainsHasAvailableFilter",{"propertyChange":true},[param4[0]],null);
         param5[4] = new PropertyWatcher("_DomainAvailabilityFilterView_CheckBox1",{"propertyChange":true},[param4[1]],param2);
         param5[5] = new PropertyWatcher("selected",{"propertyChange":true},[param4[1]],null);
         param5[0].updateParent(DataModel);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[2]);
         param5[2].addChild(param5[3]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
      }
   }
}
