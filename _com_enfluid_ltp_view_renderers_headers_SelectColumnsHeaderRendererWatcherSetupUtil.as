package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.headers.SelectColumnsHeaderRenderer;
   
   public class _com_enfluid_ltp_view_renderers_headers_SelectColumnsHeaderRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_headers_SelectColumnsHeaderRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SelectColumnsHeaderRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_headers_SelectColumnsHeaderRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}
