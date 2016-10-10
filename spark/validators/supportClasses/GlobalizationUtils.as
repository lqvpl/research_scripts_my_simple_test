package spark.validators.supportClasses
{
   import mx.core.mx_internal;
   import flash.globalization.NationalDigitsType;
   
   use namespace mx_internal;
   
   public class GlobalizationUtils
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const ASCII_SPACE:uint = 32;
      
      private static const ASCII_ZERO:uint = 48;
      
      private static const NO_BREAK_SPACE:uint = 160;
      
      private static const UNICODE_OGHAM_SPACE_MARK:uint = 5760;
      
      private static const UNICODE_MONGOLIAN_VOWEL_SEPARATOR:uint = 6158;
      
      private static const UNICODE_SPACE_START:uint = 8192;
      
      private static const UNICODE_SPACE_END:uint = 8203;
      
      private static const UNICODE_NARROW_NOBREAK_SPACE:uint = 8239;
      
      private static const UNICODE_MEDIUM_MATHEMATICAL_SPACE:uint = 8287;
      
      private static const UNICODE_IDEOGRAPHIC_SPACE:uint = 12288;
      
      private static const UNICODE_ZEROWIDTH_NOBREAK_SPACE:uint = 65279;
      
      private static const UNICODE_HIGH_SURROGATE_FRONT:uint = 55296;
      
      private static const UNICODE_HIGH_SURROGATE_BACK:uint = 56319;
      
      private static const UNICODE_LOW_SURROGATE_FRONT:uint = 56320;
      
      private static const UNICODE_LOW_SURROGATE_BACK:uint = 57343;
      
      private static const UNICODE_DIGITS:Array = new Array(ASCII_ZERO,NationalDigitsType.ARABIC_INDIC,NationalDigitsType.BALINESE,NationalDigitsType.BENGALI,NationalDigitsType.CHAM,NationalDigitsType.DEVANAGARI,NationalDigitsType.EUROPEAN,NationalDigitsType.EXTENDED_ARABIC_INDIC,NationalDigitsType.FULL_WIDTH,NationalDigitsType.GUJARATI,NationalDigitsType.GURMUKHI,NationalDigitsType.KANNADA,NationalDigitsType.KAYAH_LI,NationalDigitsType.KHMER,NationalDigitsType.LAO,NationalDigitsType.LEPCHA,NationalDigitsType.LIMBU,NationalDigitsType.MALAYALAM,NationalDigitsType.MONGOLIAN,NationalDigitsType.MYANMAR,NationalDigitsType.MYANMAR_SHAN,NationalDigitsType.NEW_TAI_LUE,NationalDigitsType.NKO,NationalDigitsType.OL_CHIKI,NationalDigitsType.ORIYA,NationalDigitsType.OSMANYA,NationalDigitsType.SAURASHTRA,NationalDigitsType.SUNDANESE,NationalDigitsType.TAMIL,NationalDigitsType.TELUGU,NationalDigitsType.THAI,NationalDigitsType.TIBETAN,NationalDigitsType.VAI);
       
      
      public function GlobalizationUtils()
      {
         super();
      }
      
      public static function isDigit(param1:uint) : Boolean
      {
         var _loc2_:int = 0;
         while(_loc2_ < UNICODE_DIGITS.length)
         {
            if(param1 >= UNICODE_DIGITS[_loc2_] && param1 <= UNICODE_DIGITS[_loc2_] + 9)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      public static function isLeadingSurrogate(param1:uint) : Boolean
      {
         return param1 >= UNICODE_HIGH_SURROGATE_FRONT && param1 <= UNICODE_HIGH_SURROGATE_BACK;
      }
      
      public static function isTrailingSurrogate(param1:uint) : Boolean
      {
         return param1 >= UNICODE_LOW_SURROGATE_FRONT && param1 <= UNICODE_LOW_SURROGATE_BACK;
      }
      
      public static function isWhiteSpace(param1:uint) : Boolean
      {
         if(param1 == ASCII_SPACE || param1 == NO_BREAK_SPACE || param1 == 9)
         {
            return true;
         }
         if(param1 >= UNICODE_SPACE_START && param1 <= UNICODE_SPACE_END)
         {
            return true;
         }
         if(param1 == UNICODE_NARROW_NOBREAK_SPACE || param1 == UNICODE_MEDIUM_MATHEMATICAL_SPACE)
         {
            return true;
         }
         if(param1 == UNICODE_IDEOGRAPHIC_SPACE || param1 == UNICODE_ZEROWIDTH_NOBREAK_SPACE)
         {
            return true;
         }
         if(param1 == UNICODE_OGHAM_SPACE_MARK || param1 == UNICODE_MONGOLIAN_VOWEL_SEPARATOR)
         {
            return true;
         }
         return false;
      }
      
      public static function trim(param1:String) : String
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:int = param1.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            if(isWhiteSpace(param1.charCodeAt(_loc3_)))
            {
               _loc3_++;
               continue;
            }
            break;
         }
         var _loc4_:int = _loc2_ - 1;
         while(_loc4_ >= 0)
         {
            if(isWhiteSpace(param1.charCodeAt(_loc4_)))
            {
               _loc4_--;
               continue;
            }
            break;
         }
         return param1.substring(_loc3_,_loc4_ + 1);
      }
      
      public static function surrogateToUTF32(param1:uint, param2:uint) : uint
      {
         var _loc3_:uint = 0;
         var _loc4_:* = param1 & 65535;
         if(_loc4_ < UNICODE_HIGH_SURROGATE_FRONT || _loc4_ > UNICODE_LOW_SURROGATE_BACK)
         {
            _loc3_ = _loc4_;
         }
         else
         {
            _loc3_ = _loc4_ - 55232 << 10;
            _loc3_ = _loc3_ + (param2 & 1023);
         }
         return _loc3_;
      }
   }
}
