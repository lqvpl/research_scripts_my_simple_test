package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.dataandfilters.GoogleTitleCompetitionSection;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_dataandfilters_GoogleTitleCompetitionSectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_dataandfilters_GoogleTitleCompetitionSectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GoogleTitleCompetitionSection.watcherSetupUtil = new _com_enfluid_ltp_view_dataandfilters_GoogleTitleCompetitionSectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("model",{"propertyChange":true},[param4[2],param4[3]],param2);
         param5[3] = new PropertyWatcher("selectedProject",{"propertyChange":true},[param4[2],param4[3]],null);
         param5[5] = new PropertyWatcher("googleTitleCompAvgDelay",{"propertyChange":true},[param4[3]],null);
         param5[4] = new PropertyWatcher("googleTitleCompEnabled",{"propertyChange":true},[param4[2]],null);
         param5[7] = new PropertyWatcher("_GoogleTitleCompetitionSection_AvgDelayComponent1",{"propertyChange":true},[param4[5]],param2);
         param5[8] = new PropertyWatcher("avgDelay",{"propertyChange":true},[param4[5]],null);
         param5[6] = new PropertyWatcher("expanded",{"collapsedChanged":true},[param4[4]],param2);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[3].addChild(param5[5]);
         param5[3].addChild(param5[4]);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
         param5[6].updateParent(param1);
      }
   }
}
