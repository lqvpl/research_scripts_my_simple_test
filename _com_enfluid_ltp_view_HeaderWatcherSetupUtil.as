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
         param5[4] = new PropertyWatcher("model",{"propertyChange":true},[param4[3]],param2);
         param5[5] = new PropertyWatcher("isPlatinum",{"propertyChange":true},[param4[3]],null);
         param5[8] = new PropertyWatcher("progressBar",{"propertyChange":true},[param4[4]],param2);
         param5[9] = new PropertyWatcher("width",{"widthChanged":true},[param4[4]],null);
         param5[0] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[2] = new PropertyWatcher("showSettingsCallout",{"propertyChange":true},[param4[1]],null);
         param5[1] = new PropertyWatcher("headerState",{"propertyChange":true},[param4[0]],null);
         param5[12] = new PropertyWatcher("currentState",{"currentStateChange":true},[param4[7]],param2);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[1]);
         param5[12].updateParent(param1);
      }
   }
}
