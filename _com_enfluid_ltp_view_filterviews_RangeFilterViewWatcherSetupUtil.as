package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.filterviews.RangeFilterView;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_filterviews_RangeFilterViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_filterviews_RangeFilterViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RangeFilterView.watcherSetupUtil = new _com_enfluid_ltp_view_filterviews_RangeFilterViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("min",{"propertyChange":true},[param4[0]],param2);
         param5[2] = new PropertyWatcher("max",{"propertyChange":true},[param4[2]],param2);
         param5[1] = new PropertyWatcher("decimalsAllowed",{"propertyChange":true},[param4[1],param4[3]],param2);
         param5[5] = new PropertyWatcher("_RangeFilterView_FilterValueTextInput2",{"propertyChange":true},[param4[5]],param2);
         param5[6] = new PropertyWatcher("value",{"valueChange":true},[param4[5]],null);
         param5[3] = new PropertyWatcher("_RangeFilterView_FilterValueTextInput1",{"propertyChange":true},[param4[4]],param2);
         param5[4] = new PropertyWatcher("value",{"valueChange":true},[param4[4]],null);
         param5[0].updateParent(param1);
         param5[2].updateParent(param1);
         param5[1].updateParent(param1);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
      }
   }
}
