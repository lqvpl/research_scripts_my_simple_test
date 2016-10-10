package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_TabRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_TabRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         TabRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_TabRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("isRolledOver",{"propertyChange":true},[param4[5],param4[6],param4[8],param4[9]],param2);
         param5[6] = new PropertyWatcher("icon",{"propertyChange":true},[param4[10],param4[11]],param2);
         param5[10] = new PropertyWatcher("model",{"propertyChange":true},[param4[13],param4[14],param4[15]],param2);
         param5[13] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[15]],null);
         param5[14] = new PropertyWatcher("totalCount",{"propertyChange":true},[param4[15]],null);
         param5[11] = new PropertyWatcher("allTrashKeywords",{"propertyChange":true},[param4[13],param4[14]],null);
         param5[12] = new PropertyWatcher("length",{"collectionChange":true},[param4[13],param4[14]],null);
         param5[15] = new PropertyWatcher("keywords",{"propertyChange":true},[param4[16]],param2);
         param5[16] = new PropertyWatcher("totalCount",{"propertyChange":true},[param4[16]],null);
         param5[2] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[1]],param2);
         param5[3] = new PropertyWatcher("selectedKeywordsTab",{"propertyChange":true},[param4[1]],null);
         param5[0] = new PropertyWatcher("seedKeyword",{"propertyChange":true},[param4[0],param4[2],param4[6],param4[7]],param2);
         param5[9] = new PropertyWatcher("currentState",{"currentStateChange":true},[param4[13],param4[14]],param2);
         param5[8] = new PropertyWatcher("isTrashTab",{"propertyChange":true},[param4[13],param4[14]],param2);
         param5[7] = new PropertyWatcher("label",{"labelChanged":true},[param4[12]],param2);
         param5[1] = new PropertyWatcher("isOwnKeywordsTab",{"propertyChange":true},[param4[0],param4[2],param4[4],param4[6],param4[7]],param2);
         param5[5].updateParent(param1);
         param5[6].updateParent(param1);
         param5[10].updateParent(param1);
         param5[10].addChild(param5[13]);
         param5[13].addChild(param5[14]);
         param5[10].addChild(param5[11]);
         param5[11].addChild(param5[12]);
         param5[15].updateParent(param1);
         param5[15].addChild(param5[16]);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[0].updateParent(param1);
         param5[9].updateParent(param1);
         param5[8].updateParent(param1);
         param5[7].updateParent(param1);
         param5[1].updateParent(param1);
      }
   }
}
