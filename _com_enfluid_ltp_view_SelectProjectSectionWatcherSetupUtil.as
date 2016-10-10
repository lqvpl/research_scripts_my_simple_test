package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.SelectProjectSection;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_SelectProjectSectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_SelectProjectSectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SelectProjectSection.watcherSetupUtil = new _com_enfluid_ltp_view_SelectProjectSectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("model",{"propertyChange":true},[param4[5],param4[6]],param2);
         param5[6] = new PropertyWatcher("projects",{"propertyChange":true},[param4[5]],null);
         param5[7] = new PropertyWatcher("selectedProject",{"propertyChange":true},[param4[6]],null);
         param5[4] = new PropertyWatcher("height",{"heightChanged":true},[param4[3]],param2);
         param5[0] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("showCreateProjectCallout",{"propertyChange":true},[param4[0]],null);
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[2]],param2);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[5].addChild(param5[7]);
         param5[4].updateParent(param1);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[3].updateParent(param1);
      }
   }
}
