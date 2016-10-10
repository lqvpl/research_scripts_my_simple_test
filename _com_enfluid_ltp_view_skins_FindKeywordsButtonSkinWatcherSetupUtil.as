package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.FindKeywordsButtonSkin;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_skins_FindKeywordsButtonSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_skins_FindKeywordsButtonSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FindKeywordsButtonSkin.watcherSetupUtil = new _com_enfluid_ltp_view_skins_FindKeywordsButtonSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("height",{"heightChanged":true},[param4[0],param4[1],param4[2],param4[3],param4[6]],param2);
         param5[2] = new PropertyWatcher("width",{"widthChanged":true},[param4[5]],param2);
         param5[0].updateParent(param1);
         param5[2].updateParent(param1);
      }
   }
}
