package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.GenerateKeywordsCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_GenerateKeywordsCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_GenerateKeywordsCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         GenerateKeywordsCallout.watcherSetupUtil = new _com_enfluid_ltp_view_GenerateKeywordsCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[6] = new PropertyWatcher("keywordPlannerSection",{"propertyChange":true},[param4[4]],param2);
         param5[7] = new PropertyWatcher("expanded",{"collapsedChanged":true},[param4[4]],null);
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3]],param2);
         param5[3] = new PropertyWatcher("isPlatinum",{"propertyChange":true},[param4[1]],null);
         param5[1] = new PropertyWatcher("preferences",{"propertyChange":true},[param4[0],param4[2],param4[3]],null);
         param5[5] = new PropertyWatcher("customizeDataPreFilterOpen",{"propertyChange":true},[param4[3]],null);
         param5[4] = new PropertyWatcher("addMyOwnKeywordsOpen",{"propertyChange":true},[param4[2]],null);
         param5[2] = new PropertyWatcher("addSeedKeywordsOpen",{"propertyChange":true},[param4[0]],null);
         param5[8] = new PropertyWatcher("addYourOwnKeywordsSection",{"propertyChange":true},[param4[5]],param2);
         param5[9] = new PropertyWatcher("expanded",{"collapsedChanged":true},[param4[5]],null);
         param5[10] = new PropertyWatcher("_GenerateKeywordsCallout_CustomizeDataAndPreFilterSection1",{"propertyChange":true},[param4[6]],param2);
         param5[11] = new PropertyWatcher("expanded",{"collapsedChanged":true},[param4[6]],null);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[3]);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[5]);
         param5[1].addChild(param5[4]);
         param5[1].addChild(param5[2]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[10].updateParent(param1);
         param5[10].addChild(param5[11]);
      }
   }
}
