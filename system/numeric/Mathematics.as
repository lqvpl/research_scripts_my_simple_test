package system.numeric
{
   import system.data.lists.ArrayList;
   import flash.errors.IllegalOperationError;
   import mx.graphics.SolidColorStroke;
   import mx.effects.Sequence;
   import flash.events.MouseEvent;
   import spark.components.supportClasses.ToggleButtonBase;
   import flash.events.Event;
   import com.enfluid.ltp.view.settings.SettingsUserAccountsSection;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.constants.SpecialFilterConstants;
   
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
            §§push((§§pop() + 112 + 15) * 41 * 13 - 1);
         }
         if(§§pop() < §§pop())
         {
            §§push(-1);
            if(_loc3_)
            {
               §§push(-(§§pop() - 1) - 1);
            }
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(1);
            if(_loc3_)
            {
               §§push((-(§§pop() + 1 - 94) * 34 + 1) * 32);
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
         if(_loc5_)
         {
            §§push(-((§§pop() + 1 - 1) * 30) * 100);
         }
         var _loc3_:Number = §§pop();
         §§push(-1);
         if(_loc6_)
         {
            §§push(§§pop() + 1 - 1 - 1);
         }
         var _loc4_:Number = §§pop();
         while(++_loc4_ < param2)
         {
            §§push(_loc3_);
            §§push(10);
            if(_loc5_)
            {
               §§push(--§§pop() * 26 * 44);
            }
            _loc3_ = §§pop() * §§pop();
         }
         return Math.ceil(param1 * _loc3_) / _loc3_;
      }
      
      public static function gcd(param1:int, param2:int) : int
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 1) * 15 - 110));
         }
         var _loc3_:* = §§pop();
         §§push(param2);
         §§push(0);
         if(_loc4_)
         {
            §§push(--§§pop() - 1);
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
            if(_loc5_)
            {
               §§push(-§§pop() + 1 + 93);
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
         if(_loc5_)
         {
            §§push((-(§§pop() * 95 - 80 - 1 + 109) - 1) * 43);
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
         if(_loc5_)
         {
            §§push(-(§§pop() - 1 - 1 + 1) + 58 + 1 + 69);
         }
         var _loc3_:Number = §§pop();
         §§push(-1);
         if(_loc6_)
         {
            §§push((-(§§pop() - 1) + 1 + 91) * 75 * 67);
         }
         var _loc4_:Number = §§pop();
         while(++_loc4_ < param2)
         {
            §§push(_loc3_);
            §§push(10);
            if(_loc5_)
            {
               §§push(-(-((§§pop() * 48 + 74) * 73) * 87));
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
         if(_loc6_)
         {
            §§push(§§pop() - 81 + 31 - 1 - 13);
         }
         var _loc3_:Number = §§pop();
         §§push(-1);
         if(_loc6_)
         {
            §§push(-§§pop() + 1 + 1 - 1);
         }
         var _loc4_:Number = §§pop();
         while(++_loc4_ < param2)
         {
            §§push(_loc3_);
            §§push(10);
            if(_loc6_)
            {
               §§push(-(§§pop() * 53) * 3 + 14);
            }
            _loc3_ = §§pop() * §§pop();
         }
         return Math.round(param1 * _loc3_) / _loc3_;
      }
   }
}
