package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Checkbox.GeneralCheckboxSkin;
   
   public class _com_enfluid_ltp_view_skins_FlatUIComponents_Checkbox_GeneralCheckboxSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_skins_FlatUIComponents_Checkbox_GeneralCheckboxSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GeneralCheckboxSkin.watcherSetupUtil = new _com_enfluid_ltp_view_skins_FlatUIComponents_Checkbox_GeneralCheckboxSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}
