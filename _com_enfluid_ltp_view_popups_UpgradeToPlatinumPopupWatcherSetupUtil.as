package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.popups.UpgradeToPlatinumPopup;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import com.enfluid.ltp.model.ViewModel;
   
   public class _com_enfluid_ltp_view_popups_UpgradeToPlatinumPopupWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_popups_UpgradeToPlatinumPopupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         UpgradeToPlatinumPopup.watcherSetupUtil = new _com_enfluid_ltp_view_popups_UpgradeToPlatinumPopupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("userEmail",{"propertyChange":true},[param4[0]],null);
         param5[2] = new StaticPropertyWatcher("instance",null,[param4[1],param4[2]],null);
         param5[3] = new PropertyWatcher("hasSubscribeToPlatinumError",{"propertyChange":true},[param4[1],param4[2]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[2].updateParent(ViewModel);
         param5[2].addChild(param5[3]);
      }
   }
}
