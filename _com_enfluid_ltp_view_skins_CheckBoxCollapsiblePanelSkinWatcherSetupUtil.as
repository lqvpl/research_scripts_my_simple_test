package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.CheckBoxCollapsiblePanelSkin;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import com.enfluid.ltp.model.DataModel;
   
   public class _com_enfluid_ltp_view_skins_CheckBoxCollapsiblePanelSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_skins_CheckBoxCollapsiblePanelSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CheckBoxCollapsiblePanelSkin.watcherSetupUtil = new _com_enfluid_ltp_view_skins_CheckBoxCollapsiblePanelSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[4] = new PropertyWatcher("uncollapseEaser",{"propertyChange":true},[param4[6],param4[8]],param2);
         param5[0] = new PropertyWatcher("contentGroup",{"propertyChange":true},[param4[0],param4[7]],param2);
         param5[9] = new StaticPropertyWatcher("instance",null,[param4[11],param4[12]],null);
         param5[10] = new PropertyWatcher("preferences",{"propertyChange":true},[param4[11],param4[12]],null);
         param5[11] = new PropertyWatcher("showHelpIcons",{"propertyChange":true},[param4[11],param4[12]],null);
         param5[5] = new PropertyWatcher("currentState",{"currentStateChange":true},[param4[10]],param2);
         param5[3] = new PropertyWatcher("titleBarGroup",{"propertyChange":true},[param4[4],param4[9]],param2);
         param5[6] = new PropertyWatcher("hostComponent",{"propertyChange":true},[param4[11],param4[12],param4[13],param4[14]],param2);
         param5[7] = new PropertyWatcher("helpTitle",{"propertyChange":true},[param4[11],param4[12],param4[13]],null);
         param5[8] = new PropertyWatcher("helpContent",{"propertyChange":true},[param4[11],param4[12],param4[14]],null);
         param5[1] = new PropertyWatcher("bgFill",{"propertyChange":true},[param4[0]],param2);
         param5[2] = new PropertyWatcher("collapseEaser",{"propertyChange":true},[param4[1],param4[3]],param2);
         param5[4].updateParent(param1);
         param5[0].updateParent(param1);
         param5[9].updateParent(DataModel);
         param5[9].addChild(param5[10]);
         param5[10].addChild(param5[11]);
         param5[5].updateParent(param1);
         param5[3].updateParent(param1);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[6].addChild(param5[8]);
         param5[1].updateParent(param1);
         param5[2].updateParent(param1);
      }
   }
}
