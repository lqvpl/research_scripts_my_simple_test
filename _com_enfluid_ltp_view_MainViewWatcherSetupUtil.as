package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.MainView;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_MainViewWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_MainViewWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MainView.watcherSetupUtil = new _com_enfluid_ltp_view_MainViewWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("model",{"propertyChange":true},[param4[1],param4[2]],param2);
         param5[3] = new PropertyWatcher("preferences",{"propertyChange":true},[param4[1],param4[2]],null);
         param5[4] = new PropertyWatcher("showDebugPanel",{"propertyChange":true},[param4[1],param4[2]],null);
         param5[0] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("showDomainCaptcha",{"propertyChange":true},[param4[0]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[3].addChild(param5[4]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}
