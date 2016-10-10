package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.HelpButton;
   import mx.binding.StaticPropertyWatcher;
   import mx.binding.PropertyWatcher;
   import com.enfluid.ltp.model.DataModel;
   
   public class _com_enfluid_ltp_view_components_HelpButtonWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_HelpButtonWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         HelpButton.watcherSetupUtil = new _com_enfluid_ltp_view_components_HelpButtonWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new StaticPropertyWatcher("instance",null,[param4[0],param4[1]],null);
         param5[1] = new PropertyWatcher("preferences",{"propertyChange":true},[param4[0],param4[1]],null);
         param5[2] = new PropertyWatcher("showHelpIcons",{"propertyChange":true},[param4[0],param4[1]],null);
         param5[3] = new PropertyWatcher("helpTitle",{"propertyChange":true},[param4[2]],param2);
         param5[4] = new PropertyWatcher("helpContent",{"propertyChange":true},[param4[3]],param2);
         param5[0].updateParent(DataModel);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[2]);
         param5[3].updateParent(param1);
         param5[4].updateParent(param1);
      }
   }
}
