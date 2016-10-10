package system.serializers.eden
{
   import mx.binding.Binding;
   import spark.effects.easing.IEaser;
   import spark.effects.easing.EaseInOutBase;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import system.text.parser.GenericParser;
   import spark.components.HGroup;
   import mx.graphics.SolidColorStroke;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.target;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import system.Reflection;
   import mx.graphics.RadialGradient;
   import system.Strings;
   import mx.controls.Spacer;
   import flash.utils.ByteArray;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import spark.primitives.Rect;
   import system.eden;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.TransparentButtonSkin;
   import spark.layouts.HorizontalLayout;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import system.console;
   import spark.components.Label;
   import system.serializers.§eden:release§.tracePool;
   import mx.graphics.SolidColor;
   import system.hosts.PlatformID;
   import system.Version;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import system.serializers.§eden:release§.traceGlobalPool;
   import com.enfluid.ltp.view.skins.FlatUIComponents.ScrollPane.FlatUIScrollBarThumb;
   import mx.graphics.GradientEntry;
   import mx.states.Transition;
   import flash.events.MouseEvent;
   import spark.components.supportClasses.ToggleButtonBase;
   import flash.events.Event;
   
   use namespace mx_internal;
   
   public final class ECMAScript
   {
      
      public static var comments:String = "";
      
      private static var _globalPool:Array = [];
       
      
      private var _ORC:String = "￼";
      
      private var _1char:Boolean = false;
      
      private var _inConstructor:int;
      
      private var _localPool:Array;
      
      private var _source:String;
      
      public var localscope;
      
      private var _singleValue:Boolean = true;
      
      private var _inAssignement:Boolean = false;
      
      public var pos:uint;
      
      public var ch:String;
      
      public function ECMAScript(param1:String)
      {
         _localPool = [];
         super();
         _source = param1;
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1 + 1 - 1 + 1) * 18 - 46);
         }
         §§pop().pos = §§pop();
         ch = "";
         localscope = {};
      }
      
      public static function evaluate(param1:String) : *
      {
         var _loc2_:ECMAScript = new ECMAScript(param1);
         return _loc2_.eval();
      }
      
      final function traceGlobalPool() : void
      {
         var _loc1_:* = null;
         trace("---------------------");
         trace("global pool:");
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() + 1) * 98 - 1 + 1 - 51));
         }
         for(_loc1_ in _globalPool)
         {
            trace(_loc1_ + " = " + _globalPool[_loc1_]);
         }
         trace("---------------------");
      }
      
      public final function hasMoreChar() : Boolean
      {
         return pos <= source.length - 1;
      }
      
      public final function isIdentifierPart(param1:String) : Boolean
      {
         debug("isIdentifierPart( \"" + param1 + "\" )");
         if(isIdentifierStart(param1))
         {
            return true;
         }
         if(GenericParser.isDigit(param1))
         {
            return true;
         }
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 32 - 1 - 45);
         }
         §§push(§§pop().charCodeAt(§§pop()));
         §§push(128);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 10 + 67) - 2 - 15));
         }
         if(§§pop() < §§pop())
         {
            return false;
         }
         return false;
      }
      
      final function traceGlobalPool() : void
      {
      }
      
      private final function _scanString(param1:String) : String
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         debug("scanString( " + param1 + " )");
         var _loc2_:* = "";
         if(ch == param1)
         {
            while(next() != "")
            {
               if(param1 === _loc5_)
               {
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push((§§pop() + 44 - 1 + 1) * 104 - 1);
                  }
               }
               else if("\\" === _loc5_)
               {
                  §§push(1);
                  if(_loc7_)
                  {
                     §§push(-(-§§pop() - 92) + 1);
                  }
               }
               else
               {
                  §§push(2);
                  if(_loc6_)
                  {
                     §§push(§§pop() + 1 - 100 + 66 - 1 - 1 - 115);
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     next();
                     return _loc2_;
                  case 1:
                     if("b" === _loc5_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           §§push(§§pop() * 53 - 96 - 58 + 119);
                        }
                     }
                     else if("t" === _loc5_)
                     {
                        §§push(1);
                        if(_loc7_)
                        {
                           §§push(-((§§pop() + 48) * 56 + 1));
                        }
                     }
                     else if("n" === _loc5_)
                     {
                        §§push(2);
                        if(_loc7_)
                        {
                           §§push(§§pop() - 66 - 112 - 57);
                        }
                     }
                     else if("v" === _loc5_)
                     {
                        §§push(3);
                        if(_loc7_)
                        {
                           §§push(-§§pop() * 19 - 1 - 1 - 1);
                        }
                     }
                     else if("f" === _loc5_)
                     {
                        §§push(4);
                        if(_loc6_)
                        {
                           §§push(§§pop() - 110 - 79 - 1);
                        }
                     }
                     else if("r" === _loc5_)
                     {
                        §§push(5);
                        if(_loc7_)
                        {
                           §§push(§§pop() + 30 - 61 + 98);
                        }
                     }
                     else if("\"" === _loc5_)
                     {
                        §§push(6);
                        if(_loc6_)
                        {
                           §§push(§§pop() * 59 * 51 - 1);
                        }
                     }
                     else if("\'" === _loc5_)
                     {
                        §§push(7);
                        if(_loc7_)
                        {
                           §§push(-§§pop() - 38 + 1 + 1 - 16);
                        }
                     }
                     else if("\\" === _loc5_)
                     {
                        §§push(8);
                        if(_loc7_)
                        {
                           §§push((-(§§pop() - 1 + 96) - 1) * 11 - 1);
                        }
                     }
                     else if("u" === _loc5_)
                     {
                        §§push(9);
                        if(_loc7_)
                        {
                           §§push((-(§§pop() + 117 - 1) - 37) * 76 - 80);
                        }
                     }
                     else if("x" === _loc5_)
                     {
                        §§push(10);
                        if(_loc6_)
                        {
                           §§push((§§pop() + 1) * 90 * 43 - 1 - 1);
                        }
                     }
                     else
                     {
                        §§push(11);
                        if(_loc7_)
                        {
                           §§push(-§§pop() + 50 + 52);
                        }
                     }
                     switch(§§pop())
                     {
                        case 0:
                           _loc2_ = _loc2_ + "\b";
                           break;
                        case 1:
                           _loc2_ = _loc2_ + "\t";
                           break;
                        case 2:
                           _loc2_ = _loc2_ + "\n";
                           break;
                        case 3:
                           _loc2_ = _loc2_ + "\x0b";
                           break;
                        case 4:
                           _loc2_ = _loc2_ + "\f";
                           break;
                        case 5:
                           _loc2_ = _loc2_ + "\r";
                           break;
                        case 6:
                           _loc2_ = _loc2_ + "\"";
                           break;
                        case 7:
                           _loc2_ = _loc2_ + "\'";
                           break;
                        case 8:
                           _loc2_ = _loc2_ + "\\";
                           break;
                        case 9:
                           §§push(source);
                           §§push(pos);
                           §§push(pos);
                           §§push(4);
                           if(_loc6_)
                           {
                              §§push(-((-§§pop() * 65 + 1) * 66) + 58);
                           }
                           _loc3_ = §§pop().substring(§§pop(),§§pop() + §§pop());
                           §§push(_loc2_);
                           §§push(String);
                           §§push();
                           §§push(_loc3_);
                           §§push(16);
                           if(_loc7_)
                           {
                              §§push(§§pop() * 78 + 84 - 1);
                           }
                           _loc2_ = §§pop() + §§pop().fromCharCode(§§pop().parseInt(§§pop(),§§pop()));
                           §§push();
                           §§push(pos);
                           §§push(4);
                           if(_loc6_)
                           {
                              §§push((§§pop() - 1 + 1) * 119 - 96 + 1 - 55);
                           }
                           §§pop().pos = §§pop() + §§pop();
                           break;
                        case 10:
                           §§push(source);
                           §§push(pos);
                           §§push(pos);
                           §§push(2);
                           if(_loc6_)
                           {
                              §§push((-(§§pop() + 106 + 104) - 16 + 1 + 1) * 50);
                           }
                           _loc4_ = §§pop().substring(§§pop(),§§pop() + §§pop());
                           §§push(_loc2_);
                           §§push(String);
                           §§push();
                           §§push(_loc4_);
                           §§push(16);
                           if(_loc6_)
                           {
                              §§push((-(§§pop() - 32) - 110) * 24 - 1 + 1 - 45);
                           }
                           _loc2_ = §§pop() + §§pop().fromCharCode(§§pop().parseInt(§§pop(),§§pop()));
                           §§push();
                           §§push(pos);
                           §§push(2);
                           if(_loc7_)
                           {
                              §§push((§§pop() - 57 - 66 - 114 + 30 + 0 + 52) * 18);
                           }
                           §§pop().pos = §§pop() + §§pop();
                           break;
                        default:
                           _loc2_ = _loc2_ + ch;
                     }
                     continue;
                  default:
                     if(!isLineTerminator(ch))
                     {
                        _loc2_ = _loc2_ + ch;
                     }
                     else
                     {
                        log(strings.errorLineTerminator);
                     }
                     continue;
               }
            }
         }
         log(strings.errorString);
         return "";
      }
      
      private final function _scanGlobalAssignement(param1:String) : void
      {
         var _loc2_:* = undefined;
         §§push(0);
         if(_loc12_)
         {
            §§push(--(§§pop() * 94) + 60 - 1 + 1 + 1);
         }
         var _loc9_:* = §§pop();
         var _loc10_:* = undefined;
         debug("scanGlobalAssignement( " + param1 + " )");
         var _loc3_:String = "";
         var _loc4_:* = "";
         var _loc5_:Array = _pathAsArray(param1);
         var _loc6_:String = _loc5_.pop();
         var _loc7_:Boolean = false;
         var _loc8_:int = _loc5_.length;
         while(_loc9_ < _loc8_)
         {
            if(!_loc7_)
            {
               §§push(_loc9_);
               §§push(0);
               if(_loc12_)
               {
                  §§push(-((§§pop() - 52 - 1) * 96 + 1));
               }
               if(§§pop() == §§pop())
               {
                  _loc3_ = _loc5_[_loc9_];
               }
               else
               {
                  _loc3_ = _loc3_ + ("." + _loc5_[_loc9_]);
               }
               if(Reflection.hasClassByName(_loc3_))
               {
                  _loc7_ = true;
                  _loc2_ = Reflection.getDefinitionByName(_loc3_);
               }
            }
            else
            {
               _loc4_ = _loc5_[_loc9_];
               if(isDigitNumber(_loc4_))
               {
                  _loc4_ = parseInt(_loc4_);
               }
               if(_loc2_[_loc4_] == undefined)
               {
                  return;
               }
               _loc2_ = _loc2_[_loc4_];
            }
            _loc9_++;
         }
         _scanWhiteSpace();
         if(ch == "=")
         {
            _singleValue = false;
            _inAssignement = true;
            next();
            _scanWhiteSpace();
            if(isLineTerminator(ch))
            {
               log("assignement = without RHS !");
               return;
            }
            _loc10_ = _scanValue();
            _loc2_[_loc6_] = _loc10_;
            _globalPool[param1] = _loc2_[_loc6_];
            _inAssignement = false;
         }
      }
      
      public final function isReservedKeyword(param1:String) : Boolean
      {
         debug("isReservedKeyword( \"" + param1 + "\" )");
         if(!config.strictMode)
         {
            param1 = param1.toLowerCase();
         }
         if("break" === _loc2_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(-((§§pop() + 1 + 1) * 100 - 107 + 25) * 42);
            }
         }
         else if("case" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(§§pop() - 1 - 19 - 111 - 1);
            }
         }
         else if("catch" === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push((-(§§pop() * 92) + 119) * 83 - 1);
            }
         }
         else if("continue" === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(-(-(§§pop() + 1 - 13) * 55 * 2));
            }
         }
         else if("default" === _loc2_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push(-(-((§§pop() - 109 + 115) * 29) - 80) - 1);
            }
         }
         else if("delete" === _loc2_)
         {
            §§push(5);
            if(_loc3_)
            {
               §§push(-(§§pop() - 1 - 82 - 81) - 1);
            }
         }
         else if("do" === _loc2_)
         {
            §§push(6);
            if(_loc4_)
            {
               §§push((§§pop() + 75 + 89 + 9 + 1) * 47 + 96 - 65);
            }
         }
         else if("else" === _loc2_)
         {
            §§push(7);
            if(_loc4_)
            {
               §§push(§§pop() - 1 - 1 - 1 + 105);
            }
         }
         else if("finally" === _loc2_)
         {
            §§push(8);
            if(_loc4_)
            {
               §§push(---(-(§§pop() + 78 - 1) - 0));
            }
         }
         else if("for" === _loc2_)
         {
            §§push(9);
            if(_loc3_)
            {
               §§push(-((§§pop() - 114) * 58) + 1 + 102 - 15);
            }
         }
         else if("function" === _loc2_)
         {
            §§push(10);
            if(_loc3_)
            {
               §§push(§§pop() - 1 - 59 - 22);
            }
         }
         else if("if" === _loc2_)
         {
            §§push(11);
            if(_loc4_)
            {
               §§push(--(§§pop() * 80 - 80) + 45 + 71 - 1);
            }
         }
         else if("in" === _loc2_)
         {
            §§push(12);
            if(_loc4_)
            {
               §§push(-(§§pop() + 42) + 1 - 56 - 1);
            }
         }
         else if("instanceof" === _loc2_)
         {
            §§push(13);
            if(_loc4_)
            {
               §§push(-(§§pop() * 36 - 106 + 103 + 1) - 1 - 1);
            }
         }
         else if("new" === _loc2_)
         {
            §§push(14);
            if(_loc4_)
            {
               §§push(-(§§pop() - 1 - 95 - 112));
            }
         }
         else if("return" === _loc2_)
         {
            §§push(15);
            if(_loc3_)
            {
               §§push(§§pop() + 114 - 1 + 1 - 1 - 1);
            }
         }
         else if("switch" === _loc2_)
         {
            §§push(16);
            if(_loc3_)
            {
               §§push(-(§§pop() * 89 + 1) + 12 + 47);
            }
         }
         else if("this" === _loc2_)
         {
            §§push(17);
            if(_loc3_)
            {
               §§push(((§§pop() + 1 - 91) * 33 - 56 - 78) * 11 - 1);
            }
         }
         else if("throw" === _loc2_)
         {
            §§push(18);
            if(_loc3_)
            {
               §§push((§§pop() - 1) * 60 * 55 * 113 + 2);
            }
         }
         else if("try" === _loc2_)
         {
            §§push(19);
            if(_loc3_)
            {
               §§push(-((-§§pop() + 1) * 87 - 93));
            }
         }
         else if("typeof" === _loc2_)
         {
            §§push(20);
            if(_loc3_)
            {
               §§push((--(§§pop() + 48 + 1 + 1) + 1) * 102);
            }
         }
         else if("var" === _loc2_)
         {
            §§push(21);
            if(_loc3_)
            {
               §§push(--(-(§§pop() + 1) + 1));
            }
         }
         else if("void" === _loc2_)
         {
            §§push(22);
            if(_loc3_)
            {
               §§push(-(§§pop() + 92 - 1) - 1 - 30 - 36 + 91);
            }
         }
         else if("while" === _loc2_)
         {
            §§push(23);
            if(_loc3_)
            {
               §§push(-(-§§pop() + 1) - 1 + 110);
            }
         }
         else if("with" === _loc2_)
         {
            §§push(24);
            if(_loc3_)
            {
               §§push((§§pop() - 1 + 11) * 20 * 118);
            }
         }
         else
         {
            §§push(25);
            if(_loc4_)
            {
               §§push(-(-§§pop() - 88) + 52 + 50);
            }
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
               log(Strings.format(strings.reservedKeyword,param1));
               return true;
            default:
               return false;
         }
      }
      
      final function tracePool() : void
      {
         var _loc1_:* = null;
         trace("---------------------");
         trace("local pool:");
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 107 + 42 - 1);
         }
         for(_loc1_ in _localPool)
         {
            trace(_loc1_);
         }
         trace("---------------------");
      }
      
      public function get source() : String
      {
         return _source;
      }
      
      public final function eval() : *
      {
         var _loc2_:* = undefined;
         debug("eval()");
         comments = "";
         var _loc1_:* = _ORC;
         §§push(source.length);
         §§push(1);
         if(_loc4_)
         {
            §§push((-(§§pop() * 87) - 1) * 113 - 1 + 1 + 1);
         }
         if(§§pop() == §§pop())
         {
            _1char = true;
         }
         while(hasMoreChar())
         {
            _scanSeparators();
            if(!GenericParser.isAlpha(ch))
            {
               next();
            }
            _loc2_ = _scanValue();
            _scanSeparators();
            if(_loc2_ != _ORC)
            {
               _loc1_ = _loc2_;
            }
            if(ch == " ")
            {
               ch = ";";
            }
         }
         if(_loc1_ == _ORC)
         {
            _loc1_ = undefined;
         }
         if(!_singleValue)
         {
            _loc1_ = localscope;
         }
         return _loc1_;
      }
      
      public final function getCharAt(param1:uint) : String
      {
         return source.charAt(param1);
      }
      
      private final function _scanPath() : String
      {
         debug("scanPath()");
         var _loc1_:String = "";
         var _loc2_:String = "";
         if(isIdentifierStart(ch))
         {
            _loc1_ = _loc1_ + ch;
            next();
            while(isIdentifierPart(ch) || ch == "." || ch == "[")
            {
               if(ch == "[")
               {
                  next();
                  _scanWhiteSpace();
                  if(GenericParser.isDigit(ch))
                  {
                     _loc2_ = String(_scanNumber());
                     _scanWhiteSpace();
                     _loc1_ = _loc1_ + ("." + _loc2_);
                  }
                  else if(this.ch == "\"" || this.ch == "\'")
                  {
                     _loc2_ = _scanString(ch);
                     _scanWhiteSpace();
                     _loc1_ = _loc1_ + ("." + _loc2_);
                  }
                  if(ch == "]")
                  {
                     next();
                     continue;
                  }
               }
               _loc1_ = _loc1_ + ch;
               next();
            }
         }
         debug("scanPath returns [" + _loc1_ + "]");
         return _loc1_;
      }
      
      final function tracePool() : void
      {
      }
      
      private final function _scanIdentifier() : String
      {
         debug("scanIdentifier()");
         var _loc1_:String = "";
         if(isIdentifierStart(ch))
         {
            _loc1_ = _loc1_ + ch;
            next();
            while(isIdentifierPart(ch))
            {
               _loc1_ = _loc1_ + ch;
               next();
            }
         }
         else
         {
            log(strings.errorIdentifier);
         }
         return _loc1_;
      }
      
      private final function _scanSeparators() : void
      {
         debug("scanSeparators()");
         var _loc1_:Boolean = true;
         while(_loc1_)
         {
            if("\t" === _loc2_)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(--(§§pop() - 1) - 1) * 37 - 1);
               }
            }
            else if("\x0b" === _loc2_)
            {
               §§push(1);
               if(_loc4_)
               {
                  §§push(-(§§pop() * 12 - 83 - 52) * 28);
               }
            }
            else if("\f" === _loc2_)
            {
               §§push(2);
               if(_loc3_)
               {
                  §§push(-(§§pop() - 36 + 74 + 65) * 53);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(3);
               if(_loc4_)
               {
                  §§push(--(§§pop() + 1));
               }
            }
            else if(" " === _loc2_)
            {
               §§push(4);
               if(_loc4_)
               {
                  §§push(§§pop() - 83 - 1 + 1);
               }
            }
            else if("\n" === _loc2_)
            {
               §§push(5);
               if(_loc4_)
               {
                  §§push(-(§§pop() * 36) * 41 - 33);
               }
            }
            else if("\r" === _loc2_)
            {
               §§push(6);
               if(_loc4_)
               {
                  §§push(--(§§pop() * 89 * 8 + 1 - 1) * 92);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(7);
               if(_loc3_)
               {
                  §§push(§§pop() * 98 * 61 + 66 + 21 + 14);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(8);
               if(_loc4_)
               {
                  §§push(-((§§pop() - 112) * 110));
               }
            }
            else if("/" === _loc2_)
            {
               §§push(9);
               if(_loc4_)
               {
                  §§push((§§pop() - 1 + 1 + 1 - 32) * 7 + 100);
               }
            }
            else
            {
               §§push(10);
               if(_loc4_)
               {
                  §§push(--((--§§pop() + 1 + 1) * 30));
               }
            }
            switch(§§pop())
            {
               case 0:
               case 1:
               case 2:
               case 3:
               case 4:
                  next();
                  continue;
               case 5:
               case 6:
               case 7:
               case 8:
                  next();
                  continue;
               case 9:
                  _scanComments();
                  continue;
               default:
                  _loc1_ = false;
                  continue;
            }
         }
      }
      
      private final function _pathAsArray(param1:String) : Array
      {
         var _loc2_:Array = null;
         debug("_pathAsArray( \"" + param1 + "\" )");
         §§push(param1.indexOf("."));
         §§push(-1);
         if(_loc4_)
         {
            §§push((-((§§pop() - 79) * 119) + 1 - 1) * 39 * 3);
         }
         if(§§pop() > §§pop())
         {
            _loc2_ = param1.split(".");
         }
         else
         {
            _loc2_ = [param1];
         }
         debug("_pathAsArray returns [" + param1 + "]");
         return _loc2_;
      }
      
      public final function isIdentifierStart(param1:String) : Boolean
      {
         debug("isIdentifierStart( \"" + param1 + "\" )");
         if(GenericParser.isAlpha(param1) || param1 == "_" || param1 == "$")
         {
            return true;
         }
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 113 - 1 + 118 + 81);
         }
         §§push(§§pop().charCodeAt(§§pop()));
         §§push(128);
         if(_loc3_)
         {
            §§push(-(§§pop() * 19) - 1 + 32 - 1);
         }
         if(§§pop() < §§pop())
         {
            return false;
         }
         return false;
      }
      
      public final function isValidPath(param1:String) : Boolean
      {
         var _loc3_:String = null;
         debug("isValidPath( \"" + param1 + "\" )");
         var _loc2_:Array = _pathAsArray(param1);
         §§push(0);
         if(_loc5_)
         {
            §§push(((§§pop() + 1) * 24 - 1 - 1) * 12);
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            if(isReservedKeyword(_loc3_) || isFutureReservedKeyword(_loc3_))
            {
               log(Strings.format(strings.notValidPath,param1));
               return false;
            }
            _loc4_++;
         }
         return true;
      }
      
      private final function _scanObject() : Object
      {
         var _loc2_:String = null;
         var _loc3_:* = undefined;
         debug("scanObject()");
         var _loc1_:Object = {};
         if(ch == "{")
         {
            next();
            _scanSeparators();
            if(ch == "}")
            {
               next();
               return _loc1_;
            }
            while(ch != "")
            {
               _loc2_ = _scanIdentifier();
               _scanWhiteSpace();
               if(ch != ":")
               {
                  break;
               }
               next();
               _inAssignement = true;
               _loc3_ = _scanValue();
               _inAssignement = false;
               if(!isReservedKeyword(_loc2_) && !isFutureReservedKeyword(_loc2_))
               {
                  _loc1_[_loc2_] = _loc3_;
               }
               _scanSeparators();
               if(ch == "}")
               {
                  next();
                  return _loc1_;
               }
               if(ch != ",")
               {
                  break;
               }
               next();
               _scanSeparators();
            }
         }
         log(strings.errorObject);
         return undefined;
      }
      
      public final function log(param1:String) : void
      {
         if(config.verbose)
         {
            trace(param1);
         }
      }
      
      protected final function trace(param1:String) : void
      {
         console.writeLine(param1);
      }
      
      private final function _scanRootLocalAssignement(param1:String) : void
      {
         var _loc2_:* = undefined;
         debug("scanRootLocalAssignement( " + param1 + " )");
         _scanWhiteSpace();
         if(ch == "=")
         {
            _singleValue = false;
            _inAssignement = true;
            next();
            _scanSeparators();
            if(isLineTerminator(ch))
            {
               log("assignement = without RHS !");
               return;
            }
            _loc2_ = _scanValue();
            if(_loc2_ == _ORC)
            {
               _loc2_ = config.undefineable;
            }
            localscope[param1] = _loc2_;
            _localPool[param1] = localscope[param1];
            tracePool();
            _inAssignement = false;
         }
      }
      
      public final function getChar() : String
      {
         return source.charAt(pos);
      }
      
      private final function _doesExistInLocalScope(param1:String) : Boolean
      {
         var _loc4_:* = undefined;
         var _loc5_:Boolean = false;
         debug("doesExistInLocalScope( \"" + param1 + "\" )");
         if(_localPool[param1] != undefined)
         {
            return true;
         }
         var _loc2_:* = localscope;
         var _loc3_:Array = _pathAsArray(param1);
         §§push(0);
         if(_loc8_)
         {
            §§push(-§§pop() - 1 - 5 + 34);
         }
         var _loc6_:* = §§pop();
         while(_loc6_ < _loc3_.length)
         {
            _loc5_ = false;
            _loc4_ = _loc3_[_loc6_];
            if(isDigitNumber(_loc4_))
            {
               _loc4_ = parseInt(_loc4_);
               _loc5_ = true;
            }
            if(_loc2_[_loc4_] == undefined)
            {
               return false;
            }
            if(_loc5_)
            {
               §§push(_localPool);
               §§push(_loc3_);
               §§push(0);
               if(_loc7_)
               {
                  §§push(-(§§pop() - 116 + 1 - 76 - 107));
               }
               §§pop()[§§pop().slice(§§pop(),_loc6_).join(".") + "." + _loc4_] = _loc2_[_loc4_];
            }
            _loc2_ = _loc2_[_loc4_];
            _loc6_++;
         }
         return true;
      }
      
      final function system.serializers.§eden:debug§.debug(param1:String) : void
      {
         trace(param1);
      }
      
      public final function isFutureReservedKeyword(param1:String) : Boolean
      {
         debug("isFutureReservedKeyword( \"" + param1 + "\" )");
         if(!config.strictMode)
         {
            param1 = param1.toLowerCase();
         }
         if("abstract" === _loc2_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push((§§pop() - 1 + 83 + 96) * 54 - 1 - 1);
            }
         }
         else if("boolean" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(-(§§pop() + 119 - 1 - 1 + 15) + 20 + 1);
            }
         }
         else if("byte" === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push(§§pop() * 66 - 53 + 1 - 60 - 54 + 60);
            }
         }
         else if("char" === _loc2_)
         {
            §§push(3);
            if(_loc3_)
            {
               §§push(-(-§§pop() + 58));
            }
         }
         else if("class" === _loc2_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push(§§pop() + 34 + 1 - 91);
            }
         }
         else if("const" === _loc2_)
         {
            §§push(5);
            if(_loc3_)
            {
               §§push((§§pop() + 89 - 117 - 1) * 113);
            }
         }
         else if("debugger" === _loc2_)
         {
            §§push(6);
            if(_loc4_)
            {
               §§push(-(§§pop() + 1 + 20) + 50 + 1);
            }
         }
         else if("double" === _loc2_)
         {
            §§push(7);
            if(_loc3_)
            {
               §§push(((§§pop() - 92) * 81 + 1) * 1 * 19);
            }
         }
         else if("enum" === _loc2_)
         {
            §§push(8);
            if(_loc4_)
            {
               §§push(§§pop() * 91 - 1 + 87 - 72 + 1 + 1 + 1);
            }
         }
         else if("export" === _loc2_)
         {
            §§push(9);
            if(_loc3_)
            {
               §§push(---(§§pop() - 34 + 1) - 1 + 67);
            }
         }
         else if("extends" === _loc2_)
         {
            §§push(10);
            if(_loc3_)
            {
               §§push(-(((§§pop() - 1) * 7 - 1) * 30 - 75));
            }
         }
         else if("final" === _loc2_)
         {
            §§push(11);
            if(_loc3_)
            {
               §§push(§§pop() + 22 + 99 - 1 - 80);
            }
         }
         else if("float" === _loc2_)
         {
            §§push(12);
            if(_loc3_)
            {
               §§push(§§pop() + 2 - 85 + 1);
            }
         }
         else if("goto" === _loc2_)
         {
            §§push(13);
            if(_loc3_)
            {
               §§push((§§pop() - 1) * 30 * 92 - 1);
            }
         }
         else if("implements" === _loc2_)
         {
            §§push(14);
            if(_loc4_)
            {
               §§push(-(§§pop() * 83 - 113) - 114);
            }
         }
         else if("import" === _loc2_)
         {
            §§push(15);
            if(_loc4_)
            {
               §§push(--(§§pop() - 97));
            }
         }
         else if("int" === _loc2_)
         {
            §§push(16);
            if(_loc4_)
            {
               §§push(§§pop() * 49 + 1 - 1);
            }
         }
         else if("interface" === _loc2_)
         {
            §§push(17);
            if(_loc3_)
            {
               §§push(§§pop() + 53 - 86 + 30 + 1 + 49 + 83 - 24);
            }
         }
         else if("long" === _loc2_)
         {
            §§push(18);
            if(_loc4_)
            {
               §§push(§§pop() * 18 + 1 + 70 + 56 - 1 - 1 + 70);
            }
         }
         else if("native" === _loc2_)
         {
            §§push(19);
            if(_loc3_)
            {
               §§push((--(§§pop() - 53) - 1) * 57 + 19);
            }
         }
         else if("package" === _loc2_)
         {
            §§push(20);
            if(_loc3_)
            {
               §§push(§§pop() + 96 + 23 + 89 - 1);
            }
         }
         else if("private" === _loc2_)
         {
            §§push(21);
            if(_loc3_)
            {
               §§push(§§pop() * 11 * 52 + 1 - 56 - 71);
            }
         }
         else if("protected" === _loc2_)
         {
            §§push(22);
            if(_loc4_)
            {
               §§push(--(§§pop() - 1));
            }
         }
         else if("public" === _loc2_)
         {
            §§push(23);
            if(_loc3_)
            {
               §§push((§§pop() + 1) * 52 - 1);
            }
         }
         else if("short" === _loc2_)
         {
            §§push(24);
            if(_loc4_)
            {
               §§push(-(§§pop() + 2 + 1 - 55 - 83 + 1 - 56));
            }
         }
         else if("static" === _loc2_)
         {
            §§push(25);
            if(_loc4_)
            {
               §§push(-(§§pop() + 1 + 1) + 1);
            }
         }
         else if("super" === _loc2_)
         {
            §§push(26);
            if(_loc4_)
            {
               §§push(-((§§pop() * 1 + 33) * 39) * 110);
            }
         }
         else if("synchronized" === _loc2_)
         {
            §§push(27);
            if(_loc3_)
            {
               §§push(-(§§pop() * 62 + 112) - 1);
            }
         }
         else if("throws" === _loc2_)
         {
            §§push(28);
            if(_loc3_)
            {
               §§push((§§pop() - 87 + 55 - 1) * 28 * 103);
            }
         }
         else if("transient" === _loc2_)
         {
            §§push(29);
            if(_loc4_)
            {
               §§push((§§pop() + 16 + 33 - 48) * 9);
            }
         }
         else if("volatile" === _loc2_)
         {
            §§push(30);
            if(_loc4_)
            {
               §§push(§§pop() * 40 * 63 + 1);
            }
         }
         else
         {
            §§push(31);
            if(_loc4_)
            {
               §§push(-(§§pop() + 1 - 73 - 1));
            }
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
               log(Strings.format(strings.futurReservedKeyword,param1));
               return true;
            default:
               return false;
         }
      }
      
      private final function _scanWhiteSpace() : void
      {
         debug("scanWhiteSpace()");
         var _loc1_:Boolean = true;
         while(_loc1_)
         {
            if("\t" === _loc2_)
            {
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(§§pop() + 33) - 1 - 47);
               }
            }
            else if("\x0b" === _loc2_)
            {
               §§push(1);
               if(_loc4_)
               {
                  §§push(-(-(§§pop() - 25) + 72));
               }
            }
            else if("\f" === _loc2_)
            {
               §§push(2);
               if(_loc4_)
               {
                  §§push(-(§§pop() - 66 + 1) + 103 + 1 - 16);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(3);
               if(_loc4_)
               {
                  §§push((§§pop() - 108 + 50) * 41);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(4);
               if(_loc3_)
               {
                  §§push(-§§pop() + 1 - 5 - 1 - 38);
               }
            }
            else if("/" === _loc2_)
            {
               §§push(5);
               if(_loc3_)
               {
                  §§push((-(§§pop() + 1 - 1 + 6 + 1) + 1) * 108);
               }
            }
            else
            {
               §§push(6);
               if(_loc3_)
               {
                  §§push(-§§pop() + 1 - 95 + 1 + 1);
               }
            }
            switch(§§pop())
            {
               case 0:
               case 1:
               case 2:
               case 3:
               case 4:
                  next();
                  continue;
               case 5:
                  _scanComments();
                  continue;
               default:
                  _loc1_ = false;
                  continue;
            }
         }
      }
      
      final function system.serializers.§eden:release§.debug(param1:String) : void
      {
      }
      
      private final function _doesExistInGlobalScope(param1:String) : Boolean
      {
         var _loc2_:* = undefined;
         var _loc6_:Boolean = false;
         debug("doesExistInGlobalScope( \"" + param1 + "\" )");
         if(_globalPool[param1] != undefined)
         {
            traceGlobalPool();
            return true;
         }
         §§push(param1.indexOf("."));
         §§push(-1);
         if(_loc10_)
         {
            §§push(§§pop() + 27 - 49 - 1);
         }
         if(§§pop() == §§pop())
         {
            if("decodeURI" === _loc9_)
            {
               §§push(0);
               if(_loc11_)
               {
                  §§push(-(§§pop() + 64 - 1));
               }
            }
            else if("decodeURIComponent" === _loc9_)
            {
               §§push(1);
               if(_loc10_)
               {
                  §§push((§§pop() + 1) * 64 - 88);
               }
            }
            else if("encodeURI" === _loc9_)
            {
               §§push(2);
               if(_loc10_)
               {
                  §§push(§§pop() - 110 + 1 + 1 - 68 + 112);
               }
            }
            else if("encodeURIComponent" === _loc9_)
            {
               §§push(3);
               if(_loc11_)
               {
                  §§push((§§pop() - 37) * 37 - 1);
               }
            }
            else if("isNaN" === _loc9_)
            {
               §§push(4);
               if(_loc10_)
               {
                  §§push(-(§§pop() - 1 + 114 - 1 - 1) + 1);
               }
            }
            else if("isFinite" === _loc9_)
            {
               §§push(5);
               if(_loc10_)
               {
                  §§push((§§pop() - 20) * 76 + 1);
               }
            }
            else if("parseInt" === _loc9_)
            {
               §§push(6);
               if(_loc10_)
               {
                  §§push(-((§§pop() + 116 + 16) * 45) - 1 - 112 - 1);
               }
            }
            else if("parseFloat" === _loc9_)
            {
               §§push(7);
               if(_loc11_)
               {
                  §§push((-§§pop() + 46 + 107) * 4 * 3 - 53 + 1);
               }
            }
            else if("escape" === _loc9_)
            {
               §§push(8);
               if(_loc11_)
               {
                  §§push(-(-§§pop() * 51 * 53) + 1 + 23);
               }
            }
            else if("unescape" === _loc9_)
            {
               §§push(9);
               if(_loc11_)
               {
                  §§push(§§pop() * 95 * 92 - 1 + 1 + 19);
               }
            }
            else if("isXMLName" === _loc9_)
            {
               §§push(10);
               if(_loc11_)
               {
                  §§push(-(§§pop() * 98 - 62 - 1));
               }
            }
            else
            {
               §§push(11);
               if(_loc11_)
               {
                  §§push(-((§§pop() - 1) * 91) + 45 - 1 - 60 + 1);
               }
            }
            switch(§§pop())
            {
               case 0:
                  _globalPool[param1] = decodeURI;
                  return true;
               case 1:
                  _globalPool[param1] = decodeURIComponent;
                  return true;
               case 2:
                  _globalPool[param1] = encodeURI;
                  return true;
               case 3:
                  _globalPool[param1] = encodeURIComponent;
                  return true;
               case 4:
                  _globalPool[param1] = isNaN;
                  return true;
               case 5:
                  _globalPool[param1] = isFinite;
                  return true;
               case 6:
                  _globalPool[param1] = parseInt;
                  return true;
               case 7:
                  _globalPool[param1] = parseFloat;
                  return true;
               case 8:
                  _globalPool[param1] = escape;
                  return true;
               case 9:
                  _globalPool[param1] = unescape;
                  return true;
               case 10:
                  _globalPool[param1] = isXMLName;
                  return true;
            }
         }
         var _loc3_:String = "";
         var _loc4_:* = "";
         var _loc5_:Array = _pathAsArray(param1);
         var _loc7_:Boolean = false;
         §§push(0);
         if(_loc10_)
         {
            §§push(-(((§§pop() + 1 + 13) * 25 * 113 + 95) * 72));
         }
         var _loc8_:* = §§pop();
         while(_loc8_ < _loc5_.length)
         {
            if(!_loc7_)
            {
               §§push(_loc8_);
               §§push(0);
               if(_loc10_)
               {
                  §§push(§§pop() - 1 - 15 - 1 + 1 + 1 + 33);
               }
               if(§§pop() == §§pop())
               {
                  _loc3_ = _loc5_[_loc8_];
               }
               else
               {
                  _loc3_ = _loc3_ + ("." + _loc5_[_loc8_]);
               }
               if(_globalPool[_loc3_] != undefined)
               {
                  _loc7_ = true;
                  _loc2_ = _globalPool[_loc3_];
               }
               else if(Reflection.hasClassByName(_loc3_))
               {
                  _loc7_ = true;
                  _loc2_ = Reflection.getDefinitionByName(_loc3_);
                  debug("GLOBAL POOL: " + _loc3_);
                  _globalPool[_loc3_] = _loc2_;
               }
            }
            else
            {
               _loc6_ = false;
               _loc4_ = _loc5_[_loc8_];
               if(isDigitNumber(_loc4_))
               {
                  _loc4_ = parseInt(_loc4_);
                  _loc6_ = true;
               }
               if(_loc2_[_loc4_] == undefined)
               {
                  return false;
               }
               if(_loc6_)
               {
                  debug(">> GLOBAL POOL : " + _loc3_ + "." + _loc5_[_loc8_ - 1] + "." + _loc4_);
                  _globalPool[_loc3_ + "." + _loc5_[_loc8_ - 1] + "." + _loc4_] = _loc2_[_loc4_];
               }
               else
               {
                  debug(">> GLOBAL POOL : " + _loc3_ + "." + _loc4_);
                  _globalPool[_loc3_ + "." + _loc4_] = _loc2_[_loc4_];
               }
               _loc2_ = _loc2_[_loc4_];
            }
            _loc8_++;
         }
         if(_loc7_)
         {
            return true;
         }
         return false;
      }
      
      public final function isLineTerminator(param1:String) : Boolean
      {
         debug("isLineTerminator( \"" + param1 + "\" )");
         if("\n" === _loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push((-§§pop() + 1 + 78 - 76) * 117);
            }
         }
         else if("\r" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push((-(§§pop() - 107) + 1) * 67 - 1 - 89);
            }
         }
         else if(" " === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push((§§pop() + 102) * 83 + 1);
            }
         }
         else if(" " === _loc2_)
         {
            §§push(3);
            if(_loc3_)
            {
               §§push(§§pop() + 1 - 58 + 59);
            }
         }
         else
         {
            §§push(4);
            if(_loc3_)
            {
               §§push((§§pop() - 113 - 1 + 1 + 1) * 19);
            }
         }
         switch(§§pop())
         {
            case 0:
            case 1:
            case 2:
            case 3:
               return true;
            default:
               return false;
         }
      }
      
      private final function _createPath(param1:String) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 1 + 1 - 20 + 1 + 1);
         }
         var _loc7_:* = §§pop();
         debug("_createPath( \"" + param1 + "\" )");
         var _loc2_:Array = _pathAsArray(param1);
         var _loc3_:* = _loc2_.shift();
         var _loc4_:String = "";
         if(localscope[_loc3_] == undefined)
         {
            if(isDigitNumber(_loc3_))
            {
               _loc3_ = parseInt(_loc3_);
            }
            localscope[_loc3_] = {};
            _localPool[_loc3_] = localscope[_loc3_];
         }
         §§push(_loc2_.length);
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 1 + 17) * 105 * 66 + 1);
         }
         if(§§pop() > §§pop())
         {
            _loc4_ = _loc3_;
            _loc6_ = localscope[_loc3_];
            §§push(0);
            if(_loc8_)
            {
               §§push((-§§pop() - 1) * 18 * 26 - 5);
            }
            _loc7_ = §§pop();
            while(_loc7_ < _loc2_.length)
            {
               _loc5_ = _loc2_[_loc7_];
               _loc4_ = _loc4_ + ("." + _loc5_);
               if(isDigitNumber(_loc5_))
               {
                  _loc5_ = parseInt(_loc5_);
               }
               if(_loc6_[_loc5_] == undefined)
               {
                  _loc6_[_loc5_] = {};
                  _localPool[_loc4_] = _loc6_[_loc5_];
               }
               _loc6_ = _loc6_[_loc5_];
               _loc7_++;
            }
         }
      }
      
      private final function _scanFunction(param1:String, param2:*, param3:* = null) : *
      {
         var fcnName:String = null;
         var fcnObj:* = undefined;
         var fcnObjScope:* = undefined;
         var result:* = undefined;
         var fcnPath:String = param1;
         var pool:* = param2;
         var ref:* = param3;
         debug("scanFunction( " + fcnPath + " )");
         var args:Array = [];
         var isClass:Boolean = pool[fcnPath] is Class;
         §§push(fcnPath.indexOf("."));
         §§push(-1);
         if(_loc8_)
         {
            §§push(--(§§pop() * 89) + 1 - 1);
         }
         if(§§pop() > §§pop())
         {
            fcnName = fcnPath.split(".").pop();
         }
         else
         {
            fcnName = fcnPath;
         }
         if(!isClass)
         {
            fcnPath = fcnPath.split("." + fcnName).join("");
         }
         _scanWhiteSpace();
         next();
         _scanSeparators();
         var foundEndParenthesis:Boolean = false;
         while(ch != "")
         {
            if(ch == ")")
            {
               foundEndParenthesis = true;
               next();
               break;
            }
            args.push(_scanValue());
            _scanSeparators();
            if(ch == ",")
            {
               next();
               _scanSeparators();
            }
            if(pos == source.length && ch != ")")
            {
               log("unterminated parenthesis, check your function/constructor \"" + fcnPath + "\"");
               return config.undefineable;
            }
         }
         if(!foundEndParenthesis)
         {
            log("unterminated parenthesis, check your function/constructor \"" + fcnPath + "\"");
            return config.undefineable;
         }
         if(isClass || fcnPath == fcnName)
         {
            fcnObj = pool[fcnPath];
            fcnObjScope = null;
         }
         else
         {
            fcnObj = pool[fcnPath][fcnName];
            fcnObjScope = pool[fcnPath];
         }
         if(!isClass && ref == null && fcnObj == undefined)
         {
            log(Strings.format(strings.doesNotExist,fcnPath));
            return config.undefineable;
         }
         §§push(_inConstructor);
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() * 77 * 30 + 1 + 11) * 41);
         }
         if(§§pop() > §§pop())
         {
            _inConstructor--;
            try
            {
               return Reflection.invokeClass(fcnObj as Class,args);
            }
            catch(e:Error)
            {
               log("malformed ctor - " + e.toString());
               return config.undefineable;
            }
            if(ref != null)
            {
               result = ref[fcnName].apply(ref,args);
            }
            else
            {
               result = fcnObj.apply(fcnObjScope,args);
            }
            if(ch == ".")
            {
               next();
               return _scanFunction(_scanPath(),pool,result);
            }
            if(!config.allowFunctionCall)
            {
               log(Strings.format(strings.notFunctionCallAllowed,fcnPath,args));
               return config.undefineable;
            }
            return result;
         }
         if(ref != null)
         {
            result = ref[fcnName].apply(ref,args);
         }
         else
         {
            result = fcnObj.apply(fcnObjScope,args);
         }
         if(ch == ".")
         {
            next();
            return _scanFunction(_scanPath(),pool,result);
         }
         if(!config.allowFunctionCall)
         {
            log(Strings.format(strings.notFunctionCallAllowed,fcnPath,args));
            return config.undefineable;
         }
         return result;
      }
      
      public final function isDigitNumber(param1:String) : Boolean
      {
         debug("isDigitNumber( \"" + param1 + "\" )");
         var _loc2_:Array = param1.split("");
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 62 + 23 - 1));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < _loc2_.length)
         {
            if(!GenericParser.isDigit(_loc2_[_loc3_]))
            {
               return false;
            }
            _loc3_++;
         }
         return true;
      }
      
      private final function _scanNumber() : Number
      {
         var _loc1_:Number = NaN;
         debug("scanNumber()");
         var _loc2_:* = "";
         var _loc3_:String = "";
         var _loc4_:String = "";
         var _loc5_:String = "";
         if(ch == "-")
         {
            _loc4_ = "-";
            next();
         }
         if(ch == "0")
         {
            next();
            if(ch == "x" || ch == "X")
            {
               next();
               while(GenericParser.isHexDigit(ch))
               {
                  _loc3_ = _loc3_ + ch;
                  next();
               }
               if(_loc3_ == "")
               {
                  log(strings.malformedHexadecimal);
                  return NaN;
               }
               return Number(_loc4_ + "0x" + _loc3_);
            }
            _loc2_ = _loc2_ + "0";
         }
         while(GenericParser.isDigit(ch))
         {
            _loc2_ = _loc2_ + ch;
            next();
         }
         if(ch == ".")
         {
            _loc2_ = _loc2_ + ".";
            next();
            while(GenericParser.isDigit(ch))
            {
               _loc2_ = _loc2_ + ch;
               next();
            }
         }
         if(ch == "e")
         {
            _loc2_ = _loc2_ + "e";
            _loc5_ = next();
            if(_loc5_ == "+" || _loc5_ == "-")
            {
               _loc2_ = _loc2_ + _loc5_;
               next();
            }
            while(GenericParser.isDigit(ch))
            {
               _loc2_ = _loc2_ + ch;
               next();
            }
         }
         _loc1_ = Number(_loc4_ + _loc2_);
         if(!isFinite(_loc1_))
         {
            log(strings.errorNumber);
            return NaN;
         }
         return _loc1_;
      }
      
      private final function _scanArray() : Array
      {
         debug("scanArray()");
         var _loc1_:Array = [];
         if(ch == "[")
         {
            next();
            _scanSeparators();
            if(ch == "]")
            {
               next();
               return _loc1_;
            }
            while(ch != "")
            {
               _loc1_.push(_scanValue());
               _scanSeparators();
               if(ch == "]")
               {
                  next();
                  return _loc1_;
               }
               if(ch != ",")
               {
                  break;
               }
               next();
               _scanSeparators();
            }
         }
         log(strings.errorArray);
         return undefined;
      }
      
      private final function _scanKeyword(param1:String = "") : *
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc6_:* = undefined;
         debug("scanKeyword( " + param1 + " )");
         var _loc2_:String = "";
         var _loc3_:String = _scanPath();
         _loc2_ = param1 + _loc3_;
         if(_loc2_ == "")
         {
            return _ORC;
         }
         if("undefined" === _loc7_)
         {
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() * 2 * 46 - 25 + 1 + 1 - 1));
            }
         }
         else if("null" === _loc7_)
         {
            §§push(1);
            if(_loc9_)
            {
               §§push(§§pop() + 10 + 1 - 98 - 1);
            }
         }
         else if("true" === _loc7_)
         {
            §§push(2);
            if(_loc9_)
            {
               §§push(§§pop() - 20 + 1 + 24);
            }
         }
         else if("false" === _loc7_)
         {
            §§push(3);
            if(_loc10_)
            {
               §§push((§§pop() - 1 - 1 + 53 + 84 + 1 - 25) * 96);
            }
         }
         else if("NaN" === _loc7_)
         {
            §§push(4);
            if(_loc10_)
            {
               §§push(§§pop() * 22 * 111 * 28);
            }
         }
         else if("-Infinity" === _loc7_)
         {
            §§push(5);
            if(_loc9_)
            {
               §§push(§§pop() - 109 - 1 - 41 - 1 + 1 + 53 + 1);
            }
         }
         else if("Infinity" === _loc7_)
         {
            §§push(6);
            if(_loc9_)
            {
               §§push(-((§§pop() - 1 + 118 + 67) * 110 * 73 - 45));
            }
         }
         else if("+Infinity" === _loc7_)
         {
            §§push(7);
            if(_loc9_)
            {
               §§push(-(§§pop() - 104 - 1));
            }
         }
         else if("new" === _loc7_)
         {
            §§push(8);
            if(_loc9_)
            {
               §§push(-(§§pop() - 109 + 95 + 1 - 103) * 5 + 102);
            }
         }
         else
         {
            §§push(9);
            if(_loc9_)
            {
               §§push(-(-§§pop() + 8 - 1 + 1));
            }
         }
         switch(§§pop())
         {
            case 0:
               return config.undefineable;
            case 1:
               return null;
            case 2:
               return true;
            case 3:
               return false;
            case 4:
               return NaN;
            case 5:
               return -Infinity;
            case 6:
            case 7:
               return Infinity;
            case 8:
               _inConstructor++;
               _scanWhiteSpace();
               _loc3_ = _scanPath();
            default:
               _loc4_ = false;
               _loc5_ = false;
               if(_doesExistInGlobalScope(_loc3_))
               {
                  _loc5_ = true;
               }
               else if(_doesExistInLocalScope(_loc3_))
               {
                  _loc4_ = true;
                  _singleValue = false;
               }
               else if(isValidPath(_loc3_) && !_inAssignement && !_inConstructor)
               {
                  _createPath(_loc3_);
                  _loc4_ = true;
                  _singleValue = false;
               }
               if(!_inAssignement && §§pop() > §§pop())
               {
                  if(_loc4_)
                  {
                     _scanLocalAssignement(_loc3_);
                  }
                  else if(_loc5_)
                  {
                     _scanGlobalAssignement(_loc3_);
                  }
               }
               if(!_loc4_ && !_loc5_)
               {
                  log(_loc3_ + " not found in MEMORY!");
                  return config.undefineable;
               }
               if(_loc4_)
               {
                  if(ch == "(")
                  {
                     _loc6_ = _scanFunction(_loc3_,_localPool);
                  }
                  else
                  {
                     _loc6_ = _localPool[_loc3_];
                  }
                  return param1 == "-"?-_loc6_:_loc6_;
               }
               if(_loc5_)
               {
                  if(ch == "(")
                  {
                     _loc6_ = _scanFunction(_loc3_,_globalPool);
                  }
                  else
                  {
                     _loc6_ = _globalPool[_loc3_];
                  }
                  return param1 == "-"?-_loc6_:_loc6_;
               }
               return config.undefineable;
         }
      }
      
      private final function _scanComments() : void
      {
         var _loc1_:String = null;
         debug("scanComments()");
         next();
         if("/" === _loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(--§§pop() + 94);
            }
         }
         else if("*" === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(§§pop() * 5 * 62 + 20 + 1);
            }
         }
         else if("" === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(§§pop() * 86 - 1 - 80 + 52);
            }
         }
         else
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(§§pop() - 1 + 12 - 1 + 59);
            }
         }
         switch(§§pop())
         {
            case 0:
               comments = comments + "//";
               while(!isLineTerminator(ch) && hasMoreChar())
               {
                  next();
                  comments = comments + ch;
               }
               _scanSeparators();
               break;
            case 1:
               comments = comments + "/*";
               _loc1_ = next();
               comments = comments + _loc1_;
               while(_loc1_ != "*" && ch != "/")
               {
                  _loc1_ = ch;
                  next();
                  comments = comments + ch;
                  if(ch == "")
                  {
                     log(strings.unterminatedComment);
                     break;
                  }
               }
               next();
               break;
            case 2:
            default:
               log(strings.errorComment);
         }
      }
      
      private final function _scanLocalAssignement(param1:String) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         §§push(0);
         if(_loc11_)
         {
            §§push(§§pop() + 1 - 64 - 1);
         }
         var _loc8_:* = §§pop();
         var _loc9_:* = undefined;
         debug("scanLocalAssignement( " + param1 + " )");
         §§push(param1.indexOf("."));
         §§push(-1);
         if(_loc11_)
         {
            §§push(-(-§§pop() * 102 + 20) * 67);
         }
         if(§§pop() == §§pop())
         {
            _scanRootLocalAssignement(param1);
            return;
         }
         var _loc2_:Array = _pathAsArray(param1);
         var _loc3_:* = _loc2_.shift();
         var _loc4_:* = _loc2_.pop();
         if(isDigitNumber(_loc3_))
         {
            _loc3_ = parseInt(_loc3_);
         }
         if(isDigitNumber(_loc4_))
         {
            _loc4_ = parseInt(_loc4_);
         }
         _loc6_ = localscope[_loc3_];
         var _loc7_:int = _loc2_.length;
         while(_loc8_ < _loc7_)
         {
            _loc5_ = _loc2_[_loc8_];
            if(isDigitNumber(_loc5_))
            {
               _loc5_ = parseInt(_loc5_);
            }
            if(_loc6_[_loc5_] == undefined)
            {
               return;
            }
            _loc6_ = _loc6_[_loc5_];
            _loc8_++;
         }
         _scanWhiteSpace();
         if(ch == "=")
         {
            _singleValue = false;
            _inAssignement = true;
            next();
            _scanSeparators();
            if(isLineTerminator(ch))
            {
               log("assignement = without RHS !");
               return;
            }
            _loc9_ = _scanValue();
            _loc6_[_loc4_] = _loc9_;
            _localPool[param1] = _loc6_[_loc4_];
            tracePool();
            _inAssignement = false;
         }
      }
      
      public final function next() : String
      {
         ch = getChar();
         pos++;
         return ch;
      }
      
      private final function _scanValue() : *
      {
         var _loc1_:String = null;
         debug("scanValue() - ch:" + ch);
         _scanSeparators();
         debug("after scan - ch:" + ch);
         if(pos == source.length && !_1char)
         {
            debug("prevent unecessary scan");
            if(_inAssignement)
            {
               debug("RHS is missing");
            }
            return;
         }
         if("{" === _loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(-((§§pop() - 1 + 1) * 35 + 65) + 1 + 23);
            }
         }
         else if("[" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push((--§§pop() * 93 - 1) * 108);
            }
         }
         else if("\"" === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push((-(§§pop() + 1 + 1) - 107) * 110 + 8 - 1);
            }
         }
         else if("\'" === _loc2_)
         {
            §§push(3);
            if(_loc3_)
            {
               §§push((§§pop() * 13 + 1) * 111 - 18 - 1);
            }
         }
         else if("-" === _loc2_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push((§§pop() + 1) * 68 - 88);
            }
         }
         else if("+" === _loc2_)
         {
            §§push(5);
            if(_loc4_)
            {
               §§push(-§§pop() + 23 - 78 + 118);
            }
         }
         else if("0" === _loc2_)
         {
            §§push(6);
            if(_loc4_)
            {
               §§push(--(§§pop() + 44) + 1 - 1);
            }
         }
         else if("1" === _loc2_)
         {
            §§push(7);
            if(_loc3_)
            {
               §§push(-(--(§§pop() * 88) - 17 + 1) - 1);
            }
         }
         else if("2" === _loc2_)
         {
            §§push(8);
            if(_loc4_)
            {
               §§push(-(-§§pop() * 67 + 118) * 84 - 95 - 36);
            }
         }
         else if("3" === _loc2_)
         {
            §§push(9);
            if(_loc3_)
            {
               §§push(-(-(§§pop() - 1) * 118 - 14 - 1));
            }
         }
         else if("4" === _loc2_)
         {
            §§push(10);
            if(_loc4_)
            {
               §§push(--(§§pop() * 29) + 1 + 1);
            }
         }
         else if("5" === _loc2_)
         {
            §§push(11);
            if(_loc4_)
            {
               §§push((§§pop() + 87 - 1 + 117) * 119);
            }
         }
         else if("6" === _loc2_)
         {
            §§push(12);
            if(_loc4_)
            {
               §§push((-§§pop() + 1 + 1) * 22 * 97 + 21);
            }
         }
         else if("7" === _loc2_)
         {
            §§push(13);
            if(_loc3_)
            {
               §§push(--(-(§§pop() + 1 - 27) - 1 - 24));
            }
         }
         else if("8" === _loc2_)
         {
            §§push(14);
            if(_loc3_)
            {
               §§push(--(-(§§pop() - 107) * 83) - 33 - 29);
            }
         }
         else if("9" === _loc2_)
         {
            §§push(15);
            if(_loc3_)
            {
               §§push(-(§§pop() - 1 + 1));
            }
         }
         else
         {
            §§push(16);
            if(_loc3_)
            {
               §§push(---(§§pop() - 1 - 106) * 63 - 81);
            }
         }
         switch(§§pop())
         {
            case 0:
               return _scanObject();
            case 1:
               return _scanArray();
            case 2:
            case 3:
               return _scanString(ch);
            case 4:
            case 5:
               if(GenericParser.isDigit(source.charAt(pos)))
               {
                  return _scanNumber();
               }
               _loc1_ = ch;
               next();
               return _scanKeyword(_loc1_);
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
               return _scanNumber();
            default:
               return _scanKeyword();
         }
      }
   }
}
