package com.enfluid.ltp.view.components
{
   import spark.primitives.supportClasses.FilledElement;
   import flash.display.Graphics;
   import flash.geom.Rectangle;
   import flash.geom.Matrix;
   import mx.utils.MatrixUtil;
   import mx.core.mx_internal;
   import flash.geom.Point;
   import spark.events.TextOperationEvent;
   import mx.graphics.SolidColorStroke;
   
   use namespace mx_internal;
   
   public final class CustomRect extends FilledElement
   {
       
      
      private var _bottomLeftRadiusX:Number;
      
      private var _bottomLeftRadiusY:Number;
      
      private var _bottomRightRadiusX:Number;
      
      private var _bottomRightRadiusY:Number;
      
      private var _radiusX:Number = 0;
      
      private var _radiusY:Number = 0;
      
      private var _topLeftRadiusX:Number;
      
      private var _topLeftRadiusY:Number;
      
      private var _topRightRadiusX:Number;
      
      private var _topRightRadiusY:Number;
      
      public function CustomRect()
      {
         super();
      }
      
      public static function drawRoundRectComplex2(param1:Graphics, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number, param12:Number, param13:Number, param14:Number, param15:Number) : void
      {
         var _loc16_:Number = param2 + param4;
         var _loc17_:Number = param3 + param5;
         §§push(param4);
         §§push(2);
         if(_loc25_)
         {
            §§push(-(§§pop() - 1 - 103 - 69 - 15 - 0));
         }
         var _loc18_:Number = §§pop() / §§pop();
         §§push(param5);
         §§push(2);
         if(_loc25_)
         {
            §§push(-(§§pop() - 38 - 1 - 1 + 1));
         }
         var _loc19_:Number = §§pop() / §§pop();
         §§push(param7);
         §§push(0);
         if(_loc24_)
         {
            §§push(§§pop() - 1 - 106 + 1);
         }
         if(§§pop() == §§pop())
         {
            param7 = param6;
         }
         if(isNaN(param8))
         {
            param8 = param6;
         }
         if(isNaN(param9))
         {
            param9 = param8;
         }
         if(isNaN(param10))
         {
            param10 = param6;
         }
         if(isNaN(param11))
         {
            param11 = param10;
         }
         if(isNaN(param12))
         {
            param12 = param6;
         }
         if(isNaN(param13))
         {
            param13 = param12;
         }
         if(isNaN(param14))
         {
            param14 = param6;
         }
         if(isNaN(param15))
         {
            param15 = param14;
         }
         if(param8 > _loc18_)
         {
            param8 = _loc18_;
         }
         if(param9 > _loc19_)
         {
            param9 = _loc19_;
         }
         if(param10 > _loc18_)
         {
            param10 = _loc18_;
         }
         if(param11 > _loc19_)
         {
            param11 = _loc19_;
         }
         if(param12 > _loc18_)
         {
            param12 = _loc18_;
         }
         if(param13 > _loc19_)
         {
            param13 = _loc19_;
         }
         if(param14 > _loc18_)
         {
            param14 = _loc18_;
         }
         if(param15 > _loc19_)
         {
            param15 = _loc19_;
         }
         var _loc20_:Number = param14 * 0.292893218813453;
         var _loc21_:Number = param15 * 0.292893218813453;
         var _loc22_:Number = param14 * 0.585786437626905;
         var _loc23_:Number = param15 * 0.585786437626905;
         param1.moveTo(_loc16_,_loc17_ - param15);
         param1.curveTo(_loc16_,_loc17_ - _loc23_,_loc16_ - _loc20_,_loc17_ - _loc21_);
         param1.curveTo(_loc16_ - _loc22_,_loc17_,_loc16_ - param14,_loc17_);
         _loc20_ = param12 * 0.292893218813453;
         _loc21_ = param13 * 0.292893218813453;
         _loc22_ = param12 * 0.585786437626905;
         _loc23_ = param13 * 0.585786437626905;
         param1.lineTo(param2 + param12,_loc17_);
         param1.curveTo(param2 + _loc22_,_loc17_,param2 + _loc20_,_loc17_ - _loc21_);
         param1.curveTo(param2,_loc17_ - _loc23_,param2,_loc17_ - param13);
         _loc20_ = param8 * 0.292893218813453;
         _loc21_ = param9 * 0.292893218813453;
         _loc22_ = param8 * 0.585786437626905;
         _loc23_ = param9 * 0.585786437626905;
         param1.lineTo(param2,param3 + param9);
         param1.curveTo(param2,param3 + _loc23_,param2 + _loc20_,param3 + _loc21_);
         param1.curveTo(param2 + _loc22_,param3,param2 + param8,param3);
         _loc20_ = param10 * 0.292893218813453;
         _loc21_ = param11 * 0.292893218813453;
         _loc22_ = param10 * 0.585786437626905;
         _loc23_ = param11 * 0.585786437626905;
         param1.lineTo(_loc16_ - param10,param3);
         param1.curveTo(_loc16_ - _loc22_,param3,_loc16_ - _loc20_,param3 + _loc21_);
         param1.curveTo(_loc16_,param3 + _loc23_,_loc16_,param3 + param11);
      }
      
      private static function getRoundRectBoundingBox(param1:Number, param2:Number, param3:CustomRect, param4:Matrix) : Rectangle
      {
         var boundingBox:Rectangle = null;
         var rX:Number = NaN;
         var rY:Number = NaN;
         var width:Number = param1;
         var height:Number = param2;
         var r:CustomRect = param3;
         var m:Matrix = param4;
         var radiusValue:Function = function(param1:Number, param2:Number, param3:Number):Number
         {
            var _loc4_:Number = !!isNaN(param2)?Number(param1):Number(param2);
            return Math.min(_loc4_,param3);
         };
         §§push(_loc5_);
         §§push(width);
         §§push(2);
         if(_loc6_)
         {
            §§push(§§pop() * 109 - 27 - 1 + 1 - 1 + 96 - 0);
         }
         var /*UnknownSlot*/:* = Number(§§pop() / §§pop());
         §§push(_loc5_);
         §§push(height);
         §§push(2);
         if(_loc6_)
         {
            §§push(-(-(§§pop() * 33) - 40) - 1 + 67);
         }
         var /*UnknownSlot*/:* = Number(§§pop() / §§pop());
         var radiusX:Number = r.radiusX;
         §§push(_loc5_);
         §§push(r.radiusY);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 66 - 1 + 1);
         }
         var /*UnknownSlot*/:* = Number(§§pop() == §§pop()?Number(radiusX):Number(r.radiusY));
         rX = radiusValue(radiusX,r.topLeftRadiusX,maxRadiusX);
         rY = radiusValue(radiusY,r.topLeftRadiusY,maxRadiusY);
         boundingBox = MatrixUtil.getEllipseBoundingBox(rX,rY,rX,rY,m,boundingBox);
         rX = radiusValue(radiusX,r.topRightRadiusX,maxRadiusX);
         rY = radiusValue(radiusY,r.topRightRadiusY,maxRadiusY);
         boundingBox = MatrixUtil.getEllipseBoundingBox(width - rX,rY,rX,rY,m,boundingBox);
         rX = radiusValue(radiusX,r.bottomRightRadiusX,maxRadiusX);
         rY = radiusValue(radiusY,r.bottomRightRadiusY,maxRadiusY);
         boundingBox = MatrixUtil.getEllipseBoundingBox(width - rX,height - rY,rX,rY,m,boundingBox);
         rX = radiusValue(radiusX,r.bottomLeftRadiusX,maxRadiusX);
         rY = radiusValue(radiusY,r.bottomLeftRadiusY,maxRadiusY);
         boundingBox = MatrixUtil.getEllipseBoundingBox(rX,height - rY,rX,rY,m,boundingBox);
         return boundingBox;
      }
      
      public function get bottomLeftRadiusX() : Number
      {
         return this._bottomLeftRadiusX;
      }
      
      public function set bottomLeftRadiusX(param1:Number) : void
      {
         if(param1 != this._bottomLeftRadiusX)
         {
            this._bottomLeftRadiusX = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      public function get bottomLeftRadiusY() : Number
      {
         return this._bottomLeftRadiusY;
      }
      
      public function set bottomLeftRadiusY(param1:Number) : void
      {
         if(param1 != this._bottomLeftRadiusY)
         {
            this._bottomLeftRadiusY = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      public function get bottomRightRadiusX() : Number
      {
         return this._bottomRightRadiusX;
      }
      
      public function set bottomRightRadiusX(param1:Number) : void
      {
         if(param1 != this.bottomRightRadiusX)
         {
            this._bottomRightRadiusX = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      public function get bottomRightRadiusY() : Number
      {
         return this._bottomRightRadiusY;
      }
      
      public function set bottomRightRadiusY(param1:Number) : void
      {
         if(param1 != this._bottomRightRadiusY)
         {
            this._bottomRightRadiusY = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      public function get radiusX() : Number
      {
         return this._radiusX;
      }
      
      public function set radiusX(param1:Number) : void
      {
         if(param1 != this._radiusX)
         {
            this._radiusX = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      public function get radiusY() : Number
      {
         return this._radiusY;
      }
      
      public function set radiusY(param1:Number) : void
      {
         if(param1 != this._radiusY)
         {
            this._radiusY = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      public function get topLeftRadiusX() : Number
      {
         return this._topLeftRadiusX;
      }
      
      public function set topLeftRadiusX(param1:Number) : void
      {
         if(param1 != this._topLeftRadiusX)
         {
            this._topLeftRadiusX = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      public function get topLeftRadiusY() : Number
      {
         return this._topLeftRadiusY;
      }
      
      public function set topLeftRadiusY(param1:Number) : void
      {
         if(param1 != this._topLeftRadiusY)
         {
            this._topLeftRadiusY = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      public function get topRightRadiusX() : Number
      {
         return this._topRightRadiusX;
      }
      
      public function set topRightRadiusX(param1:Number) : void
      {
         if(param1 != this.topRightRadiusX)
         {
            this._topRightRadiusX = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      public function get topRightRadiusY() : Number
      {
         return this._topRightRadiusY;
      }
      
      public function set topRightRadiusY(param1:Number) : void
      {
         if(param1 != this._topRightRadiusY)
         {
            this._topRightRadiusY = param1;
            invalidateSize();
            invalidateDisplayList();
            invalidateParentSizeAndDisplayList();
         }
      }
      
      override public function getBoundsXAtSize(param1:Number, param2:Number, param3:Boolean = true) : Number
      {
         var _loc4_:Rectangle = getStrokeExtents(param3);
         var _loc5_:Matrix = getComplexMatrix(param3);
         if(!_loc5_)
         {
            return _loc4_.left + this.x;
         }
         if(!isNaN(param1))
         {
            param1 = param1 - _loc4_.width;
         }
         if(!isNaN(param2))
         {
            param2 = param2 - _loc4_.height;
         }
         var _loc6_:Point = MatrixUtil.fitBounds(param1,param2,_loc5_,explicitWidth,explicitHeight,preferredWidthPreTransform(),preferredHeightPreTransform(),minWidth,minHeight,maxWidth,maxHeight);
         if(!_loc6_)
         {
            _loc6_ = new Point(minWidth,minHeight);
         }
         return _loc4_.left + getRoundRectBoundingBox(_loc6_.x,_loc6_.y,this,_loc5_).x;
      }
      
      override public function getBoundsYAtSize(param1:Number, param2:Number, param3:Boolean = true) : Number
      {
         var _loc4_:Rectangle = getStrokeExtents(param3);
         var _loc5_:Matrix = getComplexMatrix(param3);
         if(!_loc5_)
         {
            return _loc4_.top + this.y;
         }
         if(!isNaN(param1))
         {
            param1 = param1 - _loc4_.width;
         }
         if(!isNaN(param2))
         {
            param2 = param2 - _loc4_.height;
         }
         var _loc6_:Point = MatrixUtil.fitBounds(param1,param2,_loc5_,explicitWidth,explicitHeight,preferredWidthPreTransform(),preferredHeightPreTransform(),minWidth,minHeight,maxWidth,maxHeight);
         if(!_loc6_)
         {
            _loc6_ = new Point(minWidth,minHeight);
         }
         return _loc4_.top + getRoundRectBoundingBox(_loc6_.x,_loc6_.y,this,_loc5_).y;
      }
      
      override public function getLayoutBoundsX(param1:Boolean = true) : Number
      {
         var _loc2_:Number = getStrokeExtents(param1).left;
         if(param1 && hasComplexLayoutMatrix)
         {
            return _loc2_ + getRoundRectBoundingBox(width,height,this,layoutFeatures.layoutMatrix).x;
         }
         return _loc2_ + this.x;
      }
      
      override public function getLayoutBoundsY(param1:Boolean = true) : Number
      {
         var _loc2_:Number = getStrokeExtents(param1).top;
         if(param1 && hasComplexLayoutMatrix)
         {
            return _loc2_ + getRoundRectBoundingBox(width,height,this,layoutFeatures.layoutMatrix).y;
         }
         return _loc2_ + this.y;
      }
      
      override public function setLayoutBoundsSize(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         super.setLayoutBoundsSize(param1,param2,param3);
         var _loc4_:Boolean = !isNaN(this.topLeftRadiusX) || !isNaN(this.topRightRadiusX) || !isNaN(this.bottomLeftRadiusX) || !isNaN(this.bottomRightRadiusX) || §§pop() != §§pop() || §§pop() != §§pop();
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:Matrix = getComplexMatrix(param3);
         if(!_loc5_)
         {
            return;
         }
         this.setLayoutBoundsTransformed(param1,param2,_loc5_);
      }
      
      override protected function draw(param1:Graphics) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!isNaN(this.topLeftRadiusX) || !isNaN(this.topRightRadiusX) || !isNaN(this.bottomLeftRadiusX) || !isNaN(this.bottomRightRadiusX))
         {
            drawRoundRectComplex2(param1,drawX,drawY,width,height,this.radiusX,this.radiusY,this.topLeftRadiusX,this.topLeftRadiusY,this.topRightRadiusX,this.topRightRadiusY,this.bottomLeftRadiusX,this.bottomLeftRadiusY,this.bottomRightRadiusX,this.bottomRightRadiusY);
         }
         else
         {
            §§push(this.radiusX);
            §§push(0);
            if(_loc5_)
            {
               §§push((-§§pop() + 1 - 72) * 48 - 1);
            }
            if(§§pop() != §§pop())
            {
               _loc2_ = this.radiusX;
               §§push(this.radiusY);
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(-(§§pop() + 1 + 1) - 83) + 1 - 84);
               }
               _loc3_ = §§pop() == §§pop()?Number(this.radiusX):Number(this.radiusY);
               §§push(param1);
               §§push(drawX);
               §§push(drawY);
               §§push(width);
               §§push(height);
               §§push(_loc2_);
               §§push(2);
               if(_loc5_)
               {
                  §§push(((§§pop() + 1 + 1 + 1) * 9 - 51) * 47);
               }
               §§push(§§pop() * §§pop());
               §§push(_loc3_);
               §§push(2);
               if(_loc4_)
               {
                  §§push(-(-(§§pop() + 1 - 1) * 11) - 70 + 1);
               }
               §§pop().drawRoundRect(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop() * §§pop());
            }
            else
            {
               param1.drawRect(drawX,drawY,width,height);
            }
         }
      }
      
      override protected function transformWidthForLayout(param1:Number, param2:Number, param3:Boolean = true) : Number
      {
         if(param3 && hasComplexLayoutMatrix)
         {
            param1 = getRoundRectBoundingBox(param1,param2,this,layoutFeatures.layoutMatrix).width;
         }
         return param1 + getStrokeExtents(param3).width;
      }
      
      override protected function transformHeightForLayout(param1:Number, param2:Number, param3:Boolean = true) : Number
      {
         if(param3 && hasComplexLayoutMatrix)
         {
            param2 = getRoundRectBoundingBox(param1,param2,this,layoutFeatures.layoutMatrix).height;
         }
         return param2 + getStrokeExtents(param3).height;
      }
      
      private final function setLayoutBoundsTransformed(param1:Number, param2:Number, param3:Matrix) : void
      {
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:* = false;
         var _loc4_:Rectangle = getStrokeExtents(true);
         param1 = param1 - _loc4_.width;
         param2 = param2 - _loc4_.height;
         var _loc5_:Point = this.fitLayoutBoundsIterative(param1,param2,param3);
         if(!_loc5_ && !isNaN(param1) && !isNaN(param2))
         {
            _loc6_ = this.fitLayoutBoundsIterative(NaN,param2,param3);
            _loc7_ = this.fitLayoutBoundsIterative(param1,NaN,param3);
            if(_loc6_ && getRoundRectBoundingBox(_loc6_.x,_loc6_.y,this,param3).width > param1)
            {
               _loc6_ = null;
            }
            if(_loc7_ && getRoundRectBoundingBox(_loc7_.x,_loc7_.y,this,param3).height > param2)
            {
               _loc7_ = null;
            }
            if(_loc6_ && _loc7_)
            {
               _loc8_ = _loc6_.x * _loc6_.y > _loc7_.x * _loc7_.y;
               if(_loc8_)
               {
                  _loc5_ = _loc6_;
               }
               else
               {
                  _loc5_ = _loc7_;
               }
            }
            else if(_loc6_)
            {
               _loc5_ = _loc6_;
            }
            else
            {
               _loc5_ = _loc7_;
            }
         }
         if(_loc5_)
         {
            setActualSize(_loc5_.x,_loc5_.y);
         }
         else
         {
            setActualSize(minWidth,minHeight);
         }
      }
      
      private final function fitLayoutBoundsIterative(param1:Number, param2:Number, param3:Matrix) : Point
      {
         var _loc9_:Rectangle = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Point = null;
         var _loc4_:Number = this.preferredWidthPreTransform();
         var _loc5_:Number = this.preferredHeightPreTransform();
         var _loc6_:Number = MatrixUtil.transformBounds(_loc4_,_loc5_,param3).x;
         var _loc7_:Number = MatrixUtil.transformBounds(_loc4_,_loc5_,param3).y;
         if(isNaN(param1))
         {
            _loc6_ = NaN;
         }
         if(isNaN(param2))
         {
            _loc7_ = NaN;
         }
         §§push(0);
         if(_loc14_)
         {
            §§push(§§pop() + 101 + 96 + 40 + 1 - 1);
         }
         var _loc8_:* = §§pop();
         while(true)
         {
            §§push(_loc8_++);
            §§push(150);
            if(_loc13_)
            {
               §§push(-(§§pop() - 1 - 78 + 37 + 1 - 31 - 1));
            }
            if(§§pop() < §§pop())
            {
               _loc9_ = getRoundRectBoundingBox(_loc4_,_loc5_,this,param3);
               if(isNaN(param1))
               {
                  §§push(0);
                  if(_loc14_)
                  {
                     §§push((§§pop() * 49 * 89 + 15 + 96) * 23 * 20 - 1);
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(Number(param1 - _loc9_.width));
               }
               _loc10_ = §§pop();
               if(isNaN(param2))
               {
                  §§push(0);
                  if(_loc13_)
                  {
                     §§push(-(§§pop() - 1 + 17 - 26));
                  }
                  §§push(Number(§§pop()));
               }
               else
               {
                  §§push(Number(param2 - _loc9_.height));
               }
               _loc11_ = §§pop();
               if(Math.abs(_loc10_) < 0.1 && Math.abs(_loc11_) < 0.1)
               {
                  break;
               }
               _loc6_ = _loc6_ + _loc10_ * 0.5;
               _loc7_ = _loc7_ + _loc11_ * 0.5;
               _loc12_ = MatrixUtil.fitBounds(_loc6_,_loc7_,param3,explicitWidth,explicitHeight,preferredWidthPreTransform(),preferredHeightPreTransform(),minWidth,minHeight,maxWidth,maxHeight);
               if(_loc12_)
               {
                  _loc4_ = _loc12_.x;
                  _loc5_ = _loc12_.y;
                  continue;
               }
            }
            return null;
         }
         return new Point(_loc4_,_loc5_);
      }
   }
}
