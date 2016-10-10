package system.serializers.eden
{
   import mx.graphics.SolidColorStroke;
   import flash.events.MouseEvent;
   import spark.components.CheckBox;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.skins.target;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkin;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import mx.controls.HTML;
   import system.text.parser.GenericParser;
   import com.enfluid.ltp.view.components.HelpButton;
   import system.Reflection;
   import system.Strings;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.EmptyTrashCommand;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.DeferredInstanceFromFunction;
   import mx.events.FlexEvent;
   import spark.layouts.VerticalLayout;
   import system.console;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.util.Logger;
   import flash.utils.ByteArray;
   import system.serializers.§eden:release§.tracePool;
   import spark.components.DataGrid;
   import com.enfluid.ltp.model.vo.SRTRequestDataVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.controller.services.Services;
   import spark.primitives.Rect;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import system.serializers.§eden:release§.traceGlobalPool;
   import com.enfluid.ltp.util.KeywordUtil;
   import spark.filters.DropShadowFilter;
   import mx.states.Transition;
   import spark.components.Label;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import mx.graphics.GradientEntry;
   import hr.binaria.asx3m.annotations.Annotation;
   import system.data.Iterator;
   import system.numeric.Mathematics;
   
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
            §§push(§§pop() - 1 - 19 - 111 - 1);
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
         if(_loc4_)
         {
            §§push((§§pop() - 65) * 119 - 1 - 14 + 1);
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
            §§push(§§pop() + 1 + 1 + 107 - 1);
         }
         §§push(§§pop().charCodeAt(§§pop()));
         §§push(128);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1) + 1) - 113);
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
                  if(_loc7_)
                  {
                     §§push(§§pop() * 36 + 100 + 53);
                  }
               }
               else if("\\" === _loc5_)
               {
                  §§push(1);
                  if(_loc6_)
                  {
                     §§push((-§§pop() - 1 - 1 - 1 - 1 + 110) * 5);
                  }
               }
               else
               {
                  §§push(2);
                  if(_loc7_)
                  {
                     §§push(((§§pop() + 96) * 44 + 95) * 35 + 57);
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
                        if(_loc7_)
                        {
                           §§push(-(§§pop() - 1 - 90) * 18 - 1);
                        }
                     }
                     else if("t" === _loc5_)
                     {
                        §§push(1);
                        if(_loc6_)
                        {
                           §§push(((§§pop() + 1) * 61 + 1) * 94);
                        }
                     }
                     else if("n" === _loc5_)
                     {
                        §§push(2);
                        if(_loc6_)
                        {
                           §§push(-(§§pop() * 28) * 17 * 10 + 1 - 107);
                        }
                     }
                     else if("v" === _loc5_)
                     {
                        §§push(3);
                        if(_loc7_)
                        {
                           §§push((§§pop() * 39 * 17 - 56 - 99) * 28);
                        }
                     }
                     else if("f" === _loc5_)
                     {
                        §§push(4);
                        if(_loc7_)
                        {
                           §§push(§§pop() + 1 - 21 + 1);
                        }
                     }
                     else if("r" === _loc5_)
                     {
                        §§push(5);
                        if(_loc6_)
                        {
                           §§push(--§§pop() * 106 + 35 - 1);
                        }
                     }
                     else if("\"" === _loc5_)
                     {
                        §§push(6);
                        if(_loc7_)
                        {
                           §§push(--(§§pop() - 1) + 99 - 100 + 1 + 1);
                        }
                     }
                     else if("\'" === _loc5_)
                     {
                        §§push(7);
                        if(_loc7_)
                        {
                           §§push((§§pop() + 1) * 92 - 1 + 112 - 1);
                        }
                     }
                     else if("\\" === _loc5_)
                     {
                        §§push(8);
                        if(_loc6_)
                        {
                           §§push(-(§§pop() - 1) + 1 - 17 + 11);
                        }
                     }
                     else if("u" === _loc5_)
                     {
                        §§push(9);
                        if(_loc6_)
                        {
                           §§push((§§pop() - 1) * 98 * 103 - 52 - 24 - 30);
                        }
                     }
                     else if("x" === _loc5_)
                     {
                        §§push(10);
                        if(_loc7_)
                        {
                           §§push((--§§pop() + 88) * 7 + 1 - 57);
                        }
                     }
                     else
                     {
                        §§push(11);
                        if(_loc7_)
                        {
                           §§push((§§pop() - 1 - 6) * 38 * 27 - 1 - 1);
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
                              §§push(-(§§pop() - 1 - 94) - 71 + 1);
                           }
                           _loc3_ = §§pop().substring(§§pop(),§§pop() + §§pop());
                           §§push(_loc2_);
                           §§push(String);
                           §§push();
                           §§push(_loc3_);
                           §§push(16);
                           if(_loc6_)
                           {
                              §§push(-(§§pop() + 83 - 1 + 46 + 46 + 1 + 117));
                           }
                           _loc2_ = §§pop() + §§pop().fromCharCode(§§pop().parseInt(§§pop(),§§pop()));
                           §§push();
                           §§push(pos);
                           §§push(4);
                           if(_loc7_)
                           {
                              §§push(((§§pop() - 1 - 100 - 111) * 101 + 1 + 1) * 114);
                           }
                           §§pop().pos = §§pop() + §§pop();
                           break;
                        case 10:
                           §§push(source);
                           §§push(pos);
                           §§push(pos);
                           §§push(2);
                           if(_loc7_)
                           {
                              §§push(-(§§pop() * 5 + 49));
                           }
                           _loc4_ = §§pop().substring(§§pop(),§§pop() + §§pop());
                           §§push(_loc2_);
                           §§push(String);
                           §§push();
                           §§push(_loc4_);
                           §§push(16);
                           if(_loc6_)
                           {
                              §§push(-((§§pop() + 79) * 81 * 97));
                           }
                           _loc2_ = §§pop() + §§pop().fromCharCode(§§pop().parseInt(§§pop(),§§pop()));
                           §§push();
                           §§push(pos);
                           §§push(2);
                           if(_loc7_)
                           {
                              §§push(§§pop() - 1 + 74 - 1 + 24 - 110 + 40);
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
         if(_loc11_)
         {
            §§push(-(§§pop() * 101 - 1 - 89) + 10);
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
               if(_loc11_)
               {
                  §§push(-(§§pop() + 10 + 33) + 25 - 64);
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
               §§push(-((§§pop() + 6 + 1 - 17) * 50 * 75) - 0);
            }
         }
         else if("case" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push((§§pop() + 25 - 110) * 32);
            }
         }
         else if("catch" === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push((§§pop() + 111 + 1) * 86);
            }
         }
         else if("continue" === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(§§pop() + 1 - 12 + 32);
            }
         }
         else if("default" === _loc2_)
         {
            §§push(4);
            if(_loc4_)
            {
               §§push(--(-§§pop() + 32));
            }
         }
         else if("delete" === _loc2_)
         {
            §§push(5);
            if(_loc4_)
            {
               §§push((§§pop() - 1 - 94 - 1) * 90 - 32);
            }
         }
         else if("do" === _loc2_)
         {
            §§push(6);
            if(_loc3_)
            {
               §§push((§§pop() + 1) * 3 * 90);
            }
         }
         else if("else" === _loc2_)
         {
            §§push(7);
            if(_loc4_)
            {
               §§push(-(-((§§pop() + 1) * 72) + 25) - 1);
            }
         }
         else if("finally" === _loc2_)
         {
            §§push(8);
            if(_loc3_)
            {
               §§push(-((§§pop() - 99) * 107 + 1) - 1 - 1);
            }
         }
         else if("for" === _loc2_)
         {
            §§push(9);
            if(_loc3_)
            {
               §§push((-(§§pop() + 1) + 101 - 1) * 105 + 46);
            }
         }
         else if("function" === _loc2_)
         {
            §§push(10);
            if(_loc3_)
            {
               §§push((§§pop() - 1 - 1 + 76 - 13) * 44);
            }
         }
         else if("if" === _loc2_)
         {
            §§push(11);
            if(_loc4_)
            {
               §§push((§§pop() + 1) * 84 - 1 + 60 - 119 + 1 + 54);
            }
         }
         else if("in" === _loc2_)
         {
            §§push(12);
            if(_loc3_)
            {
               §§push(--(§§pop() - 34 - 1) - 55);
            }
         }
         else if("instanceof" === _loc2_)
         {
            §§push(13);
            if(_loc4_)
            {
               §§push((§§pop() - 1 - 1 + 90) * 93 - 77 - 1);
            }
         }
         else if("new" === _loc2_)
         {
            §§push(14);
            if(_loc4_)
            {
               §§push(§§pop() * 110 + 1 + 1 + 1);
            }
         }
         else if("return" === _loc2_)
         {
            §§push(15);
            if(_loc3_)
            {
               §§push((§§pop() + 109 - 111 + 1) * 50 - 112);
            }
         }
         else if("switch" === _loc2_)
         {
            §§push(16);
            if(_loc3_)
            {
               §§push((§§pop() + 1) * 119 - 1 + 1 + 76);
            }
         }
         else if("this" === _loc2_)
         {
            §§push(17);
            if(_loc4_)
            {
               §§push(§§pop() + 1 + 67 - 18 + 37 + 1);
            }
         }
         else if("throw" === _loc2_)
         {
            §§push(18);
            if(_loc4_)
            {
               §§push(--(§§pop() * 25 - 77 - 1));
            }
         }
         else if("try" === _loc2_)
         {
            §§push(19);
            if(_loc3_)
            {
               §§push((§§pop() + 1 + 1) * 93 - 1 - 1 - 89);
            }
         }
         else if("typeof" === _loc2_)
         {
            §§push(20);
            if(_loc4_)
            {
               §§push(((§§pop() - 1) * 76 + 57) * 111 - 47 + 24);
            }
         }
         else if("var" === _loc2_)
         {
            §§push(21);
            if(_loc4_)
            {
               §§push((§§pop() - 68 + 39 - 32) * 115 - 1);
            }
         }
         else if("void" === _loc2_)
         {
            §§push(22);
            if(_loc3_)
            {
               §§push(§§pop() - 30 - 1 + 1 - 1);
            }
         }
         else if("while" === _loc2_)
         {
            §§push(23);
            if(_loc3_)
            {
               §§push((-(§§pop() - 1) + 1) * 23 + 1 - 1 + 1);
            }
         }
         else if("with" === _loc2_)
         {
            §§push(24);
            if(_loc4_)
            {
               §§push(-(-(§§pop() - 1) - 1 - 79) - 97 + 1);
            }
         }
         else
         {
            §§push(25);
            if(_loc3_)
            {
               §§push(-((§§pop() - 85) * 86));
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
         if(_loc5_)
         {
            §§push(-((-(§§pop() * 92 * 56) + 1) * 116));
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
            §§push(-(§§pop() + 1) - 117 + 41 + 3 + 1);
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
               if(_loc3_)
               {
                  §§push(§§pop() + 1 - 1 - 1 - 1);
               }
            }
            else if("\x0b" === _loc2_)
            {
               §§push(1);
               if(_loc3_)
               {
                  §§push(-((§§pop() - 17) * 82 - 68 + 83) - 74 + 1);
               }
            }
            else if("\f" === _loc2_)
            {
               §§push(2);
               if(_loc4_)
               {
                  §§push(§§pop() - 1 + 1 - 1 + 1);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(3);
               if(_loc4_)
               {
                  §§push(-(§§pop() - 1) + 1);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(4);
               if(_loc4_)
               {
                  §§push(--(§§pop() + 11 + 1 - 1 + 1));
               }
            }
            else if("\n" === _loc2_)
            {
               §§push(5);
               if(_loc4_)
               {
                  §§push(-§§pop() + 1 - 1 - 1 - 1);
               }
            }
            else if("\r" === _loc2_)
            {
               §§push(6);
               if(_loc4_)
               {
                  §§push(-(§§pop() + 116 - 36 + 38 + 1) - 52);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(7);
               if(_loc4_)
               {
                  §§push(-§§pop() - 73 + 1 + 1 - 99);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(8);
               if(_loc3_)
               {
                  §§push(§§pop() + 1 + 48 + 1);
               }
            }
            else if("/" === _loc2_)
            {
               §§push(9);
               if(_loc3_)
               {
                  §§push(-(§§pop() * 109) * 17 + 79 - 1 + 1 - 113);
               }
            }
            else
            {
               §§push(10);
               if(_loc4_)
               {
                  §§push((§§pop() - 40) * 47 * 19);
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
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 1);
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
            §§push((§§pop() - 1 - 1 - 22) * 6);
         }
         §§push(§§pop().charCodeAt(§§pop()));
         §§push(128);
         if(_loc2_)
         {
            §§push(-(-(-(§§pop() * 85 + 9) + 20) * 100));
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
         if(_loc6_)
         {
            §§push(-(§§pop() * 7) - 1 + 1);
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
         if(_loc7_)
         {
            §§push(--(-(-§§pop() - 1 - 1) + 12));
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
               if(_loc8_)
               {
                  §§push((§§pop() - 1 + 1 - 16 - 1 + 64) * 110 - 1);
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
               §§push(-(§§pop() * 12 + 1 - 4 - 105 + 94));
            }
         }
         else if("boolean" === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(((-§§pop() - 26) * 64 - 7) * 41 + 22);
            }
         }
         else if("byte" === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push((§§pop() + 1 - 1) * 44);
            }
         }
         else if("char" === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(§§pop() - 1 + 84 - 6 + 35 + 1);
            }
         }
         else if("class" === _loc2_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push(§§pop() + 1 + 42 + 1 - 1);
            }
         }
         else if("const" === _loc2_)
         {
            §§push(5);
            if(_loc4_)
            {
               §§push(-(§§pop() * 9 - 1) - 1);
            }
         }
         else if("debugger" === _loc2_)
         {
            §§push(6);
            if(_loc4_)
            {
               §§push(--(--§§pop() * 56) + 1 - 1);
            }
         }
         else if("double" === _loc2_)
         {
            §§push(7);
            if(_loc3_)
            {
               §§push((-(§§pop() - 36 - 1) - 1 + 1 + 1) * 52);
            }
         }
         else if("enum" === _loc2_)
         {
            §§push(8);
            if(_loc3_)
            {
               §§push(§§pop() * 99 + 0 + 67 - 1 + 5);
            }
         }
         else if("export" === _loc2_)
         {
            §§push(9);
            if(_loc4_)
            {
               §§push(-(§§pop() + 115 + 52) - 70 - 33);
            }
         }
         else if("extends" === _loc2_)
         {
            §§push(10);
            if(_loc3_)
            {
               §§push(§§pop() * 39 - 21 + 19);
            }
         }
         else if("final" === _loc2_)
         {
            §§push(11);
            if(_loc4_)
            {
               §§push((§§pop() * 5 + 53 - 13) * 17);
            }
         }
         else if("float" === _loc2_)
         {
            §§push(12);
            if(_loc4_)
            {
               §§push(§§pop() - 69 - 1 + 1 - 1 - 2 + 1 - 1);
            }
         }
         else if("goto" === _loc2_)
         {
            §§push(13);
            if(_loc4_)
            {
               §§push(§§pop() + 1 - 1 + 1 - 46);
            }
         }
         else if("implements" === _loc2_)
         {
            §§push(14);
            if(_loc4_)
            {
               §§push(§§pop() + 105 + 1 + 57);
            }
         }
         else if("import" === _loc2_)
         {
            §§push(15);
            if(_loc4_)
            {
               §§push(-((§§pop() + 76 + 56) * 91 - 13) - 41 - 1);
            }
         }
         else if("int" === _loc2_)
         {
            §§push(16);
            if(_loc4_)
            {
               §§push((-§§pop() - 1) * 102);
            }
         }
         else if("interface" === _loc2_)
         {
            §§push(17);
            if(_loc3_)
            {
               §§push(-(-(§§pop() - 1 - 1) - 111) + 1 + 1);
            }
         }
         else if("long" === _loc2_)
         {
            §§push(18);
            if(_loc4_)
            {
               §§push(-§§pop() + 1 + 1 - 1 + 1 - 64);
            }
         }
         else if("native" === _loc2_)
         {
            §§push(19);
            if(_loc3_)
            {
               §§push(---(§§pop() + 1));
            }
         }
         else if("package" === _loc2_)
         {
            §§push(20);
            if(_loc4_)
            {
               §§push((§§pop() + 54 - 82 - 107 + 1 + 7) * 55);
            }
         }
         else if("private" === _loc2_)
         {
            §§push(21);
            if(_loc3_)
            {
               §§push(§§pop() - 1 + 1 - 45 + 1 - 29);
            }
         }
         else if("protected" === _loc2_)
         {
            §§push(22);
            if(_loc4_)
            {
               §§push(--(§§pop() + 1 - 1 + 54 - 1 - 1));
            }
         }
         else if("public" === _loc2_)
         {
            §§push(23);
            if(_loc4_)
            {
               §§push(-§§pop() + 1 + 1);
            }
         }
         else if("short" === _loc2_)
         {
            §§push(24);
            if(_loc4_)
            {
               §§push(--((§§pop() - 38 + 1) * 53) + 32);
            }
         }
         else if("static" === _loc2_)
         {
            §§push(25);
            if(_loc3_)
            {
               §§push((§§pop() + 1) * 73 + 83 + 1 - 14);
            }
         }
         else if("super" === _loc2_)
         {
            §§push(26);
            if(_loc4_)
            {
               §§push(-(§§pop() + 16) + 1 - 69 + 1);
            }
         }
         else if("synchronized" === _loc2_)
         {
            §§push(27);
            if(_loc4_)
            {
               §§push(-(§§pop() + 4) - 94 - 56 - 96);
            }
         }
         else if("throws" === _loc2_)
         {
            §§push(28);
            if(_loc4_)
            {
               §§push(-§§pop() - 1 + 26 - 1 + 32);
            }
         }
         else if("transient" === _loc2_)
         {
            §§push(29);
            if(_loc3_)
            {
               §§push(§§pop() * 6 + 10 + 1 - 1 - 10);
            }
         }
         else if("volatile" === _loc2_)
         {
            §§push(30);
            if(_loc4_)
            {
               §§push((-§§pop() - 102) * 44);
            }
         }
         else
         {
            §§push(31);
            if(_loc3_)
            {
               §§push(((§§pop() + 110 - 110 - 1) * 92 + 1) * 0);
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
                  §§push(-(-(§§pop() - 5) * 55 * 52 - 1 + 63));
               }
            }
            else if("\x0b" === _loc2_)
            {
               §§push(1);
               if(_loc3_)
               {
                  §§push(((§§pop() - 92 - 1) * 87 * 44 + 1) * 45);
               }
            }
            else if("\f" === _loc2_)
            {
               §§push(2);
               if(_loc3_)
               {
                  §§push((§§pop() + 1 + 1) * 63);
               }
            }
            else if(" " === _loc2_)
            {
               §§push(3);
               if(_loc3_)
               {
                  §§push(-((§§pop() + 30) * 100));
               }
            }
            else if(" " === _loc2_)
            {
               §§push(4);
               if(_loc3_)
               {
                  §§push(-((§§pop() + 84 + 1 - 67 - 2) * 40) + 1);
               }
            }
            else if("/" === _loc2_)
            {
               §§push(5);
               if(_loc3_)
               {
                  §§push(§§pop() - 4 - 1 - 7 - 81 - 3);
               }
            }
            else
            {
               §§push(6);
               if(_loc3_)
               {
                  §§push(§§pop() + 1 - 1 - 32);
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
         if(_loc11_)
         {
            §§push(-§§pop() - 1 + 1 + 1);
         }
         if(§§pop() == §§pop())
         {
            if("decodeURI" === _loc9_)
            {
               §§push(0);
               if(_loc11_)
               {
                  §§push((-§§pop() - 77) * 111 - 1);
               }
            }
            else if("decodeURIComponent" === _loc9_)
            {
               §§push(1);
               if(_loc11_)
               {
                  §§push((§§pop() - 20) * 63 - 1);
               }
            }
            else if("encodeURI" === _loc9_)
            {
               §§push(2);
               if(_loc10_)
               {
                  §§push((§§pop() - 108 - 1 - 87) * 14 + 1);
               }
            }
            else if("encodeURIComponent" === _loc9_)
            {
               §§push(3);
               if(_loc11_)
               {
                  §§push(--(§§pop() + 1 - 1) + 11);
               }
            }
            else if("isNaN" === _loc9_)
            {
               §§push(4);
               if(_loc11_)
               {
                  §§push((-(§§pop() - 1 - 19) + 1) * 21);
               }
            }
            else if("isFinite" === _loc9_)
            {
               §§push(5);
               if(_loc11_)
               {
                  §§push((-(§§pop() * 99 - 1) - 1) * 75 + 1);
               }
            }
            else if("parseInt" === _loc9_)
            {
               §§push(6);
               if(_loc10_)
               {
                  §§push(-(-(§§pop() - 1 + 1 - 57) + 1) * 63);
               }
            }
            else if("parseFloat" === _loc9_)
            {
               §§push(7);
               if(_loc10_)
               {
                  §§push((§§pop() + 1 - 54 - 1 + 1 + 1) * 74);
               }
            }
            else if("escape" === _loc9_)
            {
               §§push(8);
               if(_loc10_)
               {
                  §§push(§§pop() - 1 - 1 + 1);
               }
            }
            else if("unescape" === _loc9_)
            {
               §§push(9);
               if(_loc11_)
               {
                  §§push(-(--§§pop() - 52 - 56));
               }
            }
            else if("isXMLName" === _loc9_)
            {
               §§push(10);
               if(_loc10_)
               {
                  §§push(§§pop() + 60 + 1 - 1 + 5);
               }
            }
            else
            {
               §§push(11);
               if(_loc10_)
               {
                  §§push(§§pop() + 1 - 1 - 68 - 1);
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
         if(_loc11_)
         {
            §§push(((§§pop() - 102) * 57 + 1 + 115) * 106 + 60);
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
                  §§push(§§pop() - 57 - 78 + 1 + 83 + 1);
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
            if(_loc4_)
            {
               §§push(§§pop() - 75 - 90 + 17);
            }
         }
         else if("\r" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push((§§pop() - 1) * 23 - 1);
            }
         }
         else if(" " === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push((-§§pop() + 1 + 87 - 15) * 88 - 1);
            }
         }
         else if(" " === _loc2_)
         {
            §§push(3);
            if(_loc3_)
            {
               §§push(--§§pop() + 1);
            }
         }
         else
         {
            §§push(4);
            if(_loc3_)
            {
               §§push(-(((§§pop() - 1) * 5 - 1 + 1) * 77) - 47);
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
         if(_loc8_)
         {
            §§push(-§§pop() * 76 - 1);
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
         if(_loc8_)
         {
            §§push(-(§§pop() - 1 + 46 + 1));
         }
         if(§§pop() > §§pop())
         {
            _loc4_ = _loc3_;
            _loc6_ = localscope[_loc3_];
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() + 1 + 34 + 1);
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
         if(_loc7_)
         {
            §§push(-((§§pop() - 1) * 28) + 1);
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
         if(_loc8_)
         {
            §§push(--(-(§§pop() - 1) - 1) + 84 - 104);
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
         if(_loc5_)
         {
            §§push(-((-§§pop() - 71 + 61 + 1) * 112));
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
               §§push((§§pop() + 1 - 3) * 58 + 2);
            }
         }
         else if("null" === _loc7_)
         {
            §§push(1);
            if(_loc10_)
            {
               §§push(-((§§pop() + 87 - 1) * 98) + 1 - 50);
            }
         }
         else if("true" === _loc7_)
         {
            §§push(2);
            if(_loc9_)
            {
               §§push((§§pop() - 88) * 84 + 83 - 76);
            }
         }
         else if("false" === _loc7_)
         {
            §§push(3);
            if(_loc9_)
            {
               §§push(-(-(§§pop() - 2) * 98 * 13 - 8));
            }
         }
         else if("NaN" === _loc7_)
         {
            §§push(4);
            if(_loc9_)
            {
               §§push(---(-§§pop() + 71) * 108 + 1);
            }
         }
         else if("-Infinity" === _loc7_)
         {
            §§push(5);
            if(_loc9_)
            {
               §§push(-(§§pop() - 1 + 1 - 51) - 1 + 1);
            }
         }
         else if("Infinity" === _loc7_)
         {
            §§push(6);
            if(_loc10_)
            {
               §§push(§§pop() - 32 - 1 - 45);
            }
         }
         else if("+Infinity" === _loc7_)
         {
            §§push(7);
            if(_loc9_)
            {
               §§push(-(-(§§pop() * 10 + 67) - 2 - 15));
            }
         }
         else if("new" === _loc7_)
         {
            §§push(8);
            if(_loc9_)
            {
               §§push((-(§§pop() * 38) * 65 + 1) * 66);
            }
         }
         else
         {
            §§push(9);
            if(_loc10_)
            {
               §§push(---§§pop() * 78 + 84 - 1);
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
               §§push((§§pop() + 1) * 119 - 96 + 1 - 55 - 1);
            }
         }
         else if("*" === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(-(-§§pop() + 104));
            }
         }
         else if("" === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push((§§pop() + 1 + 1) * 50 + 49);
            }
         }
         else
         {
            §§push(3);
            if(_loc4_)
            {
               §§push((-§§pop() - 110) * 24 - 1 + 1);
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
         if(_loc10_)
         {
            §§push(§§pop() + 1 - 57 - 66 - 114 + 30 + 0 + 52);
         }
         var _loc8_:* = §§pop();
         var _loc9_:* = undefined;
         debug("scanLocalAssignement( " + param1 + " )");
         §§push(param1.indexOf("."));
         §§push(-1);
         if(_loc10_)
         {
            §§push((§§pop() - 1 - 1) * 53 - 96 - 58 + 119);
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
               §§push(-(§§pop() * 56 + 1) + 20 - 66 - 112);
            }
         }
         else if("[" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(-(§§pop() - 32) * 19 - 1 - 1);
            }
         }
         else if("\"" === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(-§§pop() - 110 - 79);
            }
         }
         else if("\'" === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(§§pop() + 78 + 37 - 12 + 1);
            }
         }
         else if("-" === _loc2_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push(§§pop() * 59 * 51 - 1);
            }
         }
         else if("+" === _loc2_)
         {
            §§push(5);
            if(_loc4_)
            {
               §§push(-§§pop() - 38 + 1 + 1 - 16);
            }
         }
         else if("0" === _loc2_)
         {
            §§push(6);
            if(_loc4_)
            {
               §§push((-(§§pop() - 1 + 96) - 1) * 11 - 1);
            }
         }
         else if("1" === _loc2_)
         {
            §§push(7);
            if(_loc4_)
            {
               §§push((-(§§pop() + 117 - 1) - 37) * 76 - 80);
            }
         }
         else if("2" === _loc2_)
         {
            §§push(8);
            if(_loc3_)
            {
               §§push((§§pop() + 1) * 90 * 43 - 1 - 1);
            }
         }
         else if("3" === _loc2_)
         {
            §§push(9);
            if(_loc4_)
            {
               §§push(-§§pop() + 50 + 52);
            }
         }
         else if("4" === _loc2_)
         {
            §§push(10);
            if(_loc3_)
            {
               §§push((§§pop() + 44 - 1 + 1) * 104 - 1);
            }
         }
         else if("5" === _loc2_)
         {
            §§push(11);
            if(_loc4_)
            {
               §§push(-(-§§pop() - 92) + 1);
            }
         }
         else if("6" === _loc2_)
         {
            §§push(12);
            if(_loc3_)
            {
               §§push(§§pop() + 1 - 100 + 66 - 1 - 1 - 115);
            }
         }
         else if("7" === _loc2_)
         {
            §§push(13);
            if(_loc4_)
            {
               §§push(---(§§pop() + 95));
            }
         }
         else if("8" === _loc2_)
         {
            §§push(14);
            if(_loc3_)
            {
               §§push(§§pop() - 1 + 1 + 1);
            }
         }
         else if("9" === _loc2_)
         {
            §§push(15);
            if(_loc4_)
            {
               §§push(-((§§pop() - 52 - 1) * 96 + 1));
            }
         }
         else
         {
            §§push(16);
            if(_loc4_)
            {
               §§push((-§§pop() + 1 + 1) * 100 - 107 + 25);
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
