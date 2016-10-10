package spark.components
{
   import spark.components.supportClasses.DropDownListBase;
   import mx.core.IIMESupport;
   import mx.core.mx_internal;
   import spark.components.supportClasses.ListBase;
   import mx.collections.IList;
   import spark.utils.LabelUtil;
   import spark.events.TextOperationEvent;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.display.InteractiveObject;
   import flash.display.DisplayObject;
   import mx.events.FlexEvent;
   import spark.events.DropDownEvent;
   import flashx.textLayout.operations.FlowOperation;
   import flashx.textLayout.operations.DeleteTextOperation;
   import flashx.textLayout.operations.CutOperation;
   import flashx.textLayout.operations.CompositeOperation;
   
   use namespace mx_internal;
   
   public class ComboBox extends DropDownListBase implements IIMESupport
   {
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      public static const CUSTOM_SELECTED_ITEM:int = ListBase.CUSTOM_SELECTED_ITEM;
       
      
      [SkinPart(required="false")]
      public var textInput:spark.components.TextInput;
      
      private var isTextInputInFocus:Boolean;
      
      private var actualProposedSelectedIndex:Number = -1;
      
      private var userTypedIntoText:Boolean;
      
      private var previousTextInputText:String = "";
      
      public var itemMatchingFunction:Function = null;
      
      private var _labelToItemFunction:Function;
      
      private var labelToItemFunctionChanged:Boolean = false;
      
      private var _maxChars:int = 0;
      
      private var maxCharsChanged:Boolean = false;
      
      public var openOnInput:Boolean = true;
      
      private var _prompt:String;
      
      private var promptChanged:Boolean;
      
      private var _restrict:String;
      
      private var restrictChanged:Boolean;
      
      private var typicalItemChanged:Boolean = false;
      
      public function ComboBox()
      {
         super();
         addEventListener(KeyboardEvent.KEY_DOWN,this.capture_keyDownHandler,true);
         allowCustomSelectedItem = true;
      }
      
      override public function set dataProvider(param1:IList) : void
      {
         if(dataProvider === param1)
         {
            return;
         }
         if(dataProvider != null)
         {
            this.selectedItem = null;
         }
         super.dataProvider = param1;
      }
      
      public function set labelToItemFunction(param1:Function) : void
      {
         if(param1 == this._labelToItemFunction)
         {
            return;
         }
         this._labelToItemFunction = param1;
         this.labelToItemFunctionChanged = true;
         invalidateProperties();
      }
      
      public function get labelToItemFunction() : Function
      {
         return this._labelToItemFunction;
      }
      
      public function set maxChars(param1:int) : void
      {
         if(param1 == this._maxChars)
         {
            return;
         }
         this._maxChars = param1;
         this.maxCharsChanged = true;
         invalidateProperties();
      }
      
      public function get maxChars() : int
      {
         return this._maxChars;
      }
      
      public function get prompt() : String
      {
         return this._prompt;
      }
      
      public function set prompt(param1:String) : void
      {
         this._prompt = param1;
         this.promptChanged = true;
         invalidateProperties();
      }
      
      public function set restrict(param1:String) : void
      {
         if(param1 == this._restrict)
         {
            return;
         }
         this._restrict = param1;
         this.restrictChanged = true;
         invalidateProperties();
      }
      
      public function get restrict() : String
      {
         return this._restrict;
      }
      
      override public function get baselinePosition() : Number
      {
         return getBaselinePositionForPart(this.textInput);
      }
      
      override public function set selectedIndex(param1:int) : void
      {
         super.selectedIndex = param1;
         this.actualProposedSelectedIndex = param1;
      }
      
      override public function set selectedItem(param1:*) : void
      {
         if(param1 == null)
         {
            this.selectedIndex = NO_SELECTION;
         }
         super.selectedItem = param1;
      }
      
      override public function set typicalItem(param1:Object) : void
      {
         if(param1 == typicalItem)
         {
            return;
         }
         super.typicalItem = param1;
         this.typicalItemChanged = true;
         invalidateProperties();
      }
      
      override mx_internal function set userProposedSelectedIndex(param1:Number) : void
      {
         super.userProposedSelectedIndex = param1;
         this.actualProposedSelectedIndex = param1;
      }
      
      private function processInputField() : void
      {
         var _loc1_:Vector.<int> = null;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         this.actualProposedSelectedIndex = CUSTOM_SELECTED_ITEM;
         if(!dataProvider || dataProvider.length <= 0)
         {
            return;
         }
         if(this.textInput.text != "")
         {
            if(this.itemMatchingFunction != null)
            {
               _loc1_ = this.itemMatchingFunction(this,this.textInput.text);
            }
            else
            {
               _loc1_ = this.findMatchingItems(this.textInput.text);
            }
            if(_loc1_.length > 0)
            {
               super.changeHighlightedSelection(_loc1_[0],true);
               _loc2_ = this.textInput.text.length;
               _loc3_ = !!dataProvider?dataProvider.getItemAt(_loc1_[0]):undefined;
               if(_loc3_)
               {
                  _loc4_ = itemToLabel(_loc3_);
                  this.textInput.selectAll();
                  this.textInput.insertText(_loc4_);
                  this.textInput.selectRange(_loc2_,_loc4_.length);
               }
            }
            else
            {
               super.changeHighlightedSelection(CUSTOM_SELECTED_ITEM);
            }
         }
         else
         {
            super.changeHighlightedSelection(NO_SELECTION);
         }
      }
      
      private function findMatchingItems(param1:String) : Vector.<int>
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Vector.<int> = new Vector.<int>();
         _loc4_ = findStringLoop(param1,0,dataProvider.length);
         if(_loc4_ != -1)
         {
            _loc5_.push(_loc4_);
         }
         return _loc5_;
      }
      
      private function getCustomSelectedItem() : *
      {
         var _loc1_:String = this.textInput.text;
         if(_loc1_ == "")
         {
            return undefined;
         }
         if(this.labelToItemFunction != null)
         {
            return this._labelToItemFunction(_loc1_);
         }
         return _loc1_;
      }
      
      mx_internal function applySelection() : void
      {
         var _loc1_:* = undefined;
         if(this.actualProposedSelectedIndex == CUSTOM_SELECTED_ITEM)
         {
            _loc1_ = this.getCustomSelectedItem();
            if(_loc1_ != undefined)
            {
               setSelectedItem(_loc1_,true);
            }
            else
            {
               this.setSelectedIndex(NO_SELECTION,true);
            }
         }
         else
         {
            this.setSelectedIndex(this.actualProposedSelectedIndex,true);
         }
         if(this.textInput)
         {
            this.textInput.selectRange(-1,-1);
         }
         this.userTypedIntoText = false;
      }
      
      override protected function initializeAccessibility() : void
      {
         if(ComboBox.createAccessibilityImplementation != null)
         {
            ComboBox.createAccessibilityImplementation(this);
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc2_:String = null;
         var _loc1_:* = _proposedSelectedIndex != NO_PROPOSED_SELECTION;
         if(_proposedSelectedIndex == CUSTOM_SELECTED_ITEM && _pendingSelectedItem == undefined)
         {
            _proposedSelectedIndex = NO_PROPOSED_SELECTION;
         }
         super.commitProperties();
         if(this.textInput)
         {
            if(this.maxCharsChanged)
            {
               this.textInput.maxChars = this._maxChars;
               this.maxCharsChanged = false;
            }
            if(this.promptChanged)
            {
               this.textInput.prompt = this._prompt;
               this.promptChanged = false;
            }
            if(this.restrictChanged)
            {
               this.textInput.restrict = this._restrict;
               this.restrictChanged = false;
            }
            if(this.typicalItemChanged)
            {
               if(typicalItem != null)
               {
                  _loc2_ = LabelUtil.itemToLabel(typicalItem,labelField,labelFunction);
                  this.textInput.typicalText = _loc2_;
               }
               else
               {
                  this.textInput.widthInChars = 10;
               }
               this.typicalItemChanged = false;
            }
            if(_loc1_ && selectedIndex == NO_SELECTION)
            {
               this.textInput.text = "";
            }
         }
      }
      
      override mx_internal function updateLabelDisplay(param1:* = undefined) : void
      {
         super.updateLabelDisplay();
         if(this.textInput)
         {
            if(param1 == undefined)
            {
               param1 = selectedItem;
            }
            if(param1 != null && param1 != undefined)
            {
               this.textInput.text = LabelUtil.itemToLabel(param1,labelField,labelFunction);
            }
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.textInput)
         {
            this.updateLabelDisplay();
            this.textInput.addEventListener(TextOperationEvent.CHANGE,this.textInput_changeHandler);
            this.textInput.addEventListener(TextOperationEvent.CHANGING,this.textInput_changingHandler);
            this.textInput.addEventListener(FocusEvent.FOCUS_IN,this.textInput_focusInHandler,true);
            this.textInput.addEventListener(FocusEvent.FOCUS_OUT,this.textInput_focusOutHandler,true);
            this.textInput.maxChars = this.maxChars;
            this.textInput.restrict = this.restrict;
            this.textInput.focusEnabled = false;
            if(this.textInput.textDisplay is RichEditableText)
            {
               RichEditableText(this.textInput.textDisplay).batchTextInput = false;
            }
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         super.partRemoved(param1,param2);
         if(param2 == this.textInput)
         {
            this.textInput.removeEventListener(TextOperationEvent.CHANGE,this.textInput_changeHandler);
            this.textInput.removeEventListener(TextOperationEvent.CHANGING,this.textInput_changingHandler);
            this.textInput.removeEventListener(FocusEvent.FOCUS_IN,this.textInput_focusInHandler,true);
            this.textInput.removeEventListener(FocusEvent.FOCUS_OUT,this.textInput_focusOutHandler,true);
         }
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         if(enabled == param1)
         {
            return;
         }
         super.enabled = param1;
      }
      
      override mx_internal function changeHighlightedSelection(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         super.changeHighlightedSelection(param1,param2);
         if(param1 >= 0 && param1 < dataProvider.length)
         {
            _loc3_ = !!dataProvider?dataProvider.getItemAt(param1):undefined;
            if(_loc3_ && this.textInput)
            {
               _loc4_ = itemToLabel(_loc3_);
               this.textInput.selectAll();
               this.textInput.insertText(_loc4_);
               this.textInput.selectAll();
               this.userTypedIntoText = false;
            }
         }
      }
      
      override mx_internal function findKey(param1:int) : Boolean
      {
         return false;
      }
      
      override public function setSelectedIndex(param1:int, param2:Boolean = false, param3:Boolean = true) : void
      {
         if(this.userTypedIntoText && param1 == selectedIndex)
         {
            this.updateLabelDisplay();
         }
         super.setSelectedIndex(param1,param2,param3);
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         if(!this.isTextInputInFocus)
         {
            this.keyDownHandlerHelper(param1);
         }
      }
      
      protected function capture_keyDownHandler(param1:KeyboardEvent) : void
      {
         if(this.isTextInputInFocus)
         {
            this.keyDownHandlerHelper(param1);
         }
      }
      
      mx_internal function keyDownHandlerHelper(param1:KeyboardEvent) : void
      {
         super.keyDownHandler(param1);
         if(param1.keyCode == Keyboard.ENTER && !isDropDownOpen)
         {
            this.applySelection();
         }
         else if(param1.keyCode == Keyboard.ESCAPE)
         {
            if(this.textInput)
            {
               if(selectedItem != null)
               {
                  this.textInput.text = itemToLabel(selectedItem);
               }
               else
               {
                  this.textInput.text = "";
               }
            }
            this.changeHighlightedSelection(selectedIndex);
         }
      }
      
      override public function setFocus() : void
      {
         if(stage && this.textInput)
         {
            stage.focus = this.textInput.textDisplay as InteractiveObject;
         }
      }
      
      override protected function isOurFocus(param1:DisplayObject) : Boolean
      {
         if(!this.textInput)
         {
            return false;
         }
         return param1 == this.textInput.textDisplay;
      }
      
      override protected function focusInHandler(param1:FocusEvent) : void
      {
         super.focusInHandler(param1);
         if(this.textInput && (this.textInput.editable || this.textInput.selectable))
         {
            callLater(this.textInput.selectAll);
         }
         this.userTypedIntoText = false;
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         if(!isDropDownOpen)
         {
            if(this.textInput && (selectedItem == null && this.textInput.text != "" || this.textInput.text != itemToLabel(selectedItem)))
            {
               this.applySelection();
            }
         }
         dispatchEvent(new FlexEvent(FlexEvent.VALUE_COMMIT));
         super.focusOutHandler(param1);
      }
      
      override mx_internal function dropDownController_openHandler(param1:DropDownEvent) : void
      {
         super.dropDownController_openHandler(param1);
         this.userProposedSelectedIndex = !!this.userTypedIntoText?Number(NO_SELECTION):Number(selectedIndex);
      }
      
      override protected function dropDownController_closeHandler(param1:DropDownEvent) : void
      {
         super.dropDownController_closeHandler(param1);
         if(!param1.isDefaultPrevented())
         {
            this.applySelection();
         }
      }
      
      override protected function itemRemoved(param1:int) : void
      {
         if(param1 == selectedIndex)
         {
            this.updateLabelDisplay("");
         }
         super.itemRemoved(param1);
      }
      
      private function textInput_focusInHandler(param1:FocusEvent) : void
      {
         this.isTextInputInFocus = true;
      }
      
      private function textInput_focusOutHandler(param1:FocusEvent) : void
      {
         this.isTextInputInFocus = false;
      }
      
      private function textInput_changingHandler(param1:TextOperationEvent) : void
      {
         this.previousTextInputText = this.textInput.text;
      }
      
      protected function textInput_changeHandler(param1:TextOperationEvent) : void
      {
         var _loc4_:Array = null;
         this.userTypedIntoText = true;
         var _loc2_:FlowOperation = param1.operation;
         var _loc3_:Boolean = _loc2_ is DeleteTextOperation || _loc2_ is CutOperation;
         if(_loc2_ is CompositeOperation)
         {
            _loc4_ = CompositeOperation(_loc2_).operations;
            if(_loc4_.length && _loc4_[_loc4_.length - 1] is DeleteTextOperation)
            {
               _loc3_ = true;
            }
         }
         if(_loc3_)
         {
            this.actualProposedSelectedIndex = CUSTOM_SELECTED_ITEM;
            super.changeHighlightedSelection(CUSTOM_SELECTED_ITEM);
         }
         else if(this.previousTextInputText != this.textInput.text)
         {
            if(this.openOnInput)
            {
               if(!isDropDownOpen)
               {
                  openDropDown();
                  addEventListener(DropDownEvent.OPEN,this.editingOpenHandler);
                  return;
               }
            }
            this.processInputField();
         }
      }
      
      private function editingOpenHandler(param1:DropDownEvent) : void
      {
         removeEventListener(DropDownEvent.OPEN,this.editingOpenHandler);
         this.processInputField();
      }
      
      public function get enableIME() : Boolean
      {
         if(this.textInput)
         {
            return this.textInput.enableIME;
         }
         return false;
      }
      
      public function get imeMode() : String
      {
         if(this.textInput)
         {
            return this.textInput.imeMode;
         }
         return null;
      }
      
      public function set imeMode(param1:String) : void
      {
         if(this.textInput)
         {
            this.textInput.imeMode = param1;
            invalidateProperties();
         }
      }
   }
}
