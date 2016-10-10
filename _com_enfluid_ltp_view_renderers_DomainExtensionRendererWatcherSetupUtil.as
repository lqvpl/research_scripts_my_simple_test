package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_DomainExtensionRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_DomainExtensionRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DomainExtensionRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_DomainExtensionRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("text",{"propertyChange":true},[param4[3]],param2);
         param5[0] = new PropertyWatcher("availability",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[4]],param2);
         param5[3].updateParent(param1);
         param5[0].updateParent(param1);
      }
   }
}
