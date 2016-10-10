package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_components_CompetitorAnalysisContentComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_CompetitorAnalysisContentComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CompetitorAnalysisContentComponent.watcherSetupUtil = new _com_enfluid_ltp_view_components_CompetitorAnalysisContentComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[1] = new PropertyWatcher("keyword",{"propertyChange":true},[param4[0]],param2);
         param5[2] = new PropertyWatcher("competitorURLs",{"propertyChange":true},[param4[0]],null);
         param5[3] = new PropertyWatcher("length",{"collectionChange":true},[param4[0]],null);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
         param5[2].addChild(param5[3]);
      }
   }
}
