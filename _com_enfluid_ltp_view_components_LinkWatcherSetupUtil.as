package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.Link;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_components_LinkWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_LinkWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         Link.watcherSetupUtil = new _com_enfluid_ltp_view_components_LinkWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("enabled",{"enabledChanged":true},[param4[2]],param2);
         param5[1] = new PropertyWatcher("upColor",{"propertyChange":true},[param4[0]],param2);
         param5[0] = new PropertyWatcher("rolledOver",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[2].updateParent(param1);
         param5[1].updateParent(param1);
         param5[0].updateParent(param1);
      }
   }
}
