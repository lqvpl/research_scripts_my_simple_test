package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.CompetitorAnalysisHeaderComponent;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_components_CompetitorAnalysisHeaderComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_CompetitorAnalysisHeaderComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CompetitorAnalysisHeaderComponent.watcherSetupUtil = new _com_enfluid_ltp_view_components_CompetitorAnalysisHeaderComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("width",{"widthChanged":true},[param4[0],param4[3],param4[6],param4[9],param4[12],param4[15],param4[18],param4[21],param4[24]],param2);
         param5[0].updateParent(param1);
      }
   }
}
