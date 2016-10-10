package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_headers_CustomHeaderRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_headers_CustomHeaderRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CustomHeaderRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_headers_CustomHeaderRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[6] = new PropertyWatcher("spinner",{"propertyChange":true},[param4[4],param4[5],param4[6],param4[7]],param2);
         param5[7] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[4],param4[5],param4[6],param4[7]],null);
         param5[4] = new PropertyWatcher("missingDataIcon",{"propertyChange":true},[param4[4],param4[5]],param2);
         param5[5] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[4],param4[5]],null);
         param5[0] = new PropertyWatcher("column",{"columnChanged":true},[param4[0],param4[1],param4[2],param4[3],param4[6],param4[7],param4[8],param4[9],param4[10],param4[11],param4[13]],param2);
         param5[3] = new PropertyWatcher("showProgressSpinner",{"propertyChange":true},[param4[2],param4[3],param4[8],param4[9],param4[10]],null);
         param5[10] = new PropertyWatcher("showWarningIcon",{"propertyChange":true},[param4[6],param4[7]],null);
         param5[1] = new PropertyWatcher("helpTitle",{"propertyChange":true},[param4[0]],null);
         param5[2] = new PropertyWatcher("helpContent",{"propertyChange":true},[param4[1]],null);
         param5[12] = new PropertyWatcher("showCancelIcon",{"propertyChange":true},[param4[6],param4[7],param4[8],param4[10],param4[11],param4[13]],null);
         param5[11] = new PropertyWatcher("showEditIcon",{"propertyChange":true},[param4[6],param4[7]],null);
         param5[8] = new PropertyWatcher("cancelIcon",{"propertyChange":true},[param4[4],param4[5]],param2);
         param5[9] = new PropertyWatcher("includeInLayout",{"includeInLayoutChanged":true},[param4[4],param4[5]],null);
         param5[6].updateParent(param1);
         param5[6].addChild(param5[7]);
         param5[4].updateParent(param1);
         param5[4].addChild(param5[5]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[3]);
         param5[0].addChild(param5[10]);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[2]);
         param5[0].addChild(param5[12]);
         param5[0].addChild(param5[11]);
         param5[8].updateParent(param1);
         param5[8].addChild(param5[9]);
      }
   }
}
