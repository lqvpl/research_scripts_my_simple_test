package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.ToggleSwitchSkin;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_skins_ToggleSwitchSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_skins_ToggleSwitchSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ToggleSwitchSkin.watcherSetupUtil = new _com_enfluid_ltp_view_skins_ToggleSwitchSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("contentGroup",{"propertyChange":true},[param4[1],param4[2]],param2);
         param5[1] = new PropertyWatcher("height",{"heightChanged":true},[param4[2]],null);
         param5[5] = new PropertyWatcher("labelPadding",{"propertyChange":true},[param4[11],param4[12],param4[18],param4[19]],param2);
         param5[4] = new PropertyWatcher("width",{"widthChanged":true},[param4[6],param4[13]],param2);
         param5[8] = new PropertyWatcher("selectedGroup",{"propertyChange":true},[param4[20]],param2);
         param5[9] = new PropertyWatcher("width",{"widthChanged":true},[param4[20]],null);
         param5[3] = new PropertyWatcher("maskRect",{"propertyChange":true},[param4[5]],param2);
         param5[2] = new PropertyWatcher("cornerRadius",{"propertyChange":true},[param4[3],param4[4],param4[7],param4[8],param4[9],param4[10],param4[14],param4[15],param4[16],param4[17],param4[21],param4[22],param4[23],param4[24]],param2);
         param5[6] = new PropertyWatcher("thumb",{"propertyChange":true},[param4[12],param4[18],param4[20]],param2);
         param5[7] = new PropertyWatcher("width",{"widthChanged":true},[param4[12],param4[18],param4[20]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[5].updateParent(param1);
         param5[4].updateParent(param1);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[3].updateParent(param1);
         param5[2].updateParent(param1);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
      }
   }
}
