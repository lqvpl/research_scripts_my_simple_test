package system
{
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.states.AddItems;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import mx.events.FlexEvent;
   import spark.components.HGroup;
   import mx.controls.Spacer;
   import hr.binaria.asx3m.io.xml.E4XWriter;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import flash.filesystem.File;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import system.data.maps.HashMap;
   import mx.collections.ArrayCollection;
   import spark.layouts.VerticalLayout;
   import mx.graphics.GradientEntry;
   import spark.primitives.Rect;
   import com.hurlant.crypto.symmetric.ICipher;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.ECBMode;
   import com.hurlant.crypto.symmetric.BlowFishKey;
   import com.hurlant.util.Base64;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import spark.components.TextArea;
   import flash.events.EventDispatcher;
   import system.serializers.§eden:release§.debug;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import flash.utils.ByteArray;
   
   use namespace bi_internal;
   
   public final class Char
   {
      
      private static var _ch:system.Char = new system.Char("");
      
      public static const space:system.Char = new system.Char(" ");
      
      public static const STX:system.Char = new system.Char("\x02");
      
      public static const quotationMarks:system.Char = new system.Char("\"");
      
      public static const commercialAt:system.Char = new system.Char("@");
      
      public static const SUB:system.Char = new system.Char("\x1a");
      
      public static const exclamationPoint:system.Char = new system.Char("!");
      
      public static const apostrophe:system.Char = new system.Char("\'");
      
      public static const openingBracket:system.Char = new system.Char("[");
      
      public static const closingBracket:system.Char = new system.Char("]");
      
      public static const graveAccent:system.Char = new system.Char("`");
      
      public static const greaterThen:system.Char = new system.Char(">");
      
      public static const RS:system.Char = new system.Char("\x1e");
      
      public static const percent:system.Char = new system.Char("%");
      
      public static const BS:system.Char = new system.Char("\b");
      
      public static const ESC:system.Char = new system.Char("\x1b");
      
      public static const SI:system.Char = new system.Char("\x0f");
      
      public static const tilde:system.Char = new system.Char("~");
      
      private static var _alphabeticsUpper:Array;
      
      public static const SO:system.Char = new system.Char("\x0e");
      
      public static const colon:system.Char = new system.Char(":");
      
      public static const closingParenthesis:system.Char = new system.Char(")");
      
      public static const NUL:system.Char = new system.Char("\x00");
      
      public static const circumflex:system.Char = new system.Char("^");
      
      public static const ACK:system.Char = new system.Char("\x06");
      
      public static const SOH:system.Char = new system.Char("\x01");
      
      public static const CR:system.Char = new system.Char("\r");
      
      public static const BEL:system.Char = new system.Char("\x07");
      
      public static const asterisk:system.Char = new system.Char("*");
      
      public static const ETB:system.Char = new system.Char("\x17");
      
      public static const ampersand:system.Char = new system.Char("&");
      
      public static const minus:system.Char = new system.Char("-");
      
      private static var _alphabetic:String = "abcdefghijklmnopqrstuvwxyz";
      
      public static const TAB:system.Char = new system.Char("\t");
      
      public static const slash:system.Char = new system.Char("/");
      
      public static const LF:system.Char = new system.Char("\n");
      
      public static const closingBrace:system.Char = new system.Char("}");
      
      private static var _alphabetics:Array;
      
      public static const ETX:system.Char = new system.Char("\x03");
      
      public static const DC1:system.Char = new system.Char("\x11");
      
      public static const DC2:system.Char = new system.Char("\x12");
      
      public static const DC3:system.Char = new system.Char("\x13");
      
      public static const DC4:system.Char = new system.Char("\x14");
      
      public static const semiColon:system.Char = new system.Char(";");
      
      public static const dollarSign:system.Char = new system.Char("$");
      
      public static const US:system.Char = new system.Char("\x1f");
      
      public static const plus:system.Char = new system.Char("+");
      
      public static const numberSign:system.Char = new system.Char("#");
      
      public static const SYN:system.Char = new system.Char("\x16");
      
      public static const pipe:system.Char = new system.Char("|");
      
      public static const EM:system.Char = new system.Char("\x19");
      
      public static const CAN:system.Char = new system.Char("\x18");
      
      public static var controls:Array = [NUL,SOH,STX,ETX,EOT,ENQ,ACK,BEL,BS,TAB,LF,VT,FF,CR,SO,SI,DLE,DC1,DC2,DC3,DC4,NAK,SYN,ETB,CAN,EM,SUB,ESC,FS,GS,RS,US,DEL];
      
      public static const openingBrace:system.Char = new system.Char("{");
      
      public static const DLE:system.Char = new system.Char("\x10");
      
      public static const VT:system.Char = new system.Char("\x0b");
      
      public static const equals:system.Char = new system.Char("=");
      
      public static const FF:system.Char = new system.Char("\f");
      
      public static const period:system.Char = new system.Char(".");
      
      public static const ENQ:system.Char = new system.Char("\x05");
      
      public static const underline:system.Char = new system.Char("_");
      
      public static const FS:system.Char = new system.Char("\x1c");
      
      public static const questionMark:system.Char = new system.Char("?");
      
      public static const comma:system.Char = new system.Char(",");
      
      public static const lessThan:system.Char = new system.Char("<");
      
      public static var symbols:Array = [space,exclamationPoint,quotationMarks,numberSign,dollarSign,percent,ampersand,apostrophe,openingParenthesis,closingParenthesis,asterisk,plus,comma,minus,period,slash,colon,semiColon,lessThan,equals,greaterThen,questionMark,commercialAt,openingBracket,backslash,closingBracket,circumflex,underline,graveAccent,openingBrace,pipe,closingBrace,tilde];
      
      public static const openingParenthesis:system.Char = new system.Char("(");
      
      public static const DEL:system.Char = new system.Char("");
      
      public static const GS:system.Char = new system.Char("\x1d");
      
      public static const EOT:system.Char = new system.Char("\x04");
      
      public static const backslash:system.Char = new system.Char("\\");
      
      public static const NAK:system.Char = new system.Char("\x15");
       
      
      private var _c:String;
      
      public function Char(param1:String = "", param2:uint = 0)
      {
         super();
         _c = param1.charAt(param2);
      }
      
      public static function isLetterOrDigit(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isLetterOrDigit();
      }
      
      public static function get alphabeticsUpper() : Array
      {
         if(_alphabeticsUpper)
         {
            return _alphabeticsUpper;
         }
         _alphabeticsUpper = Strings.splitToChars(_alphabetic,"toUpperCase");
         return _alphabeticsUpper;
      }
      
      public static function isHexDigit(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isHexDigit();
      }
      
      public static function isWhiteSpace(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isWhiteSpace();
      }
      
      public static function isASCII(param1:String, param2:uint = 0, param3:Boolean = false) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isASCII(param3);
      }
      
      public static function get alphabetics() : Array
      {
         if(_alphabetics)
         {
            return _alphabetics;
         }
         _alphabetics = Strings.splitToChars(_alphabetic);
         return _alphabetics;
      }
      
      public static function isUnicode(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isUnicode();
      }
      
      public static function isSymbol(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isSymbol();
      }
      
      public static function isContained(param1:String, param2:uint = 0, param3:String = "") : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isContained(param3);
      }
      
      public static function isDigit(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isDigit();
      }
      
      public static function isUpper(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isUpper();
      }
      
      public static function fromNumber(param1:Number) : system.Char
      {
         return new system.Char(String.fromCharCode(param1));
      }
      
      public static function isControl(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isControl();
      }
      
      public static function isLetter(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isLetter();
      }
      
      public static function isLower(param1:String, param2:uint = 0) : Boolean
      {
         _ch.value = param1.charAt(param2);
         return _ch.isLower();
      }
      
      public final function toLower() : system.Char
      {
         return new system.Char(_c.toLowerCase());
      }
      
      public final function isASCII(param1:Boolean = false) : Boolean
      {
         §§push(128);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 38 - 1 + 1);
         }
         var _loc2_:uint = §§pop();
         if(param1)
         {
            §§push(255);
            if(_loc4_)
            {
               §§push(§§pop() + 86 + 1 - 1);
            }
            _loc2_ = §§pop();
         }
         return code < _loc2_;
      }
      
      public final function toOctal() : String
      {
         §§push(code);
         §§push(8);
         if(_loc3_)
         {
            §§push(-§§pop() * 38 + 1 - 1 + 1 + 9);
         }
         var _loc1_:String = §§pop().toString(§§pop());
         while(true)
         {
            §§push(_loc1_.length);
            §§push(3);
            if(_loc2_)
            {
               §§push(-((§§pop() * 99 - 1 + 1 - 89) * 68) - 1);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            _loc1_ = "0" + _loc1_;
         }
         return _loc1_;
      }
      
      public final function isControl() : Boolean
      {
         var _loc1_:int = controls.length;
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 103 + 1);
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < _loc1_)
         {
            if(_c == controls[_loc2_].toString())
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public final function isUpper() : Boolean
      {
         return "A" <= _c && _c <= "Z";
      }
      
      public final function isUnicode() : Boolean
      {
         §§push(_c);
         §§push(0);
         if(_loc1_)
         {
            §§push(-(-(§§pop() + 1) + 46 + 67) * 27);
         }
         §§push(§§pop().charCodeAt(§§pop()));
         §§push(255);
         if(_loc1_)
         {
            §§push(-(§§pop() - 24) - 75 - 1 + 0 + 61);
         }
         return §§pop() > §§pop();
      }
      
      public final function isHexDigit() : Boolean
      {
         return isDigit() || "A" <= _c && _c <= "F" || "a" <= _c && _c <= "f";
      }
      
      public function set code(param1:Number) : void
      {
         _c = String.fromCharCode(param1);
      }
      
      public function set value(param1:String) : void
      {
         _c = param1.charAt(0);
      }
      
      public final function isDigit() : Boolean
      {
         return "0" <= _c && _c <= "9";
      }
      
      public final function isWhiteSpace() : Boolean
      {
         var _loc1_:Array = Strings.whiteSpaceChars;
         var _loc2_:int = _loc1_.length;
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 98 + 1 + 113 - 1 - 1);
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < _loc2_)
         {
            if(_c == _loc1_[_loc3_])
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public final function valueOf() : String
      {
         return _c;
      }
      
      public final function isContained(param1:String) : Boolean
      {
         if(param1 == null || §§pop() == §§pop())
         {
            return false;
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 1 - 1 + 84);
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < param1.length)
         {
            if(_c == param1.charAt(_loc2_))
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public final function toNumber() : Number
      {
         return code;
      }
      
      public final function toString() : String
      {
         return _c;
      }
      
      public function get code() : Number
      {
         return _c.charCodeAt(0);
      }
      
      public final function toUpper() : system.Char
      {
         return new system.Char(_c.toUpperCase());
      }
      
      public final function isLetter() : Boolean
      {
         return isUpper() || isLower();
      }
      
      public final function isSymbol() : Boolean
      {
         var _loc1_:int = symbols.length;
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 - 36 - 30 - 1);
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < _loc1_)
         {
            if(_c == symbols[_loc2_].toString())
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public final function isLower() : Boolean
      {
         return "a" <= _c && _c <= "z";
      }
      
      public function get value() : String
      {
         return _c;
      }
      
      public final function isLetterOrDigit() : Boolean
      {
         return isLetter() || isDigit();
      }
      
      public final function toHexadecimal() : String
      {
         §§push(code);
         §§push(16);
         if(_loc2_)
         {
            §§push(-§§pop() + 110 - 1 + 1 + 69);
         }
         var _loc1_:String = §§pop().toString(§§pop());
         §§push(_loc1_.length);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 112 + 1 - 58));
         }
         return §§pop() == §§pop()?"0" + _loc1_:_loc1_;
      }
   }
}
