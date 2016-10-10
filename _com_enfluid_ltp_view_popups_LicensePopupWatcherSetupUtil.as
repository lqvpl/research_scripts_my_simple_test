package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.popups.LicensePopup;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_popups_LicensePopupWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_popups_LicensePopupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LicensePopup.watcherSetupUtil = new _com_enfluid_ltp_view_popups_LicensePopupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[2]],param2);
         param5[4] = new PropertyWatcher("licenseStatus",{"propertyChange":true},[param4[2]],null);
         param5[1] = new PropertyWatcher("trialDaysRemaining",{"propertyChange":true},[param4[0]],null);
         param5[5] = new PropertyWatcher("showTrialOptions",{"propertyChange":true},[param4[3]],param2);
         param5[2] = new PropertyWatcher("isError",{"propertyChange":true},[param4[1]],param2);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[1]);
         param5[5].updateParent(param1);
         param5[2].updateParent(param1);
      }
   }
}
