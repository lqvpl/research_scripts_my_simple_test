package spark.components.supportClasses
{
   import spark.components.DataRenderer;
   import spark.components.IItemRenderer;
   import mx.core.mx_internal;
   import flash.events.Event;
   import flash.geom.Point;
   import spark.components.ResizeMode;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class ItemRenderer extends DataRenderer implements IItemRenderer
   {
       
      
      private var interactionStateDetector:spark.components.supportClasses.InteractionStateDetector;
      
      private var rendererStateIsDirty:Boolean = false;
      
      private var playTransitionsOnNextRendererState:Boolean = false;
      
      mx_internal var playTransitions:Boolean = true;
      
      private var _autoDrawBackground:Boolean = true;
      
      private var _down:Boolean = false;
      
      private var _hovered:Boolean = false;
      
      private var _itemIndex:int;
      
      private var _1184053038labelDisplay:spark.components.supportClasses.TextBase;
      
      private var _showsCaret:Boolean = false;
      
      private var _selected:Boolean = false;
      
      private var _dragging:Boolean = false;
      
      private var _label:String = "";
      
      public function ItemRenderer()
      {
         super();
         this.rendererStateIsDirty = true;
         this.interactionStateDetector = new spark.components.supportClasses.InteractionStateDetector(this);
         this.interactionStateDetector.addEventListener(Event.CHANGE,this.interactionStateDetector_changeHandler);
      }
      
      public function get autoDrawBackground() : Boolean
      {
         return this._autoDrawBackground;
      }
      
      public function set autoDrawBackground(param1:Boolean) : void
      {
         if(this._autoDrawBackground == param1)
         {
            return;
         }
         this._autoDrawBackground = param1;
         if(this._autoDrawBackground)
         {
            redrawRequested = true;
            super.$invalidateDisplayList();
         }
      }
      
      protected function get down() : Boolean
      {
         return this._down;
      }
      
      protected function set down(param1:Boolean) : void
      {
         if(param1 != this._down)
         {
            this._down = param1;
            this.invalidateRendererState();
            if(this.autoDrawBackground)
            {
               redrawRequested = true;
               super.$invalidateDisplayList();
            }
         }
      }
      
      protected function get hovered() : Boolean
      {
         return this._hovered;
      }
      
      protected function set hovered(param1:Boolean) : void
      {
         if(param1 != this._hovered)
         {
            this._hovered = param1;
            this.invalidateRendererState();
            if(this.autoDrawBackground)
            {
               redrawRequested = true;
               super.$invalidateDisplayList();
            }
         }
      }
      
      [Bindable("itemIndexChanged")]
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set itemIndex(param1:int) : void
      {
         if(param1 == this._itemIndex)
         {
            return;
         }
         this._itemIndex = param1;
         if(this.autoDrawBackground)
         {
            redrawRequested = true;
            super.$invalidateDisplayList();
         }
         dispatchEvent(new Event("itemIndexChanged"));
      }
      
      public function get showsCaret() : Boolean
      {
         return this._showsCaret;
      }
      
      public function set showsCaret(param1:Boolean) : void
      {
         if(param1 == this._showsCaret)
         {
            return;
         }
         this._showsCaret = param1;
         this.invalidateRendererState();
         if(this.autoDrawBackground)
         {
            redrawRequested = true;
            super.$invalidateDisplayList();
         }
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1 != this._selected)
         {
            this._selected = param1;
            this.invalidateRendererState();
            if(this.autoDrawBackground)
            {
               redrawRequested = true;
               super.$invalidateDisplayList();
            }
         }
      }
      
      public function get dragging() : Boolean
      {
         return this._dragging;
      }
      
      public function set dragging(param1:Boolean) : void
      {
         if(param1 != this._dragging)
         {
            this._dragging = param1;
            this.invalidateRendererState();
         }
      }
      
      [Bindable("labelChanged")]
      public function get label() : String
      {
         return this._label;
      }
      
      public function set label(param1:String) : void
      {
         if(param1 == this._label)
         {
            return;
         }
         this._label = param1;
         if(this.labelDisplay)
         {
            this.labelDisplay.text = this._label;
         }
         dispatchEvent(new Event("labelChanged"));
      }
      
      override public function get baselinePosition() : Number
      {
         if(!validateBaselinePosition() || !this.labelDisplay)
         {
            return super.baselinePosition;
         }
         var _loc1_:Point = globalToLocal(this.labelDisplay.parent.localToGlobal(new Point(this.labelDisplay.x,this.labelDisplay.y)));
         return _loc1_.y + this.labelDisplay.baselinePosition;
      }
      
      protected function getCurrentRendererState() : String
      {
         if(this.dragging && hasState("dragging"))
         {
            return "dragging";
         }
         if(this.selected && this.down && hasState("downAndSelected"))
         {
            return "downAndSelected";
         }
         if(this.selected && this.showsCaret && hasState("selectedAndShowsCaret"))
         {
            return "selectedAndShowsCaret";
         }
         if(this.hovered && this.showsCaret && hasState("hoveredAndShowsCaret"))
         {
            return "hoveredAndShowsCaret";
         }
         if(this.showsCaret && hasState("normalAndShowsCaret"))
         {
            return "normalAndShowsCaret";
         }
         if(this.down && hasState("down"))
         {
            return "down";
         }
         if(this.selected && hasState("selected"))
         {
            return "selected";
         }
         if(this.hovered && hasState("hovered"))
         {
            return "hovered";
         }
         if(hasState("normal"))
         {
            return "normal";
         }
         return currentState;
      }
      
      protected function invalidateRendererState() : void
      {
         this.playTransitionsOnNextRendererState = this.playTransitionsOnNextRendererState || this.playTransitions;
         if(this.rendererStateIsDirty)
         {
            return;
         }
         this.rendererStateIsDirty = true;
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         if(this.rendererStateIsDirty)
         {
            setCurrentState(this.getCurrentRendererState(),this.playTransitionsOnNextRendererState);
            this.playTransitionsOnNextRendererState = false;
            this.rendererStateIsDirty = false;
         }
         super.commitProperties();
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _loc2_:Boolean = param1 == null || param1 == "styleName";
         super.styleChanged(param1);
         if(this.autoDrawBackground && (_loc2_ || param1 == "alternatingItemColors" || param1 == "contentBackgroundColor" || param1 == "rollOverColor" || param1 == "downColor" || param1 == "selectionColor"))
         {
            redrawRequested = true;
            super.$invalidateDisplayList();
         }
      }
      
      override mx_internal function drawBackground() : void
      {
         var _loc3_:uint = 0;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         if(!this.autoDrawBackground)
         {
            super.drawBackground();
            return;
         }
         var _loc1_:Number = resizeMode == ResizeMode.SCALE?Number(measuredWidth):Number(unscaledWidth);
         var _loc2_:Number = resizeMode == ResizeMode.SCALE?Number(measuredHeight):Number(unscaledHeight);
         if(isNaN(_loc1_) || isNaN(_loc2_))
         {
            return;
         }
         graphics.clear();
         var _loc4_:Boolean = true;
         var _loc5_:* = getStyle("downColor");
         if(this.down && _loc5_ !== undefined)
         {
            _loc3_ = _loc5_;
         }
         else if(this.selected)
         {
            _loc3_ = getStyle("selectionColor");
         }
         else if(this.hovered)
         {
            _loc3_ = getStyle("rollOverColor");
         }
         else
         {
            _loc7_ = getStyle("alternatingItemColors");
            if(_loc7_)
            {
               _loc6_ = _loc7_ is Array?_loc7_ as Array:[_loc7_];
            }
            if(_loc6_ && _loc6_.length > 0)
            {
               styleManager.getColorNames(_loc6_);
               _loc3_ = _loc6_[this.itemIndex % _loc6_.length];
            }
            else
            {
               _loc4_ = false;
            }
         }
         graphics.beginFill(_loc3_,!!_loc4_?Number(1):Number(0));
         if(this.showsCaret)
         {
            graphics.lineStyle(1,getStyle("selectionColor"));
            graphics.drawRect(0.5,0.5,_loc1_ - 1,_loc2_ - 1);
         }
         else
         {
            graphics.lineStyle();
            graphics.drawRect(0,0,_loc1_,_loc2_);
         }
         graphics.endFill();
      }
      
      private function interactionStateDetector_changeHandler(param1:Event) : void
      {
         this.playTransitions = this.interactionStateDetector.playTransitions;
         this.down = this.interactionStateDetector.state == InteractionState.DOWN;
         this.hovered = this.interactionStateDetector.state == InteractionState.OVER;
         this.playTransitions = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : spark.components.supportClasses.TextBase
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:spark.components.supportClasses.TextBase) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
   }
}
