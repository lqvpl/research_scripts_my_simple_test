package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.RankChecker.RankCheckerSettingsPanel;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import com.enfluid.ltp.model.DataModel;
   
   public class _com_enfluid_ltp_view_RankChecker_RankCheckerSettingsPanelWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_RankChecker_RankCheckerSettingsPanelWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RankCheckerSettingsPanel.watcherSetupUtil = new _com_enfluid_ltp_view_RankChecker_RankCheckerSettingsPanelWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[7] = new PropertyWatcher("languageCombo",{"propertyChange":true},[param4[5]],param2);
         param5[8] = new PropertyWatcher("selectedItem",{
            "valueCommit":true,
            "change":true
         },[param4[5]],null);
         param5[5] = new PropertyWatcher("countryCombo",{"propertyChange":true},[param4[4]],param2);
         param5[6] = new PropertyWatcher("selectedItem",{
            "valueCommit":true,
            "change":true
         },[param4[4]],null);
         param5[1] = new StaticPropertyWatcher("instance",null,[param4[1],param4[3]],null);
         param5[4] = new PropertyWatcher("selectedLanguage",{"propertyChange":true},[param4[3]],null);
         param5[2] = new PropertyWatcher("selectedCountry",{"propertyChange":true},[param4[1]],null);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[1].updateParent(DataModel);
         param5[1].addChild(param5[4]);
         param5[1].addChild(param5[2]);
      }
   }
}
