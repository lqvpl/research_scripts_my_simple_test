package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.RankDrawerOpenButtonSkin;
   
   public class _com_enfluid_ltp_view_skins_RankDrawerOpenButtonSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_skins_RankDrawerOpenButtonSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RankDrawerOpenButtonSkin.watcherSetupUtil = new _com_enfluid_ltp_view_skins_RankDrawerOpenButtonSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}
