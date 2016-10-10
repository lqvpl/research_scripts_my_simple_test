package
{
   import mx.binding.IWatcherSetupUtil2;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.KeywordColumnRenderer;
   import mx.binding.PropertyWatcher;
   
   public class _com_enfluid_ltp_view_renderers_KeywordColumnRendererWatcherSetupUtil implements IWatcherSetupUtil2
   {
       
      
      public function _com_enfluid_ltp_view_renderers_KeywordColumnRendererWatcherSetupUtil()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         KeywordColumnRenderer.watcherSetupUtil = new _com_enfluid_ltp_view_renderers_KeywordColumnRendererWatcherSetupUtil();
      }
      
      public function setup(param1:Object, param2:Function, param3:Function, param4:Array, param5:Array) : void
      {
         param5[8] = new PropertyWatcher("isRolledOver",{"propertyChange":true},[param4[3],param4[5],param4[7]],param2);
         param5[17] = new PropertyWatcher("isKeywordNotesCalloutOpen",{"propertyChange":true},[param4[7]],param2);
         param5[0] = new PropertyWatcher("keyword",{"propertyChange":true},[param4[0],param4[1],param4[2],param4[3],param4[4],param4[5],param4[6],param4[7]],param2);
         param5[9] = new PropertyWatcher("isFavorite",{"propertyChange":true},[param4[4],param4[5]],null);
         param5[4] = new PropertyWatcher("keyword",{"keywordChange":true},[param4[1]],null);
         param5[14] = new PropertyWatcher("isNoteTyping",{"propertyChange":true},[param4[6]],null);
         param5[5] = new PropertyWatcher("isInTrash",{"propertyChange":true},[param4[2],param4[3]],null);
         param5[12] = new PropertyWatcher("notes",{"propertyChange":true},[param4[6],param4[7]],null);
         param5[13] = new PropertyWatcher("length",null,[param4[6]],null);
         param5[1] = new PropertyWatcher("isExpanded",{"propertyChange":true},[param4[0]],null);
         param5[8].updateParent(param1);
         param5[17].updateParent(param1);
         param5[0].updateParent(param1);
         param5[0].addChild(param5[9]);
         param5[0].addChild(param5[4]);
         param5[0].addChild(param5[14]);
         param5[0].addChild(param5[5]);
         param5[0].addChild(param5[12]);
         param5[12].addChild(param5[13]);
         param5[0].addChild(param5[1]);
      }
   }
}
