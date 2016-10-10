package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.KeywordPlannerSection;
   import mx.binding.PropertyWatcher;
   import mx.binding.StaticPropertyWatcher;
   import com.enfluid.ltp.model.DataModel;
   
   public class _com_enfluid_ltp_view_KeywordPlannerSectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_KeywordPlannerSectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KeywordPlannerSection.watcherSetupUtil = new _com_enfluid_ltp_view_KeywordPlannerSectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[0] = new PropertyWatcher("errorPrompt",{"propertyChange":true},[param4[0],param4[1]],param2);
         param5[1] = new PropertyWatcher("width",{"widthChanged":true},[param4[1]],null);
         param5[2] = new StaticPropertyWatcher("instance",null,[param4[2]],null);
         param5[3] = new PropertyWatcher("selectedProject",{"propertyChange":true},[param4[2]],null);
         param5[4] = new PropertyWatcher("pendingSeedKeywords",{"propertyChange":true},[param4[2]],null);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[1]);
         param5[2].updateParent(DataModel);
         param5[2].addChild(param5[3]);
         param5[3].addChild(param5[4]);
      }
   }
}
