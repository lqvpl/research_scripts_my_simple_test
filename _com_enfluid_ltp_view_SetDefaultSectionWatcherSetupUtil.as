package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.SetDefaultSection;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_SetDefaultSectionWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_SetDefaultSectionWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         SetDefaultSection.watcherSetupUtil = new _com_enfluid_ltp_view_SetDefaultSectionWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[3] = new PropertyWatcher("width",{"widthChanged":true},[param4[3],param4[6]],param2);
         param5[4] = new PropertyWatcher("confirmGroup",{"propertyChange":true},[param4[4],param4[5],param4[7]],param2);
         param5[2] = new PropertyWatcher("normalGroup",{"propertyChange":true},[param4[2]],param2);
         param5[3].updateParent(param1);
         param5[4].updateParent(param1);
         param5[2].updateParent(param1);
      }
   }
}
