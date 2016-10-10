package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.settings.SettingsDebugSection;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_settings_SettingsDebugSectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_settings_SettingsDebugSectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SettingsDebugSection.watcherSetupUtil = new _com_enfluid_ltp_view_settings_SettingsDebugSectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("preferences",{"propertyChange":true},[param4[0],param4[1]],null);
         param5[2] = new PropertyWatcher("showRuntimeErrors",{"propertyChange":true},[param4[0]],null);
         param5[3] = new PropertyWatcher("showDebugPanel",{"propertyChange":true},[param4[1]],null);
         param5[4] = new PropertyWatcher("_SettingsDebugSection_CheckBox1",{"propertyChange":true},[param4[2]],param2);
         param5[5] = new PropertyWatcher("selected",{"propertyChange":true},[param4[2]],null);
         param5[6] = new PropertyWatcher("_SettingsDebugSection_CheckBox2",{"propertyChange":true},[param4[3]],param2);
         param5[7] = new PropertyWatcher("selected",{"propertyChange":true},[param4[3]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[3]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
      }
   }
}
