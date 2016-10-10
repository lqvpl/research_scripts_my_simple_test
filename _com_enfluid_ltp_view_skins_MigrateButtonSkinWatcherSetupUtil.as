package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.MigrateButtonSkin;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_skins_MigrateButtonSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_skins_MigrateButtonSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         MigrateButtonSkin.watcherSetupUtil = new _com_enfluid_ltp_view_skins_MigrateButtonSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("width",{"widthChanged":true},[param4[0]],param2);
         param5[0].updateParent(param1);
      }
   }
}
