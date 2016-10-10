package spark.validators.supportClasses
{
   import mx.core.mx_internal;
   import mx.validators.NumberValidatorDomainType;
   import spark.formatters.NumberFormatter;
   import spark.formatters.CurrencyFormatter;
   import spark.globalization.LastOperationStatus;
   import mx.validators.ValidationResult;
   
   use namespace mx_internal;
   
   public class NumberValidatorBase extends GlobalizationValidatorBase
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const ALLOW_NEGATIVE:String = "allowNegative";
      
      private static const DECIMAL_SEPARATOR:String = "decimalSeparator";
      
      private static const DIGITS_TYPE:String = "digitsType";
      
      private static const FRACTIONAL_DIGITS:String = "fractionalDigits";
      
      private static const GROUPING_SEPARATOR:String = "groupingSeparator";
      
      private static const NEGATIVE_SYMBOL:String = "negativeSymbol";
      
      mx_internal static const NUMBER_VALIDATOR_TYPE:int = 1;
      
      mx_internal static const CURRENCY_VALIDATOR_TYPE:int = 2;
      
      private static const NEGATIVE_SYMBOLS:String = "-" + String.fromCharCode(8722,65123,65293);
      
      mx_internal static const VALID_CHARS:String = DECIMAL_DIGITS + "(" + ")" + NEGATIVE_SYMBOLS;
      
      private static const PATTERN_LENGTH_LIMIT:int = 10;
      
      private static const DECIMAL_SEP_STD:String = ".";
      
      mx_internal static const DECIMAL_DIGITS:String = "0123456789";
       
      
      private var _g11nWorkingInstance:Object = null;
      
      private var _allowNegative:Boolean;
      
      protected var allowNegativeOverride:Boolean;
      
      private var _domain:String;
      
      protected var domainOverride:String = "real";
      
      private var _maxValue:Number;
      
      protected var maxValueOverride:Number;
      
      private var _minValue:Number;
      
      protected var minValueOverride:Number;
      
      private var _decimalPointCountError:String;
      
      protected var decimalPointCountErrorOverride:String;
      
      private var _fractionalDigitsError:String;
      
      protected var fractionalDigitsErrorOverride:String;
      
      private var _greaterThanMaxError:String;
      
      protected var greaterThanMaxErrorOverride:String;
      
      private var _invalidCharError:String;
      
      protected var invalidCharErrorOverride:String;
      
      private var _invalidFormatCharsError:String;
      
      protected var invalidFormatCharsErrorOverride:String;
      
      private var _lessThanMinError:String;
      
      protected var lessThanMinErrorOverride:String;
      
      private var _localeUndefinedError:String;
      
      protected var localeUndefinedErrorOverride:String;
      
      private var _negativeError:String;
      
      protected var negativeErrorOverride:String;
      
      private var _negativeSymbolError:String;
      
      protected var negativeSymbolErrorOverride:String;
      
      private var _notAnIntegerError:String;
      
      protected var notAnIntegerErrorOverride:String;
      
      private var _parseError:String;
      
      protected var parseErrorOverride:String;
      
      public function NumberValidatorBase()
      {
         super();
         this._allowNegative = this.allowNegativeOverride = resourceManager.getBoolean("validators","allowNegative");
         this._domain = NumberValidatorDomainType.REAL;
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
         return this.g11nWorkingInstance.useFallback;
      }
      
      [Bindable("change")]
      public function get allowNegative() : Boolean
      {
         return this._allowNegative;
      }
      
      public function set allowNegative(param1:Boolean) : void
      {
         this.allowNegativeOverride = param1;
         this._allowNegative = param1;
         update();
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
      public function get domain() : String
      {
         return this._domain;
      }
      
      public function set domain(param1:String) : void
      {
         this.domainOverride = param1;
         if(!param1)
         {
            this._domain = resourceManager.getString("validators","numberValidatorDomain");
         }
         else
         {
            if(param1 != NumberValidatorDomainType.INT && param1 != NumberValidatorDomainType.REAL)
            {
               throw new ArgumentError();
            }
            this._domain = param1;
         }
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
      public function get groupingSeparator() : String
      {
         return getBasicProperty(properties,GROUPING_SEPARATOR);
      }
      
      public function set groupingSeparator(param1:String) : void
      {
         setBasicProperty(properties,GROUPING_SEPARATOR,param1);
      }
      
      [Bindable("change")]
      public function get maxValue() : Number
      {
         return this._maxValue;
      }
      
      public function set maxValue(param1:Number) : void
      {
         this.maxValueOverride = param1;
         this._maxValue = param1;
         update();
      }
      
      [Bindable("change")]
      public function get minValue() : Number
      {
         return this._minValue;
      }
      
      public function set minValue(param1:Number) : void
      {
         this.minValueOverride = param1;
         this._minValue = param1;
         update();
      }
      
      [Bindable("change")]
      public function get negativeSymbol() : String
      {
         return getBasicProperty(properties,NEGATIVE_SYMBOL);
      }
      
      [Bindable("change")]
      public function get decimalPointCountError() : String
      {
         return this._decimalPointCountError;
      }
      
      public function set decimalPointCountError(param1:String) : void
      {
         if(this.decimalPointCountErrorOverride && this.decimalPointCountErrorOverride == param1)
         {
            return;
         }
         this.decimalPointCountErrorOverride = param1;
         this._decimalPointCountError = !!param1?param1:resourceManager.getString("validators","decimalPointCountError");
         update();
      }
      
      [Bindable("change")]
      public function get fractionalDigitsError() : String
      {
         return this._fractionalDigitsError;
      }
      
      public function set fractionalDigitsError(param1:String) : void
      {
         if(this.fractionalDigitsErrorOverride && this.fractionalDigitsErrorOverride == param1)
         {
            return;
         }
         this.fractionalDigitsErrorOverride = param1;
         this._fractionalDigitsError = !!param1?param1:resourceManager.getString("validators","fractionalDigitsError");
         update();
      }
      
      [Bindable("change")]
      public function get greaterThanMaxError() : String
      {
         return this._greaterThanMaxError;
      }
      
      public function set greaterThanMaxError(param1:String) : void
      {
         if(this.greaterThanMaxErrorOverride && this.greaterThanMaxErrorOverride == param1)
         {
            return;
         }
         this.greaterThanMaxErrorOverride = param1;
         this._greaterThanMaxError = !!param1?param1:resourceManager.getString("validators","exceedsMaxErrorNV");
         update();
      }
      
      [Bindable("change")]
      public function get invalidCharError() : String
      {
         return this._invalidCharError;
      }
      
      public function set invalidCharError(param1:String) : void
      {
         if(this.invalidCharErrorOverride && this.invalidCharErrorOverride == param1)
         {
            return;
         }
         this.invalidCharErrorOverride = param1;
         this._invalidCharError = !!param1?param1:resourceManager.getString("validators","invalidCharError");
         update();
      }
      
      [Bindable("change")]
      public function get invalidFormatCharsError() : String
      {
         return this._invalidFormatCharsError;
      }
      
      public function set invalidFormatCharsError(param1:String) : void
      {
         if(this.invalidFormatCharsErrorOverride && this.invalidFormatCharsErrorOverride == param1)
         {
            return;
         }
         this.invalidFormatCharsErrorOverride = param1;
         this._invalidFormatCharsError = !!param1?param1:resourceManager.getString("validators","invalidFormatCharsError");
         update();
      }
      
      [Bindable("change")]
      public function get lessThanMinError() : String
      {
         return this._lessThanMinError;
      }
      
      public function set lessThanMinError(param1:String) : void
      {
         if(this.lessThanMinErrorOverride && this.lessThanMinErrorOverride == param1)
         {
            return;
         }
         this.lessThanMinErrorOverride = param1;
         this._lessThanMinError = !!param1?param1:resourceManager.getString("validators","lowerThanMinError");
         update();
      }
      
      [Bindable("change")]
      public function get localeUndefinedError() : String
      {
         return this._localeUndefinedError;
      }
      
      public function set localeUndefinedError(param1:String) : void
      {
         if(this.localeUndefinedErrorOverride && this.localeUndefinedErrorOverride == param1)
         {
            return;
         }
         this.localeUndefinedErrorOverride = param1;
         this._localeUndefinedError = !!param1?param1:resourceManager.getString("validators","localeUndefinedError");
         update();
      }
      
      [Bindable("change")]
      public function get negativeError() : String
      {
         return this._negativeError;
      }
      
      public function set negativeError(param1:String) : void
      {
         if(this.negativeErrorOverride && this.negativeErrorOverride == param1)
         {
            return;
         }
         this.negativeErrorOverride = param1;
         this._negativeError = !!param1?param1:resourceManager.getString("validators","negativeError");
         update();
      }
      
      [Bindable("change")]
      public function get negativeSymbolError() : String
      {
         return this._negativeSymbolError;
      }
      
      public function set negativeSymbolError(param1:String) : void
      {
         if(this.negativeSymbolErrorOverride && this.negativeSymbolErrorOverride == param1)
         {
            return;
         }
         this.negativeSymbolErrorOverride = param1;
         this._negativeSymbolError = !!param1?param1:resourceManager.getString("validators","negativeSymbolError");
         update();
      }
      
      [Bindable("change")]
      public function get notAnIntegerError() : String
      {
         return this._notAnIntegerError;
      }
      
      public function set notAnIntegerError(param1:String) : void
      {
         if(this.notAnIntegerErrorOverride && this.notAnIntegerErrorOverride == param1)
         {
            return;
         }
         this.notAnIntegerErrorOverride = param1;
         this._notAnIntegerError = !!param1?param1:resourceManager.getString("validators","integerError");
         update();
      }
      
      [Bindable("change")]
      public function get parseError() : String
      {
         return this._parseError;
      }
      
      public function set parseError(param1:String) : void
      {
         if(this.parseErrorOverride && this.parseErrorOverride == param1)
         {
            return;
         }
         this.parseErrorOverride = param1;
         this._parseError = !!param1?param1:resourceManager.getString("validators","parseError");
         update();
      }
      
      mx_internal function createWorkingInstanceCore(param1:int) : void
      {
         if(param1 == NUMBER_VALIDATOR_TYPE)
         {
            this.g11nWorkingInstance = new NumberFormatter();
         }
         else if(param1 == CURRENCY_VALIDATOR_TYPE)
         {
            this.g11nWorkingInstance = new CurrencyFormatter();
         }
         if(!this.g11nWorkingInstance)
         {
            throw new Error("Internal failure: " + "spark formatter creation failure.");
         }
         this.g11nWorkingInstance.enforceFallback = enforceFallback;
         this.g11nWorkingInstance.setStyle("locale",localeStyle);
         if(this.g11nWorkingInstance.lastOperationStatus != LastOperationStatus.UNSUPPORTED_ERROR)
         {
            properties = this.g11nWorkingInstance;
            propagateBasicProperties(this.g11nWorkingInstance);
            return;
         }
      }
      
      mx_internal function getActualLocaleIDName(param1:int) : String
      {
         if(this.g11nWorkingInstance)
         {
            return param1 == NUMBER_VALIDATOR_TYPE?(this.g11nWorkingInstance as NumberFormatter).actualLocaleIDName:(this.g11nWorkingInstance as CurrencyFormatter).actualLocaleIDName;
         }
         fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
         return undefined;
      }
      
      mx_internal function indexOfFirstDigit(param1:String, param2:int, param3:int = 0) : int
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(!param1 || !param2)
         {
            return -1;
         }
         var _loc4_:int = param3;
         while(_loc4_ < param2)
         {
            _loc5_ = param1.charCodeAt(_loc4_);
            _loc6_ = this.processSurrogates(param1,_loc5_,_loc4_,param2);
            if(_loc6_ == -1)
            {
               return -1;
            }
            if(this.isDigit(_loc6_))
            {
               return _loc4_;
            }
            if(_loc5_ != _loc6_)
            {
               _loc4_++;
            }
            _loc4_++;
         }
         return -1;
      }
      
      mx_internal function indexOfLastDigit(param1:String, param2:int, param3:int) : int
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         if(!param1 || !param2)
         {
            return -1;
         }
         var _loc4_:int = param3;
         while(_loc4_ >= 0)
         {
            _loc5_ = param1.charCodeAt(_loc4_);
            _loc6_ = this.processSurrogates(param1,_loc5_,_loc4_,param2);
            if(_loc6_ == -1)
            {
               return -1;
            }
            if(_loc5_ != _loc6_)
            {
               _loc4_--;
            }
            if(this.isDigit(_loc6_))
            {
               return _loc4_;
            }
            _loc4_--;
         }
         return -1;
      }
      
      mx_internal function inputHasMultipleNegativeSymbols(param1:String) : Boolean
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return false;
         }
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:int = 0;
         if(this.negativeSymbol == this.decimalSeparator)
         {
            _loc2_ = true;
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < NEGATIVE_SYMBOLS.length)
            {
               _loc5_ = NEGATIVE_SYMBOLS.charAt(_loc4_);
               if(this.decimalSeparator == _loc5_)
               {
                  _loc2_ = true;
                  break;
               }
               _loc4_++;
            }
         }
         if(this.negativeSymbol == this.groupingSeparator)
         {
            _loc3_ = true;
         }
         else
         {
            _loc4_ = 0;
            while(_loc4_ < NEGATIVE_SYMBOLS.length)
            {
               _loc5_ = NEGATIVE_SYMBOLS.charAt(_loc4_);
               if(this.groupingSeparator == _loc5_)
               {
                  _loc3_ = true;
                  break;
               }
               _loc4_++;
            }
         }
         if(!_loc2_ && !_loc3_ && param1.indexOf(this.negativeSymbol) != param1.lastIndexOf(this.negativeSymbol))
         {
            return true;
         }
         var _loc6_:String = NEGATIVE_SYMBOLS + this.negativeSymbol;
         var _loc7_:int = 0;
         _loc4_ = 0;
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1.charAt(_loc4_);
            if(_loc6_.indexOf(_loc5_) != -1)
            {
               _loc7_++;
            }
            _loc4_++;
         }
         if(!_loc3_)
         {
            if(!_loc2_)
            {
               if(_loc7_ > 1)
               {
                  return true;
               }
            }
            else if(_loc7_ > 2)
            {
               return true;
            }
         }
         return false;
      }
      
      mx_internal function inputHasNegativeSymbol(param1:String) : Boolean
      {
         var _loc3_:String = null;
         if(!param1)
         {
            return false;
         }
         if(param1.indexOf(this.negativeSymbol) != -1)
         {
            return true;
         }
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = param1.charAt(_loc2_);
            if(NEGATIVE_SYMBOLS.indexOf(_loc3_) != -1)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      private function isDigit(param1:int) : Boolean
      {
         if(GlobalizationUtils.isDigit(param1))
         {
            return true;
         }
         if(param1 >= this.digitsType && param1 <= this.digitsType + 9)
         {
            return true;
         }
         return false;
      }
      
      mx_internal function isNegativeSymbol(param1:String) : Boolean
      {
         var _loc3_:String = null;
         if(!param1)
         {
            return false;
         }
         if(param1 == this.negativeSymbol)
         {
            return true;
         }
         var _loc2_:int = 0;
         while(_loc2_ < NEGATIVE_SYMBOLS.length)
         {
            _loc3_ = NEGATIVE_SYMBOLS.charAt(_loc2_);
            if(param1 == _loc3_)
            {
               return true;
            }
            _loc2_++;
         }
         return false;
      }
      
      mx_internal function loadChangedResources() : void
      {
         this.decimalPointCountError = this.decimalPointCountErrorOverride;
         this.greaterThanMaxError = this.greaterThanMaxErrorOverride;
         this.notAnIntegerError = this.notAnIntegerErrorOverride;
         this.invalidCharError = this.invalidCharErrorOverride;
         this.invalidFormatCharsError = this.invalidFormatCharsErrorOverride;
         this.lessThanMinError = this.lessThanMinErrorOverride;
         this.negativeError = this.negativeErrorOverride;
         this.negativeSymbolError = this.negativeSymbolErrorOverride;
         this.fractionalDigitsError = this.fractionalDigitsErrorOverride;
         this.parseError = this.parseErrorOverride;
         this.localeUndefinedError = this.localeUndefinedError;
      }
      
      private function inputHasNoDigits(param1:String) : Boolean
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!param1)
         {
            return false;
         }
         while(_loc2_ < param1.length)
         {
            _loc3_ = param1.charCodeAt(_loc2_);
            _loc4_ = this.processSurrogates(param1,_loc3_,_loc2_,param1.length);
            if(_loc4_ != -1)
            {
               if(_loc3_ != _loc4_)
               {
                  _loc2_++;
               }
               if(this.isDigit(_loc4_))
               {
                  return false;
               }
            }
            _loc2_++;
         }
         return true;
      }
      
      mx_internal function processSurrogates(param1:String, param2:int, param3:int, param4:int) : int
      {
         var _loc6_:int = 0;
         var _loc5_:int = 0;
         if(GlobalizationUtils.isLeadingSurrogate(param2))
         {
            _loc5_ = param3 + 1;
            if(_loc5_ < param4)
            {
               _loc6_ = param1.charCodeAt(_loc5_);
               if(GlobalizationUtils.isTrailingSurrogate(_loc6_))
               {
                  param2 = GlobalizationUtils.surrogateToUTF32(param2,_loc6_);
               }
               else
               {
                  return -1;
               }
            }
            else
            {
               return -1;
            }
         }
         else if(GlobalizationUtils.isTrailingSurrogate(param2))
         {
            _loc5_ = param3 - 1;
            if(_loc5_ >= 0)
            {
               _loc6_ = param1.charCodeAt(_loc5_);
               if(GlobalizationUtils.isLeadingSurrogate(_loc6_))
               {
                  param2 = GlobalizationUtils.surrogateToUTF32(_loc6_,param2);
               }
               else
               {
                  return -1;
               }
            }
            else
            {
               return -1;
            }
         }
         return param2;
      }
      
      mx_internal function validateDecimalString(param1:String, param2:String, param3:Array, param4:Boolean) : Boolean
      {
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         if(!param1)
         {
            return true;
         }
         if(param4)
         {
            _loc5_ = param1.lastIndexOf(this.decimalSeparator);
         }
         else
         {
            _loc5_ = param1.indexOf(this.decimalSeparator);
         }
         if(_loc5_ == -1)
         {
            return true;
         }
         _loc7_ = param1.length;
         while(true)
         {
            if(_loc7_ > _loc5_)
            {
               _loc8_ = param1.charCodeAt(_loc7_);
               _loc9_ = this.processSurrogates(param1,_loc8_,_loc7_,_loc10_);
               if(_loc9_ == -1)
               {
                  break;
               }
               if(!this.isDigit(_loc9_))
               {
                  if(_loc8_ != _loc9_)
                  {
                     _loc7_--;
                  }
                  _loc7_--;
                  continue;
               }
            }
            _loc10_ = _loc7_;
            _loc7_ = _loc5_ + this.decimalSeparator.length;
            while(_loc7_ < _loc10_)
            {
               _loc8_ = param1.charCodeAt(_loc7_);
               _loc9_ = this.processSurrogates(param1,_loc8_,_loc7_,_loc10_);
               if(_loc9_ != -1 && this.isDigit(_loc9_))
               {
                  if(_loc8_ != _loc9_)
                  {
                     _loc7_++;
                  }
                  _loc7_++;
                  continue;
               }
               param3.push(new ValidationResult(true,param2,"invalidChar",this.invalidCharError));
               return false;
            }
            return true;
         }
         return false;
      }
      
      mx_internal function validateFractionPart(param1:String, param2:int, param3:String, param4:Array) : Boolean
      {
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(!param1)
         {
            return true;
         }
         var _loc5_:int = param1.length;
         if(param2 != -1)
         {
            _loc6_ = 0;
            if(param1 == this.decimalSeparator)
            {
               param4.push(new ValidationResult(true,param3,"invalidChar",this.invalidCharError));
               return false;
            }
            _loc7_ = param2 + this.decimalSeparator.length;
            _loc8_ = param1.charCodeAt(_loc7_);
            _loc9_ = this.processSurrogates(param1,_loc8_,_loc7_,_loc5_);
            if(_loc9_ == -1)
            {
               param4.push(new ValidationResult(true,param3,"invalidChar",this.invalidCharError));
               return false;
            }
            if(_loc7_ < _loc5_ && this.isDigit(_loc9_))
            {
               if(this.domain == NumberValidatorDomainType.INT)
               {
                  param4.push(new ValidationResult(true,param3,"integer",this.notAnIntegerError));
                  return false;
               }
            }
            while(_loc7_ < _loc5_)
            {
               _loc8_ = param1.charCodeAt(_loc7_);
               _loc9_ = this.processSurrogates(param1,_loc8_,_loc7_,_loc5_);
               if(_loc9_ == -1)
               {
                  param4.push(new ValidationResult(true,param3,"invalidChar",this.invalidCharError));
                  return false;
               }
               if(_loc8_ != _loc9_)
               {
                  _loc7_++;
               }
               _loc6_++;
               if(!this.isDigit(_loc9_))
               {
                  break;
               }
               if(this.fractionalDigits != -1 && _loc6_ > this.fractionalDigits)
               {
                  param4.push(new ValidationResult(true,param3,"fractionalDigits",this.fractionalDigitsError));
                  return false;
               }
               _loc7_++;
            }
         }
         return true;
      }
      
      mx_internal function validateInputCharacters(param1:String, param2:int, param3:String) : Boolean
      {
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(!param1)
         {
            return true;
         }
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc5_ = param1.charAt(_loc4_);
            if(param3.indexOf(_loc5_) == -1)
            {
               _loc6_ = _loc5_.charCodeAt(0);
               _loc7_ = this.processSurrogates(param1,_loc6_,_loc4_,param2);
               if(_loc7_ == -1)
               {
                  return true;
               }
               if(_loc6_ != _loc7_)
               {
                  _loc4_++;
               }
               if(!this.isDigit(_loc6_))
               {
                  if(!GlobalizationUtils.isWhiteSpace(_loc6_))
                  {
                     return true;
                  }
               }
            }
            _loc4_++;
         }
         return false;
      }
      
      mx_internal function validateNumberFormat(param1:String, param2:Array, param3:String) : Boolean
      {
         var _loc5_:String = null;
         if(!param1)
         {
            return true;
         }
         var _loc4_:int = param1.length;
         if(param1.charAt(0) == "(")
         {
            if(param1.charAt(_loc4_ - 1) != ")")
            {
               param2.push(new ValidationResult(true,param3,"invalidFormatChars",this.invalidFormatCharsError));
               return false;
            }
         }
         else if(param1.charAt(_loc4_ - 1) == ")")
         {
            if(param1.charAt(0) != "(")
            {
               param2.push(new ValidationResult(true,param3,"invalidFormatCharsError",this.invalidFormatCharsError));
               return false;
            }
         }
         if(this.decimalSeparator == this.groupingSeparator)
         {
            param2.push(new ValidationResult(true,param3,"invalidFormatChars",this.invalidFormatCharsError));
            return false;
         }
         if(this.inputHasNoDigits(param1))
         {
            param2.push(new ValidationResult(true,param3,"parseError",this.parseError));
            return false;
         }
         if(this.inputHasMultipleNegativeSymbols(param1))
         {
            param2.push(new ValidationResult(true,param3,"negativeSymbol",this.negativeSymbolError));
            return false;
         }
         return true;
      }
      
      mx_internal function validateNumberNegativity(param1:Number, param2:String, param3:Array) : Boolean
      {
         if(param1 < 0)
         {
            if(!this.allowNegative)
            {
               param3.push(new ValidationResult(true,param2,"negative",this.negativeError));
               return false;
            }
         }
         return true;
      }
      
      mx_internal function validateNumberRange(param1:Number, param2:String, param3:Array) : Boolean
      {
         var _loc4_:Number = Number(this.maxValue);
         var _loc5_:Number = Number(this.minValue);
         if(!isNaN(_loc5_) || !isNaN(_loc4_))
         {
            if(!isNaN(_loc5_) && param1 < _loc5_)
            {
               param3.push(new ValidationResult(true,param2,"lowerThanMin",this.lessThanMinError));
               return false;
            }
            if(!isNaN(_loc4_) && param1 > _loc4_)
            {
               param3.push(new ValidationResult(true,param2,"exceedsMax",this.greaterThanMaxError));
               return false;
            }
         }
         return true;
      }
   }
}
