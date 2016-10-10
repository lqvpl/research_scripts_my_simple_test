package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatDeleteColumnHeaderRenderer;
   
   public class _com_enfluid_ltp_view_skins_FlatUIComponents_HeaderRenderer_FlatDeleteColumnHeaderRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_skins_FlatUIComponents_HeaderRenderer_FlatDeleteColumnHeaderRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         FlatDeleteColumnHeaderRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_skins_FlatUIComponents_HeaderRenderer_FlatDeleteColumnHeaderRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}
