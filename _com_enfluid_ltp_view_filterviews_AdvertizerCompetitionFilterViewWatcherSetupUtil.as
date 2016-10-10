package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.filterviews.AdvertizerCompetitionFilterView;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_filterviews_AdvertizerCompetitionFilterViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_filterviews_AdvertizerCompetitionFilterViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AdvertizerCompetitionFilterView.watcherSetupUtil = new _com_enfluid_ltp_view_filterviews_AdvertizerCompetitionFilterViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("highCheckBox",{"propertyChange":true},[param4[0],param4[2],param4[8]],param2);
         param5[3] = new PropertyWatcher("selected",{"propertyChange":true},[param4[0],param4[2],param4[8]],null);
         param5[4] = new PropertyWatcher("model",{"propertyChange":true},[param4[1],param4[3],param4[5]],param2);
         param5[5] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[1],param4[3],param4[5]],null);
         param5[6] = new PropertyWatcher("project",{"propertyChange":true},[param4[1],param4[3],param4[5]],null);
         param5[11] = new PropertyWatcher("advertiserCompFilterHigh",{"propertyChange":true},[param4[5]],null);
         param5[10] = new PropertyWatcher("advertiserCompFilterMed",{"propertyChange":true},[param4[3]],null);
         param5[7] = new PropertyWatcher("advertiserCompFilterLow",{"propertyChange":true},[param4[1]],null);
         param5[0] = new PropertyWatcher("medCheckBox",{"propertyChange":true},[param4[0],param4[4],param4[7]],param2);
         param5[1] = new PropertyWatcher("selected",{"propertyChange":true},[param4[0],param4[4],param4[7]],null);
         param5[8] = new PropertyWatcher("lowCheckBox",{"propertyChange":true},[param4[2],param4[4],param4[6]],param2);
         param5[9] = new PropertyWatcher("selected",{"propertyChange":true},[param4[2],param4[4],param4[6]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[5].addChild(param5[6]);
         param5[6].addChild(param5[11]);
         param5[6].addChild(param5[10]);
         param5[6].addChild(param5[7]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
      }
   }
}
