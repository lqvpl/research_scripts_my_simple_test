package mx.graphics
{
   import mx.core.mx_internal;
   import flash.geom.Matrix;
   import flash.display.Graphics;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.display.GradientType;
   
   use namespace mx_internal;
   
   public class RadialGradient extends GradientBase implements IFill
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var commonMatrix:Matrix = new Matrix();
       
      
      private var _focalPointRatio:Number = 0.0;
      
      private var _scaleX:Number;
      
      private var _scaleY:Number;
      
      public function RadialGradient()
      {
         super();
      }
      
      [Bindable("propertyChange")]
      public function get focalPointRatio() : Number
      {
         return this._focalPointRatio;
      }
      
      public function set focalPointRatio(param1:Number) : void
      {
         var _loc2_:Number = this._focalPointRatio;
         if(param1 != _loc2_)
         {
            this._focalPointRatio = param1;
            dispatchGradientChangedEvent("focalPointRatio",_loc2_,param1);
         }
      }
      
      override public function set matrix(param1:Matrix) : void
      {
         this.scaleX = NaN;
         this.scaleY = NaN;
         super.matrix = param1;
      }
      
      [Bindable("propertyChange")]
      public function get scaleX() : Number
      {
         return !!compoundTransform?Number(compoundTransform.scaleX):Number(this._scaleX);
      }
      
      public function set scaleX(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(param1 != this.scaleX)
         {
            _loc2_ = this.scaleX;
            if(compoundTransform)
            {
               if(!isNaN(param1))
               {
                  compoundTransform.scaleX = param1;
               }
            }
            else
            {
               this._scaleX = param1;
            }
            dispatchGradientChangedEvent("scaleX",_loc2_,param1);
         }
      }
      
      [Bindable("propertyChange")]
      public function get scaleY() : Number
      {
         return !!compoundTransform?Number(compoundTransform.scaleY):Number(this._scaleY);
      }
      
      public function set scaleY(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(param1 != this.scaleY)
         {
            _loc2_ = this.scaleY;
            if(compoundTransform)
            {
               if(!isNaN(param1))
               {
                  compoundTransform.scaleY = param1;
               }
            }
            else
            {
               this._scaleY = param1;
            }
            dispatchGradientChangedEvent("scaleY",_loc2_,param1);
         }
      }
      
      public function begin(param1:Graphics, param2:Rectangle, param3:Point) : void
      {
         var _loc4_:Number = !isNaN(this.scaleX)?Number(this.scaleX):Number(param2.width);
         var _loc5_:Number = !isNaN(this.scaleY)?Number(this.scaleY):Number(param2.height);
         var _loc6_:Number = !isNaN(x)?Number(x + param3.x):Number(param2.left + param2.width / 2);
         var _loc7_:Number = !isNaN(y)?Number(y + param3.y):Number(param2.top + param2.height / 2);
         commonMatrix.identity();
         if(!compoundTransform)
         {
            commonMatrix.scale(_loc4_ / GRADIENT_DIMENSION,_loc5_ / GRADIENT_DIMENSION);
            commonMatrix.rotate(!isNaN(_angle)?Number(_angle):Number(rotationInRadians));
            commonMatrix.translate(_loc6_,_loc7_);
         }
         else
         {
            commonMatrix.scale(1 / GRADIENT_DIMENSION,1 / GRADIENT_DIMENSION);
            commonMatrix.concat(compoundTransform.matrix);
            commonMatrix.translate(param3.x,param3.y);
         }
         param1.beginGradientFill(GradientType.RADIAL,colors,alphas,ratios,commonMatrix,spreadMethod,interpolationMethod,this.focalPointRatio);
      }
      
      public function end(param1:Graphics) : void
      {
         param1.endFill();
      }
   }
}
