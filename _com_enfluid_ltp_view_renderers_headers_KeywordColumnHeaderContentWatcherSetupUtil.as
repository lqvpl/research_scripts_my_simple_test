package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.headers.KeywordColumnHeaderContent;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_headers_KeywordColumnHeaderContentWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_headers_KeywordColumnHeaderContentWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KeywordColumnHeaderContent.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_headers_KeywordColumnHeaderContentWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("model",{"propertyChange":true},[param4[2],param4[4],param4[6]],param2);
         param5[3] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[2],param4[4],param4[6]],null);
         param5[4] = new PropertyWatcher("project",{"propertyChange":true},[param4[2],param4[4],param4[6]],null);
         param5[5] = new PropertyWatcher("specialFilter",{"propertyChange":true},[param4[2],param4[4],param4[6]],null);
         param5[9] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[3],param4[5]],param2);
         param5[10] = new PropertyWatcher("selectedKeywordsTab",{"propertyChange":true},[param4[3],param4[5]],null);
         param5[12] = new PropertyWatcher("isTrashTab",{"propertyChange":true},[param4[3],param4[5]],null);
         param5[11] = new PropertyWatcher("isFavoritesTab",{"propertyChange":true},[param4[3],param4[5]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[3].addChild(param5[4]);
         param5[4].addChild(param5[5]);
         param5[9].updateParent(param1);
         param5[9].addChild(param5[10]);
         param5[10].addChild(param5[12]);
         param5[10].addChild(param5[11]);
      }
   }
}
