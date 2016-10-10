package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.AvgKCRendererGroup;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_AvgKCRendererGroupWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_AvgKCRendererGroupWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AvgKCRendererGroup.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_AvgKCRendererGroupWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("model",{"propertyChange":true},[param4[0]],param2);
         param5[6] = new PropertyWatcher("isPlatinum",{"propertyChange":true},[param4[0]],null);
         param5[4] = new PropertyWatcher("isRolledOverText",{"propertyChange":true},[param4[0]],param2);
         param5[3] = new PropertyWatcher("isRolledOverRow",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("keyword",{"propertyChange":true},[param4[0],param4[1],param4[2]],param2);
         param5[2] = new PropertyWatcher("avgKC",{"propertyChange":true},[param4[0],param4[1],param4[2]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[6]);
         param5[4].updateParent(param1);
         param5[3].updateParent(param1);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
      }
   }
}
