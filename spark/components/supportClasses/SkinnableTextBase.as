package spark.components.supportClasses
{
   import mx.managers.IFocusManagerComponent;
   import mx.core.IIMESupport;
   import spark.core.ISoftKeyboardHintClient;
   import mx.core.mx_internal;
   import mx.utils.Platform;
   import flash.display.InteractiveObject;
   import spark.core.IDisplayText;
   import spark.core.IEditableText;
   import flash.system.Capabilities;
   import flash.accessibility.AccessibilityProperties;
   import mx.core.IVisualElement;
   import spark.components.RichEditableText;
   import mx.utils.BitFlagUtil;
   import spark.components.TextSelectionHighlighting;
   import flash.accessibility.Accessibility;
   import mx.core.InteractionMode;
   import flash.events.MouseEvent;
   import mx.events.TouchInteractionEvent;
   import flashx.textLayout.events.SelectionEvent;
   import spark.events.TextOperationEvent;
   import mx.events.FlexEvent;
   import spark.core.IProxiedStageTextWrapper;
   import flash.display.DisplayObject;
   import flashx.textLayout.elements.TextFlow;
   import flash.events.FocusEvent;
   import mx.events.SandboxMouseEvent;
   import flash.events.Event;
   import mx.core.FlexGlobals;
   import spark.components.Application;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class SkinnableTextBase extends SkinnableComponent implements IFocusManagerComponent, IIMESupport, ISoftKeyboardHintClient
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const CONTENT_PROPERTY_FLAG:uint = 1 << 0;
      
      private static const DISPLAY_AS_PASSWORD_PROPERTY_FLAG:uint = 1 << 1;
      
      private static const EDITABLE_PROPERTY_FLAG:uint = 1 << 2;
      
      private static const HEIGHT_IN_LINES_PROPERTY_FLAG:uint = 1 << 3;
      
      private static const IME_MODE_PROPERTY_FLAG:uint = 1 << 4;
      
      private static const MAX_CHARS_PROPERTY_FLAG:uint = 1 << 5;
      
      private static const MAX_WIDTH_PROPERTY_FLAG:uint = 1 << 7;
      
      private static const RESTRICT_PROPERTY_FLAG:uint = 1 << 8;
      
      private static const SELECTABLE_PROPERTY_FLAG:uint = 1 << 9;
      
      private static const SELECTION_HIGHLIGHTING_FLAG:uint = 1 << 10;
      
      private static const TEXT_PROPERTY_FLAG:uint = 1 << 11;
      
      private static const TEXT_FLOW_PROPERTY_FLAG:uint = 1 << 12;
      
      private static const TYPICAL_TEXT_PROPERTY_FLAG:uint = 1 << 13;
      
      private static const WIDTH_IN_CHARS_PROPERTY_FLAG:uint = 1 << 14;
      
      private static const AUTO_CAPITALIZE_FLAG:uint = 1 << 15;
      
      private static const AUTO_CORRECT_FLAG:uint = 1 << 16;
      
      private static const RETURN_KEY_LABEL_FLAG:uint = 1 << 17;
      
      private static const SOFT_KEYBOARD_TYPE_FLAG:uint = 1 << 18;
      
      private static const PROMPT_TEXT_PROPERTY_FLAG:uint = 1;
      
      private static var isIOS:Boolean = Platform.isIOS;
       
      
      private var touchHandlersAdded:Boolean = false;
      
      private var isTouchMouseDown:Boolean = false;
      
      private var delaySetFocus:Boolean = false;
      
      private var touchMouseDownTarget:InteractiveObject;
      
      [SkinPart(required="false")]
      public var promptDisplay:IDisplayText;
      
      private var promptDisplayProperties:Object;
      
      private var _831827669textDisplay:IEditableText;
      
      private var textDisplayProperties:Object;
      
      private var _accessibilityProperties:AccessibilityProperties = null;
      
      private var accessibilityPropertiesChanged:Boolean = false;
      
      private var _tabIndex:int = -1;
      
      public function SkinnableTextBase()
      {
         this.promptDisplayProperties = {};
         this.textDisplayProperties = {};
         super();
      }
      
      override public function set accessibilityEnabled(param1:Boolean) : void
      {
         if(!Capabilities.hasAccessibility)
         {
            return;
         }
         if(!this.accessibilityProperties)
         {
            this.accessibilityProperties = new AccessibilityProperties();
         }
         this.accessibilityProperties.silent = !param1;
         this.accessibilityPropertiesChanged = true;
         invalidateProperties();
      }
      
      override public function set accessibilityDescription(param1:String) : void
      {
         if(!Capabilities.hasAccessibility)
         {
            return;
         }
         if(!this.accessibilityProperties)
         {
            this.accessibilityProperties = new AccessibilityProperties();
         }
         this.accessibilityProperties.description = param1;
         this.accessibilityPropertiesChanged = true;
         invalidateProperties();
      }
      
      override public function set accessibilityName(param1:String) : void
      {
         if(!Capabilities.hasAccessibility)
         {
            return;
         }
         if(!this.accessibilityProperties)
         {
            this.accessibilityProperties = new AccessibilityProperties();
         }
         this.accessibilityProperties.name = param1;
         this.accessibilityPropertiesChanged = true;
         invalidateProperties();
      }
      
      override public function get accessibilityProperties() : AccessibilityProperties
      {
         return this._accessibilityProperties;
      }
      
      override public function set accessibilityProperties(param1:AccessibilityProperties) : void
      {
         this._accessibilityProperties = param1;
         this.accessibilityPropertiesChanged = true;
         invalidateProperties();
      }
      
      override public function set accessibilityShortcut(param1:String) : void
      {
         if(!Capabilities.hasAccessibility)
         {
            return;
         }
         if(!this.accessibilityProperties)
         {
            this.accessibilityProperties = new AccessibilityProperties();
         }
         this.accessibilityProperties.shortcut = param1;
         this.accessibilityPropertiesChanged = true;
         invalidateProperties();
      }
      
      override public function get baselinePosition() : Number
      {
         return getBaselinePositionForPart(this.textDisplay as IVisualElement);
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         if(this.textDisplay)
         {
            this.textDisplay.enabled = param1;
         }
         if(param1 == super.enabled)
         {
            return;
         }
         super.enabled = param1;
      }
      
      override public function get maxWidth() : Number
      {
         var _loc1_:RichEditableText = this.textDisplay as RichEditableText;
         if(_loc1_)
         {
            return _loc1_.maxWidth;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.maxWidth;
         return _loc2_ === undefined?Number(super.maxWidth):Number(_loc2_);
      }
      
      override public function set maxWidth(param1:Number) : void
      {
         var _loc2_:RichEditableText = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as RichEditableText;
            if(_loc2_)
            {
               _loc2_.maxWidth = param1;
            }
            else
            {
               super.maxWidth = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),MAX_WIDTH_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.maxWidth = param1;
         }
         invalidateProperties();
      }
      
      public function get prompt() : String
      {
         return this.getPrompt();
      }
      
      public function set prompt(param1:String) : void
      {
         this.setPrompt(param1);
      }
      
      override public function get tabIndex() : int
      {
         return this._tabIndex;
      }
      
      override public function set tabIndex(param1:int) : void
      {
         this._tabIndex = param1;
         this.accessibilityPropertiesChanged = true;
         invalidateProperties();
      }
      
      public function get typicalText() : String
      {
         return this.getTypicalText();
      }
      
      public function set typicalText(param1:String) : void
      {
         this.setTypicalText(param1);
      }
      
      public function get displayAsPassword() : Boolean
      {
         if(this.textDisplay)
         {
            return this.textDisplay.displayAsPassword;
         }
         var _loc1_:* = this.textDisplayProperties.displayAsPassword;
         return _loc1_ === undefined?false:Boolean(_loc1_);
      }
      
      public function set displayAsPassword(param1:Boolean) : void
      {
         if(this.textDisplay)
         {
            this.textDisplay.displayAsPassword = param1;
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),DISPLAY_AS_PASSWORD_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.displayAsPassword = param1;
         }
         invalidateProperties();
      }
      
      public function get editable() : Boolean
      {
         if(this.textDisplay)
         {
            return this.textDisplay.editable;
         }
         var _loc1_:* = this.textDisplayProperties.editable;
         return _loc1_ === undefined?true:Boolean(_loc1_);
      }
      
      public function set editable(param1:Boolean) : void
      {
         if(this.textDisplay)
         {
            this.textDisplay.editable = param1;
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),EDITABLE_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.editable = param1;
         }
         invalidateProperties();
      }
      
      public function get enableIME() : Boolean
      {
         var _loc1_:RichEditableText = this.textDisplay as RichEditableText;
         if(_loc1_)
         {
            return _loc1_.enableIME;
         }
         return false;
      }
      
      public function get imeMode() : String
      {
         var _loc1_:RichEditableText = this.textDisplay as RichEditableText;
         if(_loc1_)
         {
            return _loc1_.imeMode;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.imeMode;
         return _loc2_ === undefined?null:_loc2_;
      }
      
      public function set imeMode(param1:String) : void
      {
         var _loc2_:RichEditableText = this.textDisplay as RichEditableText;
         if(this.textDisplay)
         {
            if(_loc2_)
            {
               _loc2_.imeMode = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),IME_MODE_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.imeMode = param1;
         }
         invalidateProperties();
      }
      
      public function get maxChars() : int
      {
         if(this.textDisplay)
         {
            return this.textDisplay.maxChars;
         }
         var _loc1_:* = this.textDisplayProperties.maxChars;
         return _loc1_ === undefined?0:int(_loc1_);
      }
      
      public function set maxChars(param1:int) : void
      {
         if(this.textDisplay)
         {
            this.textDisplay.maxChars = param1;
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),MAX_CHARS_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.maxChars = param1;
         }
         invalidateProperties();
      }
      
      public function get restrict() : String
      {
         if(this.textDisplay)
         {
            return this.textDisplay.restrict;
         }
         var _loc1_:* = this.textDisplayProperties.restrict;
         return _loc1_ === undefined?null:_loc1_;
      }
      
      public function set restrict(param1:String) : void
      {
         if(this.textDisplay)
         {
            this.textDisplay.restrict = param1;
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),RESTRICT_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.restrict = param1;
         }
         invalidateProperties();
      }
      
      public function get selectable() : Boolean
      {
         if(this.textDisplay)
         {
            return this.textDisplay.selectable;
         }
         var _loc1_:* = this.textDisplayProperties.selectable;
         return _loc1_ === undefined?true:Boolean(_loc1_);
      }
      
      public function set selectable(param1:Boolean) : void
      {
         if(this.textDisplay)
         {
            this.textDisplay.selectable = param1;
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),SELECTABLE_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.selectable = param1;
         }
         invalidateProperties();
      }
      
      [Bindable("selectionChange")]
      public function get selectionActivePosition() : int
      {
         return !!this.textDisplay?int(this.textDisplay.selectionActivePosition):-1;
      }
      
      [Bindable("selectionChange")]
      public function get selectionAnchorPosition() : int
      {
         return !!this.textDisplay?int(this.textDisplay.selectionAnchorPosition):-1;
      }
      
      public function get selectionHighlighting() : String
      {
         var _loc1_:RichEditableText = this.textDisplay as RichEditableText;
         if(_loc1_)
         {
            return _loc1_.selectionHighlighting;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.selectionHighlighting;
         return _loc2_ === undefined?TextSelectionHighlighting.WHEN_FOCUSED:_loc2_;
      }
      
      public function set selectionHighlighting(param1:String) : void
      {
         var _loc2_:RichEditableText = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as RichEditableText;
            if(_loc2_)
            {
               _loc2_.selectionHighlighting = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),SELECTION_HIGHLIGHTING_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.selectionHighlighting = param1;
         }
         invalidateProperties();
      }
      
      public function get text() : String
      {
         if(this.textDisplay)
         {
            return this.textDisplay.text;
         }
         var _loc1_:* = this.textDisplayProperties.text;
         return _loc1_ === undefined?"":_loc1_;
      }
      
      public function set text(param1:String) : void
      {
         if(this.textDisplay)
         {
            this.textDisplay.text = param1;
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),TEXT_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.text = !!param1?param1:"";
            this.textDisplayProperties.content = undefined;
            this.textDisplayProperties.textFlow = undefined;
         }
         invalidateProperties();
         invalidateSkinState();
      }
      
      public function get autoCapitalize() : String
      {
         var _loc1_:ISoftKeyboardHintClient = this.textDisplay as ISoftKeyboardHintClient;
         if(_loc1_)
         {
            return _loc1_.autoCapitalize;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.autoCapitalize;
         return _loc2_ === undefined?"none":_loc2_;
      }
      
      public function set autoCapitalize(param1:String) : void
      {
         var _loc2_:ISoftKeyboardHintClient = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as ISoftKeyboardHintClient;
            if(_loc2_)
            {
               _loc2_.autoCapitalize = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),AUTO_CAPITALIZE_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.autoCapitalize = param1;
         }
         invalidateProperties();
      }
      
      public function get autoCorrect() : Boolean
      {
         var _loc1_:ISoftKeyboardHintClient = this.textDisplay as ISoftKeyboardHintClient;
         if(_loc1_)
         {
            return _loc1_.autoCorrect;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.autoCorrect;
         return _loc2_ === undefined?true:Boolean(_loc2_);
      }
      
      public function set autoCorrect(param1:Boolean) : void
      {
         var _loc2_:ISoftKeyboardHintClient = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as ISoftKeyboardHintClient;
            if(_loc2_)
            {
               _loc2_.autoCorrect = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),AUTO_CORRECT_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.autoCorrect = param1;
         }
         invalidateProperties();
      }
      
      public function get returnKeyLabel() : String
      {
         var _loc1_:ISoftKeyboardHintClient = this.textDisplay as ISoftKeyboardHintClient;
         if(_loc1_)
         {
            return _loc1_.returnKeyLabel;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.returnKeyLabel;
         return _loc2_ === undefined?"default":_loc2_;
      }
      
      public function set returnKeyLabel(param1:String) : void
      {
         var _loc2_:ISoftKeyboardHintClient = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as ISoftKeyboardHintClient;
            if(_loc2_)
            {
               _loc2_.returnKeyLabel = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),RETURN_KEY_LABEL_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.returnKeyLabel = param1;
         }
         invalidateProperties();
      }
      
      public function get softKeyboardType() : String
      {
         var _loc1_:ISoftKeyboardHintClient = this.textDisplay as ISoftKeyboardHintClient;
         if(_loc1_)
         {
            return _loc1_.softKeyboardType;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.softKeyboardType;
         return _loc2_ === undefined?"default":_loc2_;
      }
      
      public function set softKeyboardType(param1:String) : void
      {
         var _loc2_:ISoftKeyboardHintClient = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as ISoftKeyboardHintClient;
            if(_loc2_)
            {
               _loc2_.softKeyboardType = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),SOFT_KEYBOARD_TYPE_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.softKeyboardType = param1;
         }
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.accessibilityPropertiesChanged)
         {
            if(this.textDisplay)
            {
               this.textDisplay.accessibilityProperties = this._accessibilityProperties;
               this.textDisplay.tabIndex = this._tabIndex;
               if(Capabilities.hasAccessibility)
               {
                  Accessibility.updateProperties();
               }
            }
            this.accessibilityPropertiesChanged = false;
         }
      }
      
      override public function styleChanged(param1:String) : void
      {
         super.styleChanged(param1);
         if(!param1 || param1 == "styleName" || param1 == "interactionMode")
         {
            if(getStyle("interactionMode") == InteractionMode.TOUCH && !this.touchHandlersAdded)
            {
               addEventListener(MouseEvent.MOUSE_DOWN,this.touchMouseDownHandler);
               addEventListener(TouchInteractionEvent.TOUCH_INTERACTION_STARTING,this.touchInteractionStartingHandler);
               addEventListener(TouchInteractionEvent.TOUCH_INTERACTION_START,this.touchInteractionStartHandler);
               this.touchHandlersAdded = true;
            }
            else if(getStyle("interactionMode") == InteractionMode.MOUSE && this.touchHandlersAdded)
            {
               removeEventListener(MouseEvent.MOUSE_DOWN,this.touchMouseDownHandler);
               removeEventListener(TouchInteractionEvent.TOUCH_INTERACTION_STARTING,this.touchInteractionStartingHandler);
               removeEventListener(TouchInteractionEvent.TOUCH_INTERACTION_START,this.touchInteractionStartHandler);
               this.touchHandlersAdded = false;
            }
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _loc3_:uint = 0;
         super.partAdded(param1,param2);
         if(param2 == this.promptDisplay)
         {
            _loc3_ = 0;
            if(this.promptDisplayProperties.prompt !== undefined)
            {
               this.promptDisplay.text = this.promptDisplayProperties.prompt;
               _loc3_ = BitFlagUtil.update(uint(_loc3_),PROMPT_TEXT_PROPERTY_FLAG,true);
            }
            this.promptDisplayProperties = _loc3_;
         }
         if(param2 == this.textDisplay)
         {
            this.textDisplayAdded();
            this.textDisplay.focusEnabled = false;
            this.textDisplay.addEventListener(SelectionEvent.SELECTION_CHANGE,this.textDisplay_selectionChangeHandler);
            this.textDisplay.addEventListener(TextOperationEvent.CHANGING,this.textDisplay_changingHandler);
            this.textDisplay.addEventListener(TextOperationEvent.CHANGE,this.textDisplay_changeHandler);
            this.textDisplay.addEventListener(FlexEvent.ENTER,this.textDisplay_enterHandler);
            this.textDisplay.addEventListener(FlexEvent.VALUE_COMMIT,this.textDisplay_valueCommitHandler);
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         var _loc3_:Object = null;
         super.partRemoved(param1,param2);
         if(param2 == this.textDisplay)
         {
            this.textDisplayRemoved();
            this.textDisplay.removeEventListener(SelectionEvent.SELECTION_CHANGE,this.textDisplay_selectionChangeHandler);
            this.textDisplay.removeEventListener(TextOperationEvent.CHANGING,this.textDisplay_changingHandler);
            this.textDisplay.removeEventListener(TextOperationEvent.CHANGE,this.textDisplay_changeHandler);
            this.textDisplay.removeEventListener(FlexEvent.ENTER,this.textDisplay_enterHandler);
            this.textDisplay.removeEventListener(FlexEvent.VALUE_COMMIT,this.textDisplay_valueCommitHandler);
         }
         if(param2 == this.promptDisplay)
         {
            _loc3_ = {};
            if(BitFlagUtil.isSet(uint(this.promptDisplayProperties),PROMPT_TEXT_PROPERTY_FLAG))
            {
               _loc3_.prompt = this.promptDisplay.text;
            }
            this.promptDisplayProperties = _loc3_;
         }
      }
      
      override protected function getCurrentSkinState() : String
      {
         var _loc1_:Boolean = getStyle("showPromptWhenFocused");
         if((_loc1_ || focusManager && focusManager.getFocus() != focusManager.findFocusManagerComponent(this)) && this.prompt != null && this.prompt != "")
         {
            if(this.text.length == 0)
            {
               if(enabled && skin && skin.hasState("normalWithPrompt"))
               {
                  return "normalWithPrompt";
               }
               if(!enabled && skin && skin.hasState("disabledWithPrompt"))
               {
                  return "disabledWithPrompt";
               }
            }
         }
         return !!enabled?"normal":"disabled";
      }
      
      override public function setFocus() : void
      {
         if(this.textDisplay)
         {
            if(this.isTouchMouseDown)
            {
               this.delaySetFocus = true;
               if(this.textDisplay is IProxiedStageTextWrapper)
               {
                  IProxiedStageTextWrapper(this.textDisplay).keepSoftKeyboardActive();
               }
            }
            else
            {
               callLater(this.textDisplay.setFocus);
            }
         }
      }
      
      override protected function isOurFocus(param1:DisplayObject) : Boolean
      {
         return param1 == this.textDisplay || super.isOurFocus(param1);
      }
      
      public function insertText(param1:String) : void
      {
         if(!this.textDisplay)
         {
            return;
         }
         this.textDisplay.insertText(param1);
         invalidateProperties();
      }
      
      public function appendText(param1:String) : void
      {
         if(!this.textDisplay)
         {
            return;
         }
         this.textDisplay.appendText(param1);
         invalidateProperties();
      }
      
      public function selectRange(param1:int, param2:int) : void
      {
         if(!this.textDisplay)
         {
            return;
         }
         this.textDisplay.selectRange(param1,param2);
         invalidateProperties();
      }
      
      public function selectAll() : void
      {
         if(!this.textDisplay)
         {
            return;
         }
         this.textDisplay.selectAll();
         invalidateProperties();
      }
      
      mx_internal function setContent(param1:Object) : void
      {
         var _loc2_:RichEditableText = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as RichEditableText;
            if(_loc2_)
            {
               _loc2_.content = param1;
               this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),CONTENT_PROPERTY_FLAG,true);
            }
         }
         else
         {
            this.textDisplayProperties.content = param1;
            this.textDisplayProperties.text = undefined;
            this.textDisplayProperties.textFlow = undefined;
         }
         invalidateProperties();
      }
      
      mx_internal function getHeightInLines() : Number
      {
         var _loc1_:RichEditableText = this.textDisplay as RichEditableText;
         if(_loc1_)
         {
            return _loc1_.heightInLines;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.heightInLines;
         return _loc2_ === undefined?Number(NaN):Number(_loc2_);
      }
      
      mx_internal function setHeightInLines(param1:Number) : void
      {
         var _loc2_:RichEditableText = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as RichEditableText;
            if(_loc2_)
            {
               _loc2_.heightInLines = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),HEIGHT_IN_LINES_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.heightInLines = param1;
         }
         invalidateProperties();
      }
      
      mx_internal function getPrompt() : String
      {
         if(this.promptDisplay)
         {
            if(BitFlagUtil.isSet(uint(this.promptDisplayProperties),PROMPT_TEXT_PROPERTY_FLAG))
            {
               return this.promptDisplay.text;
            }
            return null;
         }
         var _loc1_:* = !!this.promptDisplay?undefined:this.promptDisplayProperties.prompt;
         return _loc1_ === undefined?null:_loc1_;
      }
      
      mx_internal function setPrompt(param1:String) : void
      {
         if(this.promptDisplay)
         {
            this.promptDisplay.text = param1;
            this.promptDisplayProperties = BitFlagUtil.update(uint(this.promptDisplayProperties),PROMPT_TEXT_PROPERTY_FLAG,true);
         }
         else
         {
            this.promptDisplayProperties.prompt = param1;
         }
         invalidateProperties();
         invalidateSkinState();
      }
      
      mx_internal function getTextFlow() : TextFlow
      {
         var _loc1_:RichEditableText = this.textDisplay as RichEditableText;
         if(_loc1_)
         {
            return _loc1_.textFlow;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.textFlow;
         return _loc2_ === undefined?null:_loc2_;
      }
      
      mx_internal function setTextFlow(param1:TextFlow) : void
      {
         var _loc2_:RichEditableText = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as RichEditableText;
            if(_loc2_)
            {
               _loc2_.textFlow = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),TEXT_FLOW_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.textFlow = param1;
            this.textDisplayProperties.text = undefined;
            this.textDisplayProperties.content = undefined;
         }
         invalidateProperties();
         invalidateSkinState();
      }
      
      mx_internal function getTypicalText() : String
      {
         var _loc1_:RichEditableText = this.textDisplay as RichEditableText;
         if(_loc1_)
         {
            return _loc1_.typicalText;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.typicalText;
         return _loc2_ === undefined?null:_loc2_;
      }
      
      mx_internal function setTypicalText(param1:String) : void
      {
         var _loc2_:RichEditableText = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as RichEditableText;
            if(_loc2_)
            {
               _loc2_.typicalText = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),TYPICAL_TEXT_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.typicalText = param1;
         }
         invalidateProperties();
      }
      
      mx_internal function getWidthInChars() : Number
      {
         var _loc1_:RichEditableText = this.textDisplay as RichEditableText;
         if(_loc1_)
         {
            return _loc1_.widthInChars;
         }
         var _loc2_:* = !!this.textDisplay?undefined:this.textDisplayProperties.widthInChars;
         return _loc2_ === undefined?Number(NaN):Number(_loc2_);
      }
      
      mx_internal function setWidthInChars(param1:Number) : void
      {
         var _loc2_:RichEditableText = null;
         if(this.textDisplay)
         {
            _loc2_ = this.textDisplay as RichEditableText;
            if(_loc2_)
            {
               _loc2_.widthInChars = param1;
            }
            this.textDisplayProperties = BitFlagUtil.update(uint(this.textDisplayProperties),WIDTH_IN_CHARS_PROPERTY_FLAG,true);
         }
         else
         {
            this.textDisplayProperties.widthInChars = param1;
         }
         invalidateProperties();
      }
      
      private function textDisplayAdded() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:RichEditableText = this.textDisplay as RichEditableText;
         if(this.textDisplayProperties.content !== undefined && _loc2_)
         {
            _loc2_.content = this.textDisplayProperties.content;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),CONTENT_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.displayAsPassword !== undefined)
         {
            this.textDisplay.displayAsPassword = this.textDisplayProperties.displayAsPassword;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),DISPLAY_AS_PASSWORD_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.editable !== undefined)
         {
            this.textDisplay.editable = this.textDisplayProperties.editable;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),EDITABLE_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.heightInLines !== undefined && _loc2_)
         {
            _loc2_.heightInLines = this.textDisplayProperties.heightInLines;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),HEIGHT_IN_LINES_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.imeMode !== undefined && _loc2_)
         {
            _loc2_.imeMode = this.textDisplayProperties.imeMode;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),IME_MODE_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.maxChars !== undefined)
         {
            this.textDisplay.maxChars = this.textDisplayProperties.maxChars;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),MAX_CHARS_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.maxWidth !== undefined)
         {
            if(_loc2_)
            {
               _loc2_.maxWidth = this.textDisplayProperties.maxWidth;
            }
            else
            {
               super.maxWidth = this.textDisplayProperties.maxWidth;
            }
            _loc1_ = BitFlagUtil.update(uint(_loc1_),MAX_WIDTH_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.restrict !== undefined)
         {
            this.textDisplay.restrict = this.textDisplayProperties.restrict;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),RESTRICT_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.selectable !== undefined)
         {
            this.textDisplay.selectable = this.textDisplayProperties.selectable;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),SELECTABLE_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.selectionHighlighting !== undefined && _loc2_)
         {
            _loc2_.selectionHighlighting = this.textDisplayProperties.selectionHighlighting;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),SELECTION_HIGHLIGHTING_FLAG,true);
         }
         if(this.textDisplayProperties.text != null)
         {
            this.textDisplay.text = this.textDisplayProperties.text;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),TEXT_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.textFlow !== undefined && _loc2_)
         {
            _loc2_.textFlow = this.textDisplayProperties.textFlow;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),TEXT_FLOW_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.typicalText !== undefined && _loc2_)
         {
            _loc2_.typicalText = this.textDisplayProperties.typicalText;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),TYPICAL_TEXT_PROPERTY_FLAG,true);
         }
         if(this.textDisplayProperties.widthInChars !== undefined && _loc2_)
         {
            _loc2_.widthInChars = this.textDisplayProperties.widthInChars;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),WIDTH_IN_CHARS_PROPERTY_FLAG,true);
         }
         var _loc3_:ISoftKeyboardHintClient = this.textDisplay as ISoftKeyboardHintClient;
         if(this.textDisplayProperties.autoCapitalize !== undefined && _loc3_)
         {
            _loc3_.autoCapitalize = this.textDisplayProperties.autoCapitalize;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),AUTO_CAPITALIZE_FLAG,true);
         }
         if(this.textDisplayProperties.autoCorrect !== undefined && _loc3_)
         {
            _loc3_.autoCorrect = this.textDisplayProperties.autoCorrect;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),AUTO_CORRECT_FLAG,true);
         }
         if(this.textDisplayProperties.returnKeyLabel !== undefined && _loc3_)
         {
            _loc3_.returnKeyLabel = this.textDisplayProperties.returnKeyLabel;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),RETURN_KEY_LABEL_FLAG,true);
         }
         if(this.textDisplayProperties.softKeyboardType !== undefined && _loc3_)
         {
            _loc3_.softKeyboardType = this.textDisplayProperties.softKeyboardType;
            _loc1_ = BitFlagUtil.update(uint(_loc1_),SOFT_KEYBOARD_TYPE_FLAG,true);
         }
         this.textDisplayProperties = _loc1_;
      }
      
      private function textDisplayRemoved() : void
      {
         var _loc1_:Object = {};
         var _loc2_:RichEditableText = this.textDisplay as RichEditableText;
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),DISPLAY_AS_PASSWORD_PROPERTY_FLAG))
         {
            _loc1_.displayAsPassword = this.textDisplay.displayAsPassword;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),EDITABLE_PROPERTY_FLAG))
         {
            _loc1_.editable = this.textDisplay.editable;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),HEIGHT_IN_LINES_PROPERTY_FLAG) && _loc2_)
         {
            _loc1_.heightInLines = _loc2_.heightInLines;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),IME_MODE_PROPERTY_FLAG) && _loc2_)
         {
            _loc1_.imeMode = _loc2_.imeMode;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),MAX_CHARS_PROPERTY_FLAG))
         {
            _loc1_.maxChars = this.textDisplay.maxChars;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),MAX_WIDTH_PROPERTY_FLAG))
         {
            _loc1_.maxWidth = !!_loc2_?_loc2_.maxWidth:super.maxWidth;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),RESTRICT_PROPERTY_FLAG))
         {
            _loc1_.restrict = this.textDisplay.restrict;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),SELECTABLE_PROPERTY_FLAG))
         {
            _loc1_.selectable = this.textDisplay.selectable;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),SELECTION_HIGHLIGHTING_FLAG) && _loc2_)
         {
            _loc1_.selectionHighlighting = _loc2_.selectionHighlighting;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),TEXT_PROPERTY_FLAG))
         {
            _loc1_.text = this.textDisplay.text;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),TEXT_FLOW_PROPERTY_FLAG) || BitFlagUtil.isSet(uint(this.textDisplayProperties),CONTENT_PROPERTY_FLAG) && _loc2_)
         {
            _loc1_.textFlow = _loc2_.textFlow;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),TYPICAL_TEXT_PROPERTY_FLAG) && _loc2_)
         {
            _loc1_.typicalText = _loc2_.typicalText;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),WIDTH_IN_CHARS_PROPERTY_FLAG) && _loc2_)
         {
            _loc1_.widthInChars = _loc2_.widthInChars;
         }
         var _loc3_:ISoftKeyboardHintClient = this.textDisplay as ISoftKeyboardHintClient;
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),AUTO_CAPITALIZE_FLAG) && _loc3_)
         {
            _loc1_.autoCapitalize = _loc3_.autoCapitalize;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),AUTO_CORRECT_FLAG) && _loc3_)
         {
            _loc1_.autoCorrect = _loc3_.autoCorrect;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),RETURN_KEY_LABEL_FLAG) && _loc3_)
         {
            _loc1_.returnKeyLabel = _loc3_.returnKeyLabel;
         }
         if(BitFlagUtil.isSet(uint(this.textDisplayProperties),SOFT_KEYBOARD_TYPE_FLAG) && _loc3_)
         {
            _loc1_.softKeyboardType = _loc3_.softKeyboardType;
         }
         this.textDisplayProperties = _loc1_;
      }
      
      override protected function focusInHandler(param1:FocusEvent) : void
      {
         var _loc2_:Boolean = false;
         if(param1.target == this)
         {
            this.setFocus();
            return;
         }
         if(enabled && this.editable && focusManager)
         {
            _loc2_ = focusManager.showFocusIndicator;
            focusManager.showFocusIndicator = true;
         }
         invalidateSkinState();
         super.focusInHandler(param1);
         if(enabled && this.editable && focusManager)
         {
            focusManager.showFocusIndicator = _loc2_;
         }
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         if(param1.target == this)
         {
            return;
         }
         invalidateSkinState();
         super.focusOutHandler(param1);
      }
      
      private function touchMouseDownHandler(param1:MouseEvent) : void
      {
         this.isTouchMouseDown = true;
         this.touchMouseDownTarget = param1.target as InteractiveObject;
         if(focusManager && focusManager.getFocus() == this)
         {
            this.delaySetFocus = true;
         }
         systemManager.getSandboxRoot().addEventListener(MouseEvent.MOUSE_UP,this.touchMouseUpHandler,false,0,true);
         systemManager.getSandboxRoot().addEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,this.touchMouseUpHandler,false,0,true);
      }
      
      private function touchMouseUpHandler(param1:Event) : void
      {
         if(param1.target is DisplayObject && contains(DisplayObject(param1.target)) && (this.delaySetFocus || this.touchMouseDownTarget == this.textDisplay && param1.target != this.textDisplay))
         {
            if(this.textDisplay)
            {
               this.textDisplay.setFocus();
            }
         }
         this.clearTouchMouseDownState();
      }
      
      private function touchInteractionStartingHandler(param1:TouchInteractionEvent) : void
      {
         if(this.textDisplay && this.textDisplay is IProxiedStageTextWrapper)
         {
            IProxiedStageTextWrapper(this.textDisplay).prepareForTouchScroll();
         }
      }
      
      private function touchInteractionStartHandler(param1:TouchInteractionEvent) : void
      {
         var _loc2_:Application = FlexGlobals.topLevelApplication as Application;
         if(isIOS && _loc2_ && _loc2_.isSoftKeyboardActive && this.editable)
         {
            stage.focus = null;
         }
         this.clearTouchMouseDownState();
      }
      
      private function clearTouchMouseDownState() : void
      {
         if(this.isTouchMouseDown)
         {
            systemManager.getSandboxRoot().removeEventListener(MouseEvent.MOUSE_UP,this.touchMouseUpHandler,false);
            systemManager.getSandboxRoot().removeEventListener(SandboxMouseEvent.MOUSE_UP_SOMEWHERE,this.touchMouseUpHandler,false);
            this.isTouchMouseDown = false;
            this.delaySetFocus = false;
            this.touchMouseDownTarget = null;
         }
      }
      
      private function textDisplay_selectionChangeHandler(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      private function textDisplay_changeHandler(param1:Event) : void
      {
         invalidateDisplayList();
         if(this.prompt != null && this.prompt != "" && skin && (skin.currentState.indexOf("WithPrompt") != -1 && this.text.length != 0 || skin.currentState.indexOf("WithPrompt") == -1 && this.text.length == 0))
         {
            invalidateSkinState();
         }
         dispatchEvent(param1);
      }
      
      private function textDisplay_changingHandler(param1:TextOperationEvent) : void
      {
         var _loc2_:Event = param1.clone();
         dispatchEvent(_loc2_);
         if(_loc2_.isDefaultPrevented())
         {
            param1.preventDefault();
         }
      }
      
      private function textDisplay_enterHandler(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      private function textDisplay_valueCommitHandler(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      [SkinPart(required="false")]
      [Bindable(event="propertyChange")]
      public function get textDisplay() : IEditableText
      {
         return this._831827669textDisplay;
      }
      
      [SkinPart(required="false")]
      public function set textDisplay(param1:IEditableText) : void
      {
         var _loc2_:Object = this._831827669textDisplay;
         if(_loc2_ !== param1)
         {
            this._831827669textDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textDisplay",_loc2_,param1));
            }
         }
      }
   }
}
