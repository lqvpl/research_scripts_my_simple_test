package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.RankDrawerSkin;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_skins_RankDrawerSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_skins_RankDrawerSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         RankDrawerSkin.watcherSetupUtil = new _com_enfluid_ltp_view_skins_RankDrawerSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("sineIn",{"propertyChange":true},[param4[5]],param2);
         param5[2] = new PropertyWatcher("sineOut",{"propertyChange":true},[param4[3]],param2);
         param5[1] = new PropertyWatcher("contentGroup",{"propertyChange":true},[param4[1],param4[6]],param2);
         param5[0] = new PropertyWatcher("shadow",{"propertyChange":true},[param4[0]],param2);
         param5[4] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[7]],param2);
         param5[5] = new PropertyWatcher("label",{"propertyChange":true},[param4[7]],null);
         param5[3].updateParent(param1);
         param5[2].updateParent(param1);
         param5[1].updateParent(param1);
         param5[0].updateParent(param1);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
      }
   }
}
