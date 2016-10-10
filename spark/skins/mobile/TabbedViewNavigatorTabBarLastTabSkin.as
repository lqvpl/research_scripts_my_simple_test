package spark.skins.mobile
{
   import spark.skins.mobile.supportClasses.TabbedViewNavigatorTabBarTabSkinBase;
   import spark.skins.mobile480.assets.TabbedViewNavigatorButtonBarFirstButton_up;
   import spark.skins.mobile480.assets.TabbedViewNavigatorButtonBarFirstButton_down;
   import spark.skins.mobile480.assets.TabbedViewNavigatorButtonBarFirstButton_selected;
   import spark.skins.mobile320.assets.TabbedViewNavigatorButtonBarLastButton_up;
   import spark.skins.mobile320.assets.TabbedViewNavigatorButtonBarLastButton_down;
   import spark.skins.mobile320.assets.TabbedViewNavigatorButtonBarLastButton_selected;
   import mx.core.DPIClassification;
   
   public class TabbedViewNavigatorTabBarLastTabSkin extends TabbedViewNavigatorTabBarTabSkinBase
   {
       
      
      public function TabbedViewNavigatorTabBarLastTabSkin()
      {
         super();
         switch(applicationDPI)
         {
            case DPIClassification.DPI_480:
               upBorderSkin = TabbedViewNavigatorButtonBarFirstButton_up;
               downBorderSkin = TabbedViewNavigatorButtonBarFirstButton_down;
               selectedBorderSkin = TabbedViewNavigatorButtonBarFirstButton_selected;
               break;
            case DPIClassification.DPI_320:
               upBorderSkin = spark.skins.mobile320.assets.TabbedViewNavigatorButtonBarLastButton_up;
               downBorderSkin = spark.skins.mobile320.assets.TabbedViewNavigatorButtonBarLastButton_down;
               selectedBorderSkin = spark.skins.mobile320.assets.TabbedViewNavigatorButtonBarLastButton_selected;
               break;
            default:
               upBorderSkin = spark.skins.mobile.assets.TabbedViewNavigatorButtonBarLastButton_up;
               downBorderSkin = spark.skins.mobile.assets.TabbedViewNavigatorButtonBarLastButton_down;
               selectedBorderSkin = spark.skins.mobile.assets.TabbedViewNavigatorButtonBarLastButton_selected;
         }
      }
   }
}
