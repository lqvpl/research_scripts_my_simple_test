package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.IStyleManager2;
   import mx.managers.systemClasses.ChildManager;
   import mx.styles.StyleManagerImpl;
   import mx.effects.EffectManager;
   import mx.core.mx_internal;
   import flash.system.Capabilities;
   import spark.accessibility.ButtonBarBaseAccImpl;
   import mx.accessibility.PanelAccImpl;
   import spark.accessibility.SpinnerAccImpl;
   import spark.accessibility.NumericStepperAccImpl;
   import spark.accessibility.DataGridAccImpl;
   import spark.accessibility.ButtonBaseAccImpl;
   import spark.accessibility.ListBaseAccImpl;
   import spark.accessibility.ToggleButtonAccImpl;
   import spark.accessibility.ComboBoxAccImpl;
   import mx.accessibility.AlertAccImpl;
   import spark.accessibility.RichEditableTextAccImpl;
   import spark.accessibility.TextBaseAccImpl;
   import spark.accessibility.TitleWindowAccImpl;
   import spark.accessibility.ListAccImpl;
   import spark.accessibility.CheckBoxAccImpl;
   import spark.accessibility.DropDownListBaseAccImpl;
   import mx.accessibility.ButtonAccImpl;
   import mx.accessibility.UIComponentAccProps;
   import flash.net.getClassByAlias;
   import mx.collections.ArrayCollection;
   import flash.net.registerClassAlias;
   import mx.collections.ArrayList;
   import mx.messaging.config.ConfigMap;
   import mx.messaging.messages.AcknowledgeMessage;
   import mx.messaging.messages.AcknowledgeMessageExt;
   import mx.messaging.messages.AsyncMessage;
   import mx.messaging.messages.AsyncMessageExt;
   import mx.messaging.messages.CommandMessage;
   import mx.messaging.messages.CommandMessageExt;
   import mx.messaging.messages.ErrorMessage;
   import mx.messaging.messages.HTTPRequestMessage;
   import mx.messaging.messages.MessagePerformanceInfo;
   import mx.utils.ObjectProxy;
   
   public class _LongTailPro_FlexInit
   {
       
      
      public function _LongTailPro_FlexInit()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var styleManager:IStyleManager2 = null;
         var fbs:IFlexModuleFactory = param1;
         new ChildManager(fbs);
         styleManager = new StyleManagerImpl(fbs);
         EffectManager.mx_internal::registerEffectTrigger("addedEffect","added");
         EffectManager.mx_internal::registerEffectTrigger("closeEffect","windowClose");
         EffectManager.mx_internal::registerEffectTrigger("completeEffect","complete");
         EffectManager.mx_internal::registerEffectTrigger("creationCompleteEffect","creationComplete");
         EffectManager.mx_internal::registerEffectTrigger("focusInEffect","focusIn");
         EffectManager.mx_internal::registerEffectTrigger("focusOutEffect","focusOut");
         EffectManager.mx_internal::registerEffectTrigger("hideEffect","hide");
         EffectManager.mx_internal::registerEffectTrigger("minimizeEffect","windowMinimize");
         EffectManager.mx_internal::registerEffectTrigger("mouseDownEffect","mouseDown");
         EffectManager.mx_internal::registerEffectTrigger("mouseUpEffect","mouseUp");
         EffectManager.mx_internal::registerEffectTrigger("moveEffect","move");
         EffectManager.mx_internal::registerEffectTrigger("removedEffect","removed");
         EffectManager.mx_internal::registerEffectTrigger("resizeEffect","resize");
         EffectManager.mx_internal::registerEffectTrigger("resizeEndEffect","resizeEnd");
         EffectManager.mx_internal::registerEffectTrigger("resizeStartEffect","resizeStart");
         EffectManager.mx_internal::registerEffectTrigger("rollOutEffect","rollOut");
         EffectManager.mx_internal::registerEffectTrigger("rollOverEffect","rollOver");
         EffectManager.mx_internal::registerEffectTrigger("showEffect","show");
         EffectManager.mx_internal::registerEffectTrigger("unminimizeEffect","windowUnminimize");
         if(Capabilities.hasAccessibility)
         {
            ButtonBarBaseAccImpl.enableAccessibility();
            mx.accessibility.PanelAccImpl.enableAccessibility();
            SpinnerAccImpl.enableAccessibility();
            NumericStepperAccImpl.enableAccessibility();
            DataGridAccImpl.enableAccessibility();
            ButtonBaseAccImpl.enableAccessibility();
            ListBaseAccImpl.enableAccessibility();
            ToggleButtonAccImpl.enableAccessibility();
            ComboBoxAccImpl.enableAccessibility();
            AlertAccImpl.enableAccessibility();
            RichEditableTextAccImpl.enableAccessibility();
            TextBaseAccImpl.enableAccessibility();
            TitleWindowAccImpl.enableAccessibility();
            spark.accessibility.PanelAccImpl.enableAccessibility();
            ListAccImpl.enableAccessibility();
            CheckBoxAccImpl.enableAccessibility();
            DropDownListBaseAccImpl.enableAccessibility();
            ButtonAccImpl.enableAccessibility();
            UIComponentAccProps.enableAccessibility();
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayCollection") != ArrayCollection)
            {
               registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayCollection",ArrayCollection);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ArrayList") != ArrayList)
            {
               registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ArrayList",ArrayList);
         }
         try
         {
            if(getClassByAlias("flex.messaging.config.ConfigMap") != ConfigMap)
            {
               registerClassAlias("flex.messaging.config.ConfigMap",ConfigMap);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.config.ConfigMap",ConfigMap);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.AcknowledgeMessage") != AcknowledgeMessage)
            {
               registerClassAlias("flex.messaging.messages.AcknowledgeMessage",AcknowledgeMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.AcknowledgeMessage",AcknowledgeMessage);
         }
         try
         {
            if(getClassByAlias("DSK") != AcknowledgeMessageExt)
            {
               registerClassAlias("DSK",AcknowledgeMessageExt);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("DSK",AcknowledgeMessageExt);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.AsyncMessage") != AsyncMessage)
            {
               registerClassAlias("flex.messaging.messages.AsyncMessage",AsyncMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.AsyncMessage",AsyncMessage);
         }
         try
         {
            if(getClassByAlias("DSA") != AsyncMessageExt)
            {
               registerClassAlias("DSA",AsyncMessageExt);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("DSA",AsyncMessageExt);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.CommandMessage") != CommandMessage)
            {
               registerClassAlias("flex.messaging.messages.CommandMessage",CommandMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.CommandMessage",CommandMessage);
         }
         try
         {
            if(getClassByAlias("DSC") != CommandMessageExt)
            {
               registerClassAlias("DSC",CommandMessageExt);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("DSC",CommandMessageExt);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.ErrorMessage") != ErrorMessage)
            {
               registerClassAlias("flex.messaging.messages.ErrorMessage",ErrorMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.ErrorMessage",ErrorMessage);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.HTTPMessage") != HTTPRequestMessage)
            {
               registerClassAlias("flex.messaging.messages.HTTPMessage",HTTPRequestMessage);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.HTTPMessage",HTTPRequestMessage);
         }
         try
         {
            if(getClassByAlias("flex.messaging.messages.MessagePerformanceInfo") != MessagePerformanceInfo)
            {
               registerClassAlias("flex.messaging.messages.MessagePerformanceInfo",MessagePerformanceInfo);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.messages.MessagePerformanceInfo",MessagePerformanceInfo);
         }
         try
         {
            if(getClassByAlias("flex.messaging.io.ObjectProxy") != ObjectProxy)
            {
               registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
            }
         }
         catch(e:Error)
         {
            registerClassAlias("flex.messaging.io.ObjectProxy",ObjectProxy);
         }
         var styleNames:Array = ["lineHeight","unfocusedTextSelectionColor","kerning","caretColor","listAutoPadding","textDecoration","showErrorTip","dominantBaseline","fontThickness","textShadowColor","blockProgression","textAlignLast","listStylePosition","textShadowAlpha","textAlpha","chromeColor","rollOverColor","fontSize","shadowColor","paragraphEndIndent","fontWeight","breakOpportunity","leading","renderingMode","symbolColor","paragraphStartIndent","layoutDirection","footerColors","contentBackgroundColor","paragraphSpaceAfter","columnBreakBefore","digitWidth","touchDelay","ligatureLevel","firstBaselineOffset","fontLookup","paragraphSpaceBefore","fontFamily","labelPlacement","strokeWidth","lineThrough","alignmentBaseline","trackingLeft","fontStyle","dropShadowColor","accentColor","selectionColor","textJustify","focusColor","alternatingItemColors","typographicCase","containerBreakBefore","showErrorSkin","textRollOverColor","digitCase","inactiveTextSelectionColor","justificationRule","dividerColor","trackingRight","leadingModel","letterSpacing","focusedTextSelectionColor","baselineShift","strokeColor","containerBreakAfter","fontSharpness","barColor","modalTransparencyDuration","justificationStyle","listStyleType","wordSpacing","contentBackgroundAlpha","textRotation","fontAntiAliasType","direction","cffHinting","errorColor","locale","specialRowBackgroundColor","backgroundDisabledColor","modalTransparencyColor","showPromptWhenFocused","textIndent","clearFloats","themeColor","tabStops","modalTransparency","textAlign","headerColors","textSelectedColor","interactionMode","whiteSpaceCollapse","labelWidth","fontGridFitType","disabledColor","modalTransparencyBlur","downColor","color","columnBreakAfter"];
         var i:int = 0;
         while(i < styleNames.length)
         {
            styleManager.registerInheritingStyle(styleNames[i]);
            i++;
         }
      }
   }
}
