package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.IStyleManager2;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import mx.utils.ObjectUtil;
   import mx.core.mx_internal;
   import mx.skins.spark.DefaultButtonSkin;
   import mx.skins.spark.ButtonSkin;
   import mx.skins.spark.ContainerBorderSkin;
   import mx.skins.halo.HaloFocusRect;
   import mx.core.UITextField;
   import mx.skins.halo.DefaultDragImage;
   import mx.core.UIComponent;
   import mx.skins.spark.PanelBorderSkin;
   import mx.skins.spark.ProgressBarSkin;
   import mx.skins.spark.ProgressBarTrackSkin;
   import mx.skins.spark.ProgressMaskSkin;
   import mx.skins.spark.ProgressIndeterminateSkin;
   import mx.skins.spark.ScrollBarTrackSkin;
   import mx.skins.spark.ScrollBarDownButtonSkin;
   import mx.skins.spark.ScrollBarUpButtonSkin;
   import mx.skins.spark.ScrollBarThumbSkin;
   import mx.skins.spark.BorderSkin;
   import mx.skins.halo.BusyCursor;
   import mx.skins.halo.ToolTipBorder;
   import spark.skins.spark.ApplicationSkin;
   import spark.skins.spark.BorderContainerSkin;
   import spark.skins.spark.ButtonBarSkin;
   import spark.skins.spark.CalloutSkin;
   import spark.skins.spark.CheckBoxSkin;
   import spark.skins.spark.ComboBoxSkin;
   import spark.skins.spark.DataGridSkin;
   import spark.components.gridClasses.DataGridDragProxy;
   import spark.skins.spark.ListDropIndicator;
   import spark.skins.spark.DropDownListSkin;
   import spark.skins.spark.FormSkin;
   import spark.skins.spark.FormHeadingSkin;
   import spark.skins.spark.FormItemSkin;
   import spark.skins.spark.HScrollBarSkin;
   import spark.skins.spark.ImageSkin;
   import spark.components.supportClasses.ListItemDragProxy;
   import spark.skins.spark.ListSkin;
   import spark.skins.spark.NumericStepperSkin;
   import spark.skins.spark.PanelSkin;
   import spark.skins.spark.ScrollerSkin;
   import spark.skins.spark.SkinnableDataContainerSkin;
   import spark.skins.spark.FocusSkin;
   import spark.skins.spark.ErrorSkin;
   import spark.skins.spark.SkinnableContainerSkin;
   import spark.skins.spark.SkinnablePopUpContainerSkin;
   import spark.skins.spark.SpinnerSkin;
   import spark.skins.spark.TextAreaSkin;
   import spark.skins.spark.TextInputSkin;
   import spark.skins.spark.TitleWindowSkin;
   import spark.skins.spark.ToggleButtonSkin;
   import spark.skins.spark.VScrollBarSkin;
   import spark.skins.spark.windowChrome.TitleBarSkin;
   import spark.skins.spark.WindowedApplicationSkin;
   
   public class _LongTailPro_Styles
   {
      
      private static var _embed_css_win_max_over_png_1458088447_1726461805:Class = _class_embed_css_win_max_over_png_1458088447_1726461805;
      
      private static var _embed_css_win_close_up_png__1169826830_707895974:Class = _class_embed_css_win_close_up_png__1169826830_707895974;
      
      private static var _embed_css_mac_max_up_png_1027230963_749059367:Class = _class_embed_css_mac_max_up_png_1027230963_749059367;
      
      private static var _embed_css_Assets_swf__823650519_mx_skins_cursor_VBoxDivider_678955794:Class = _class_embed_css_Assets_swf__823650519_mx_skins_cursor_VBoxDivider_678955794;
      
      private static var _embed_css_win_restore_over_png_795339157_1080602937:Class = _class_embed_css_win_restore_over_png_795339157_1080602937;
      
      private static var _embed_css_win_min_up_png_1811297176_1990073924:Class = _class_embed_css_win_min_up_png_1811297176_1990073924;
      
      private static var _embed_css_win_max_up_png__660702138_1722175094:Class = _class_embed_css_win_max_up_png__660702138_1722175094;
      
      private static var _embed_css_win_max_dis_png__1348235559_508974553:Class = _class_embed_css_win_max_dis_png__1348235559_508974553;
      
      private static var _embed_css_assets_ErrorIndicator_png__5119536_204469652:Class = _class_embed_css_assets_ErrorIndicator_png__5119536_204469652;
      
      private static var _embed_css_Assets_swf_2102362548_mx_skins_cursor_DragMove_1011992085:Class = _class_embed_css_Assets_swf_2102362548_mx_skins_cursor_DragMove_1011992085;
      
      private static var _embed_css_mac_max_down_png_962155578_1486536226:Class = _class_embed_css_mac_max_down_png_962155578_1486536226;
      
      private static var _embed_css_win_max_down_png__1938883891_262592385:Class = _class_embed_css_win_max_down_png__1938883891_262592385;
      
      private static var _embed_css_win_close_over_png_1815531179_1864605551:Class = _class_embed_css_win_close_over_png_1815531179_1864605551;
      
      private static var _embed_css_win_restore_down_png_1693334115_317145271:Class = _class_embed_css_win_restore_down_png_1693334115_317145271;
      
      private static var _embed_css_win_min_down_png__1464457825_133967821:Class = _class_embed_css_win_min_down_png__1464457825_133967821;
      
      private static var _embed_css_Assets_swf_2102362548_mx_skins_cursor_DragLink_1011966510:Class = _class_embed_css_Assets_swf_2102362548_mx_skins_cursor_DragLink_1011966510;
      
      private static var _embed_css_mac_min_over_png_538586686_1428665298:Class = _class_embed_css_mac_min_over_png_538586686_1428665298;
      
      private static var _embed_css_assets_RequiredIndicator_png__1387436931_1267879939:Class = _class_embed_css_assets_RequiredIndicator_png__1387436931_1267879939;
      
      private static var _embed_css_win_min_over_png_1932514513_2057059931:Class = _class_embed_css_win_min_over_png_1932514513_2057059931;
      
      private static var _embed_css_win_restore_up_png__1376474788_1327363728:Class = _class_embed_css_win_restore_up_png__1376474788_1327363728;
      
      private static var _embed_css_mac_close_down_png__1116286554_513569686:Class = _class_embed_css_mac_close_down_png__1116286554_513569686;
      
      private static var _embed_css_mac_close_over_png__2014281512_1494416900:Class = _class_embed_css_mac_close_over_png__2014281512_1494416900;
      
      private static var _embed_css_mac_min_up_png__795737019_1900870025:Class = _class_embed_css_mac_min_up_png__795737019_1900870025;
      
      private static var _embed_css_Assets_swf_2102362548_mx_skins_cursor_BusyCursor_693525071:Class = _class_embed_css_Assets_swf_2102362548_mx_skins_cursor_BusyCursor_693525071;
      
      private static var _embed_css_gripper_up_png__1732525316_1495610128:Class = _class_embed_css_gripper_up_png__1732525316_1495610128;
      
      private static var _embed_css_Assets_swf_2102362548_mx_skins_cursor_DragReject_475548029:Class = _class_embed_css_Assets_swf_2102362548_mx_skins_cursor_DragReject_475548029;
      
      private static var _embed_css_mac_max_over_png_64160620_1961402016:Class = _class_embed_css_mac_max_over_png_64160620_1961402016;
      
      private static var _embed_css_Assets_swf__823650519_cursorStretch_1868328342:Class = _class_embed_css_Assets_swf__823650519_cursorStretch_1868328342;
      
      private static var _embed_css_mac_max_dis_png__561916980_1878257756:Class = _class_embed_css_mac_max_dis_png__561916980_1878257756;
      
      private static var _embed_css_mac_min_dis_png__1239349574_405148358:Class = _class_embed_css_mac_min_dis_png__1239349574_405148358;
      
      private static var _embed_css_mac_min_down_png_1436581644_1830796608:Class = _class_embed_css_mac_min_down_png_1436581644_1830796608;
      
      private static var _embed_css_Assets_swf_2102362548_mx_skins_cursor_DragCopy_1011704505:Class = _class_embed_css_Assets_swf_2102362548_mx_skins_cursor_DragCopy_1011704505;
      
      private static var _embed_css_win_close_down_png__1581441159_1791345763:Class = _class_embed_css_win_close_down_png__1581441159_1791345763;
      
      private static var _embed_css_mac_close_up_png_1731212639_1987206925:Class = _class_embed_css_mac_close_up_png_1731212639_1987206925;
      
      private static var _embed_css_Assets_swf__823650519_mx_skins_BoxDividerSkin_1134466289:Class = _class_embed_css_Assets_swf__823650519_mx_skins_BoxDividerSkin_1134466289;
      
      private static var _embed_css_Assets_swf__823650519_mx_skins_cursor_HBoxDivider_1979048276:Class = _class_embed_css_Assets_swf__823650519_mx_skins_cursor_HBoxDivider_1979048276;
      
      private static var _embed_css_win_min_dis_png__2025668153_692771225:Class = _class_embed_css_win_min_dis_png__2025668153_692771225;
       
      
      public function _LongTailPro_Styles()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var mergedStyle:CSSStyleDeclaration = null;
         var fbs:IFlexModuleFactory = param1;
         var styleManager:IStyleManager2 = fbs.getImplementation("mx.styles::IStyleManager2") as IStyleManager2;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Alert",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Alert");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 2;
               this.paddingLeft = 10;
               this.paddingBottom = 10;
               this.paddingRight = 10;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.core.Application",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Application");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 24;
               this.backgroundColor = 16777215;
               this.horizontalAlign = "center";
               this.paddingLeft = 24;
               this.paddingBottom = 24;
               this.paddingRight = 24;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Button",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Button");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.textAlign = "center";
               this.labelVerticalOffset = 1;
               this.emphasizedSkin = DefaultButtonSkin;
               this.verticalGap = 2;
               this.horizontalGap = 2;
               this.skin = ButtonSkin;
               this.paddingLeft = 6;
               this.paddingRight = 6;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.core.Container",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Container");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderStyle = "none";
               this.borderSkin = ContainerBorderSkin;
               this.cornerRadius = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.ControlBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.ControlBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.disabledOverlayAlpha = 0;
               this.borderStyle = "none";
               this.paddingTop = 11;
               this.verticalAlign = "middle";
               this.paddingLeft = 11;
               this.paddingBottom = 11;
               this.paddingRight = 11;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","dateFieldPopup");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".dateFieldPopup");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.dropShadowVisible = true;
               this.borderThickness = 1;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","errorTip");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".errorTip");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
               this.borderStyle = "errorTipRight";
               this.paddingTop = 4;
               this.borderColor = 13510953;
               this.color = 16777215;
               this.fontSize = 10;
               this.shadowColor = 0;
               this.paddingLeft = 4;
               this.paddingBottom = 4;
               this.paddingRight = 4;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","headerDragProxyStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".headerDragProxyStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","swatchPanelTextField");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".swatchPanelTextField");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderStyle = "inset";
               this.borderColor = 14015965;
               this.highlightColor = 12897484;
               this.backgroundColor = 16777215;
               this.shadowCapColor = 14015965;
               this.shadowColor = 14015965;
               this.paddingLeft = 5;
               this.buttonColor = 7305079;
               this.borderCapColor = 9542041;
               this.paddingRight = 5;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","todayStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".todayStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 0;
               this.textAlign = "center";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","weekDayStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".weekDayStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
               this.textAlign = "center";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowStatus");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".windowStatus");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 6710886;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","windowStyles");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".windowStyles");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("global",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("global");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.lineHeight = "120%";
               this.unfocusedTextSelectionColor = 15263976;
               this.kerning = "default";
               this.caretColor = 92159;
               this.iconColor = 1118481;
               this.verticalScrollPolicy = "auto";
               this.horizontalAlign = "left";
               this.filled = true;
               this.showErrorTip = true;
               this.textDecoration = "none";
               this.columnCount = "auto";
               this.liveDragging = true;
               this.dominantBaseline = "auto";
               this.fontThickness = 0;
               this.focusBlendMode = "normal";
               this.blockProgression = "tb";
               this.buttonColor = 7305079;
               this.indentation = 17;
               this.autoThumbVisibility = true;
               this.textAlignLast = "start";
               this.paddingTop = 0;
               this.textAlpha = 1;
               this.chromeColor = 13421772;
               this.rollOverColor = 13556719;
               this.bevel = true;
               this.fontSize = 12;
               this.shadowColor = 15658734;
               this.columnGap = 20;
               this.paddingLeft = 0;
               this.paragraphEndIndent = 0;
               this.fontWeight = "normal";
               this.indicatorGap = 14;
               this.focusSkin = HaloFocusRect;
               this.breakOpportunity = "auto";
               this.leading = 2;
               this.symbolColor = 0;
               this.renderingMode = "cff";
               this.iconPlacement = "left";
               this.borderThickness = 1;
               this.paragraphStartIndent = 0;
               this.layoutDirection = "ltr";
               this.contentBackgroundColor = 16777215;
               this.backgroundSize = "auto";
               this.paragraphSpaceAfter = 0;
               this.borderColor = 6908265;
               this.shadowDistance = 2;
               this.stroked = false;
               this.digitWidth = "default";
               this.verticalAlign = "top";
               this.ligatureLevel = "common";
               this.firstBaselineOffset = "auto";
               this.fillAlphas = [0.6,0.4,0.75,0.65];
               this.version = "4.0.0";
               this.shadowDirection = "center";
               this.fontLookup = "embeddedCFF";
               this.lineBreak = "toFit";
               this.repeatInterval = 35;
               this.openDuration = 1;
               this.paragraphSpaceBefore = 0;
               this.fontFamily = "Arial";
               this.paddingBottom = 0;
               this.strokeWidth = 1;
               this.lineThrough = false;
               this.textFieldClass = UITextField;
               this.alignmentBaseline = "useDominantBaseline";
               this.trackingLeft = 0;
               this.verticalGridLines = true;
               this.fontStyle = "normal";
               this.dropShadowColor = 0;
               this.accentColor = 39423;
               this.backgroundImageFillMode = "scale";
               this.selectionColor = 11060974;
               this.borderWeight = 1;
               this.focusRoundedCorners = "tl tr bl br";
               this.paddingRight = 0;
               this.borderSides = "left top right bottom";
               this.disabledIconColor = 10066329;
               this.textJustify = "interWord";
               this.focusColor = 7385838;
               this.borderVisible = true;
               this.selectionDuration = 250;
               this.typographicCase = "default";
               this.highlightAlphas = [0.3,0];
               this.fillColor = 16777215;
               this.showErrorSkin = true;
               this.textRollOverColor = 0;
               this.rollOverOpenDelay = 200;
               this.digitCase = "default";
               this.shadowCapColor = 14015965;
               this.inactiveTextSelectionColor = 15263976;
               this.backgroundAlpha = 1;
               this.justificationRule = "auto";
               this.roundedBottomCorners = true;
               this.dropShadowVisible = false;
               this.softKeyboardEffectDuration = 150;
               this.trackingRight = 0;
               this.fillColors = [16777215,13421772,16777215,15658734];
               this.horizontalGap = 8;
               this.borderCapColor = 9542041;
               this.leadingModel = "auto";
               this.selectionDisabledColor = 14540253;
               this.closeDuration = 50;
               this.embedFonts = false;
               this.letterSpacing = 0;
               this.focusAlpha = 0.55;
               this.borderAlpha = 1;
               this.baselineShift = 0;
               this.focusedTextSelectionColor = 11060974;
               this.fontSharpness = 0;
               this.modalTransparencyDuration = 100;
               this.justificationStyle = "auto";
               this.borderStyle = "inset";
               this.contentBackgroundAlpha = 1;
               this.textRotation = "auto";
               this.fontAntiAliasType = "advanced";
               this.errorColor = 16646144;
               this.direction = "ltr";
               this.cffHinting = "horizontalStem";
               this.horizontalGridLineColor = 16250871;
               this.locale = "en";
               this.cornerRadius = 2;
               this.modalTransparencyColor = 14540253;
               this.disabledAlpha = 0.5;
               this.textIndent = 0;
               this.verticalGridLineColor = 14015965;
               this.themeColor = 7385838;
               this.tabStops = null;
               this.modalTransparency = 0.5;
               this.smoothScrolling = true;
               this.columnWidth = "auto";
               this.textAlign = "start";
               this.horizontalScrollPolicy = "auto";
               this.textSelectedColor = 0;
               this.interactionMode = "mouse";
               this.whiteSpaceCollapse = "collapse";
               this.fontGridFitType = "pixel";
               this.horizontalGridLines = false;
               this.fullScreenHideControlsDelay = 3000;
               this.useRollOver = true;
               this.repeatDelay = 500;
               this.focusThickness = 2;
               this.verticalGap = 6;
               this.disabledColor = 11187123;
               this.modalTransparencyBlur = 3;
               this.slideDuration = 300;
               this.color = 0;
               this.fixedThumbSize = false;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","gripperSkin");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".gripperSkin");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = _embed_css_gripper_up_png__1732525316_1495610128;
               this.overSkin = _embed_css_gripper_up_png__1732525316_1495610128;
               this.downSkin = _embed_css_gripper_up_png__1732525316_1495610128;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","macCloseButton");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".macCloseButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = _embed_css_mac_close_up_png_1731212639_1987206925;
               this.overSkin = _embed_css_mac_close_over_png__2014281512_1494416900;
               this.downSkin = _embed_css_mac_close_down_png__1116286554_513569686;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","macMaxButton");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".macMaxButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = _embed_css_mac_max_up_png_1027230963_749059367;
               this.overSkin = _embed_css_mac_max_over_png_64160620_1961402016;
               this.downSkin = _embed_css_mac_max_down_png_962155578_1486536226;
               this.disabledSkin = _embed_css_mac_max_dis_png__561916980_1878257756;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","macMinButton");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".macMinButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = _embed_css_mac_min_up_png__795737019_1900870025;
               this.overSkin = _embed_css_mac_min_over_png_538586686_1428665298;
               this.downSkin = _embed_css_mac_min_down_png_1436581644_1830796608;
               this.alpha = 0.5;
               this.disabledSkin = _embed_css_mac_min_dis_png__1239349574_405148358;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","statusTextStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".statusTextStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 5789784;
               this.alpha = 0.6;
               this.fontSize = 10;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","titleTextStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".titleTextStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 5789784;
               this.alpha = 0.6;
               this.fontSize = 9;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","winCloseButton");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".winCloseButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = _embed_css_win_close_up_png__1169826830_707895974;
               this.overSkin = _embed_css_win_close_over_png_1815531179_1864605551;
               this.downSkin = _embed_css_win_close_down_png__1581441159_1791345763;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","winMaxButton");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".winMaxButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = _embed_css_win_max_up_png__660702138_1722175094;
               this.downSkin = _embed_css_win_max_down_png__1938883891_262592385;
               this.overSkin = _embed_css_win_max_over_png_1458088447_1726461805;
               this.disabledSkin = _embed_css_win_max_dis_png__1348235559_508974553;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","winMinButton");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".winMinButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = _embed_css_win_min_up_png_1811297176_1990073924;
               this.downSkin = _embed_css_win_min_down_png__1464457825_133967821;
               this.overSkin = _embed_css_win_min_over_png_1932514513_2057059931;
               this.disabledSkin = _embed_css_win_min_dis_png__2025668153_692771225;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","winRestoreButton");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration(".winRestoreButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = _embed_css_win_restore_up_png__1376474788_1327363728;
               this.downSkin = _embed_css_win_restore_down_png_1693334115_317145271;
               this.overSkin = _embed_css_win_restore_over_png_795339157_1080602937;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.DividedBox",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.DividedBox");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.dividerThickness = 3;
               this.dividerColor = 7305079;
               this.dividerAffordance = 6;
               this.verticalDividerCursor = _embed_css_Assets_swf__823650519_mx_skins_cursor_VBoxDivider_678955794;
               this.dividerSkin = _embed_css_Assets_swf__823650519_mx_skins_BoxDividerSkin_1134466289;
               this.horizontalDividerCursor = _embed_css_Assets_swf__823650519_mx_skins_cursor_HBoxDivider_1979048276;
               this.dividerAlpha = 0.75;
               this.verticalGap = 10;
               this.horizontalGap = 10;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.managers.DragManager",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.DragManager");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.copyCursor = _embed_css_Assets_swf_2102362548_mx_skins_cursor_DragCopy_1011704505;
               this.moveCursor = _embed_css_Assets_swf_2102362548_mx_skins_cursor_DragMove_1011992085;
               this.rejectCursor = _embed_css_Assets_swf_2102362548_mx_skins_cursor_DragReject_475548029;
               this.linkCursor = _embed_css_Assets_swf_2102362548_mx_skins_cursor_DragLink_1011966510;
               this.defaultDragImageSkin = DefaultDragImage;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.HRule",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HRule");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.strokeColor = 12897484;
               this.strokeWidth = 2;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.Panel",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Panel");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.statusStyleName = "windowStatus";
               this.borderStyle = "default";
               this.borderColor = 0;
               this.paddingTop = 0;
               this.backgroundColor = 16777215;
               this.cornerRadius = 0;
               this.titleBackgroundSkin = UIComponent;
               this.borderAlpha = 0.5;
               this.paddingLeft = 0;
               this.paddingRight = 0;
               this.resizeEndEffect = "Dissolve";
               this.titleStyleName = "windowStyles";
               this.resizeStartEffect = "Dissolve";
               this.dropShadowVisible = true;
               this.borderSkin = PanelBorderSkin;
               this.paddingBottom = 0;
            };
         }
         effects = style.mx_internal::effects;
         if(!effects)
         {
            effects = style.mx_internal::effects = [];
         }
         effects.push("resizeEndEffect");
         effects.push("resizeStartEffect");
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ProgressBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ProgressBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
               this.leading = 0;
               this.barSkin = ProgressBarSkin;
               this.trackSkin = ProgressBarTrackSkin;
               this.indeterminateMoveInterval = 14;
               this.maskSkin = ProgressMaskSkin;
               this.indeterminateSkin = ProgressIndeterminateSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.scrollClasses.ScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.scrollClasses.ScrollBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.thumbOffset = 0;
               this.paddingTop = 0;
               this.trackSkin = ScrollBarTrackSkin;
               this.downArrowSkin = ScrollBarDownButtonSkin;
               this.upArrowSkin = ScrollBarUpButtonSkin;
               this.paddingLeft = 0;
               this.paddingBottom = 0;
               this.thumbSkin = ScrollBarThumbSkin;
               this.paddingRight = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.core.ScrollControlBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.ScrollControlBase");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderSkin = BorderSkin;
               this.focusRoundedCorners = " ";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","textAreaVScrollBarStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.HScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HScrollBar.textAreaVScrollBarStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","textAreaHScrollBarStyle");
         conditions.push(condition);
         selector = new CSSSelector("mx.controls.VScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.VScrollBar.textAreaHScrollBarStyle");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.containers.VDividedBox",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.VDividedBox");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.dividerThickness = 3;
               this.dividerColor = 7305079;
               this.dividerAffordance = 6;
               this.verticalDividerCursor = _embed_css_Assets_swf__823650519_mx_skins_cursor_VBoxDivider_678955794;
               this.dividerSkin = _embed_css_Assets_swf__823650519_mx_skins_BoxDividerSkin_1134466289;
               this.horizontalDividerCursor = _embed_css_Assets_swf__823650519_mx_skins_cursor_HBoxDivider_1979048276;
               this.dividerAlpha = 0.75;
               this.verticalGap = 10;
               this.horizontalGap = 10;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.managers.CursorManager",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.CursorManager");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.busyCursor = BusyCursor;
               this.busyCursorBackground = _embed_css_Assets_swf_2102362548_mx_skins_cursor_BusyCursor_693525071;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.ToolTip",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ToolTip");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderStyle = "toolTip";
               this.paddingTop = 2;
               this.borderColor = 9542041;
               this.backgroundColor = 16777164;
               this.borderSkin = ToolTipBorder;
               this.cornerRadius = 2;
               this.fontSize = 10;
               this.paddingLeft = 4;
               this.paddingBottom = 2;
               this.backgroundAlpha = 0.95;
               this.paddingRight = 4;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Application",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Application");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.skinClass = ApplicationSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.BorderContainer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.BorderContainer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderStyle = "solid";
               this.backgroundColor = 16777215;
               this.skinClass = BorderContainerSkin;
               this.cornerRadius = 0;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Button",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Button");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = ButtonSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","emphasized");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.Button",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Button.emphasized");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = DefaultButtonSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.ButtonBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.ButtonBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = ButtonBarSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Callout",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Callout");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderColor = 4013373;
               this.contentBackgroundAppearance = "flat";
               this.backgroundColor = 16777215;
               this.skinClass = CalloutSkin;
               this.borderThickness = 1;
               this.contentBackgroundColor = 16777215;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.CheckBox",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.CheckBox");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = CheckBoxSkin;
               this.labelPlacement = "right";
               this.gap = 5;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.ComboBox",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.ComboBox");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 5;
               this.dropShadowVisible = true;
               this.skinClass = ComboBoxSkin;
               this.paddingLeft = 3;
               this.paddingBottom = 3;
               this.paddingRight = 3;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.DataGrid",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.DataGrid");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.stretchCursor = _embed_css_Assets_swf__823650519_cursorStretch_1868328342;
               this.skinClass = DataGridSkin;
               this.dragIndicatorClass = DataGridDragProxy;
               this.dropIndicatorSkin = ListDropIndicator;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.DropDownList",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.DropDownList");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.dropShadowVisible = true;
               this.skinClass = DropDownListSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Form",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Form");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = FormSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.FormHeading",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.FormHeading");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.fontWeight = "bold";
               this.skinClass = FormHeadingSkin;
               this.fontSize = 15;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.FormItem",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.FormItem");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.requiredIndicatorSource = _embed_css_assets_RequiredIndicator_png__1387436931_1267879939;
               this.skinClass = FormItemSkin;
               this.errorIndicatorSource = _embed_css_assets_ErrorIndicator_png__5119536_204469652;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.GridColumnHeaderGroup",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.GridColumnHeaderGroup");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.separatorAffordance = 5;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.HScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.HScrollBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = HScrollBarSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Image",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Image");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.smoothingQuality = "default";
               this.skinClass = ImageSkin;
               this.showErrorSkin = false;
               this.enableLoadingState = false;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.List",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.List");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.dragIndicatorClass = ListItemDragProxy;
               this.skinClass = ListSkin;
               this.dropIndicatorSkin = ListDropIndicator;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.NumericStepper",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.NumericStepper");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = NumericStepperSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Panel",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Panel");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderColor = 0;
               this.backgroundColor = 16777215;
               this.dropShadowVisible = true;
               this.skinClass = PanelSkin;
               this.cornerRadius = 0;
               this.borderAlpha = 0.5;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.RichEditableText",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.RichEditableText");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.layoutDirection = "ltr";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Scroller",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Scroller");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = ScrollerSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.SkinnableDataContainer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.SkinnableDataContainer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = SkinnableDataContainerSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.supportClasses.SkinnableComponent",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableComponent");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.focusSkin = FocusSkin;
               this.errorSkin = ErrorSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.SkinnableContainer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.SkinnableContainer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = SkinnableContainerSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.SkinnablePopUpContainer",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.SkinnablePopUpContainer");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = SkinnablePopUpContainerSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("pseudo","normalWithPrompt");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.supportClasses.SkinnableTextBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableTextBase:normalWithPrompt");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 12237498;
               this.fontStyle = "italic";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("pseudo","disabledWithPrompt");
         conditions.push(condition);
         selector = new CSSSelector("spark.components.supportClasses.SkinnableTextBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableTextBase:disabledWithPrompt");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.color = 12237498;
               this.fontStyle = "italic";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Spinner",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Spinner");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = SpinnerSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.supportClasses.TextBase",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.TextBase");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.layoutDirection = "ltr";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.TextArea",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.TextArea");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 5;
               this.skinClass = TextAreaSkin;
               this.paddingLeft = 3;
               this.paddingBottom = 3;
               this.paddingRight = 3;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.TextInput",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.TextInput");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.paddingTop = 5;
               this.skinClass = TextInputSkin;
               this.paddingLeft = 3;
               this.paddingBottom = 3;
               this.paddingRight = 3;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.TitleWindow",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.TitleWindow");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderColor = 0;
               this.dropShadowVisible = true;
               this.skinClass = TitleWindowSkin;
               this.cornerRadius = 0;
               this.borderAlpha = 0.8;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.ToggleButton",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.ToggleButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = ToggleButtonSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.VScrollBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.VScrollBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = VScrollBarSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.windowClasses.TitleBar",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.windowClasses.TitleBar");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.skinClass = TitleBarSkin;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.WindowedApplication",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.WindowedApplication");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.skinClass = WindowedApplicationSkin;
               this.resizeAffordanceWidth = 6;
               this.backgroundAlpha = 1;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.Window",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Window");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.backgroundColor = 16777215;
               this.skinClass = WindowedApplicationSkin;
               this.resizeAffordanceWidth = 6;
               this.backgroundAlpha = 1;
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.HTML",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HTML");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderStyle = "none";
               this.layoutDirection = "ltr";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("spark.components.CalloutButton",conditions,selector);
         mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.CalloutButton");
         style = new CSSStyleDeclaration(selector,styleManager,mergedStyle == null);
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.rollOverOpenDelay = "NaN";
            };
         }
         if(mergedStyle != null && (mergedStyle.defaultFactory == null || ObjectUtil.compare(new style.defaultFactory(),new mergedStyle.defaultFactory())))
         {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString,style,false);
         }
      }
   }
}
