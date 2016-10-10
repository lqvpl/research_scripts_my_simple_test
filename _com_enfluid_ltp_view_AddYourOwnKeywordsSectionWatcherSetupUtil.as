package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.AddYourOwnKeywordsSection;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_AddYourOwnKeywordsSectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_AddYourOwnKeywordsSectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         AddYourOwnKeywordsSection.watcherSetupUtil = new _com_enfluid_ltp_view_AddYourOwnKeywordsSectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("isPlatinum",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("selectedProject",{"propertyChange":true},[param4[1]],null);
         param5[3] = new PropertyWatcher("pendingOwnKeywords",{"propertyChange":true},[param4[1]],null);
         param5[4] = new PropertyWatcher("addOwnKeywordsTextArea",{"propertyChange":true},[param4[2]],param2);
         param5[5] = new PropertyWatcher("text",{
            "change":true,
            "textChanged":true
         },[param4[2]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[2]);
         param5[2].addChild(param5[3]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
      }
   }
}
