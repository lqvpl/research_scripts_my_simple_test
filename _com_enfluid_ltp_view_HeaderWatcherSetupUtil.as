package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.Header;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_HeaderWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_HeaderWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Header.watcherSetupUtil = new _com_enfluid_ltp_view_HeaderWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[8] = new PropertyWatcher("model",{"propertyChange":true},[param4[7],param4[9]],param2);
         param5[11] = new PropertyWatcher("isPlatinum",{"propertyChange":true},[param4[9]],null);
         param5[9] = new PropertyWatcher("selectedProject",{"propertyChange":true},[param4[7]],null);
         param5[10] = new PropertyWatcher("source",{"propertyChange":true},[param4[7]],null);
         param5[14] = new PropertyWatcher("progressBar",{"propertyChange":true},[param4[10]],param2);
         param5[15] = new PropertyWatcher("width",{"widthChanged":true},[param4[10]],null);
         param5[0] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[0],param4[1],param4[3],param4[5],param4[11]],param2);
         param5[4] = new PropertyWatcher("showProxiesCallout",{"propertyChange":true},[param4[3]],null);
         param5[6] = new PropertyWatcher("selectedKeywordsTab",{"propertyChange":true},[param4[5]],null);
         param5[2] = new PropertyWatcher("showSettingsCallout",{"propertyChange":true},[param4[1]],null);
         param5[1] = new PropertyWatcher("headerState",{"propertyChange":true},[param4[0]],null);
         param5[16] = new PropertyWatcher("showMigrationButton",{"propertyChange":true},[param4[11]],null);
         param5[19] = new PropertyWatcher("currentState",{"currentStateChange":true},[param4[14]],param2);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[11]);
         param5[8].addChild(param5[9]);
         param5[9].addChild(param5[10]);
         param5[14].updateParent(param1);
         param5[14].addChild(param5[15]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[6]);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[16]);
         param5[19].updateParent(param1);
      }
   }
}
