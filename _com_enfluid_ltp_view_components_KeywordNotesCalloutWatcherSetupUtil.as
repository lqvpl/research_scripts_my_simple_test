package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.components.KeywordNotesCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_components_KeywordNotesCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_components_KeywordNotesCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KeywordNotesCallout.watcherSetupUtil = new _com_enfluid_ltp_view_components_KeywordNotesCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("keyword",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("notes",{"propertyChange":true},[param4[0]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
      }
   }
}
