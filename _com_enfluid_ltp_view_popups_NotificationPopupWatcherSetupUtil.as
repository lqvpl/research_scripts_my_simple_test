package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.popups.NotificationPopup;
   import mx.binding.StaticPropertyWatcher;
   import mx.binding.PropertyWatcher;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   
   public class _com_enfluid_ltp_view_popups_NotificationPopupWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_popups_NotificationPopupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         NotificationPopup.watcherSetupUtil = new _com_enfluid_ltp_view_popups_NotificationPopupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new StaticPropertyWatcher("instance",null,[param4[1],param4[3]],null);
         param5[6] = new PropertyWatcher("notificationText",{"propertyChange":true},[param4[3]],null);
         param5[3] = new PropertyWatcher("notificationTitle",{"propertyChange":true},[param4[1]],null);
         param5[0] = new StaticPropertyWatcher("instance",null,[param4[0],param4[2]],null);
         param5[1] = new PropertyWatcher("showNotificationTitle",{"propertyChange":true},[param4[0],param4[2]],null);
         param5[2].updateParent(DataModel);
         param5[2].addChild(param5[6]);
         param5[2].addChild(param5[3]);
         param5[0].updateParent(ViewModel);
         param5[0].addChild(param5[1]);
      }
   }
}
