package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.CalculatableValueGroup;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_CalculatableValueGroupWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_CalculatableValueGroupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CalculatableValueGroup.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_CalculatableValueGroupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[4] = new PropertyWatcher("model",{"propertyChange":true},[param4[0]],param2);
         param5[5] = new PropertyWatcher("isPlatinum",{"propertyChange":true},[param4[0]],null);
         param5[3] = new PropertyWatcher("isRolledOverText",{"propertyChange":true},[param4[0]],param2);
         param5[2] = new PropertyWatcher("isRolledOverRow",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("value",{"propertyChange":true},[param4[0],param4[1],param4[2]],param2);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[3].updateParent(param1);
         param5[2].updateParent(param1);
         param5[1].updateParent(param1);
      }
   }
}
