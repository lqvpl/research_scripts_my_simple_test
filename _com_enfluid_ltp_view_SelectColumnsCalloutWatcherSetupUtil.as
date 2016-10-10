package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.SelectColumnsCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_SelectColumnsCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_SelectColumnsCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SelectColumnsCallout.watcherSetupUtil = new _com_enfluid_ltp_view_SelectColumnsCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[21] = new PropertyWatcher("_SelectColumnsCallout_CheckBox6",{"propertyChange":true},[param4[13]],param2);
         param5[22] = new PropertyWatcher("selected",{"propertyChange":true},[param4[13]],null);
         param5[23] = new PropertyWatcher("_SelectColumnsCallout_CheckBox7",{"propertyChange":true},[param4[14]],param2);
         param5[24] = new PropertyWatcher("selected",{"propertyChange":true},[param4[14]],null);
         param5[11] = new PropertyWatcher("_SelectColumnsCallout_CheckBox1",{"propertyChange":true},[param4[8]],param2);
         param5[12] = new PropertyWatcher("selected",{"propertyChange":true},[param4[8]],null);
         param5[17] = new PropertyWatcher("_SelectColumnsCallout_CheckBox4",{"propertyChange":true},[param4[11]],param2);
         param5[18] = new PropertyWatcher("selected",{"propertyChange":true},[param4[11]],null);
         param5[13] = new PropertyWatcher("_SelectColumnsCallout_CheckBox2",{"propertyChange":true},[param4[9]],param2);
         param5[14] = new PropertyWatcher("selected",{"propertyChange":true},[param4[9]],null);
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5],param4[6],param4[7]],param2);
         param5[1] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5],param4[6],param4[7]],null);
         param5[2] = new PropertyWatcher("project",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5],param4[6],param4[7]],null);
         param5[4] = new PropertyWatcher("localSearchesEnabled",{"propertyChange":true},[param4[1]],null);
         param5[6] = new PropertyWatcher("advertiserCompEnabled",{"propertyChange":true},[param4[3]],null);
         param5[3] = new PropertyWatcher("suggestedBidEnabled",{"propertyChange":true},[param4[0]],null);
         param5[10] = new PropertyWatcher("domainsEnabled",{"propertyChange":true},[param4[7]],null);
         param5[7] = new PropertyWatcher("numWordsEnabled",{"propertyChange":true},[param4[4]],null);
         param5[9] = new PropertyWatcher("bingTitleCompEnabled",{"propertyChange":true},[param4[6]],null);
         param5[5] = new PropertyWatcher("globalSearchesEnabled",{"propertyChange":true},[param4[2]],null);
         param5[8] = new PropertyWatcher("googleTitleCompEnabled",{"propertyChange":true},[param4[5]],null);
         param5[19] = new PropertyWatcher("_SelectColumnsCallout_CheckBox5",{"propertyChange":true},[param4[12]],param2);
         param5[20] = new PropertyWatcher("selected",{"propertyChange":true},[param4[12]],null);
         param5[15] = new PropertyWatcher("_SelectColumnsCallout_CheckBox3",{"propertyChange":true},[param4[10]],param2);
         param5[16] = new PropertyWatcher("selected",{"propertyChange":true},[param4[10]],null);
         param5[25] = new PropertyWatcher("_SelectColumnsCallout_CheckBox8",{"propertyChange":true},[param4[15]],param2);
         param5[26] = new PropertyWatcher("selected",{"propertyChange":true},[param4[15]],null);
         param5[21].updateParent(param1);
         param5[21].addChild(param5[22]);
         param5[23].updateParent(param1);
         param5[23].addChild(param5[24]);
         param5[11].updateParent(param1);
         param5[11].addChild(param5[12]);
         param5[17].updateParent(param1);
         param5[17].addChild(param5[18]);
         param5[13].updateParent(param1);
         param5[13].addChild(param5[14]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[2]);
         param5[2].addChild(param5[4]);
         param5[2].addChild(param5[6]);
         param5[2].addChild(param5[3]);
         param5[2].addChild(param5[10]);
         param5[2].addChild(param5[7]);
         param5[2].addChild(param5[9]);
         param5[2].addChild(param5[5]);
         param5[2].addChild(param5[8]);
         param5[19].updateParent(param1);
         param5[19].addChild(param5[20]);
         param5[15].updateParent(param1);
         param5[15].addChild(param5[16]);
         param5[25].updateParent(param1);
         param5[25].addChild(param5[26]);
      }
   }
}
