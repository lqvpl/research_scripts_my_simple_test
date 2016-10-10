package system
{
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.SelectColumnsCallout;
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Values;
   import mx.controls.Alert;
   import hr.binaria.asx3m.mapper.IMapper;
   import mx.graphics.GradientEntry;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import system.comparators.StringComparator;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.controller.rankchecker.DeleteRankEntryCommand;
   import com.enfluid.ltp.controller.rankchecker.SaveRankItemsCommand;
   import com.enfluid.ltp.controller.rankchecker.ReadRanksXMLCommand;
   import flash.events.Event;
   import com.enfluid.ltp.util.CSVStringUtils;
   import system.evaluators.MultiEvaluator;
   import system.evaluators.EdenEvaluator;
   import com.enfluid.ltp.util.Logger;
   import com.photon.controller.PhotonCommand;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import mx.binding.Binding;
   import spark.effects.easing.IEaser;
   import spark.effects.easing.EaseInOutBase;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   
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
            §§push(--(§§pop() - 26) * 93);
         }
      }
      
      public function Strings()
      {
         super();
      }
      
      private static function _trimHelper(param1:String, param2:Array, param3:Boolean = false, param4:Boolean = false) : String
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 26 - 85 - 1);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(((§§pop() * 106 - 27) * 13 + 1) * 10 * 82);
         }
         var _loc6_:* = §§pop();
         if(param3)
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(§§pop() + 1 - 1 - 65);
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
               if(_loc7_)
               {
                  §§push((§§pop() + 89 + 94) * 15 - 18);
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
               §§push((§§pop() - 98 - 23 - 1 + 27 - 117 + 111) * 27);
            }
            §§push(_loc6_);
            §§push(1);
            if(_loc7_)
            {
               §§push(((§§pop() * 11 + 1) * 117 + 1 + 118) * 20);
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
         if(_loc5_)
         {
            §§push(§§pop() * 28 - 19 - 20 + 1 + 1);
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
         if(_loc7_)
         {
            §§push(-(-§§pop() + 85) + 1 - 38);
         }
         var _loc5_:int = §§pop().floor(§§pop() / §§pop());
         return repeat(param3,_loc5_) + param1 + repeat(param3,param2 - _loc4_ - _loc5_);
      }
      
      private static function _format(param1:String, param2:Array, param3:Object, param4:String = " ") : String
      {
         var ch:String = null;
         §§push(_loc5_);
         §§push(0);
         if(_loc7_)
         {
            §§push(---§§pop());
         }
         var /*UnknownSlot*/:* = §§pop();
         var stringvalue:String = param1;
         var indexed:Array = param2;
         var named:Object = param3;
         var paddingChar:String = param4;
         var parseExpression:Function = function(param1:String):String
         {
            §§push(0);
            if(_loc9_)
            {
               §§push(--(-(§§pop() - 77 - 1) - 1 - 76));
            }
            var _loc7_:* = §§pop();
            §§push(0);
            if(_loc9_)
            {
               §§push(----(§§pop() + 1) - 30);
            }
            var _loc8_:* = §§pop();
            var _loc2_:String = "";
            §§push(0);
            if(_loc9_)
            {
               §§push(-((-§§pop() + 1 - 1 - 1 + 23) * 13));
            }
            var _loc3_:* = §§pop();
            var _loc4_:Boolean = false;
            var _loc5_:String = paddingChar;
            §§push(indexOfAny(param1,[",",":"]));
            §§push(-1);
            if(_loc9_)
            {
               §§push(-((§§pop() + 47 - 1) * 83) - 27 - 1);
            }
            if(§§pop() > §§pop())
            {
               _loc7_ = int(param1.indexOf(","));
               §§push(_loc7_);
               §§push(-1);
               if(_loc10_)
               {
                  §§push(§§pop() * 99 - 50 - 21 - 55 + 1 - 1 + 1);
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
                  §§push((§§pop() - 12) * 54 - 1 - 45 + 1 - 1);
               }
               if(§§pop() == §§pop())
               {
                  §§push();
                  §§push(param1);
                  §§push(_loc7_);
                  §§push(1);
                  if(_loc9_)
                  {
                     §§push(§§pop() - 1 - 89 - 58 - 1);
                  }
                  _loc3_ = int(§§pop().int(§§pop().substr(§§pop() + §§pop())));
               }
               else
               {
                  §§push();
                  §§push(param1);
                  §§push(_loc7_);
                  §§push(1);
                  if(_loc9_)
                  {
                     §§push(-((§§pop() * 82 - 1 + 1) * 16 + 96));
                  }
                  _loc3_ = int(§§pop().int(§§pop().substring(§§pop() + §§pop(),_loc8_)));
                  §§push(param1);
                  §§push(_loc8_);
                  §§push(1);
                  if(_loc9_)
                  {
                     §§push(--§§pop() - 22 - 1);
                  }
                  _loc5_ = §§pop().substr(§§pop() + §§pop());
               }
               _loc4_ = true;
               §§push(param1);
               §§push(0);
               if(_loc9_)
               {
                  §§push((-(-§§pop() + 27) - 1 - 1) * 37 - 36);
               }
               param1 = §§pop().substring(§§pop(),_loc7_);
            }
            §§push(param1.split(""));
            §§push(0);
            if(_loc9_)
            {
               §§push(((§§pop() + 36) * 23 * 117 * 55 - 85) * 25 * 54);
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
               if(_loc9_)
               {
                  §§push(§§pop() - 13 + 74 + 13 + 117 + 1);
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
            §§push(§§pop() + 6 - 1 + 60 - 28 + 1);
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
         if(_loc10_)
         {
            §§push((§§pop() + 9 - 108) * 52 - 82);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(((§§pop() + 101 + 16 - 1) * 44 - 104) * 100);
         }
         var _loc6_:* = §§pop();
         if(param2 == null)
         {
            throw new ArgumentError("Strings.lastIndexOfAny failed with an empty \'anyOf\' Array.");
         }
         if(param1 == null || §§pop() == §§pop())
         {
            §§push(-1);
            if(_loc9_)
            {
               return --((-§§pop() + 1) * 10);
            }
         }
         if(isNaN(param4) || §§pop() < §§pop())
         {
            §§push(2147483647);
            if(_loc9_)
            {
               §§push(-(-§§pop() - 35 + 21));
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
               §§push(§§pop() + 1 - 1 + 1 - 1 - 9);
            }
            if(§§pop() < §§pop())
            {
               §§push(-1);
               if(_loc9_)
               {
                  return -(§§pop() + 29) + 92;
               }
            }
         }
         §§push(param3 - param4);
         §§push(1);
         if(_loc10_)
         {
            §§push((§§pop() * 34 - 6) * 6);
         }
         var _loc7_:* = int(§§pop() + §§pop());
         §§push(_loc7_);
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() - 1 + 78 - 74 - 34);
         }
         if(§§pop() < §§pop())
         {
            §§push(0);
            if(_loc10_)
            {
               §§push((-§§pop() - 57 + 1 - 1) * 45 - 96);
            }
            _loc7_ = §§pop();
         }
         §§push(param1);
         §§push(_loc7_);
         §§push(param3);
         §§push(1);
         if(_loc10_)
         {
            §§push((-(-§§pop() * 52 - 11) + 46) * 42 - 1);
         }
         param1 = §§pop().slice(§§pop(),§§pop() + §§pop());
         var _loc8_:uint = param2.length;
         §§push(0);
         if(_loc10_)
         {
            §§push(-(-(§§pop() - 1 - 1) + 1 + 1));
         }
         _loc5_ = §§pop();
         while(_loc5_ < _loc8_)
         {
            _loc6_ = int(param1.lastIndexOf(param2[_loc5_],param3));
            §§push(_loc6_);
            §§push(-1);
            if(_loc10_)
            {
               §§push((§§pop() - 1 - 1 - 1 - 108 - 1) * 23);
            }
            if(§§pop() > §§pop())
            {
               return _loc6_ + _loc7_;
            }
            _loc5_++;
         }
         §§push(-1);
         if(_loc10_)
         {
            §§push((§§pop() - 1) * 71 + 3 + 1);
         }
         return §§pop();
      }
      
      public static function repeat(param1:String = "", param2:uint = 0) : String
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(--((§§pop() - 25 + 1) * 42) * 12 + 1);
         }
         var _loc4_:uint = §§pop();
         var _loc3_:String = "";
         §§push(param2);
         §§push(0);
         if(_loc5_)
         {
            §§push((-(§§pop() + 57) + 116) * 5 + 1 + 91 - 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() - 119 - 1 - 54);
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
         if(_loc4_)
         {
            §§push(-(-(§§pop() - 1) - 1));
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
            §§push((§§pop() + 17 + 95) * 92 + 12);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() - 1 - 53 + 1 + 1 - 53) * 13 * 78);
         }
         var _loc6_:* = §§pop();
         if(param1 == null || param1 == "")
         {
            §§push(-1);
            if(_loc7_)
            {
               return --((§§pop() - 83 - 86) * 44) - 102;
            }
         }
         §§push(param3);
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-§§pop() * 14 * 64));
         }
         if(§§pop() < §§pop())
         {
            §§push(0);
            if(_loc8_)
            {
               §§push((§§pop() + 17 + 1) * 7 - 110 - 1 + 62);
            }
            param3 = §§pop();
         }
         §§push(param4);
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 15 - 78 + 53));
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
            if(_loc8_)
            {
               §§push(-((-§§pop() + 1 - 3) * 89) - 46 + 1);
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
            §§push(-(§§pop() - 37) + 1);
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
            §§push(-(-§§pop() + 18 + 1 + 1) - 22 + 43);
         }
         var _loc4_:* = §§pop();
         var _loc3_:Array = [];
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-§§pop() - 1));
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
         if(_loc5_)
         {
            §§push(§§pop() + 1 - 105 - 8 + 63 - 1 + 1);
         }
         if(§§pop() > §§pop())
         {
            §§push(param3);
            §§push(0);
            if(_loc5_)
            {
               §§push((§§pop() + 1 + 1 + 1) * 59 - 1);
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
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 + 1) * 119));
         }
         §§push(§§pop().charAt(§§pop()));
         §§push(param2);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-§§pop() + 23 - 1));
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
            §§push((§§pop() - 1 + 5) * 49 - 1 + 6);
         }
         §§push(§§pop().compare(§§pop().substr(§§pop(),param2.length),param2));
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 1 + 1 + 25 + 1) * 98 - 1);
         }
         return §§pop() == §§pop();
      }
      
      private static function _evaluate(param1:String) : Object
      {
         §§push(_loc2_);
         §§push(0);
         if(_loc3_)
         {
            §§push(---(-§§pop() - 1) - 1 + 1);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 114 + 1 - 1);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 86 - 1 + 1);
         }
         var /*UnknownSlot*/:* = §§pop();
         var tmp:String = null;
         var evaluatorsAlias:Array = null;
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push((--§§pop() + 1) * 40 - 1 - 31 + 1);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push((-(§§pop() - 1 - 86) + 1) * 60 - 1);
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
            if(_loc6_)
            {
               §§push((§§pop() - 5 - 1 - 49 - 52) * 0 + 1);
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
               §§push(-(--(§§pop() - 91 - 62) - 42) * 84);
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
            if(_loc4_)
            {
               §§push((-(§§pop() * 69) * 79 + 54 - 103 + 118) * 79);
            }
            var /*UnknownSlot*/:* = int(§§pop().indexOf(§§pop(),§§pop() + §§pop()));
            §§push(pos2);
            §§push(-1);
            if(_loc4_)
            {
               §§push(((§§pop() - 38 - 52) * 47 + 1 + 1) * 31 + 1);
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
               §§push(-(-(§§pop() + 66) * 61) + 1);
            }
            var /*UnknownSlot*/:* = §§pop().slice(§§pop() + §§pop(),pos2);
            var lpos:int = evalSequence.lastIndexOf("}");
            §§push(_loc2_);
            §§push(evalSequence);
            §§push(lpos);
            §§push(1);
            if(_loc4_)
            {
               §§push(§§pop() + 54 + 1 + 1);
            }
            var /*UnknownSlot*/:* = §§pop().substring(§§pop() + §§pop());
            while(!isValid(inBetween))
            {
               §§push(_loc2_);
               §§push(value);
               §§push("$");
               §§push(pos1);
               §§push(2);
               if(_loc3_)
               {
                  §§push(-(§§pop() + 1 + 40) - 1);
               }
               var /*UnknownSlot*/:* = int(§§pop().indexOf(§§pop(),§§pop() + §§pop() + pos2));
               §§push(pos2);
               §§push(-1);
               if(_loc4_)
               {
                  §§push(-(§§pop() + 1 - 10) - 1 - 1 + 1);
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
                  §§push(-(§§pop() + 11) - 1 + 1 - 1 + 58);
               }
               var /*UnknownSlot*/:* = §§pop().slice(§§pop() + §§pop(),pos2);
               lpos = evalSequence.lastIndexOf("}");
               §§push(_loc2_);
               §§push(evalSequence);
               §§push(lpos);
               §§push(1);
               if(_loc3_)
               {
                  §§push((§§pop() + 1 + 1) * 6 - 63);
               }
               var /*UnknownSlot*/:* = §§pop().substring(§§pop() + §§pop());
            }
            if(lpos != evalSequence.length - 1)
            {
               §§push(_loc2_);
               §§push(evalSequence);
               §§push(lpos);
               §§push(1);
               if(_loc4_)
               {
                  §§push(((§§pop() * 100 - 1) * 119 - 66 - 1) * 68 - 1);
               }
               var /*UnknownSlot*/:* = §§pop().substring(§§pop() + §§pop());
               §§push(tmp.indexOf(","));
               §§push(-1);
               if(_loc4_)
               {
                  §§push((-§§pop() + 1) * 86);
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
               if(_loc4_)
               {
                  §§push((-(§§pop() + 1 + 1) - 1 - 14) * 79 + 1);
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
            if(_loc4_)
            {
               §§push(--(((-§§pop() - 56) * 88 + 110) * 76));
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
               §§push(-(§§pop() * 19 - 1 + 1) - 1 + 83 + 1);
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
            §§push(-(§§pop() - 12 + 61 - 21 + 53) - 1);
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
            §§push(§§pop() + 1 + 1 + 46 - 1 + 1 - 38);
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
         if(_loc5_)
         {
            §§push(-(§§pop() + 101 - 104));
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
            §§push((§§pop() + 52) * 97 + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(rest);
            §§push(0);
            if(_loc14_)
            {
               §§push((-§§pop() + 114 + 1) * 109 + 1 - 75 - 66);
            }
            if(§§pop()[§§pop()] is Array)
            {
               §§push(_loc3_);
               §§push(rest);
               §§push(0);
               if(_loc15_)
               {
                  §§push(§§pop() - 26 - 1 - 1);
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
                  §§push(-(-§§pop() - 81 - 35) + 76 + 104);
               }
               if(§§pop()[§§pop()] is Object && §§pop().String(§§pop()[§§pop()]) == "[object Object]")
               {
                  §§push(0);
                  if(_loc15_)
                  {
                     §§push(-(§§pop() + 1) + 1 + 1);
                  }
                  §§push(rest);
                  §§push(0);
                  if(_loc14_)
                  {
                     §§push((-(§§pop() - 48) - 8 - 73 + 1) * 105);
                  }
                  for(_loc11_ in §§pop()[§§pop()])
                  {
                     §§push(_loc4_);
                     §§push(_loc11_);
                     §§push(rest);
                     §§push(0);
                     if(_loc15_)
                     {
                        §§push(-(§§pop() - 88 + 43) - 1);
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
            §§push(--((§§pop() - 70) * 48 * 113));
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
            §§push((-(§§pop() - 1) + 74 + 118 + 84) * 35);
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
            §§push((§§pop() + 73) * 5 + 1);
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
