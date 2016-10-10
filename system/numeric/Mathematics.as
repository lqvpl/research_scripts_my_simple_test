package system.numeric
{
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import flash.errors.IllegalOperationError;
   import spark.effects.Resize;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import spark.primitives.BitmapImage;
   import spark.components.Label;
   import com.hurlant.util.Memory;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Logger;
   import mx.binding.utils.BindingUtils;
   import spark.components.Group;
   import mx.collections.ArrayCollection;
   
   public final class Mathematics
   {
       
      
      public function Mathematics()
      {
         super();
      }
      
      public static function interpolate(param1:Number, param2:Number, param3:Number) : Number
      {
         return param2 + (param3 - param2) * param1;
      }
      
      public static function map(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number) : Number
      {
         return interpolate(normalize(param1,param2,param3),param4,param5);
      }
      
      public static function sign(param1:Number) : Number
      {
         if(isNaN(param1))
         {
            throw new IllegalOperationError("Mathematics.sign, the passed-in value not must be NaN.");
         }
         §§push(param1);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 21 + 1 + 1) * 92 - 1 + 0 + 1);
         }
         if(§§pop() < §§pop())
         {
            §§push(-1);
            if(_loc2_)
            {
               §§push((§§pop() - 63 + 1) * 52 - 1);
            }
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(1);
            if(_loc2_)
            {
               §§push(-(§§pop() * 58 + 1) * 116 + 76 - 24);
            }
            §§push(Number(§§pop()));
         }
         return §§pop();
      }
      
      public static function ceil(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            return NaN;
         }
         §§push(1);
         if(_loc6_)
         {
            §§push(-(§§pop() + 82 + 64 + 104 - 99));
         }
         var _loc3_:Number = §§pop();
         §§push(-1);
         if(_loc5_)
         {
            §§push((§§pop() + 74 + 85) * 5 - 1 - 1);
         }
         var _loc4_:Number = §§pop();
         while(++_loc4_ < param2)
         {
            §§push(_loc3_);
            §§push(10);
            if(_loc5_)
            {
               §§push(((§§pop() + 1 + 1 + 20) * 35 - 98) * 36);
            }
            _loc3_ = §§pop() * §§pop();
         }
         return Math.ceil(param1 * _loc3_) / _loc3_;
      }
      
      public static function gcd(param1:int, param2:int) : int
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 58 + 1 - 68 + 38 + 106);
         }
         var _loc3_:* = §§pop();
         §§push(param2);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 85 - 77 - 91);
         }
         if(§§pop() == §§pop())
         {
            return param1;
         }
         if(param1 == param2)
         {
            return param1;
         }
         while(true)
         {
            §§push(param2);
            §§push(0);
            if(_loc4_)
            {
               §§push(§§pop() * 42 + 19 - 1);
            }
            if(§§pop() == §§pop())
            {
               break;
            }
            _loc3_ = int(param2);
            param2 = param1 % param2;
            param1 = _loc3_;
         }
         return param1;
      }
      
      public static function percentage(param1:Number = NaN, param2:Number = NaN) : Number
      {
         §§push(param1 / param2);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 1 + 1) * 16));
         }
         var _loc3_:Number = §§pop() * §§pop();
         return isNaN(_loc3_) || !isFinite(_loc3_)?Number(NaN):Number(_loc3_);
      }
      
      public static function clamp(param1:Number, param2:Number, param3:Number) : Number
      {
         if(isNaN(param1))
         {
            return NaN;
         }
         if(isNaN(param2))
         {
            param2 = param1;
         }
         if(isNaN(param3))
         {
            param3 = param1;
         }
         return Math.max(Math.min(param1,param3),param2);
      }
      
      public static function floor(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            return NaN;
         }
         §§push(1);
         if(_loc6_)
         {
            §§push(-(§§pop() - 1 + 35 + 1) - 2 + 31);
         }
         var _loc3_:Number = §§pop();
         §§push(-1);
         if(_loc5_)
         {
            §§push(-(§§pop() * 47 - 20 - 1 - 1) + 1 + 1);
         }
         var _loc4_:Number = §§pop();
         while(++_loc4_ < param2)
         {
            §§push(_loc3_);
            §§push(10);
            if(_loc6_)
            {
               §§push(-(--((§§pop() - 103) * 48) - 1));
            }
            _loc3_ = §§pop() * §§pop();
         }
         return Math.floor(param1 * _loc3_) / _loc3_;
      }
      
      public static function normalize(param1:Number, param2:Number, param3:Number) : Number
      {
         return (param1 - param2) / (param3 - param2);
      }
      
      public static function round(param1:Number, param2:Number) : Number
      {
         if(isNaN(param1))
         {
            return NaN;
         }
         §§push(1);
         if(_loc5_)
         {
            §§push((§§pop() + 82) * 13 * 107 * 24 - 80 + 78);
         }
         var _loc3_:Number = §§pop();
         §§push(-1);
         if(_loc5_)
         {
            §§push(-(-(§§pop() + 119) + 16 - 1 - 1 + 92));
         }
         var _loc4_:Number = §§pop();
         while(++_loc4_ < param2)
         {
            §§push(_loc3_);
            §§push(10);
            if(_loc5_)
            {
               §§push(§§pop() - 1 - 1 + 106);
            }
            _loc3_ = §§pop() * §§pop();
         }
         return Math.round(param1 * _loc3_) / _loc3_;
      }
   }
}
