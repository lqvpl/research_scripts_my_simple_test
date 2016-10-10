package system
{
   import mx.collections.ArrayList;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import spark.components.Scroller;
   import spark.components.gridClasses.GridColumn;
   import mx.utils.StringUtil;
   import mx.collections.XMLListCollection;
   import mx.graphics.SolidColor;
   import spark.layouts.HorizontalLayout;
   import spark.primitives.BitmapImage;
   
   public final class Arrays
   {
       
      
      public function Arrays()
      {
         super();
      }
      
      public static function initialize(param1:uint = 0, param2:* = null) : Array
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() - 1 - 1 + 13 - 5 - 1 - 49 - 52);
         }
         var _loc4_:* = §§pop();
         var _loc3_:Array = [];
         while(_loc4_ < param1)
         {
            _loc3_.push(param2);
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function copy(param1:Array, param2:Boolean = false) : Array
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(-§§pop() - 73 - 12 + 61);
         }
         var _loc3_:uint = §§pop();
         var _loc4_:Array = null;
         if(param2)
         {
            _loc4_ = [];
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() + 53) - 1 + 108);
            }
            _loc3_ = §§pop();
            while(_loc3_ < param1.length)
            {
               _loc4_[_loc3_] = param1[_loc3_];
               _loc3_++;
            }
            return _loc4_;
         }
         return Objects.copy(param1) as Array;
      }
      
      public static function reduceRight(param1:Array, param2:Function, param3:* = undefined) : *
      {
         var _loc6_:* = undefined;
         var _loc4_:int = param1.length;
         if(param2 == null)
         {
            throw new ArgumentError("Arrays.reduceRight failed, the callback method not must be \'null\' or \'undefined\'.");
         }
         §§push(_loc4_);
         §§push(0);
         if(_loc7_)
         {
            §§push((-§§pop() - 1 + 1 - 38 - 65 + 60) * 43);
         }
         if(§§pop() == §§pop())
         {
            throw new Error("Arrays.reduceRight failed, the array contains no values.");
         }
         var _loc5_:int = _loc4_ - 1;
         if(param3 != undefined)
         {
            _loc6_ = param3;
         }
         else
         {
            while(!(_loc5_ in param1))
            {
               §§push(--_loc5_);
               §§push(0);
               if(_loc7_)
               {
                  §§push((§§pop() - 1 + 17 - 1 + 1 - 1 - 1) * 107);
               }
               if(§§pop() < §§pop())
               {
                  throw new Error("Array.reduce failed, if array contains no values, no initial value to return.");
               }
            }
            _loc6_ = param1[_loc5_--];
         }
         while(true)
         {
            §§push(_loc5_);
            §§push(0);
            if(_loc8_)
            {
               §§push((-(§§pop() * 97 * 39) - 1) * 117 - 38 + 99);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            if(_loc5_ in param1)
            {
               _loc6_ = param2.call(null,_loc6_,param1[_loc5_],_loc5_,param1);
            }
            _loc5_--;
         }
         return _loc6_;
      }
      
      public static function repeat(param1:Array, param2:uint = 0) : Array
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(-§§pop() * 97 + 1 - 1 - 106);
         }
         var _loc4_:* = §§pop();
         var _loc3_:Array = [];
         §§push(param2);
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 1) * 109 + 1 - 75 - 66 + 1 - 1);
         }
         if(§§pop() > §§pop())
         {
            while(_loc4_ < param2)
            {
               _loc3_ = _loc3_.concat(param1);
               _loc4_++;
            }
         }
         else
         {
            _loc3_ = [].concat(param1);
         }
         return _loc3_;
      }
      
      public static function spliceInto(param1:Array, param2:Array, param3:Number = 0, param4:Number = 0) : void
      {
         var inserted:Array = param1;
         var container:Array = param2;
         var containerPosition:Number = param3;
         var countReplaced:Number = param4;
         §§push(inserted);
         §§push(containerPosition);
         if(isNaN(countReplaced))
         {
            §§push(0);
            if(_loc9_)
            {
               §§push(--(§§pop() - 1 + 1) - 81);
            }
            §§push(§§pop());
         }
         else
         {
            §§push(countReplaced);
         }
         §§pop().unshift(§§pop(),§§pop());
         try
         {
            container.splice.apply(container,inserted);
         }
         catch(_loc6_:*)
         {
            throw ;
         }
         §§push(-1);
         if(_loc9_)
         {
            §§push(-§§pop() + 76 + 104);
         }
         §§push(inserted);
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() + 1) + 1 + 1);
         }
         §§pop().splice(§§pop(),2);
         if(!§§pop())
         {
            throw _loc7_;
         }
      }
      
      public static function reduce(param1:Array, param2:Function, param3:* = undefined) : *
      {
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() + 28 - 8 - 73 + 1) * 105 - 46 - 88);
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = undefined;
         var _loc4_:int = param1.length;
         if(param2 == null)
         {
            throw new ArgumentError("Arrays.reduce failed, the callback method not must be \'null\' or \'undefined\'.");
         }
         §§push(_loc4_);
         §§push(0);
         if(_loc7_)
         {
            §§push((-(-§§pop() - 1 - 1) - 70) * 48);
         }
         if(§§pop() == §§pop())
         {
            throw new Error("Arrays.reduce failed, the array contains no values.");
         }
         if(param3 != undefined)
         {
            _loc6_ = param3;
         }
         else
         {
            while(!(_loc5_ in param1))
            {
               if(++_loc5_ > _loc4_)
               {
                  throw new Error("Array.reduce failed, if array contains no values, no initial value to return.");
               }
            }
            _loc6_ = param1[_loc5_++];
         }
         while(_loc5_ < _loc4_)
         {
            if(_loc5_ in param1)
            {
               _loc6_ = param2.call(null,_loc6_,param1[_loc5_],_loc5_,param1);
            }
            _loc5_++;
         }
         return _loc6_;
      }
      
      public static function contains(param1:Array, param2:Object) : Boolean
      {
         §§push(param1.indexOf(param2));
         §§push(-1);
         if(_loc4_)
         {
            §§push(-(-§§pop() + 33 - 1));
         }
         return §§pop() > §§pop();
      }
   }
}
