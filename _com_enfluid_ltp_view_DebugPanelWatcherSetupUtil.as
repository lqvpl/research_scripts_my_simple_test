package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.DebugPanel;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_DebugPanelWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_DebugPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DebugPanel.watcherSetupUtil = new _com_enfluid_ltp_view_DebugPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("model",{"propertyChange":true},[param4[2],param4[3],param4[4]],param2);
         param5[3] = new PropertyWatcher("mostRecentGoogleSearchResult",{"propertyChange":true},[param4[2]],null);
         param5[5] = new PropertyWatcher("logText",{"propertyChange":true},[param4[4]],null);
         param5[4] = new PropertyWatcher("mostRecentFailedSEOMozREsult",{"propertyChange":true},[param4[3]],null);
         param5[0] = new PropertyWatcher("myViewStack",{"propertyChange":true},[param4[0]],param2);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[2].addChild(param5[5]);
         param5[2].addChild(param5[4]);
         param5[0].updateParent(param1);
      }
   }
}
