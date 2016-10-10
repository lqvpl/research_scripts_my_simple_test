package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.KeywordsDataGridList;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_components_KeywordsDataGridListWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_KeywordsDataGridListWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KeywordsDataGridList.watcherSetupUtil = new _com_enfluid_ltp_view_components_KeywordsDataGridListWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("resetKeywordScrollPosition",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}
