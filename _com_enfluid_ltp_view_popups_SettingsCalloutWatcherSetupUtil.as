package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.popups.SettingsCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_popups_SettingsCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_popups_SettingsCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SettingsCallout.watcherSetupUtil = new _com_enfluid_ltp_view_popups_SettingsCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5],param4[6],param4[7],param4[8],param4[9],param4[10],param4[11],param4[12],param4[13],param4[14],param4[15],param4[16],param4[17],param4[19],param4[20]],param2);
         param5[4] = new PropertyWatcher("gUserName",{"propertyChange":true},[param4[3]],null);
         param5[3] = new PropertyWatcher("autoLoginGoogle",{"propertyChange":true},[param4[1],param4[2],param4[4],param4[5],param4[7],param4[8]],null);
         param5[6] = new PropertyWatcher("gPassword",{"propertyChange":true},[param4[6]],null);
         param5[1] = new PropertyWatcher("preferences",{"propertyChange":true},[param4[0],param4[9],param4[10],param4[11],param4[12],param4[13],param4[14],param4[15],param4[16],param4[17],param4[19],param4[20]],null);
         param5[10] = new PropertyWatcher("showRuntimeErrors",{"propertyChange":true},[param4[19]],null);
         param5[7] = new PropertyWatcher("userSeoMozAccessId",{"propertyChange":true},[param4[9],param4[10],param4[11],param4[12],param4[13],param4[15],param4[16],param4[17]],null);
         param5[2] = new PropertyWatcher("showHelpIcons",{"propertyChange":true},[param4[0]],null);
         param5[11] = new PropertyWatcher("showDebugPanel",{"propertyChange":true},[param4[20]],null);
         param5[8] = new PropertyWatcher("userSeoMozSecretKey",{"propertyChange":true},[param4[9],param4[10],param4[12],param4[13],param4[14],param4[15],param4[16],param4[17]],null);
         param5[14] = new PropertyWatcher("_SettingsCallout_CheckBox2",{"propertyChange":true},[param4[22]],param2);
         param5[15] = new PropertyWatcher("selected",{"propertyChange":true},[param4[22]],null);
         param5[16] = new PropertyWatcher("_SettingsCallout_CheckBox3",{"propertyChange":true},[param4[23]],param2);
         param5[17] = new PropertyWatcher("selected",{"propertyChange":true},[param4[23]],null);
         param5[12] = new PropertyWatcher("_SettingsCallout_CheckBox1",{"propertyChange":true},[param4[21]],param2);
         param5[13] = new PropertyWatcher("selected",{"propertyChange":true},[param4[21]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[3]);
         param5[0].addChild(param5[6]);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[10]);
         param5[1].addChild(param5[7]);
         param5[1].addChild(param5[2]);
         param5[1].addChild(param5[11]);
         param5[1].addChild(param5[8]);
         param5[14].updateParent(param1);
         param5[14].addChild(param5[15]);
         param5[16].updateParent(param1);
         param5[16].addChild(param5[17]);
         param5[12].updateParent(param1);
         param5[12].addChild(param5[13]);
      }
   }
}
