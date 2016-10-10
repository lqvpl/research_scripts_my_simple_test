package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.CompetitorAnalysisPanelSkin;
   import mx.binding.PropertyWatcher;
   import mx.binding.FunctionReturnWatcher;
   
   public class _com_enfluid_ltp_view_skins_CompetitorAnalysisPanelSkinWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_skins_CompetitorAnalysisPanelSkinWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         CompetitorAnalysisPanelSkin.watcherSetupUtil = new _com_enfluid_ltp_view_skins_CompetitorAnalysisPanelSkinWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         var target:Object = param1;
         var propertyGetter:Function = param2;
         var staticPropertyGetter:Function = param3;
         var bindings:Array = param4;
         var watchers:Array = param5;
         watchers[3] = new PropertyWatcher("uncollapseEaser",{"propertyChange":true},[bindings[8]],propertyGetter);
         watchers[0] = new PropertyWatcher("contentGroup",{"propertyChange":true},[bindings[0],bindings[9]],propertyGetter);
         watchers[1] = new PropertyWatcher("titleBarGroup",{"propertyChange":true},[bindings[1],bindings[2],bindings[5],bindings[6]],propertyGetter);
         watchers[4] = new PropertyWatcher("hostComponent",{"propertyChange":true},[bindings[10],bindings[11],bindings[12],bindings[13],bindings[14]],propertyGetter);
         watchers[6] = new PropertyWatcher("colllapsedRotation",{"propertyChange":true},[bindings[11]],null);
         watchers[5] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["backgroundAlpha"];
         },null,[bindings[10]],null,true);
         watchers[7] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["backgroundAlpha"];
         },null,[bindings[12]],null,true);
         watchers[8] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["collapse"];
         },null,[bindings[13]],null,true);
         watchers[9] = new FunctionReturnWatcher("getStyle",target,function():Array
         {
            return ["nonCollapse"];
         },null,[bindings[14]],null,true);
         watchers[2] = new PropertyWatcher("collapseEaser",{"propertyChange":true},[bindings[4]],propertyGetter);
         watchers[3].updateParent(target);
         watchers[0].updateParent(target);
         watchers[1].updateParent(target);
         watchers[4].updateParent(target);
         watchers[4].addChild(watchers[6]);
         watchers[5].parentWatcher = watchers[4];
         watchers[4].addChild(watchers[5]);
         watchers[7].parentWatcher = watchers[4];
         watchers[4].addChild(watchers[7]);
         watchers[8].parentWatcher = watchers[4];
         watchers[4].addChild(watchers[8]);
         watchers[9].parentWatcher = watchers[4];
         watchers[4].addChild(watchers[9]);
         watchers[2].updateParent(target);
      }
   }
}
