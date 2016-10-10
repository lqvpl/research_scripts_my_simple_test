package spark.components.supportClasses
{
   import spark.components.List;
   import mx.core.mx_internal;
   import flash.display.DisplayObject;
   import mx.collections.IList;
   import spark.events.DropDownEvent;
   import mx.core.InteractionMode;
   import spark.events.IndexChangeEvent;
   import flash.geom.Point;
   import flash.events.Event;
   import mx.events.CollectionEvent;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import spark.core.NavigationUnit;
   import flash.events.FocusEvent;
   import mx.events.FlexEvent;
   
   use namespace mx_internal;
   
   public class DropDownListBase extends List
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      mx_internal static var createAccessibilityImplementation:Function;
      
      mx_internal static var PAGE_SIZE:int = 5;
       
      
      [SkinPart(required="false")]
      public var dropDown:DisplayObject;
      
      [SkinPart(required="true")]
      public var openButton:spark.components.supportClasses.ButtonBase;
      
      private var labelChanged:Boolean = false;
      
      private var _dropDownController:spark.components.supportClasses.DropDownController;
      
      private var isTouchInteractionMode:Boolean = false;
      
      private var isCloseDropDownOnResizeExplicitlySet:Boolean = false;
      
      protected var _closeDropDownOnResize:Boolean = true;
      
      private var _userProposedSelectedIndex:Number = -1;
      
      public function DropDownListBase()
      {
         super();
         this.dropDownController = new spark.components.supportClasses.DropDownController();
      }
      
      override public function set allowMultipleSelection(param1:Boolean) : void
      {
      }
      
      override public function set dataProvider(param1:IList) : void
      {
         if(dataProvider === param1)
         {
            return;
         }
         super.dataProvider = param1;
         this.labelChanged = true;
         invalidateProperties();
      }
      
      override public function set dragEnabled(param1:Boolean) : void
      {
      }
      
      override public function set dragMoveEnabled(param1:Boolean) : void
      {
      }
      
      override public function set dropEnabled(param1:Boolean) : void
      {
      }
      
      override public function set labelField(param1:String) : void
      {
         if(labelField == param1)
         {
            return;
         }
         super.labelField = param1;
         this.labelChanged = true;
         invalidateProperties();
      }
      
      override public function set labelFunction(param1:Function) : void
      {
         if(labelFunction == param1)
         {
            return;
         }
         super.labelFunction = param1;
         this.labelChanged = true;
         invalidateProperties();
      }
      
      protected function get dropDownController() : spark.components.supportClasses.DropDownController
      {
         return this._dropDownController;
      }
      
      protected function set dropDownController(param1:spark.components.supportClasses.DropDownController) : void
      {
         if(this._dropDownController == param1)
         {
            return;
         }
         this._dropDownController = param1;
         this._dropDownController.addEventListener(DropDownEvent.OPEN,this.dropDownController_openHandler);
         this._dropDownController.addEventListener(DropDownEvent.CLOSE,this.dropDownController_closeHandler);
         this._dropDownController.closeOnResize = this._closeDropDownOnResize;
         if(this.openButton)
         {
            this._dropDownController.openButton = this.openButton;
         }
         if(this.dropDown)
         {
            this._dropDownController.dropDown = this.dropDown;
         }
      }
      
      public function get isDropDownOpen() : Boolean
      {
         if(this.dropDownController)
         {
            return this.dropDownController.isOpen;
         }
         return false;
      }
      
      public function get closeDropDownOnResize() : Boolean
      {
         return this._closeDropDownOnResize;
      }
      
      public function set closeDropDownOnResize(param1:Boolean) : void
      {
         this.setCloseDropDownOnResize(param1,true);
      }
      
      private function setCloseDropDownOnResize(param1:Boolean, param2:Boolean) : void
      {
         this._closeDropDownOnResize = param1;
         this.isCloseDropDownOnResizeExplicitlySet = this.isCloseDropDownOnResizeExplicitlySet || param2;
         if(this.dropDownController)
         {
            this.dropDownController.closeOnResize = this._closeDropDownOnResize;
         }
      }
      
      mx_internal function set userProposedSelectedIndex(param1:Number) : void
      {
         this._userProposedSelectedIndex = param1;
      }
      
      mx_internal function get userProposedSelectedIndex() : Number
      {
         return this._userProposedSelectedIndex;
      }
      
      override public function stylesInitialized() : void
      {
         super.stylesInitialized();
         this.setInteractionMode();
      }
      
      override public function styleChanged(param1:String) : void
      {
         super.styleChanged(param1);
         if(!param1 || param1 == "styleName" || param1 == "interactionMode")
         {
            this.setInteractionMode();
         }
      }
      
      private function setInteractionMode() : void
      {
         this.isTouchInteractionMode = getStyle("interactionMode") == InteractionMode.TOUCH;
         if(!this.isCloseDropDownOnResizeExplicitlySet)
         {
            this.setCloseDropDownOnResize(!this.isTouchInteractionMode,false);
         }
      }
      
      override public function setSelectedIndex(param1:int, param2:Boolean = false, param3:Boolean = true) : void
      {
         super.setSelectedIndex(param1,param2,param3);
         if(this.isTouchInteractionMode)
         {
            this.userProposedSelectedIndex = param1;
            this.closeDropDown(true);
         }
      }
      
      override protected function initializeAccessibility() : void
      {
         if(DropDownListBase.createAccessibilityImplementation != null)
         {
            DropDownListBase.createAccessibilityImplementation(this);
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this.labelChanged)
         {
            this.labelChanged = false;
            this.updateLabelDisplay();
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.openButton)
         {
            if(this.dropDownController)
            {
               this.dropDownController.openButton = this.openButton;
            }
         }
         else if(param2 == this.dropDown && this.dropDownController)
         {
            this.dropDownController.dropDown = this.dropDown;
         }
      }
      
      override protected function partRemoved(param1:String, param2:Object) : void
      {
         if(this.dropDownController)
         {
            if(param2 == this.openButton)
            {
               this.dropDownController.openButton = null;
            }
            if(param2 == this.dropDown)
            {
               this.dropDownController.dropDown = null;
            }
         }
         super.partRemoved(param1,param2);
      }
      
      override protected function getCurrentSkinState() : String
      {
         return !enabled?"disabled":!!this.isDropDownOpen?"open":"normal";
      }
      
      override protected function commitSelection(param1:Boolean = true) : Boolean
      {
         var _loc2_:Boolean = super.commitSelection(param1);
         this.updateLabelDisplay();
         return _loc2_;
      }
      
      override mx_internal function isItemIndexSelected(param1:int) : Boolean
      {
         return this.userProposedSelectedIndex == param1;
      }
      
      public function openDropDown() : void
      {
         this.dropDownController.openDropDown();
      }
      
      public function closeDropDown(param1:Boolean) : void
      {
         this.dropDownController.closeDropDown(param1);
      }
      
      mx_internal function updateLabelDisplay(param1:* = undefined) : void
      {
      }
      
      mx_internal function changeHighlightedSelection(param1:int, param2:Boolean = false) : void
      {
         itemSelected(this.userProposedSelectedIndex,false);
         this.userProposedSelectedIndex = param1;
         itemSelected(this.userProposedSelectedIndex,true);
         this.positionIndexInView(this.userProposedSelectedIndex,!!param2?Number(0):Number(NaN));
         var _loc3_:IndexChangeEvent = new IndexChangeEvent(IndexChangeEvent.CARET_CHANGE);
         _loc3_.oldIndex = caretIndex;
         setCurrentCaretIndex(this.userProposedSelectedIndex);
         _loc3_.newIndex = caretIndex;
         dispatchEvent(_loc3_);
      }
      
      mx_internal function positionIndexInView(param1:int, param2:Number = NaN, param3:Number = NaN, param4:Number = NaN, param5:Number = NaN) : void
      {
         if(!layout || dataGroup == null)
         {
            return;
         }
         var _loc6_:Point = dataGroup.layout.getScrollPositionDeltaToElementHelper(param1,param2,param3,param4,param5);
         if(_loc6_)
         {
            dataGroup.horizontalScrollPosition = dataGroup.horizontalScrollPosition + _loc6_.x;
            dataGroup.verticalScrollPosition = dataGroup.verticalScrollPosition + _loc6_.y;
         }
      }
      
      override mx_internal function findKey(param1:int) : Boolean
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         if(!dataProvider || dataProvider.length == 0)
         {
            return false;
         }
         if(param1 >= 33 && param1 <= 126)
         {
            _loc3_ = String.fromCharCode(param1);
            _loc4_ = !!this.isDropDownOpen?int(this.userProposedSelectedIndex + 1):int(selectedIndex + 1);
            _loc4_ = Math.max(0,_loc4_);
            _loc2_ = findStringLoop(_loc3_,_loc4_,dataProvider.length);
            if(_loc2_ == -1)
            {
               _loc2_ = findStringLoop(_loc3_,0,_loc4_);
            }
            if(_loc2_ != -1)
            {
               if(this.isDropDownOpen)
               {
                  this.changeHighlightedSelection(_loc2_);
               }
               else
               {
                  this.setSelectedIndex(_loc2_,true);
               }
               return true;
            }
         }
         return false;
      }
      
      override protected function dataProvider_collectionChangeHandler(param1:Event) : void
      {
         super.dataProvider_collectionChangeHandler(param1);
         if(param1 is CollectionEvent)
         {
            this.labelChanged = true;
            invalidateProperties();
         }
      }
      
      override protected function item_mouseDownHandler(param1:MouseEvent) : void
      {
         super.item_mouseDownHandler(param1);
         if(!this.isTouchInteractionMode)
         {
            this.userProposedSelectedIndex = selectedIndex;
            this.closeDropDown(true);
         }
      }
      
      override protected function keyDownHandler(param1:KeyboardEvent) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(!enabled)
         {
            return;
         }
         if(!this.dropDownController.processKeyDown(param1))
         {
            _loc2_ = mapKeycodeForLayoutDirection(param1);
            if(this.findKey(param1.charCode))
            {
               param1.preventDefault();
               return;
            }
            if(!NavigationUnit.isNavigationUnit(_loc2_))
            {
               return;
            }
            _loc3_ = NO_SELECTION;
            if(this.isDropDownOpen)
            {
               _loc4_ = this.userProposedSelectedIndex < NO_SELECTION?int(NO_SELECTION):int(this.userProposedSelectedIndex);
               _loc3_ = layout.getNavigationDestinationIndex(_loc4_,_loc2_,arrowKeysWrapFocus);
               if(_loc3_ != NO_SELECTION)
               {
                  this.changeHighlightedSelection(_loc3_);
                  param1.preventDefault();
               }
            }
            else if(dataProvider)
            {
               _loc5_ = dataProvider.length - 1;
               _loc4_ = caretIndex < NO_SELECTION?int(NO_SELECTION):int(caretIndex);
               switch(_loc2_)
               {
                  case NavigationUnit.UP:
                     if(arrowKeysWrapFocus && (_loc4_ == 0 || _loc4_ == NO_SELECTION || _loc4_ == CUSTOM_SELECTED_ITEM))
                     {
                        _loc3_ = _loc5_;
                     }
                     else
                     {
                        _loc3_ = _loc4_ - 1;
                     }
                     param1.preventDefault();
                     break;
                  case NavigationUnit.DOWN:
                     if(arrowKeysWrapFocus && (_loc4_ == _loc5_ || _loc4_ == NO_SELECTION || _loc4_ == CUSTOM_SELECTED_ITEM))
                     {
                        _loc3_ = 0;
                     }
                     else
                     {
                        _loc3_ = _loc4_ + 1;
                     }
                     param1.preventDefault();
                     break;
                  case NavigationUnit.PAGE_UP:
                     _loc3_ = _loc4_ == NO_SELECTION?int(NO_SELECTION):int(Math.max(_loc4_ - PAGE_SIZE,0));
                     param1.preventDefault();
                     break;
                  case NavigationUnit.PAGE_DOWN:
                     _loc3_ = _loc4_ == NO_SELECTION?int(PAGE_SIZE):int(_loc4_ + PAGE_SIZE);
                     param1.preventDefault();
                     break;
                  case NavigationUnit.HOME:
                     _loc3_ = 0;
                     param1.preventDefault();
                     break;
                  case NavigationUnit.END:
                     _loc3_ = _loc5_;
                     param1.preventDefault();
               }
               _loc3_ = Math.min(_loc3_,_loc5_);
               if(_loc3_ >= 0)
               {
                  this.userProposedSelectedIndex = _loc3_;
                  this.setSelectedIndex(_loc3_,true);
               }
            }
         }
         else
         {
            param1.preventDefault();
         }
      }
      
      override protected function focusOutHandler(param1:FocusEvent) : void
      {
         if(isOurFocus(DisplayObject(param1.target)))
         {
            this.dropDownController.processFocusOut(param1);
         }
         super.focusOutHandler(param1);
      }
      
      mx_internal function dropDownController_openHandler(param1:DropDownEvent) : void
      {
         addEventListener(FlexEvent.UPDATE_COMPLETE,this.open_updateCompleteHandler);
         this.userProposedSelectedIndex = selectedIndex;
         invalidateSkinState();
      }
      
      mx_internal function open_updateCompleteHandler(param1:FlexEvent) : void
      {
         removeEventListener(FlexEvent.UPDATE_COMPLETE,this.open_updateCompleteHandler);
         this.positionIndexInView(selectedIndex,0);
         dispatchEvent(new DropDownEvent(DropDownEvent.OPEN));
      }
      
      protected function dropDownController_closeHandler(param1:DropDownEvent) : void
      {
         addEventListener(FlexEvent.UPDATE_COMPLETE,this.close_updateCompleteHandler);
         invalidateSkinState();
         if(!param1.isDefaultPrevented())
         {
            this.setSelectedIndex(this.userProposedSelectedIndex,true);
         }
         else
         {
            this.changeHighlightedSelection(selectedIndex);
         }
      }
      
      private function close_updateCompleteHandler(param1:FlexEvent) : void
      {
         removeEventListener(FlexEvent.UPDATE_COMPLETE,this.close_updateCompleteHandler);
         dispatchEvent(new DropDownEvent(DropDownEvent.CLOSE));
      }
   }
}
