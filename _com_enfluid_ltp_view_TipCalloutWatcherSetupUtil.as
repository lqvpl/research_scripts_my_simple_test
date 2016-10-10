package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.TipCallout;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import com.enfluid.ltp.model.ViewModel;
   
   public class _com_enfluid_ltp_view_TipCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_TipCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TipCallout.watcherSetupUtil = new _com_enfluid_ltp_view_TipCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("tipText",{"propertyChange":true},[param4[1]],param2);
         param5[0] = new StaticPropertyWatcher("instance",null,[param4[0]],null);
         param5[1] = new PropertyWatcher("appInitialized",{"propertyChange":true},[param4[0]],null);
         param5[2].updateParent(param1);
         param5[0].updateParent(ViewModel);
         param5[0].addChild(param5[1]);
      }
   }
}
