package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.popups.CaptchaPopup;
   import mx.binding.PropertyWatcher;
   
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
         param5[9] = new PropertyWatcher("captchaInput",{"propertyChange":true},[param4[6]],param2);
         param5[10] = new PropertyWatcher("text",{
            "change":true,
            "textChanged":true
         },[param4[6]],null);
         param5[7] = new PropertyWatcher("model",{"propertyChange":true},[param4[4],param4[5]],param2);
         param5[8] = new PropertyWatcher("isCheckingRanks",{"propertyChange":true},[param4[4],param4[5]],null);
         param5[1] = new PropertyWatcher("proxy",{"propertyChange":true},[param4[0]],param2);
         param5[3] = new PropertyWatcher("captchaBitmapData",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("captchaImageUrl",{"propertyChange":true},[param4[0]],null);
         param5[4] = new PropertyWatcher("captcha",{"propertyChange":true},[param4[1],param4[3]],param2);
         param5[5] = new PropertyWatcher("width",{"propertyChange":true},[param4[1],param4[3]],null);
         param5[6] = new PropertyWatcher("enteredCaptcha",{"propertyChange":true},[param4[2]],param2);
         param5[9].updateParent(param1);
         param5[9].addChild(param5[10]);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[3]);
         param5[1].addChild(param5[2]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[6].updateParent(param1);
      }
   }
}
