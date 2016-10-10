package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_DomainRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_DomainRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         DomainRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_DomainRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("domainsVO",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[5],param4[8],param4[11],param4[14],param4[17],param4[20],param4[23],param4[26],param4[29],param4[32],param4[35]],param2);
         param5[21] = new PropertyWatcher("de",{"propertyChange":true},[param4[29]],null);
         param5[11] = new PropertyWatcher("couk",{"propertyChange":true},[param4[14]],null);
         param5[13] = new PropertyWatcher("co",{"propertyChange":true},[param4[17]],null);
         param5[17] = new PropertyWatcher("ca",{"propertyChange":true},[param4[23]],null);
         param5[5] = new PropertyWatcher("com",{"propertyChange":true},[param4[5]],null);
         param5[25] = new PropertyWatcher("dk",{"propertyChange":true},[param4[35]],null);
         param5[9] = new PropertyWatcher("org",{"propertyChange":true},[param4[11]],null);
         param5[7] = new PropertyWatcher("net",{"propertyChange":true},[param4[8]],null);
         param5[3] = new PropertyWatcher("domainWithoutExtension",{"propertyChange":true},[param4[0],param4[1],param4[2]],null);
         param5[23] = new PropertyWatcher("nl",{"propertyChange":true},[param4[32]],null);
         param5[19] = new PropertyWatcher("comau",{"propertyChange":true},[param4[26]],null);
         param5[15] = new PropertyWatcher("info",{"propertyChange":true},[param4[20]],null);
         param5[0] = new PropertyWatcher("options",{"propertyChange":true},[param4[0],param4[1],param4[3],param4[4],param4[6],param4[7],param4[9],param4[10],param4[12],param4[13],param4[15],param4[16],param4[18],param4[19],param4[21],param4[22],param4[24],param4[25],param4[27],param4[28],param4[30],param4[31],param4[33],param4[34]],param2);
         param5[20] = new PropertyWatcher("de",{"deChange":true},[param4[27],param4[28]],null);
         param5[10] = new PropertyWatcher("couk",{"coukChange":true},[param4[12],param4[13]],null);
         param5[1] = new PropertyWatcher("numExtensions",{"propertyChange":true},[param4[0],param4[1]],null);
         param5[12] = new PropertyWatcher("co",{"coChange":true},[param4[15],param4[16]],null);
         param5[16] = new PropertyWatcher("ca",{"caChange":true},[param4[21],param4[22]],null);
         param5[4] = new PropertyWatcher("com",{"comChange":true},[param4[3],param4[4]],null);
         param5[24] = new PropertyWatcher("dk",{"dkChange":true},[param4[33],param4[34]],null);
         param5[8] = new PropertyWatcher("org",{"orgChange":true},[param4[9],param4[10]],null);
         param5[6] = new PropertyWatcher("net",{"netChange":true},[param4[6],param4[7]],null);
         param5[22] = new PropertyWatcher("nl",{"nlChange":true},[param4[30],param4[31]],null);
         param5[18] = new PropertyWatcher("comau",{"comauChange":true},[param4[24],param4[25]],null);
         param5[14] = new PropertyWatcher("info",{"infoChange":true},[param4[18],param4[19]],null);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[21]);
         param5[2].addChild(param5[11]);
         param5[2].addChild(param5[13]);
         param5[2].addChild(param5[17]);
         param5[2].addChild(param5[5]);
         param5[2].addChild(param5[25]);
         param5[2].addChild(param5[9]);
         param5[2].addChild(param5[7]);
         param5[2].addChild(param5[3]);
         param5[2].addChild(param5[23]);
         param5[2].addChild(param5[19]);
         param5[2].addChild(param5[15]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[20]);
         param5[0].addChild(param5[10]);
         param5[0].addChild(param5[1]);
         param5[0].addChild(param5[12]);
         param5[0].addChild(param5[16]);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[24]);
         param5[0].addChild(param5[8]);
         param5[0].addChild(param5[6]);
         param5[0].addChild(param5[22]);
         param5[0].addChild(param5[18]);
         param5[0].addChild(param5[14]);
      }
   }
}
