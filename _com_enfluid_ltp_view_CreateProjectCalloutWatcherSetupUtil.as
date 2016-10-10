package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.CreateProjectCallout;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_CreateProjectCalloutWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_CreateProjectCalloutWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CreateProjectCallout.watcherSetupUtil = new _com_enfluid_ltp_view_CreateProjectCalloutWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[2] = new PropertyWatcher("project",{"propertyChange":true},[param4[2],param4[4],param4[8],param4[12],param4[14]],param2);
         param5[3] = new PropertyWatcher("title",{"propertyChange":true},[param4[2]],null);
         param5[11] = new PropertyWatcher("searchNetwork",{"propertyChange":true},[param4[12]],null);
         param5[8] = new PropertyWatcher("language",{"propertyChange":true},[param4[8]],null);
         param5[14] = new PropertyWatcher("includeAdultAreas",{"propertyChange":true},[param4[14]],null);
         param5[5] = new PropertyWatcher("country",{"propertyChange":true},[param4[4]],null);
         param5[0] = new PropertyWatcher("viewModel",{"propertyChange":true},[param4[0]],param2);
         param5[1] = new PropertyWatcher("isProjectEditMode",{"propertyChange":true},[param4[0]],null);
         param5[12] = new PropertyWatcher("languageLabel",{"propertyChange":true},[param4[13]],param2);
         param5[13] = new PropertyWatcher("width",{"widthChanged":true},[param4[13]],null);
         param5[6] = new PropertyWatcher("defaultCountry",{"propertyChange":true},[param4[5]],param2);
         param5[9] = new PropertyWatcher("defaultLanguage",{"propertyChange":true},[param4[9]],param2);
         param5[2].updateParent(param1);
         param5[2].addChild(param5[3]);
         param5[2].addChild(param5[11]);
         param5[2].addChild(param5[8]);
         param5[2].addChild(param5[14]);
         param5[2].addChild(param5[5]);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[12].updateParent(param1);
         param5[12].addChild(param5[13]);
         param5[6].updateParent(param1);
         param5[9].updateParent(param1);
      }
   }
}
