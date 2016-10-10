package system.serializers.eden
{
   import flash.events.MouseEvent;
   import mx.graphics.GradientEntry;
   import system.eden;
   import system.Environment;
   import system.Arrays;
   import spark.effects.Rotate;
   import mx.binding.BindingManager;
   import spark.layouts.VerticalLayout;
   
   public final class BuiltinSerializer
   {
       
      
      public function BuiltinSerializer()
      {
         super();
      }
      
      public static function emitDate(param1:Date) : String
      {
         var _loc2_:Array = null;
         var _loc3_:Number = param1.getFullYear();
         var _loc4_:Number = param1.getMonth();
         var _loc5_:Number = param1.getDate();
         var _loc6_:Number = param1.getHours();
         var _loc7_:Number = param1.getMinutes();
         var _loc8_:Number = param1.getSeconds();
         var _loc9_:Number = param1.getMilliseconds();
         _loc2_ = [_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_];
         _loc2_.reverse();
         while(true)
         {
            §§push(_loc2_);
            §§push(0);
            if(_loc11_)
            {
               §§push(-(-§§pop() * 30));
            }
            §§push(§§pop()[§§pop()]);
            §§push(0);
            if(_loc11_)
            {
               §§push((§§pop() + 1) * 36 + 1 + 1 - 35 + 112 - 1);
            }
            if(§§pop() != §§pop())
            {
               break;
            }
            §§push(_loc2_);
            §§push(0);
            if(_loc10_)
            {
               §§push((-§§pop() + 38) * 29 * 1);
            }
            §§pop().splice(§§pop(),1);
         }
         _loc2_.reverse();
         return "new Date(" + _loc2_.join(",") + ")";
      }
      
      public static function emitString(param1:String) : String
      {
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() * 79 + 1 - 1) * 79);
         }
         var /*UnknownSlot*/:* = §§pop();
         var value:String = param1;
         var quote:String = "\"";
         var str:String = "";
         var ch:String = "";
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(--(§§pop() + 1 - 1 + 1));
         }
         var /*UnknownSlot*/:* = §§pop();
         var _toUnicodeNotation:Function = function(param1:int):String
         {
            §§push(param1);
            §§push(16);
            if(_loc3_)
            {
               §§push(§§pop() - 1 + 45 - 104);
            }
            var _loc2_:String = §§pop().toString(§§pop());
            while(true)
            {
               §§push(_loc2_.length);
               §§push(4);
               if(_loc3_)
               {
                  §§push((§§pop() - 1) * 50 - 1 - 1 - 1 - 95 + 17);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               _loc2_ = "0" + _loc2_;
            }
            return _loc2_;
         };
         while(pos < value.length)
         {
            ch = value.charAt(pos);
            var code:int = value.charCodeAt(pos);
            §§push(code);
            §§push(255);
            if(_loc4_)
            {
               §§push(-(§§pop() + 1 + 39) * 23 * 74 - 90 + 1);
            }
            if(§§pop() > §§pop())
            {
               str = str + ("\\u" + _toUnicodeNotation(code));
               pos++;
            }
            else
            {
               if("\b" === _loc3_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1 - 1 + 105);
                  }
               }
               else if("\t" === _loc3_)
               {
                  §§push(1);
                  if(_loc5_)
                  {
                     §§push(-(§§pop() + 41) + 1);
                  }
               }
               else if("\n" === _loc3_)
               {
                  §§push(2);
                  if(_loc5_)
                  {
                     §§push(-§§pop() + 74 + 47);
                  }
               }
               else if("\x0b" === _loc3_)
               {
                  §§push(3);
                  if(_loc4_)
                  {
                     §§push(((§§pop() + 1) * 0 + 52) * 111 * 58);
                  }
               }
               else if("\f" === _loc3_)
               {
                  §§push(4);
                  if(_loc4_)
                  {
                     §§push((-(§§pop() + 38) + 41 + 1) * 91);
                  }
               }
               else if("\r" === _loc3_)
               {
                  §§push(5);
                  if(_loc5_)
                  {
                     §§push(-(§§pop() + 1) + 100);
                  }
               }
               else if("\"" === _loc3_)
               {
                  §§push(6);
                  if(_loc5_)
                  {
                     §§push(-(§§pop() - 95 - 98 + 1 + 1));
                  }
               }
               else if("\'" === _loc3_)
               {
                  §§push(7);
                  if(_loc5_)
                  {
                     §§push((-§§pop() * 43 - 87) * 97 - 1);
                  }
               }
               else if("\\" === _loc3_)
               {
                  §§push(8);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1 - 75 + 1 + 99);
                  }
               }
               else
               {
                  §§push(9);
                  if(_loc4_)
                  {
                     §§push((--(§§pop() + 1) * 30 + 23) * 31 * 55);
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     str = str + "\\b";
                     break;
                  case 1:
                     str = str + "\\t";
                     break;
                  case 2:
                     str = str + "\\n";
                     break;
                  case 3:
                     str = str + "\\v";
                     break;
                  case 4:
                     str = str + "\\f";
                     break;
                  case 5:
                     str = str + "\\r";
                     break;
                  case 6:
                     str = str + "\\\"";
                     break;
                  case 7:
                     str = str + "\\\'";
                     break;
                  case 8:
                     str = str + "\\\\";
                     break;
                  default:
                     str = str + ch;
               }
               pos++;
            }
         }
         return quote + str + quote;
      }
      
      public static function emitObject(param1:Object) : String
      {
         var _loc3_:* = null;
         var _loc2_:Array = [];
         §§push(0);
         if(_loc9_)
         {
            §§push(-((§§pop() - 85) * 31 + 67));
         }
         for(_loc3_ in param1)
         {
            if(param1.hasOwnProperty(_loc3_))
            {
               if(param1[_loc3_] === undefined)
               {
                  _loc2_.push(_loc3_ + ":" + "undefined");
               }
               else if(param1[_loc3_] === null)
               {
                  _loc2_.push(_loc3_ + ":" + "null");
               }
               else
               {
                  eden.prettyIndent++;
                  _loc2_.push(_loc3_ + ":" + eden.serialize(param1[_loc3_]));
                  eden.prettyIndent--;
               }
            }
         }
         if(!eden.prettyPrinting)
         {
            return "{" + _loc2_.join(",") + "}";
         }
         var _loc4_:String = Environment.newLine + Arrays.initialize(eden.prettyIndent,eden.indentor).join("");
         return _loc4_ + "{" + _loc4_ + _loc2_.join("," + _loc4_) + _loc4_ + "}";
      }
      
      public static function emitArray(param1:Array) : String
      {
         var _loc2_:Array = [];
         var _loc3_:uint = param1.length;
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 97 + 6 - 1) * 72 + 1 - 1 - 16);
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc3_)
         {
            if(param1[_loc4_] === undefined)
            {
               _loc2_.push("undefined");
            }
            else if(param1[_loc4_] === null)
            {
               _loc2_.push("null");
            }
            else
            {
               _loc6_.prettyIndent = _loc7_;
               _loc2_.push(eden.serialize(param1[_loc4_]));
               eden.prettyIndent--;
            }
            _loc4_++;
         }
         if(!eden.prettyPrinting)
         {
            return "[" + _loc2_.join(",") + "]";
         }
         var _loc5_:String = Environment.newLine + Arrays.initialize(eden.prettyIndent,eden.indentor).join("");
         return _loc5_ + "[" + _loc5_ + _loc2_.join("," + _loc5_) + _loc5_ + "]";
      }
   }
}
