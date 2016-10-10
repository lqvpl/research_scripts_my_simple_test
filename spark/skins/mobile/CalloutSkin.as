package spark.skins.mobile
{
   import spark.skins.mobile.supportClasses.MobileSkin;
   import mx.core.mx_internal;
   import spark.components.Callout;
   import spark.core.SpriteVisualElement;
   import flash.display.Sprite;
   import spark.primitives.RectangularDropShadow;
   import spark.effects.Fade;
   import spark.components.Group;
   import mx.core.UIComponent;
   import spark.skins.mobile.supportClasses.CalloutArrow;
   import spark.components.ContentBackgroundAppearance;
   import flash.display.BlendMode;
   import mx.events.EffectEvent;
   import flash.display.Graphics;
   import mx.utils.ColorUtil;
   import flash.display.GradientType;
   import spark.components.ArrowDirection;
   import flash.events.Event;
   import mx.events.FlexEvent;
   import spark.skins.mobile640.assets.CalloutContentBackground;
   import mx.core.DPIClassification;
   
   use namespace mx_internal;
   
   public class CalloutSkin extends MobileSkin
   {
      
      mx_internal static const BACKGROUND_GRADIENT_BRIGHTNESS_TOP:int = 15;
      
      mx_internal static const BACKGROUND_GRADIENT_BRIGHTNESS_BOTTOM:int = -60;
       
      
      public var hostComponent:Callout;
      
      protected var dropShadowVisible:Boolean = true;
      
      protected var useBackgroundGradient:Boolean = true;
      
      protected var contentCornerRadius:uint;
      
      protected var contentBackgroundInsetClass:Class;
      
      protected var backgroundCornerRadius:Number;
      
      protected var frameThickness:Number;
      
      protected var borderColor:Number = -1;
      
      protected var borderThickness:Number = -1;
      
      protected var arrowWidth:Number;
      
      protected var arrowHeight:Number;
      
      mx_internal var contentBackgroundGraphic:SpriteVisualElement;
      
      mx_internal var isOpen:Boolean;
      
      private var backgroundGradientHeight:Number;
      
      private var contentMask:Sprite;
      
      private var backgroundFill:SpriteVisualElement;
      
      private var dropShadow:RectangularDropShadow;
      
      private var dropShadowBlurX:Number;
      
      private var dropShadowBlurY:Number;
      
      private var dropShadowDistance:Number;
      
      private var dropShadowAlpha:Number;
      
      private var fade:Fade;
      
      private var highlightWeight:Number;
      
      public var contentGroup:Group;
      
      public var arrow:UIComponent;
      
      public function CalloutSkin()
      {
         super();
         this.dropShadowAlpha = 0.7;
         switch(applicationDPI)
         {
            case DPIClassification.DPI_640:
               this.backgroundCornerRadius = 32;
               this.contentBackgroundInsetClass = spark.skins.mobile640.assets.CalloutContentBackground;
               this.backgroundGradientHeight = 440;
               this.frameThickness = 32;
               this.arrowWidth = 208;
               this.arrowHeight = 104;
               this.contentCornerRadius = 20;
               this.dropShadowBlurX = 64;
               this.dropShadowBlurY = 64;
               this.dropShadowDistance = 12;
               this.highlightWeight = 2;
               break;
            case DPIClassification.DPI_480:
               this.backgroundCornerRadius = 24;
               this.contentBackgroundInsetClass = spark.skins.mobile480.assets.CalloutContentBackground;
               this.backgroundGradientHeight = 330;
               this.frameThickness = 24;
               this.arrowWidth = 156;
               this.arrowHeight = 78;
               this.contentCornerRadius = 14;
               this.dropShadowBlurX = 48;
               this.dropShadowBlurY = 48;
               this.dropShadowDistance = 8;
               this.highlightWeight = 2;
               break;
            case DPIClassification.DPI_320:
               this.backgroundCornerRadius = 16;
               this.contentBackgroundInsetClass = spark.skins.mobile320.assets.CalloutContentBackground;
               this.backgroundGradientHeight = 220;
               this.frameThickness = 16;
               this.arrowWidth = 104;
               this.arrowHeight = 52;
               this.contentCornerRadius = 10;
               this.dropShadowBlurX = 32;
               this.dropShadowBlurY = 32;
               this.dropShadowDistance = 6;
               this.highlightWeight = 2;
               break;
            case DPIClassification.DPI_240:
               this.backgroundCornerRadius = 12;
               this.contentBackgroundInsetClass = spark.skins.mobile240.assets.CalloutContentBackground;
               this.backgroundGradientHeight = 165;
               this.frameThickness = 12;
               this.arrowWidth = 78;
               this.arrowHeight = 39;
               this.contentCornerRadius = 7;
               this.dropShadowBlurX = 24;
               this.dropShadowBlurY = 24;
               this.dropShadowDistance = 4;
               this.highlightWeight = 1;
               break;
            case DPIClassification.DPI_120:
               this.backgroundCornerRadius = 6;
               this.contentBackgroundInsetClass = spark.skins.mobile120.assets.CalloutContentBackground;
               this.backgroundGradientHeight = 83;
               this.frameThickness = 6;
               this.arrowWidth = 39;
               this.arrowHeight = 19;
               this.contentCornerRadius = 4;
               this.dropShadowBlurX = 12;
               this.dropShadowBlurY = 12;
               this.dropShadowDistance = 2;
               this.highlightWeight = 0.5;
               break;
            default:
               this.backgroundCornerRadius = 8;
               this.contentBackgroundInsetClass = spark.skins.mobile160.assets.CalloutContentBackground;
               this.backgroundGradientHeight = 110;
               this.frameThickness = 8;
               this.arrowWidth = 52;
               this.arrowHeight = 26;
               this.contentCornerRadius = 5;
               this.dropShadowBlurX = 16;
               this.dropShadowBlurY = 16;
               this.dropShadowDistance = 3;
               this.highlightWeight = 1;
         }
      }
      
      mx_internal function get actualBorderThickness() : Number
      {
         var _loc1_:Number = this.borderThickness != -1?Number(this.borderThickness):Number(getStyle("borderThickness"));
         return !!isNaN(_loc1_)?Number(0):Number(_loc1_);
      }
      
      mx_internal function get actualBorderColor() : uint
      {
         return this.borderColor != -1?uint(this.borderColor):uint(getStyle("borderColor"));
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(this.dropShadowVisible)
         {
            this.dropShadow = new RectangularDropShadow();
            this.dropShadow.angle = 90;
            this.dropShadow.distance = this.dropShadowDistance;
            this.dropShadow.blurX = this.dropShadowBlurX;
            this.dropShadow.blurY = this.dropShadowBlurY;
            this.dropShadow.tlRadius = this.dropShadow.trRadius = this.dropShadow.blRadius = this.dropShadow.brRadius = this.backgroundCornerRadius;
            this.dropShadow.mouseEnabled = false;
            this.dropShadow.alpha = this.dropShadowAlpha;
            addChild(this.dropShadow);
         }
         this.backgroundFill = new SpriteVisualElement();
         addChild(this.backgroundFill);
         if(!this.arrow)
         {
            this.arrow = new CalloutArrow();
            this.arrow.id = "arrow";
            this.arrow.styleName = this;
            addChild(this.arrow);
         }
         if(!this.contentGroup)
         {
            this.contentGroup = new Group();
            this.contentGroup.id = "contentGroup";
            addChild(this.contentGroup);
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         var _loc1_:String = getStyle("contentBackgroundAppearance");
         if(_loc1_ == ContentBackgroundAppearance.INSET)
         {
            if(!this.contentBackgroundGraphic && this.contentBackgroundInsetClass)
            {
               this.contentBackgroundGraphic = new this.contentBackgroundInsetClass() as SpriteVisualElement;
               addChild(this.contentBackgroundGraphic);
            }
         }
         else if(this.contentBackgroundGraphic)
         {
            removeChild(this.contentBackgroundGraphic);
            this.contentBackgroundGraphic = null;
         }
         invalidateSize();
         invalidateDisplayList();
      }
      
      override protected function measure() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         super.measure();
         var _loc1_:Number = this.actualBorderThickness;
         var _loc2_:Number = (this.frameThickness + _loc1_) * 2;
         if(this.isArrowHorizontal)
         {
            _loc3_ = this.arrowHeight;
            _loc4_ = this.arrowWidth + this.backgroundCornerRadius * 2;
         }
         else if(this.isArrowVertical)
         {
            _loc3_ = this.arrowWidth + this.backgroundCornerRadius * 2;
            _loc4_ = this.arrowHeight;
         }
         measuredMinWidth = this.contentGroup.measuredMinWidth + _loc2_;
         measuredMinHeight = this.contentGroup.measuredMinHeight + _loc2_;
         measuredWidth = this.contentGroup.getPreferredBoundsWidth() + _loc2_;
         measuredHeight = this.contentGroup.getPreferredBoundsHeight() + _loc2_;
         if(this.isArrowHorizontal)
         {
            measuredMinWidth = measuredMinWidth + _loc3_;
            measuredMinHeight = Math.max(measuredMinHeight,_loc4_);
            measuredWidth = measuredWidth + _loc3_;
            measuredHeight = Math.max(measuredHeight,_loc4_);
         }
         else if(this.isArrowVertical)
         {
            measuredMinWidth = measuredMinWidth + Math.max(measuredMinWidth,_loc3_);
            measuredMinHeight = measuredMinHeight + _loc4_;
            measuredWidth = Math.max(measuredWidth,_loc3_);
            measuredHeight = measuredHeight + _loc4_;
         }
      }
      
      override protected function commitCurrentState() : void
      {
         super.commitCurrentState();
         var _loc1_:* = currentState == "normal";
         var _loc2_:* = currentState == "disabled";
         if(!(_loc1_ || _loc2_) && this.isOpen)
         {
            if(!this.fade)
            {
               this.fade = new Fade();
               this.fade.target = this;
               this.fade.duration = 200;
               this.fade.alphaTo = 0;
            }
            blendMode = BlendMode.LAYER;
            this.fade.addEventListener(EffectEvent.EFFECT_END,this.stateChangeComplete);
            this.fade.play();
            this.isOpen = false;
         }
         else
         {
            this.isOpen = _loc1_ || _loc2_;
            if(this.fade && this.fade.isPlaying)
            {
               this.fade.removeEventListener(EffectEvent.EFFECT_END,this.stateChangeComplete);
               this.fade.stop();
            }
            if(_loc2_)
            {
               blendMode = BlendMode.LAYER;
               alpha = 0.5;
            }
            else
            {
               blendMode = BlendMode.NORMAL;
               if(_loc1_)
               {
                  alpha = 1;
               }
               else
               {
                  alpha = 0;
               }
            }
            this.stateChangeComplete();
         }
      }
      
      override protected function drawBackground(param1:Number, param2:Number) : void
      {
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:Graphics = null;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         super.drawBackground(param1,param2);
         var _loc3_:Number = this.backgroundCornerRadius * 2;
         var _loc4_:Number = this.actualBorderThickness;
         var _loc5_:* = _loc4_ > 0;
         var _loc6_:Number = Math.floor(this.contentGroup.getLayoutBoundsX() - this.frameThickness) - _loc4_ / 2;
         var _loc7_:Number = Math.floor(this.contentGroup.getLayoutBoundsY() - this.frameThickness) - _loc4_ / 2;
         var _loc8_:Number = this.contentGroup.getLayoutBoundsWidth() + this.frameThickness * 2 + _loc4_;
         var _loc9_:Number = this.contentGroup.getLayoutBoundsHeight() + this.frameThickness * 2 + _loc4_;
         var _loc10_:Number = getStyle("backgroundColor");
         var _loc11_:Number = getStyle("backgroundAlpha");
         var _loc12_:Graphics = this.backgroundFill.graphics;
         _loc12_.clear();
         if(_loc5_)
         {
            _loc12_.lineStyle(_loc4_,this.actualBorderColor,1,true);
         }
         if(this.useBackgroundGradient)
         {
            _loc14_ = ColorUtil.adjustBrightness2(_loc10_,BACKGROUND_GRADIENT_BRIGHTNESS_TOP);
            _loc15_ = ColorUtil.adjustBrightness2(_loc10_,BACKGROUND_GRADIENT_BRIGHTNESS_BOTTOM);
            colorMatrix.createGradientBox(param1,this.backgroundGradientHeight,Math.PI / 2,0,0);
            _loc12_.beginGradientFill(GradientType.LINEAR,[_loc14_,_loc15_],[_loc11_,_loc11_],[0,255],colorMatrix);
         }
         else
         {
            _loc12_.beginFill(_loc10_,_loc11_);
         }
         _loc12_.drawRoundRect(_loc6_,_loc7_,_loc8_,_loc9_,_loc3_,_loc3_);
         _loc12_.endFill();
         var _loc13_:String = getStyle("contentBackgroundAppearance");
         if(_loc13_ != ContentBackgroundAppearance.NONE)
         {
            _loc16_ = this.contentCornerRadius * 2;
            _loc17_ = getStyle("contentBackgroundAlpha");
            _loc18_ = this.contentGroup.getLayoutBoundsWidth();
            _loc19_ = this.contentGroup.getLayoutBoundsHeight();
            if(!this.contentMask)
            {
               this.contentMask = new SpriteVisualElement();
            }
            this.contentGroup.mask = this.contentMask;
            _loc20_ = this.contentMask.graphics;
            _loc20_.clear();
            _loc20_.beginFill(0,1);
            _loc20_.drawRoundRect(0,0,_loc18_,_loc19_,_loc16_,_loc16_);
            _loc20_.endFill();
            if(_loc5_)
            {
               _loc12_.lineStyle(NaN);
            }
            _loc12_.beginFill(getStyle("contentBackgroundColor"),_loc17_);
            _loc12_.drawRoundRect(this.contentGroup.getLayoutBoundsX(),this.contentGroup.getLayoutBoundsY(),_loc18_,_loc19_,_loc16_,_loc16_);
            _loc12_.endFill();
            if(this.contentBackgroundGraphic)
            {
               this.contentBackgroundGraphic.alpha = _loc17_;
            }
         }
         else if(this.contentMask)
         {
            this.contentGroup.mask = null;
            this.contentMask = null;
         }
         if(this.useBackgroundGradient && !this.isArrowHorizontal && !this.isArrowVertical)
         {
            _loc21_ = _loc8_ - _loc3_;
            _loc22_ = _loc6_ + this.backgroundCornerRadius;
            _loc23_ = this.highlightWeight * 1.5;
            _loc12_.lineStyle(this.highlightWeight,16777215,0.2 * _loc11_);
            _loc12_.moveTo(_loc22_,_loc23_);
            _loc12_.lineTo(_loc22_ + _loc21_,_loc23_);
         }
      }
      
      override protected function layoutContents(param1:Number, param2:Number) : void
      {
         super.layoutContents(param1,param2);
         if(this.isArrowHorizontal)
         {
            this.arrow.width = this.arrowHeight;
            this.arrow.height = this.arrowWidth + this.backgroundCornerRadius * 2;
         }
         else if(this.isArrowVertical)
         {
            this.arrow.width = this.arrowWidth + this.backgroundCornerRadius * 2;
            this.arrow.height = this.arrowHeight;
         }
         setElementSize(this.backgroundFill,param1,param2);
         setElementPosition(this.backgroundFill,0,0);
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Number = param1;
         var _loc6_:Number = param2;
         switch(this.hostComponent.arrowDirection)
         {
            case ArrowDirection.UP:
               _loc4_ = this.arrow.height;
               _loc6_ = _loc6_ - this.arrow.height;
               break;
            case ArrowDirection.DOWN:
               _loc6_ = _loc6_ - this.arrow.height;
               break;
            case ArrowDirection.LEFT:
               _loc3_ = this.arrow.width;
               _loc5_ = _loc5_ - this.arrow.width;
               break;
            case ArrowDirection.RIGHT:
               _loc5_ = _loc5_ - this.arrow.width;
         }
         if(this.dropShadow)
         {
            setElementSize(this.dropShadow,_loc5_,_loc6_);
            setElementPosition(this.dropShadow,_loc3_,_loc4_);
         }
         var _loc7_:Number = this.actualBorderThickness;
         var _loc8_:Number = this.frameThickness + _loc7_;
         var _loc9_:Number = _loc3_ + _loc8_;
         var _loc10_:Number = _loc4_ + _loc8_;
         _loc8_ = _loc8_ * 2;
         var _loc11_:Number = _loc5_ - _loc8_;
         var _loc12_:Number = _loc6_ - _loc8_;
         if(this.contentBackgroundGraphic)
         {
            setElementSize(this.contentBackgroundGraphic,_loc11_,_loc12_);
            setElementPosition(this.contentBackgroundGraphic,_loc9_,_loc10_);
         }
         setElementSize(this.contentGroup,_loc11_,_loc12_);
         setElementPosition(this.contentGroup,_loc9_,_loc10_);
         if(this.contentMask)
         {
            setElementSize(this.contentMask,_loc11_,_loc12_);
         }
      }
      
      override public function styleChanged(param1:String) : void
      {
         var _loc3_:Number = NaN;
         super.styleChanged(param1);
         var _loc2_:Boolean = !param1 || param1 == "styleName";
         if(_loc2_ || param1 == "contentBackgroundAppearance")
         {
            invalidateProperties();
         }
         if(_loc2_ || param1 == "backgroundAlpha")
         {
            _loc3_ = getStyle("backgroundAlpha");
            blendMode = _loc3_ < 1?BlendMode.LAYER:BlendMode.NORMAL;
         }
      }
      
      mx_internal function get isArrowHorizontal() : Boolean
      {
         return this.hostComponent.arrowDirection == ArrowDirection.LEFT || this.hostComponent.arrowDirection == ArrowDirection.RIGHT;
      }
      
      mx_internal function get isArrowVertical() : Boolean
      {
         return this.hostComponent.arrowDirection == ArrowDirection.UP || this.hostComponent.arrowDirection == ArrowDirection.DOWN;
      }
      
      private function stateChangeComplete(param1:Event = null) : void
      {
         if(this.fade && param1)
         {
            this.fade.removeEventListener(EffectEvent.EFFECT_END,this.stateChangeComplete);
         }
         dispatchEvent(new FlexEvent(FlexEvent.STATE_CHANGE_COMPLETE));
      }
   }
}