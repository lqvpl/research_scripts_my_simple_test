package system
{
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import system.data.Map;
   import system.data.Iterator;
   import mx.graphics.GradientEntry;
   import spark.layouts.VerticalLayout;
   import com.hurlant.math.BigInteger;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import spark.layouts.HorizontalLayout;
   import spark.components.HGroup;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.util.KeywordUtil;
   import flash.net.URLRequest;
   import flash.events.Event;
   import spark.components.Button;
   import system.comparators.StringComparator;
   import com.enfluid.ltp.view.components.CompetitorAnalysisGridColumn;
   import spark.events.GridEvent;
   import mx.collections.SortField;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import mx.collections.Sort;
   import mx.collections.ArrayCollection;
   import system.evaluators.MultiEvaluator;
   import system.evaluators.EdenEvaluator;
   import mx.graphics.SolidColorStroke;
   
   public final class Strings
   {
      
      public static const whiteSpaceChars:Array = ["\t","\n","\x0b","\f","\r"," "," "," ","᠎"," "," "," "," "," "," "," "," "," "," "," ","​"," "," "," "," ","　"];
      
      private static var _hiddenIndex:uint = §§pop();
      
      public static var evaluators:Object = {};
      
      private static var _sComparator:StringComparator = new StringComparator();
      
      {
         §§push();
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 - 75 - 19) * 30);
         }
      }
      
      public function Strings()
      {
         super();
      }
      
      private static function _trimHelper(param1:String, param2:Array, param3:Boolean = false, param4:Boolean = false) : String
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(-((§§pop() - 83 - 1) * 6 - 1 + 18 - 88));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() + 35) * 9 - 1);
         }
         var _loc6_:* = §§pop();
         if(param3)
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() + 3 - 1 + 94));
            }
            _loc5_ = §§pop();
            while(_loc5_ < param1.length && §§pop() > §§pop())
            {
               _loc5_++;
            }
            param1 = param1.substr(_loc5_);
         }
         if(param4)
         {
            _loc6_ = int(param1.length - 1);
            while(true)
            {
               §§push(_loc6_);
               §§push(0);
               if(_loc8_)
               {
                  §§push(-(§§pop() + 1) + 12 - 1);
               }
               if(!(§§pop() >= §§pop() && §§pop() > §§pop()))
               {
                  break;
               }
               _loc6_--;
            }
            §§push(param1);
            §§push(0);
            if(_loc8_)
            {
               §§push((-§§pop() - 86) * 2 - 118 - 1 - 79);
            }
            §§push(_loc6_);
            §§push(1);
            if(_loc7_)
            {
               §§push(-(§§pop() + 100 - 91) + 102 + 36);
            }
            param1 = §§pop().substring(§§pop(),§§pop() + §§pop());
         }
         return param1;
      }
      
      public static function padRight(param1:String, param2:int, param3:String = " ") : String
      {
         var _loc4_:Boolean = true;
         §§push(param2);
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() - 27 - 16 - 1 - 1);
         }
         if(§§pop() < §§pop())
         {
            param2 = -param2;
            _loc4_ = false;
         }
         return _padHelper(param1,param2,param3,_loc4_);
      }
      
      public static function center(param1:String, param2:uint = 0, param3:String = " ") : String
      {
         var _loc4_:uint = param1.length;
         if(param2 <= _loc4_)
         {
            return param1;
         }
         §§push(Math);
         §§push(param2 - _loc4_);
         §§push(2);
         if(_loc6_)
         {
            §§push(-(((§§pop() + 40) * 54 + 1) * 59 + 67));
         }
         var _loc5_:int = §§pop().floor(§§pop() / §§pop());
         return repeat(param3,_loc5_) + param1 + repeat(param3,param2 - _loc4_ - _loc5_);
      }
      
      private static function _format(param1:String, param2:Array, param3:Object, param4:String = " ") : String
      {
         var ch:String = null;
         §§push(_loc5_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-((-(§§pop() - 112) + 89) * 84 - 1 - 114));
         }
         var /*UnknownSlot*/:* = §§pop();
         var stringvalue:String = param1;
         var indexed:Array = param2;
         var named:Object = param3;
         var paddingChar:String = param4;
         var parseExpression:Function = function(param1:String):String
         {
            §§push(0);
            if(_loc10_)
            {
               §§push(-(§§pop() - 1 + 42 + 1 - 98));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(_loc10_)
            {
               §§push(((§§pop() * 6 + 1) * 56 - 1 + 1) * 117 - 1);
            }
            var _loc8_:* = §§pop();
            var _loc2_:String = "";
            §§push(0);
            if(_loc9_)
            {
               §§push(-(--(§§pop() + 50) + 98 + 1) - 1);
            }
            var _loc3_:* = §§pop();
            var _loc4_:Boolean = false;
            var _loc5_:String = paddingChar;
            §§push(indexOfAny(param1,[",",":"]));
            §§push(-1);
            if(_loc9_)
            {
               §§push(§§pop() - 21 - 38 + 96);
            }
            if(§§pop() > §§pop())
            {
               _loc7_ = int(param1.indexOf(","));
               §§push(_loc7_);
               §§push(-1);
               if(_loc10_)
               {
                  §§push(--(§§pop() - 101) * 66);
               }
               if(§§pop() == §§pop())
               {
                  throw new Error("malformed format, could not find [,] before [:].");
               }
               _loc8_ = int(param1.indexOf(":"));
               §§push(_loc8_);
               §§push(-1);
               if(_loc10_)
               {
                  §§push(-(§§pop() + 59) + 1);
               }
               if(§§pop() == §§pop())
               {
                  §§push();
                  §§push(param1);
                  §§push(_loc7_);
                  §§push(1);
                  if(_loc10_)
                  {
                     §§push(§§pop() - 29 - 6 - 1);
                  }
                  _loc3_ = int(§§pop().int(§§pop().substr(§§pop() + §§pop())));
               }
               else
               {
                  §§push();
                  §§push(param1);
                  §§push(_loc7_);
                  §§push(1);
                  if(_loc10_)
                  {
                     §§push((-(§§pop() - 1 - 1) + 1 + 1) * 29);
                  }
                  _loc3_ = int(§§pop().int(§§pop().substring(§§pop() + §§pop(),_loc8_)));
                  §§push(param1);
                  §§push(_loc8_);
                  §§push(1);
                  if(_loc9_)
                  {
                     §§push(---§§pop() * 53 * 9 + 55 - 107);
                  }
                  _loc5_ = §§pop().substr(§§pop() + §§pop());
               }
               _loc4_ = true;
               §§push(param1);
               §§push(0);
               if(_loc10_)
               {
                  §§push(-§§pop() - 1 - 68);
               }
               param1 = §§pop().substring(§§pop(),_loc7_);
            }
            §§push(param1.split(""));
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() - 1) * 71 + 50 - 63);
            }
            var _loc6_:String = §§pop()[§§pop()];
            if("A" <= _loc6_ && _loc6_ <= "Z" || "a" <= _loc6_ && _loc6_ <= "z")
            {
               _loc2_ = String(named[param1]);
            }
            else if("0" <= _loc6_ && _loc6_ <= "9")
            {
               _loc2_ = String(indexed[int(param1)]);
            }
            if(_loc4_)
            {
               §§push(_loc3_);
               §§push(0);
               if(_loc10_)
               {
                  §§push(-(--(§§pop() + 1 + 15) - 1) - 78);
               }
               if(§§pop() > §§pop() && _loc2_.length < _loc3_)
               {
                  _loc2_ = padLeft(_loc2_,_loc3_,_loc5_);
               }
               else if(_loc3_ < -_loc2_.length)
               {
                  _loc2_ = padRight(_loc2_,-_loc3_,_loc5_);
               }
            }
            return _loc2_;
         };
         var expression:String = "";
         var formated:String = "";
         ch = "";
         §§push(_loc5_);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 108 + 1 + 41);
         }
         var /*UnknownSlot*/:* = §§pop();
         var len:int = stringvalue.length;
         var next:Function = function():String
         {
            ch = stringvalue.charAt(pos);
            pos++;
            return ch;
         };
         while(pos < len)
         {
            next();
            if(ch == "{")
            {
               expression = next();
               while(next() != "}")
               {
                  expression = expression + ch;
               }
               formated = formated + parseExpression(expression);
            }
            else
            {
               formated = formated + ch;
            }
         }
         return formated;
      }
      
      public static function lastIndexOfAny(param1:String, param2:Array, param3:int = 2147483647, param4:int = 2147483647) : int
      {
         §§push(0);
         if(_loc9_)
         {
            §§push(((-§§pop() + 1) * 109 + 55) * 99 - 1 - 1);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 84 + 1) * 0 - 34 + 36);
         }
         var _loc6_:* = §§pop();
         if(param2 == null)
         {
            throw new ArgumentError("Strings.lastIndexOfAny failed with an empty \'anyOf\' Array.");
         }
         if(param1 == null || §§pop() == §§pop())
         {
            §§push(-1);
            if(_loc10_)
            {
               return -(§§pop() * 100 + 1);
            }
         }
         if(isNaN(param4) || §§pop() < §§pop())
         {
            §§push(2147483647);
            if(_loc9_)
            {
               §§push(§§pop() - 19 - 64 - 29);
            }
            param4 = §§pop();
         }
         if(isNaN(param3) || param3 > param1.length)
         {
            param3 = param1.length;
         }
         else
         {
            §§push(param3);
            §§push(0);
            if(_loc10_)
            {
               §§push(-(§§pop() - 1) - 25);
            }
            if(§§pop() < §§pop())
            {
               §§push(-1);
               if(_loc10_)
               {
                  return §§pop() * 76 * 57 - 21 + 1;
               }
            }
         }
         §§push(param3 - param4);
         §§push(1);
         if(_loc9_)
         {
            §§push(--(§§pop() - 1 + 1) + 86 + 1);
         }
         var _loc7_:* = int(§§pop() + §§pop());
         §§push(_loc7_);
         §§push(0);
         if(_loc9_)
         {
            §§push(---§§pop() * 38);
         }
         if(§§pop() < §§pop())
         {
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() + 1 + 9 - 49) * 99 - 1);
            }
            _loc7_ = §§pop();
         }
         §§push(param1);
         §§push(_loc7_);
         §§push(param3);
         §§push(1);
         if(_loc9_)
         {
            §§push(-(§§pop() * 101 + 1) - 1);
         }
         param1 = §§pop().slice(§§pop(),§§pop() + §§pop());
         var _loc8_:uint = param2.length;
         §§push(0);
         if(_loc10_)
         {
            §§push((-§§pop() + 1 + 103 + 1 + 1) * 97 + 104);
         }
         _loc5_ = §§pop();
         while(_loc5_ < _loc8_)
         {
            _loc6_ = int(param1.lastIndexOf(param2[_loc5_],param3));
            §§push(_loc6_);
            §§push(-1);
            if(_loc9_)
            {
               §§push(-(-§§pop() + 67) * 27);
            }
            if(§§pop() > §§pop())
            {
               return _loc6_ + _loc7_;
            }
            _loc5_++;
         }
         §§push(-1);
         if(_loc9_)
         {
            §§push(-(§§pop() - 24) - 75 - 1 + 0 + 61);
         }
         return §§pop();
      }
      
      public static function repeat(param1:String = "", param2:uint = 0) : String
      {
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() - 72) * 98 + 1 + 113 - 1);
         }
         var _loc4_:uint = §§pop();
         var _loc3_:String = "";
         §§push(param2);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1 - 1));
         }
         if(§§pop() > §§pop())
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() + 1) + 90 + 1 - 1 + 84 + 98);
            }
            _loc4_ = §§pop();
            while(_loc4_ < param2)
            {
               _loc3_ = _loc3_.concat(param1);
               _loc4_++;
            }
         }
         else
         {
            _loc3_ = param1;
         }
         return _loc3_;
      }
      
      public static function endsWith(param1:String, param2:String) : Boolean
      {
         if(param1 == null || param2 == null || param1.length < param2.length)
         {
            return false;
         }
         §§push(compare(param1.substr(param1.length - param2.length),param2));
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1) + 1 - 36 - 30);
         }
         return §§pop() == §§pop();
      }
      
      public static function trimEnd(param1:String, param2:Array = null) : String
      {
         if(param2 == null)
         {
            param2 = whiteSpaceChars;
         }
         return _trimHelper(param1,param2,false,true);
      }
      
      public static function indexOfAny(param1:String, param2:Array, param3:int = 0, param4:int = -1) : int
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() - 1 - 82 + 110 - 1 + 1 + 69));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(-§§pop() + 1 - 58);
         }
         var _loc6_:* = §§pop();
         if(param1 == null || param1 == "")
         {
            §§push(-1);
            if(_loc8_)
            {
               return (§§pop() * 93 + 72 + 37) * 54 + 4;
            }
         }
         §§push(param3);
         §§push(0);
         if(_loc8_)
         {
            §§push(-((§§pop() + 107) * 116 + 10));
         }
         if(§§pop() < §§pop())
         {
            §§push(0);
            if(_loc8_)
            {
               §§push(-((§§pop() * 4 - 1) * 21 + 110));
            }
            param3 = §§pop();
         }
         §§push(param4);
         §§push(0);
         if(_loc8_)
         {
            §§push(--(§§pop() - 22 + 56) + 110 + 48);
         }
         if(§§pop() < §§pop() || param4 > param2.length - param3)
         {
            _loc6_ = int(param2.length - 1);
         }
         else
         {
            _loc6_ = int(param3 + param4 - 1);
         }
         _loc5_ = int(param3);
         while(_loc5_ <= _loc6_)
         {
            §§push(param1.indexOf(param2[_loc5_]));
            §§push(-1);
            if(_loc7_)
            {
               §§push(-(§§pop() - 72 - 27 + 81));
            }
            if(§§pop() > §§pop())
            {
               return _loc5_;
            }
            _loc5_++;
         }
         §§push(-1);
         if(_loc7_)
         {
            §§push((§§pop() - 1 - 1) * 57);
         }
         return §§pop();
      }
      
      public static function compare(param1:String, param2:String, param3:Boolean = false) : int
      {
         return _sComparator.compare(param1,param2,!param3);
      }
      
      public static function trimStart(param1:String, param2:Array = null) : String
      {
         if(param2 == null)
         {
            param2 = whiteSpaceChars;
         }
         return _trimHelper(param1,param2,true,false);
      }
      
      public static function splitToChars(param1:String, param2:String = "toString") : Array
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(-((-§§pop() - 1) * 4 * 14) + 81);
         }
         var _loc4_:* = §§pop();
         var _loc3_:Array = [];
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 1 + 21 + 39 + 1);
         }
         _loc4_ = §§pop();
         while(_loc4_ < param1.length)
         {
            _loc3_.push(new Char(param1[param2](),_loc4_));
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function trim(param1:String, param2:Array = null) : String
      {
         if(param2 == null)
         {
            param2 = whiteSpaceChars;
         }
         return _trimHelper(param1,param2,true,true);
      }
      
      private static function _padHelper(param1:String, param2:int, param3:String = " ", param4:Boolean = true) : String
      {
         if(param2 < param1.length || §§pop() < §§pop())
         {
            return param1;
         }
         §§push(param3.length);
         §§push(1);
         if(_loc6_)
         {
            §§push(§§pop() * 98 - 79 + 12);
         }
         if(§§pop() > §§pop())
         {
            §§push(param3);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(-§§pop() - 116 + 33) + 1);
            }
            param3 = §§pop().charAt(§§pop());
         }
         while(param1.length != param2)
         {
            if(param4 == true)
            {
               param1 = param1 + param3;
            }
            else
            {
               param1 = param3 + param1;
            }
         }
         return param1;
      }
      
      public static function startsWith(param1:String, param2:String) : Boolean
      {
         if(param2 == "" && param1 != null)
         {
            return true;
         }
         if(param1 == "" || param1 == null || param2 == null || param1.length < param2.length)
         {
            return false;
         }
         §§push(param1);
         §§push(0);
         if(_loc4_)
         {
            §§push(--((§§pop() + 1) * 20));
         }
         §§push(§§pop().charAt(§§pop()));
         §§push(param2);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 1 + 1);
         }
         if(§§pop() != §§pop().charAt(§§pop()))
         {
            return false;
         }
         §§push();
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(--((§§pop() - 77 + 68) * 103) + 83 + 95);
         }
         §§push(§§pop().compare(§§pop().substr(§§pop(),param2.length),param2));
         §§push(0);
         if(_loc4_)
         {
            §§push(--(-(§§pop() - 37) - 31) + 1 - 1);
         }
         return §§pop() == §§pop();
      }
      
      private static function _evaluate(param1:String) : Object
      {
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 1 + 1 - 118);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 74 - 1) * 81 - 102);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() - 70) * 51);
         }
         var /*UnknownSlot*/:* = §§pop();
         var tmp:String = null;
         var evaluatorsAlias:Array = null;
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 107 + 91) * 78 + 57);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 70 - 1);
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         var value:String = param1;
         var obj:Object = {};
         obj.format = "";
         obj.indexes = [];
         var defaultEvaluator:EdenEvaluator = new EdenEvaluator();
         var evaluators:MultiEvaluator = new MultiEvaluator();
         var evalSequence:String = "";
         var evalString:String = "";
         var inBetween:String = "";
         var isValidChar:Function = function(param1:String):Boolean
         {
            if("a" <= param1 && param1 <= "z" || "0" <= param1 && param1 <= "9" || param1 == ",")
            {
               return true;
            }
            return false;
         };
         var isValid:Function = function(param1:String):Boolean
         {
            if(param1 == "")
            {
               return true;
            }
            var _loc2_:Array = param1.split("");
            var _loc3_:int = _loc2_.length;
            §§push(0);
            if(_loc5_)
            {
               §§push(-§§pop() - 38 - 56 - 27);
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_)
            {
               if(!isValidChar(_loc2_[_loc4_]))
               {
                  return false;
               }
               _loc4_++;
            }
            return true;
         };
         while(true)
         {
            §§push(value.indexOf("${"));
            §§push(-1);
            if(_loc4_)
            {
               §§push((§§pop() - 17 + 1 + 1 - 60) * 28 + 26);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            var pos1:int = value.indexOf("${");
            §§push(_loc2_);
            §§push(value);
            §§push("$");
            §§push(pos1);
            §§push(2);
            if(_loc3_)
            {
               §§push((-§§pop() * 110 - 11 - 81) * 55);
            }
            var /*UnknownSlot*/:* = int(§§pop().indexOf(§§pop(),§§pop() + §§pop()));
            §§push(pos2);
            §§push(-1);
            if(_loc4_)
            {
               §§push(-((§§pop() - 10 + 99) * 84) * 119 * 108 + 1);
            }
            if(§§pop() == §§pop())
            {
               throw new Error("malformed evaluator, could not find [$] after [}].");
            }
            §§push(_loc2_);
            §§push(value);
            §§push(pos1);
            §§push(2);
            if(_loc4_)
            {
               §§push(-((§§pop() + 1) * 15 + 1));
            }
            var /*UnknownSlot*/:* = §§pop().slice(§§pop() + §§pop(),pos2);
            var lpos:int = evalSequence.lastIndexOf("}");
            §§push(_loc2_);
            §§push(evalSequence);
            §§push(lpos);
            §§push(1);
            if(_loc3_)
            {
               §§push(§§pop() - 1 + 37 + 1 + 100 - 83);
            }
            var /*UnknownSlot*/:* = §§pop().substring(§§pop() + §§pop());
            while(!isValid(inBetween))
            {
               §§push(_loc2_);
               §§push(value);
               §§push("$");
               §§push(pos1);
               §§push(2);
               if(_loc4_)
               {
                  §§push(-(---((§§pop() + 1) * 48) - 1));
               }
               var /*UnknownSlot*/:* = int(§§pop().indexOf(§§pop(),§§pop() + §§pop() + pos2));
               §§push(pos2);
               §§push(-1);
               if(_loc4_)
               {
                  §§push(-(§§pop() - 118 - 107) - 1);
               }
               if(§§pop() == §§pop())
               {
                  throw new Error("malformed evaluator, could not find [$] after [}].");
               }
               §§push(_loc2_);
               §§push(value);
               §§push(pos1);
               §§push(2);
               if(_loc3_)
               {
                  §§push(((§§pop() + 1) * 50 - 1) * 35 - 1 + 113 - 48);
               }
               var /*UnknownSlot*/:* = §§pop().slice(§§pop() + §§pop(),pos2);
               lpos = evalSequence.lastIndexOf("}");
               §§push(_loc2_);
               §§push(evalSequence);
               §§push(lpos);
               §§push(1);
               if(_loc3_)
               {
                  §§push(-((§§pop() - 16) * 66 + 97 - 1 - 1) + 1);
               }
               var /*UnknownSlot*/:* = §§pop().substring(§§pop() + §§pop());
            }
            if(lpos != evalSequence.length - 1)
            {
               §§push(_loc2_);
               §§push(evalSequence);
               §§push(lpos);
               §§push(1);
               if(_loc3_)
               {
                  §§push(-((§§pop() * 5 + 1) * 103 - 95 - 13));
               }
               var /*UnknownSlot*/:* = §§pop().substring(§§pop() + §§pop());
               §§push(tmp.indexOf(","));
               §§push(-1);
               if(_loc4_)
               {
                  §§push(-(§§pop() - 1 + 1) - 80 + 119 - 1);
               }
               if(§§pop() > §§pop())
               {
                  evaluatorsAlias = tmp.split(",");
               }
               else
               {
                  evaluatorsAlias = [tmp];
               }
               var l:int = evaluatorsAlias.length;
               §§push(_loc2_);
               §§push(0);
               if(_loc3_)
               {
                  §§push(-((§§pop() + 52 + 1) * 82) + 1);
               }
               var /*UnknownSlot*/:* = uint(§§pop());
               while(i < l)
               {
                  if(Strings.evaluators[evaluatorsAlias[i]])
                  {
                     evaluators.add(Strings.evaluators[evaluatorsAlias[i]]);
                  }
                  else
                  {
                     trace("## Warning: \"" + evaluatorsAlias[i] + "\" is not a valid evaluator ##");
                  }
                  i++;
               }
            }
            §§push(evaluators.size());
            §§push(0);
            if(_loc3_)
            {
               §§push(-§§pop() + 95 + 27 + 92 + 1);
            }
            if(§§pop() == §§pop())
            {
               evaluators.add(defaultEvaluator);
            }
            §§push(_loc2_);
            §§push(evalSequence);
            §§push(0);
            if(_loc3_)
            {
               §§push(§§pop() - 1 - 1 - 1);
            }
            var /*UnknownSlot*/:* = §§pop().substring(§§pop(),lpos);
            obj.indexes.push(evaluators.eval(evalString));
            value = value.split("${" + evalSequence + "$").join("{" + (_hiddenIndex + (obj.indexes.length - 1)) + "}");
         }
         obj.format = value;
         return obj;
      }
      
      public static function insert(param1:String, param2:int, param3:String) : String
      {
         var _loc4_:String = "";
         var _loc5_:String = "";
         §§push(param2);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() - 1 - 93 - 1) * 77 + 99 - 1);
         }
         if(§§pop() == §§pop())
         {
            return param3 + param1;
         }
         if(param2 == param1.length)
         {
            return param1 + param3;
         }
         §§push(param1);
         §§push(0);
         if(_loc6_)
         {
            §§push((-(§§pop() - 73) - 1 - 87 - 49) * 51 + 54);
         }
         _loc4_ = §§pop().substr(§§pop(),param2);
         _loc5_ = param1.substr(param2);
         return _loc4_ + param3 + _loc5_;
      }
      
      public static function padLeft(param1:String, param2:int, param3:String = " ") : String
      {
         var _loc4_:Boolean = false;
         §§push(param2);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-((-§§pop() + 1) * 64) + 103 - 1));
         }
         if(§§pop() < §§pop())
         {
            param2 = -param2;
            _loc4_ = true;
         }
         return _padHelper(param1,param2,param3,_loc4_);
      }
      
      public static function format(param1:String, ... rest) : String
      {
         var _loc11_:* = null;
         var _loc3_:Array = [];
         var _loc4_:Object = {};
         if(param1 == "")
         {
            return param1;
         }
         var _loc5_:Object = _evaluate(param1);
         if(_loc5_ != null && §§pop() == §§pop() && (rest == null || §§pop() == §§pop()))
         {
            return param1;
         }
         param1 = _loc5_.format;
         §§push(rest.length);
         §§push(1);
         if(_loc14_)
         {
            §§push(-(§§pop() + 107 + 71 + 22 + 36) - 19 - 36);
         }
         if(§§pop() >= §§pop())
         {
            §§push(rest);
            §§push(0);
            if(_loc15_)
            {
               §§push((-§§pop() - 0 + 98 + 106) * 103 * 50 - 99);
            }
            if(§§pop()[§§pop()] is Array)
            {
               §§push(_loc3_);
               §§push(rest);
               §§push(0);
               if(_loc14_)
               {
                  §§push(-((-(§§pop() + 3 - 98) - 5) * 88));
               }
               _loc3_ = §§pop().concat(§§pop()[§§pop()]);
               rest.shift();
            }
            else
            {
               §§push(rest);
               §§push(0);
               if(_loc15_)
               {
                  §§push(§§pop() + 76 + 103 + 28 + 3 + 1);
               }
               if(§§pop()[§§pop()] is Object && §§pop().String(§§pop()[§§pop()]) == "[object Object]")
               {
                  §§push(0);
                  if(_loc15_)
                  {
                     §§push(-(§§pop() + 86 - 107 - 42 + 1 - 33) - 35);
                  }
                  §§push(rest);
                  §§push(0);
                  if(_loc14_)
                  {
                     §§push(§§pop() - 1 - 1 - 96 + 48 - 50);
                  }
                  for(_loc11_ in §§pop()[§§pop()])
                  {
                     §§push(_loc4_);
                     §§push(_loc11_);
                     §§push(rest);
                     §§push(0);
                     if(_loc14_)
                     {
                        §§push(((-§§pop() - 1 + 19) * 91 + 2) * 63 * 58);
                     }
                     §§pop()[§§pop()] = §§pop()[§§pop()][_loc11_];
                  }
                  rest.shift();
               }
            }
         }
         _loc3_ = _loc3_.concat(rest);
         if(_loc3_.length - 1 >= _hiddenIndex)
         {
            trace("## Warning : indexed tokens are too big ##");
         }
         var _loc6_:int = _loc5_.indexes.length;
         §§push(0);
         if(_loc14_)
         {
            §§push((§§pop() + 94 - 1 + 70) * 116 + 94);
         }
         var _loc7_:* = §§pop();
         while(_loc7_ < _loc6_)
         {
            _loc3_[_hiddenIndex + _loc7_] = _loc5_.indexes[_loc7_];
            _loc7_++;
         }
         var _loc8_:String = "￼";
         var _loc9_:String = "�";
         §§push(indexOfAny(param1,["{{","}}"]));
         §§push(-1);
         if(_loc15_)
         {
            §§push(-(§§pop() + 1 + 7 - 1 + 18));
         }
         if(§§pop() > §§pop())
         {
            param1 = param1.split("{{{").join(_loc8_ + "{");
            param1 = param1.split("{{").join(_loc8_);
            param1 = param1.split("}}}").join("}" + _loc9_);
            param1 = param1.split("}}").join(_loc9_);
         }
         var _loc10_:String = _format(param1,_loc3_,_loc4_);
         §§push(indexOfAny(param1,[_loc8_,_loc9_]));
         §§push(-1);
         if(_loc14_)
         {
            §§push((-(§§pop() - 57) + 81 + 14 + 43 + 1) * 67);
         }
         if(§§pop() > §§pop())
         {
            _loc10_ = _loc10_.split(_loc8_).join("{");
            _loc10_ = _loc10_.split(_loc9_).join("}");
         }
         return _loc10_;
      }
   }
}
