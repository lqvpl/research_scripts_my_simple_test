package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.popups.ConvertingDBPopup;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_popups_ConvertingDBPopupWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_popups_ConvertingDBPopupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ConvertingDBPopup.watcherSetupUtil = new _com_enfluid_ltp_view_popups_ConvertingDBPopupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[0],param4[2],param4[3],param4[5]],param2);
         param5[1] = new PropertyWatcher("dataConverted",{"propertyChange":true},[param4[0]],null);
         param5[4] = new PropertyWatcher("conversionText",{"propertyChange":true},[param4[5]],null);
         param5[3] = new PropertyWatcher("showReConvertingMessage",{"propertyChange":true},[param4[2],param4[3]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[3]);
      }
   }
}
