package system.serializers.eden
{
   import system.eden;
   import system.Environment;
   import system.Arrays;
   import mx.graphics.SolidColor;
   import spark.components.Label;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   
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
               §§push((§§pop() - 1 - 62 - 108 - 1 - 87) * 14);
            }
            §§push(§§pop()[§§pop()]);
            §§push(0);
            if(_loc10_)
            {
               §§push(--(§§pop() - 1 + 1 - 1) + 11);
            }
            if(§§pop() != §§pop())
            {
               break;
            }
            §§push(_loc2_);
            §§push(0);
            if(_loc10_)
            {
               §§push(-(§§pop() - 1) + 1 - 20);
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
         if(_loc4_)
         {
            §§push((-(§§pop() - 19) + 1) * 21 - 1);
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
            §§push(-(§§pop() - 1 - 1));
         }
         var /*UnknownSlot*/:* = §§pop();
         var _toUnicodeNotation:Function = function(param1:int):String
         {
            §§push(param1);
            §§push(16);
            if(_loc4_)
            {
               §§push(-(§§pop() - 1 - 10) + 1);
            }
            var _loc2_:String = §§pop().toString(§§pop());
            while(true)
            {
               §§push(_loc2_.length);
               §§push(4);
               if(_loc3_)
               {
                  §§push(-(((§§pop() - 1) * 5 - 1 + 1) * 77) - 47);
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
            if(_loc5_)
            {
               §§push(§§pop() - 1 + 1 + 1 - 111 + 1);
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
                     §§push(-(-§§pop() + 1) * 63 - 68);
                  }
               }
               else if("\t" === _loc3_)
               {
                  §§push(1);
                  if(_loc4_)
                  {
                     §§push((§§pop() + 99 + 1 + 1) * 74);
                  }
               }
               else if("\n" === _loc3_)
               {
                  §§push(2);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1 - 1 + 1);
                  }
               }
               else if("\x0b" === _loc3_)
               {
                  §§push(3);
                  if(_loc5_)
                  {
                     §§push(-(--§§pop() - 52 - 56));
                  }
               }
               else if("\f" === _loc3_)
               {
                  §§push(4);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 60 + 1 - 1 + 5);
                  }
               }
               else if("\r" === _loc3_)
               {
                  §§push(5);
                  if(_loc4_)
                  {
                     §§push(§§pop() + 1 - 1 - 68 - 1);
                  }
               }
               else if("\"" === _loc3_)
               {
                  §§push(6);
                  if(_loc5_)
                  {
                     §§push(((§§pop() - 102) * 57 + 1 + 115) * 106 + 60);
                  }
               }
               else if("\'" === _loc3_)
               {
                  §§push(7);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 57 - 78 + 1 + 83 + 1);
                  }
               }
               else if("\\" === _loc3_)
               {
                  §§push(8);
                  if(_loc5_)
                  {
                     §§push(-(§§pop() + 61 - 1 - 90 + 17));
                  }
               }
               else
               {
                  §§push(9);
                  if(_loc5_)
                  {
                     §§push(-(§§pop() * 23 - 1 - 13) + 1 + 87 - 15);
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
            §§push(-§§pop() * 76 - 1);
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
                  _loc7_.prettyIndent = _loc7_.prettyIndent + 1;
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
            §§push(-(§§pop() + 46 + 1));
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
               eden.prettyIndent++;
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
