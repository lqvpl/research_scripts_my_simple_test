package com.enfluid.ltp.view.components
{
   import spark.components.DataRenderer;
   import spark.components.IItemRenderer;
   import mx.core.mx_internal;
   import flash.events.Event;
   import spark.components.supportClasses.TextBase;
   import flash.geom.Point;
   import spark.components.supportClasses.InteractionStateDetector;
   import mx.graphics.LinearGradient;
   import spark.components.ResizeMode;
   import spark.components.supportClasses.InteractionState;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public class LTPItemRenderer extends DataRenderer implements IItemRenderer
   {
       
      
      private var _autoDrawBackground:Boolean = true;
      
      private var _itemIndex:int;
      
      private var _1184053038labelDisplay:TextBase;
      
      private var _showsCaret:Boolean = false;
      
      private var _selected:Boolean = false;
      
      private var _dragging:Boolean = false;
      
      private var _label:String = "";
      
      private var _down:Boolean = false;
      
      private var _hovered:Boolean = false;
      
      mx_internal var playTransitions:Boolean = true;
      
      private var interactionStateDetector:InteractionStateDetector;
      
      private var rendererStateIsDirty:Boolean = false;
      
      private var playTransitionsOnNextRendererState:Boolean = false;
      
      public function LTPItemRenderer()
      {
         super();
         this.rendererStateIsDirty = true;
         this.interactionStateDetector = new InteractionStateDetector(this);
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
      
      public final function setStyles() : void
      {
      }
      
      protected final function getCurrentRendererState() : String
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
      
      protected final function invalidateRendererState() : void
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
      
      override mx_internal function drawBackground() : void
      {
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() - 1 - 1 - 79 - 1 - 119);
         }
         var _loc3_:uint = §§pop();
         var _loc7_:Array = null;
         var _loc8_:Object = null;
         if(!this.autoDrawBackground)
         {
            super.drawBackground();
            return;
         }
         this.setStyles();
         var _loc1_:Number = resizeMode == ResizeMode.SCALE?Number(measuredWidth):Number(unscaledWidth);
         var _loc2_:Number = resizeMode == ResizeMode.SCALE?Number(measuredHeight):Number(unscaledHeight);
         if(isNaN(_loc1_) || isNaN(_loc2_))
         {
            return;
         }
         graphics.clear();
         var _loc4_:Boolean = true;
         var _loc5_:* = getStyle("downColor");
         var _loc6_:* = getStyle("specialRowBackgroundColor");
         if(_loc6_)
         {
            _loc3_ = _loc6_;
         }
         else if(this.down && _loc5_ !== undefined)
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
            _loc8_ = getStyle("alternatingItemColors");
            if(_loc8_)
            {
               _loc7_ = _loc8_ is Array?_loc8_ as Array:[_loc8_];
            }
            if(_loc7_ && §§pop() > §§pop())
            {
               styleManager.getColorNames(_loc7_);
               _loc3_ = _loc7_[this.itemIndex % _loc7_.length];
            }
            else
            {
               _loc4_ = false;
            }
         }
         §§push(graphics);
         §§push(_loc3_);
         if(_loc4_)
         {
            §§push(1);
            if(_loc9_)
            {
               §§push((§§pop() + 1) * 35 + 22 - 64 - 65 + 22 - 113);
            }
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(0);
            if(_loc10_)
            {
               §§push(-§§pop() + 1 - 61);
            }
            §§push(Number(§§pop()));
         }
         §§pop().beginFill(§§pop(),§§pop());
         if(this.showsCaret)
         {
            §§push(graphics);
            §§push(1);
            if(_loc10_)
            {
               §§push(-(§§pop() + 1 + 49));
            }
            §§pop().lineStyle(§§pop(),getStyle("selectionColor"));
            graphics.drawRect(0.5,0.5,_loc1_ - 1,_loc2_ - 1);
         }
         else
         {
            graphics.lineStyle();
            §§push(graphics);
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() - 1 - 1 + 87 - 1 + 1) * 25 + 33);
            }
            §§pop().drawRect(§§pop(),§§pop(),_loc1_,_loc2_);
         }
         graphics.endFill();
      }
      
      private final function interactionStateDetector_changeHandler(param1:Event) : void
      {
         this.playTransitions = this.interactionStateDetector.playTransitions;
         this.down = this.interactionStateDetector.state == InteractionState.DOWN;
         this.hovered = this.interactionStateDetector.state == InteractionState.OVER;
         this.playTransitions = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : TextBase
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:TextBase) : void
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
