package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.LeftRail;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_LeftRailWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_LeftRailWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         LeftRail.watcherSetupUtil = new _com_enfluid_ltp_view_LeftRailWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[7],param4[8],param4[9],param4[10],param4[11],param4[13],param4[15]],param2);
         param5[16] = new PropertyWatcher("allFavoriteKeywords",{"propertyChange":true},[param4[13]],null);
         param5[18] = new PropertyWatcher("allTrashKeywords",{"propertyChange":true},[param4[15]],null);
         param5[1] = new PropertyWatcher("selectedProject",{"propertyChange":true},[param4[0],param4[7],param4[8],param4[9],param4[10],param4[11]],null);
         param5[12] = new PropertyWatcher("seedKeywords",{"seedKeywordsChange":true},[param4[8]],null);
         param5[11] = new PropertyWatcher("keywords",{"keywordsChange":true},[param4[7]],null);
         param5[13] = new PropertyWatcher("ownKeywords",{"propertyChange":true},[param4[9],param4[10],param4[11]],null);
         param5[14] = new PropertyWatcher("length",{"collectionChange":true},[param4[9],param4[10]],null);
         param5[8] = new PropertyWatcher("quickAddTI",{"propertyChange":true},[param4[6]],param2);
         param5[9] = new PropertyWatcher("text",{
            "change":true,
            "textChanged":true
         },[param4[6]],null);
         param5[10] = new PropertyWatcher("length",null,[param4[6]],null);
         param5[7] = new PropertyWatcher("height",{"heightChanged":true},[param4[5]],param2);
         param5[3] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[2]],param2);
         param5[4] = new PropertyWatcher("showGenerateKeywordsCallout",{"propertyChange":true},[param4[2]],null);
         param5[6] = new PropertyWatcher("width",{"widthChanged":true},[param4[4]],param2);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[16]);
         param5[0].addChild(param5[18]);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[12]);
         param5[1].addChild(param5[11]);
         param5[1].addChild(param5[13]);
         param5[13].addChild(param5[14]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
         param5[9].addChild(param5[10]);
         param5[7].updateParent(param1);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
         param5[6].updateParent(param1);
      }
   }
}
