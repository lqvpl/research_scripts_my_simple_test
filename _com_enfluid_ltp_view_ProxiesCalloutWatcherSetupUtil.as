package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.ProxiesCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_ProxiesCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_ProxiesCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ProxiesCallout.watcherSetupUtil = new _com_enfluid_ltp_view_ProxiesCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("model",{"propertyChange":true},[param4[5]],param2);
         param5[3] = new PropertyWatcher("proxies",{"propertyChange":true},[param4[5]],null);
         param5[0] = new PropertyWatcher("authenticateCB",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4]],param2);
         param5[1] = new PropertyWatcher("selected",{"propertyChange":true},[param4[1],param4[2],param4[3],param4[4]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}
