package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.AvgDelayComponent;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_components_AvgDelayComponentWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_AvgDelayComponentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AvgDelayComponent.watcherSetupUtil = new _com_enfluid_ltp_view_components_AvgDelayComponentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("avgDelay",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("_AvgDelayComponent_NumericStepper1",{"propertyChange":true},[param4[1]],param2);
         param5[2] = new PropertyWatcher("value",{"valueCommit":true},[param4[1]],null);
         param5[0].updateParent(param1);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
      }
   }
}
