package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_headers_CompetitorAnalysisHeaderRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_headers_CompetitorAnalysisHeaderRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CompetitorAnalysisHeaderRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_headers_CompetitorAnalysisHeaderRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("column",{"columnChanged":true},[param4[0],param4[1],param4[2]],param2);
         param5[1] = new PropertyWatcher("align",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("helpTitle",{"propertyChange":true},[param4[1]],null);
         param5[3] = new PropertyWatcher("helpContent",{"propertyChange":true},[param4[2]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[3]);
      }
   }
}
