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
         param5[0] = new PropertyWatcher("model",{"propertyChange":true},[param4[0],param4[2],param4[4]],param2);
         param5[1] = new PropertyWatcher("selectedKeywordCollection",{"propertyChange":true},[param4[0],param4[2],param4[4]],null);
         param5[2] = new PropertyWatcher("project",{"propertyChange":true},[param4[0],param4[2],param4[4]],null);
         param5[3] = new PropertyWatcher("specialFilter",{"propertyChange":true},[param4[0],param4[2],param4[4]],null);
         param5[7] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[1],param4[3]],param2);
         param5[8] = new PropertyWatcher("selectedKeywordsTab",{"propertyChange":true},[param4[1],param4[3]],null);
         param5[10] = new PropertyWatcher("isTrashTab",{"propertyChange":true},[param4[1],param4[3]],null);
         param5[9] = new PropertyWatcher("isFavoritesTab",{"propertyChange":true},[param4[1],param4[3]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[1].addChild(param5[2]);
         param5[2].addChild(param5[3]);
         param5[7].updateParent(param1);
         param5[7].addChild(param5[8]);
         param5[8].addChild(param5[10]);
         param5[8].addChild(param5[9]);
      }
   }
}
