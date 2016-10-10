package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.PendingSeedKeywordItemRenderer;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_PendingSeedKeywordItemRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_PendingSeedKeywordItemRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         PendingSeedKeywordItemRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_PendingSeedKeywordItemRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[5] = new PropertyWatcher("seedKeyword",{"propertyChange":true},[param4[2],param4[3],param4[5]],param2);
         param5[7] = new PropertyWatcher("includeKeywords",{"propertyChange":true},[param4[3]],null);
         param5[6] = new PropertyWatcher("keyword",{"propertyChange":true},[param4[2]],null);
         param5[8] = new PropertyWatcher("excludeKeywords",{"propertyChange":true},[param4[5]],null);
         param5[1] = new PropertyWatcher("includeTI",{"propertyChange":true},[param4[0],param4[7]],param2);
         param5[2] = new PropertyWatcher("text",{
            "change":true,
            "textChanged":true
         },[param4[0],param4[7]],null);
         param5[0] = new PropertyWatcher("expanded",{"propertyChange":true},[param4[0]],param2);
         param5[3] = new PropertyWatcher("excludeTI",{"propertyChange":true},[param4[0],param4[8]],param2);
         param5[4] = new PropertyWatcher("text",{
            "change":true,
            "textChanged":true
         },[param4[0],param4[8]],null);
         param5[5].updateParent(param1);
         param5[5].addChild(param5[7]);
         param5[5].addChild(param5[6]);
         param5[5].addChild(param5[8]);
         param5[1].updateParent(param1);
         param5[1].addChild(param5[2]);
         param5[0].updateParent(param1);
         param5[3].updateParent(param1);
         param5[3].addChild(param5[4]);
      }
   }
}
