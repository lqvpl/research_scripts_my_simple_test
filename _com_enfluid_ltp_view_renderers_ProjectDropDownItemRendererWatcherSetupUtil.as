package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.ProjectDropDownItemRenderer;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import com.enfluid.ltp.model.DataModel;
   
   public class _com_enfluid_ltp_view_renderers_ProjectDropDownItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_ProjectDropDownItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         ProjectDropDownItemRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_ProjectDropDownItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("isRolledOver",{"propertyChange":true},[param4[3],param4[5]],param2);
         param5[0] = new PropertyWatcher("project",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[3] = new PropertyWatcher("title",{"propertyChange":true},[param4[1]],null);
         param5[1] = new StaticPropertyWatcher("instance",null,[param4[0]],null);
         param5[2] = new PropertyWatcher("selectedProject",{"propertyChange":true},[param4[0]],null);
         param5[5].updateParent(param1);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[3]);
         param5[1].updateParent(DataModel);
         param5[1].addChild(param5[2]);
      }
   }
}
