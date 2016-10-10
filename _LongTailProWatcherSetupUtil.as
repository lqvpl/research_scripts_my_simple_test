package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import com.enfluid.ltp.model.ViewModel;
   
   public class _LongTailProWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _LongTailProWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LongTailPro.watcherSetupUtil = new _LongTailProWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[11] = new PropertyWatcher("logo",{"propertyChange":true},[param4[10]],param2);
         param5[15] = new PropertyWatcher("model",{"propertyChange":true},[param4[16],param4[20],param4[21],param4[23]],param2);
         param5[25] = new PropertyWatcher("projects",{"propertyChange":true},[param4[21]],null);
         param5[26] = new PropertyWatcher("length",null,[param4[21]],null);
         param5[16] = new PropertyWatcher("isPlatinum",{"propertyChange":true},[param4[16]],null);
         param5[24] = new PropertyWatcher("allowUserIn",{"propertyChange":true},[param4[20],param4[23]],null);
         param5[22] = new PropertyWatcher("fadeInContent",{"propertyChange":true},[param4[19]],param2);
         param5[19] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[17],param4[18],param4[20],param4[23]],param2);
         param5[23] = new PropertyWatcher("appInitialized",{"propertyChange":true},[param4[20],param4[23]],null);
         param5[21] = new PropertyWatcher("startupText",{"propertyChange":true},[param4[18]],null);
         param5[20] = new PropertyWatcher("versionDetermined",{"propertyChange":true},[param4[17]],null);
         param5[14] = new PropertyWatcher("fadeInLogo",{"propertyChange":true},[param4[15]],param2);
         param5[10] = new PropertyWatcher("powerEasing",{"propertyChange":true},[param4[9],param4[11],param4[13]],param2);
         param5[12] = new PropertyWatcher("content",{"propertyChange":true},[param4[12]],param2);
         param5[13] = new PropertyWatcher("rankDrawer",{"propertyChange":true},[param4[14]],param2);
         param5[28] = new PropertyWatcher("mainView",{"propertyChange":true},[param4[24]],param2);
         param5[29] = new PropertyWatcher("height",{"heightChanged":true},[param4[24]],null);
         param5[27] = new PropertyWatcher("fadeInRankDrawer",{"propertyChange":true},[param4[22]],param2);
         param5[0] = new StaticPropertyWatcher("instance",null,[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5],param4[6],param4[7],param4[8]],null);
         param5[1] = new PropertyWatcher("showNotificationMessage",{"propertyChange":true},[param4[0]],null);
         param5[4] = new PropertyWatcher("showMigrationPopup",{"propertyChange":true},[param4[3]],null);
         param5[2] = new PropertyWatcher("showSEOMozPopup",{"propertyChange":true},[param4[1]],null);
         param5[5] = new PropertyWatcher("showKeywordPlannerLoginPopup",{"propertyChange":true},[param4[4]],null);
         param5[6] = new PropertyWatcher("showConvertingDBPopup",{"propertyChange":true},[param4[5]],null);
         param5[7] = new PropertyWatcher("showLicensePopup",{"propertyChange":true},[param4[6]],null);
         param5[9] = new PropertyWatcher("runtimeErrorText",{"propertyChange":true},[param4[8]],null);
         param5[8] = new PropertyWatcher("showEULAPopup",{"propertyChange":true},[param4[7]],null);
         param5[3] = new PropertyWatcher("showUpgradeToPlatinumPopup",{"propertyChange":true},[param4[2]],null);
         param5[11].updateParent(param1);
         param5[15].updateParent(param1);
         param5[15].addChild(param5[25]);
         param5[25].addChild(param5[26]);
         param5[15].addChild(param5[16]);
         param5[15].addChild(param5[24]);
         param5[22].updateParent(param1);
         param5[19].updateParent(param1);
         param5[19].addChild(param5[23]);
         param5[19].addChild(param5[21]);
         param5[19].addChild(param5[20]);
         param5[14].updateParent(param1);
         param5[10].updateParent(param1);
         param5[12].updateParent(param1);
         param5[13].updateParent(param1);
         param5[28].updateParent(param1);
         param5[28].addChild(param5[29]);
         param5[27].updateParent(param1);
         param5[0].updateParent(ViewModel);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[5]);
         param5[0].addChild(param5[6]);
         param5[0].addChild(param5[7]);
         param5[0].addChild(param5[9]);
         param5[0].addChild(param5[8]);
         param5[0].addChild(param5[3]);
      }
   }
}
