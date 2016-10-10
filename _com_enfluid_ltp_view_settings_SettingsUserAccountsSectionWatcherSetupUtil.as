package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.settings.SettingsUserAccountsSection;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_settings_SettingsUserAccountsSectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_settings_SettingsUserAccountsSectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SettingsUserAccountsSection.watcherSetupUtil = new _com_enfluid_ltp_view_settings_SettingsUserAccountsSectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5],param4[6],param4[8],param4[9],param4[10],param4[11],param4[12],param4[13]],param2);
         param5[2] = new PropertyWatcher("gUserName",{"propertyChange":true},[param4[1]],null);
         param5[1] = new PropertyWatcher("autoLoginGoogle",{"propertyChange":true},[param4[0],param4[2],param4[3],param4[4],param4[5]],null);
         param5[4] = new PropertyWatcher("gPassword",{"propertyChange":true},[param4[1]],null);
         param5[8] = new PropertyWatcher("preferences",{"propertyChange":true},[param4[8],param4[9],param4[10],param4[11],param4[12],param4[13]],null);
         param5[9] = new PropertyWatcher("userSeoMozAccessId",{"propertyChange":true},[param4[8],param4[9],param4[10],param4[11],param4[12],param4[13]],null);
         param5[10] = new PropertyWatcher("userSeoMozSecretKey",{"propertyChange":true},[param4[8],param4[9],param4[10],param4[11],param4[12],param4[13]],null);
         param5[5] = new PropertyWatcher("selectedProject",{"propertyChange":true},[param4[6]],null);
         param5[6] = new PropertyWatcher("source",{"propertyChange":true},[param4[6]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[8]);
         param5[8].addChild(param5[9]);
         param5[8].addChild(param5[10]);
         param5[0].addChild(param5[5]);
         param5[5].addChild(param5[6]);
      }
   }
}
