package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.majestic.KeywordColumnsSelection;
   
   public class _com_enfluid_ltp_view_components_majestic_KeywordColumnsSelectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_majestic_KeywordColumnsSelectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KeywordColumnsSelection.watcherSetupUtil = new _com_enfluid_ltp_view_components_majestic_KeywordColumnsSelectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
      }
   }
}
