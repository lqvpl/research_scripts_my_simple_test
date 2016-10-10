package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.settings.SettingsHelpSection;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_settings_SettingsHelpSectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_settings_SettingsHelpSectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SettingsHelpSection.watcherSetupUtil = new _com_enfluid_ltp_view_settings_SettingsHelpSectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("_SettingsHelpSection_CheckBox1",{"propertyChange":true},[param4[1]],param2);
         param5[4] = new PropertyWatcher("selected",{"propertyChange":true},[param4[1]],null);
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("preferences",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("showHelpIcons",{"propertyChange":true},[param4[0]],null);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[2]);
      }
   }
}
