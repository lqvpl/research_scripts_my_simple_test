package spark.formatters.supportClasses
{
   import spark.globalization.supportClasses.GlobalizationBase;
   import mx.core.mx_internal;
   import mx.utils.StringUtil;
   import flash.globalization.NumberParseResult;
   import flash.globalization.CurrencyParseResult;
   
   use namespace mx_internal;
   
   public class NumberFormatterBase extends GlobalizationBase
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const DECIMAL_SEPARATOR:String = "decimalSeparator";
      
      private static const DIGITS_TYPE:String = "digitsType";
      
      private static const FRACTIONAL_DIGITS:String = "fractionalDigits";
      
      private static const GROUPING_PATTERN:String = "groupingPattern";
      
      private static const GROUPING_SEPARATOR:String = "groupingSeparator";
      
      private static const LEADING_ZERO:String = "leadingZero";
      
      private static const NEGATIVE_SYMBOL:String = "negativeSymbol";
      
      private static const TRAILING_ZEROS:String = "trailingZeros";
      
      private static const USE_GROUPING:String = "useGrouping";
       
      
      private var _g11nWorkingInstance:Object = null;
      
      private var _errorText:String;
      
      public function NumberFormatterBase()
      {
         super();
      }
      
      private static function internalParseNumber(param1:String, param2:String = ".", param3:String = ",") : Number
      {
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc4_:RegExp = /^((\d+,?)*\d+)?\.?\d*$|^[-+]?\d+\.?\d*[eE]{1}[-+]?\d+$/;
         var _loc5_:RegExp = /^-[ ]?([0-9\.,]+)$|^([0-9\.,]+)[ ]?-$|^\([ ]?([0-9\.,]+)[ ]?\)$/;
         var _loc6_:int = 1;
         param1 = param1.split(param2).join(".");
         param1 = param1.split(param3).join(",");
         param1 = StringUtil.trim(param1);
         if(param1 && _loc5_.test(param1))
         {
            _loc7_ = param1.match(_loc5_);
            _loc8_ = 1;
            while(_loc8_ < _loc7_.length)
            {
               if(_loc7_[_loc8_] != undefined)
               {
                  break;
               }
               _loc8_++;
            }
            param1 = _loc7_[_loc8_];
            _loc6_ = -1;
         }
         if(!param1 || !_loc4_.test(param1))
         {
            return NaN;
         }
         param1 = param1.split(",").join("");
         return Number(param1) * _loc6_;
      }
      
      mx_internal function get g11nWorkingInstance() : Object
      {
         if(!this._g11nWorkingInstance)
         {
            ensureStyleSource();
         }
         return this._g11nWorkingInstance;
      }
      
      mx_internal function set g11nWorkingInstance(param1:Object) : void
      {
         this._g11nWorkingInstance = param1;
      }
      
      [Bindable("change")]
      override public function get lastOperationStatus() : String
      {
         return !!this.g11nWorkingInstance?this.g11nWorkingInstance.lastOperationStatus:fallbackLastOperationStatus;
      }
      
      [Bindable("change")]
      override mx_internal function get useFallback() : Boolean
      {
         return this.g11nWorkingInstance == null;
      }
      
      [Bindable("change")]
      public function get decimalSeparator() : String
      {
         return getBasicProperty(properties,DECIMAL_SEPARATOR);
      }
      
      public function set decimalSeparator(param1:String) : void
      {
         setBasicProperty(properties,DECIMAL_SEPARATOR,param1);
      }
      
      [Bindable("change")]
      public function get digitsType() : uint
      {
         return getBasicProperty(properties,DIGITS_TYPE);
      }
      
      public function set digitsType(param1:uint) : void
      {
         setBasicProperty(properties,DIGITS_TYPE,param1);
      }
      
      [Bindable("change")]
      public function get errorText() : String
      {
         return this._errorText;
      }
      
      public function set errorText(param1:String) : void
      {
         if(this._errorText == param1)
         {
            return;
         }
         this._errorText = param1;
         update();
      }
      
      [Bindable("change")]
      public function get fractionalDigits() : int
      {
         return getBasicProperty(properties,FRACTIONAL_DIGITS);
      }
      
      public function set fractionalDigits(param1:int) : void
      {
         setBasicProperty(properties,FRACTIONAL_DIGITS,param1);
      }
      
      [Bindable("change")]
      public function get groupingPattern() : String
      {
         return getBasicProperty(properties,GROUPING_PATTERN);
      }
      
      public function set groupingPattern(param1:String) : void
      {
         setBasicProperty(properties,GROUPING_PATTERN,param1);
      }
      
      [Bindable("change")]
      public function get groupingSeparator() : String
      {
         return getBasicProperty(properties,GROUPING_SEPARATOR);
      }
      
      public function set groupingSeparator(param1:String) : void
      {
         setBasicProperty(properties,GROUPING_SEPARATOR,param1);
      }
      
      [Bindable("change")]
      public function get leadingZero() : Boolean
      {
         return getBasicProperty(properties,LEADING_ZERO);
      }
      
      public function set leadingZero(param1:Boolean) : void
      {
         setBasicProperty(properties,LEADING_ZERO,param1);
      }
      
      [Bindable("change")]
      public function get negativeSymbol() : String
      {
         return getBasicProperty(properties,NEGATIVE_SYMBOL);
      }
      
      public function set negativeSymbol(param1:String) : void
      {
         setBasicProperty(properties,NEGATIVE_SYMBOL,param1);
      }
      
      [Bindable("change")]
      public function get trailingZeros() : Boolean
      {
         return getBasicProperty(properties,TRAILING_ZEROS);
      }
      
      public function set trailingZeros(param1:Boolean) : void
      {
         setBasicProperty(properties,TRAILING_ZEROS,param1);
      }
      
      [Bindable("change")]
      public function get useGrouping() : Boolean
      {
         return getBasicProperty(properties,USE_GROUPING);
      }
      
      public function set useGrouping(param1:Boolean) : void
      {
         setBasicProperty(properties,USE_GROUPING,param1);
      }
      
      mx_internal function parseToNumberParseResult(param1:String) : NumberParseResult
      {
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = param1.length;
            while(_loc3_ > _loc2_)
            {
               _loc4_ = internalParseNumber(param1.substring(_loc2_,_loc3_),this.decimalSeparator,this.groupingSeparator);
               if(!isNaN(_loc4_))
               {
                  return new NumberParseResult(_loc4_,_loc2_,_loc3_);
               }
               _loc3_--;
            }
            _loc2_++;
         }
         return new NumberParseResult(NaN);
      }
      
      mx_internal function parseToCurrencyParseResult(param1:String) : CurrencyParseResult
      {
         var _loc4_:NumberParseResult = null;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc2_:RegExp = /^-[ ]?(.+)$|^(.+)[ ]?-$|^\((.+)\)$/;
         var _loc3_:int = 1;
         param1 = StringUtil.trim(param1);
         if(_loc2_.test(param1))
         {
            _loc8_ = param1.match(_loc2_);
            _loc9_ = 1;
            while(_loc9_ < _loc8_.length)
            {
               if(_loc8_[_loc9_] != undefined)
               {
                  break;
               }
               _loc9_++;
            }
            param1 = _loc8_[_loc9_];
            _loc3_ = -1;
         }
         _loc4_ = this.parseToNumberParseResult(param1);
         var _loc5_:String = StringUtil.trim(param1.substring(0,_loc4_.startIndex));
         var _loc6_:String = StringUtil.trim(param1.substring(_loc4_.endIndex));
         if(isNaN(_loc4_.value) || _loc4_.value < 0 && _loc3_ == -1 || _loc5_.length > 0 && _loc6_.length > 0)
         {
            return new CurrencyParseResult(NaN);
         }
         var _loc7_:String = _loc5_.length > 0?_loc5_:_loc6_;
         return new CurrencyParseResult(_loc4_.value * _loc3_,_loc7_);
      }
   }
}
