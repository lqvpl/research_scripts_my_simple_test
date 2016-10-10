package spark.skins.spark.supportClasses
{
   import mx.core.UIComponent;
   import flash.display.Sprite;
   import flash.display.BlendMode;
   import mx.core.mx_internal;
   import spark.components.Callout;
   import spark.components.ArrowDirection;
   import flash.display.Graphics;
   import flash.display.GraphicsPathCommand;
   import mx.utils.ColorUtil;
   import spark.skins.spark.CalloutSkin;
   import spark.skins.ActionScriptSkinBase;
   import flash.display.GradientType;
   import mx.core.IVisualElement;
   import spark.components.Application;
   import mx.core.FlexGlobals;
   import mx.core.DPIClassification;
   
   use namespace mx_internal;
   
   public class CalloutArrow extends UIComponent
   {
       
      
      protected var gap:Number;
      
      protected var backgroundGradientHeight:Number;
      
      protected var useBackgroundGradient:Boolean;
      
      private var highlightWeight:Number;
      
      private var eraseFill:Sprite;
      
      public function CalloutArrow()
      {
         super();
         this.useBackgroundGradient = true;
         var _loc1_:Number = Application(FlexGlobals.topLevelApplication).applicationDPI;
         switch(_loc1_)
         {
            case DPIClassification.DPI_320:
               this.gap = 32;
               this.backgroundGradientHeight = 440;
               this.highlightWeight = 4;
               break;
            case DPIClassification.DPI_480:
               this.gap = 24;
               this.backgroundGradientHeight = 330;
               this.highlightWeight = 3;
               break;
            case DPIClassification.DPI_320:
               this.gap = 16;
               this.backgroundGradientHeight = 220;
               this.highlightWeight = 2;
               break;
            case DPIClassification.DPI_240:
               this.gap = 12;
               this.backgroundGradientHeight = 165;
               this.highlightWeight = 1;
               break;
            case DPIClassification.DPI_120:
               this.gap = 6;
               this.backgroundGradientHeight = 83;
               this.highlightWeight = 1;
               break;
            default:
               this.gap = 8;
               this.backgroundGradientHeight = 110;
               this.highlightWeight = 1;
         }
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         this.eraseFill = new Sprite();
         this.eraseFill.blendMode = BlendMode.ERASE;
         parent.addChildAt(this.eraseFill,parent.getChildIndex(this));
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc32_:Number = NaN;
         var _loc33_:Number = NaN;
         var _loc34_:Number = NaN;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:Number = NaN;
         var _loc38_:Number = NaN;
         super.updateDisplayList(param1,param2);
         graphics.clear();
         this.eraseFill.graphics.clear();
         var _loc3_:Object = parent;
         var _loc4_:Callout = _loc3_.hostComponent;
         var _loc5_:String = _loc4_.arrowDirection;
         if(_loc5_ == ArrowDirection.NONE)
         {
            return;
         }
         var _loc6_:Graphics = this.graphics;
         var _loc7_:Graphics = this.eraseFill.graphics;
         var _loc8_:Number = param1;
         var _loc9_:Number = param2;
         var _loc10_:Number = 0;
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:Number = 0;
         var _loc14_:Number = 0;
         var _loc15_:Number = 0;
         var _loc16_:Number = _loc4_.getStyle("borderThickness");
         var _loc17_:uint = _loc4_.getStyle("borderColor");
         var _loc18_:Boolean = !isNaN(_loc16_) && _loc16_ > 0;
         var _loc19_:Number = !!_loc18_?Number(_loc16_):Number(0);
         var _loc20_:Number = _loc19_ / 2;
         var _loc21_:Boolean = false;
         if(_loc5_ == ArrowDirection.LEFT || _loc5_ == ArrowDirection.RIGHT)
         {
            _loc21_ = true;
            _loc10_ = -_loc20_;
            _loc11_ = this.gap;
            _loc9_ = _loc9_ - this.gap * 2;
            _loc12_ = _loc8_ - _loc20_;
            _loc13_ = _loc11_ + _loc9_ / 2;
            _loc14_ = _loc10_;
            _loc15_ = _loc11_ + _loc9_;
            if(_loc5_ == ArrowDirection.LEFT)
            {
               _loc10_ = _loc8_ - _loc10_;
               _loc12_ = _loc8_ - _loc12_;
               _loc14_ = _loc8_ - _loc14_;
            }
         }
         else
         {
            _loc10_ = this.gap;
            _loc11_ = -_loc20_;
            _loc8_ = _loc8_ - this.gap * 2;
            _loc12_ = _loc10_ + _loc8_ / 2;
            _loc13_ = _loc9_ - _loc20_;
            _loc14_ = _loc10_ + _loc8_;
            _loc15_ = _loc11_;
            if(_loc4_.arrowDirection == ArrowDirection.UP)
            {
               _loc11_ = _loc9_ - _loc11_;
               _loc13_ = _loc9_ - _loc13_;
               _loc15_ = _loc9_ - _loc15_;
            }
         }
         var _loc22_:Vector.<int> = new Vector.<int>(3,true);
         _loc22_[0] = GraphicsPathCommand.MOVE_TO;
         _loc22_[1] = GraphicsPathCommand.LINE_TO;
         _loc22_[2] = GraphicsPathCommand.LINE_TO;
         var _loc23_:Vector.<Number> = new Vector.<Number>(6,true);
         _loc23_[0] = _loc10_;
         _loc23_[1] = _loc11_;
         _loc23_[2] = _loc12_;
         _loc23_[3] = _loc13_;
         _loc23_[4] = _loc14_;
         _loc23_[5] = _loc15_;
         var _loc24_:Number = getStyle("backgroundColor");
         var _loc25_:Number = getStyle("backgroundAlpha");
         if(this.useBackgroundGradient)
         {
            _loc32_ = ColorUtil.adjustBrightness2(_loc24_,CalloutSkin.BACKGROUND_GRADIENT_BRIGHTNESS_TOP);
            _loc33_ = ColorUtil.adjustBrightness2(_loc24_,CalloutSkin.BACKGROUND_GRADIENT_BRIGHTNESS_BOTTOM);
            ActionScriptSkinBase.colorMatrix.createGradientBox(param1,this.backgroundGradientHeight,Math.PI / 2,0,-getLayoutBoundsY());
            _loc6_.beginGradientFill(GradientType.LINEAR,[_loc32_,_loc33_],[_loc25_,_loc25_],[0,255],ActionScriptSkinBase.colorMatrix);
         }
         else
         {
            _loc6_.beginFill(_loc24_,_loc25_);
         }
         if(_loc18_)
         {
            _loc34_ = 0;
            _loc35_ = 0;
            _loc36_ = 0;
            _loc37_ = 0;
            switch(_loc5_)
            {
               case ArrowDirection.UP:
                  _loc34_ = _loc10_;
                  _loc35_ = _loc11_;
                  _loc36_ = _loc8_;
                  _loc37_ = _loc19_;
                  break;
               case ArrowDirection.DOWN:
                  _loc34_ = _loc10_;
                  _loc35_ = -_loc19_;
                  _loc36_ = _loc8_;
                  _loc37_ = _loc19_;
                  break;
               case ArrowDirection.LEFT:
                  _loc34_ = _loc10_;
                  _loc35_ = _loc11_;
                  _loc36_ = _loc19_;
                  _loc37_ = _loc9_;
                  break;
               case ArrowDirection.RIGHT:
                  _loc34_ = -_loc19_;
                  _loc35_ = _loc11_;
                  _loc36_ = _loc19_;
                  _loc37_ = _loc9_;
            }
            _loc6_.drawRect(_loc34_,_loc35_,_loc36_,_loc37_);
         }
         if(_loc25_ < 1)
         {
            this.eraseFill.x = getLayoutBoundsX();
            this.eraseFill.y = getLayoutBoundsY();
            _loc7_.beginFill(0,1);
            _loc7_.drawPath(_loc22_,_loc23_);
            _loc7_.endFill();
         }
         if(_loc18_)
         {
            _loc6_.lineStyle(_loc16_,_loc17_,1,true);
         }
         _loc6_.drawPath(_loc22_,_loc23_);
         _loc6_.endFill();
         var _loc26_:* = _loc5_ == ArrowDirection.UP;
         var _loc27_:Number = !!_loc26_?Number(param2):Number(-getLayoutBoundsY());
         var _loc28_:Number = this.gap - getLayoutBoundsX();
         var _loc29_:Number = this.highlightWeight * 1.5;
         var _loc30_:Number = _loc29_ + _loc27_;
         var _loc31_:Number = IVisualElement(_loc3_).getLayoutBoundsWidth() - this.gap * 2;
         if(_loc21_)
         {
            _loc31_ = _loc31_ - _loc8_;
            if(_loc5_ == ArrowDirection.LEFT)
            {
               _loc28_ = _loc28_ + _loc8_;
            }
         }
         if(this.useBackgroundGradient)
         {
            if(_loc26_)
            {
               _loc38_ = _loc31_ - _loc8_;
               _loc6_.lineStyle(this.highlightWeight,16777215,0.2 * _loc25_);
               if(_loc28_ < 0)
               {
                  _loc6_.moveTo(_loc28_,_loc30_);
                  _loc6_.lineTo(_loc10_,_loc30_);
                  _loc38_ = _loc38_ - (_loc10_ - _loc28_);
               }
               _loc23_[1] = _loc11_ + _loc29_;
               _loc23_[3] = _loc13_ + _loc29_;
               _loc23_[5] = _loc15_ + _loc29_;
               _loc6_.drawPath(_loc22_,_loc23_);
               if(_loc38_ > 0)
               {
                  _loc6_.moveTo(_loc14_,_loc30_);
                  _loc6_.lineTo(_loc14_ + _loc38_,_loc30_);
               }
            }
            else
            {
               _loc6_.lineStyle(this.highlightWeight,16777215,0.2 * _loc25_);
               _loc6_.moveTo(_loc28_,_loc30_);
               _loc6_.lineTo(_loc28_ + _loc31_,_loc30_);
            }
         }
      }
   }
}
