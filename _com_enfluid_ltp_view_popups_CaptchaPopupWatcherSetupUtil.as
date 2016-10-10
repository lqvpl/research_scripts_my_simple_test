package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.popups.CaptchaPopup;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import com.enfluid.ltp.model.ViewModel;
   
   public class _com_enfluid_ltp_view_popups_CaptchaPopupWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_popups_CaptchaPopupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CaptchaPopup.watcherSetupUtil = new _com_enfluid_ltp_view_popups_CaptchaPopupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[7] = new PropertyWatcher("captchaInput",{"propertyChange":true},[param4[4]],param2);
         param5[8] = new PropertyWatcher("text",{
            "change":true,
            "textChanged":true
         },[param4[4]],null);
         param5[5] = new PropertyWatcher("model",{"propertyChange":true},[param4[3]],param2);
         param5[6] = new PropertyWatcher("isCheckingRanks",{"propertyChange":true},[param4[3]],null);
         param5[3] = new PropertyWatcher("captcha",{"propertyChange":true},[param4[2]],param2);
         param5[4] = new PropertyWatcher("width",{"propertyChange":true},[param4[2]],null);
         param5[2] = new PropertyWatcher("enteredCaptcha",{"propertyChange":true},[param4[1]],param2);
         param5[0] = new StaticPropertyWatcher("instance",null,[param4[0]],null);
         param5[1] = new PropertyWatcher("captchaImageUrl",{"propertyChange":true},[param4[0]],null);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[2].updateParent(param1);
         param5[0].updateParent(ViewModel);
         param5[0].addChild(param5[1]);
      }
   }
}
