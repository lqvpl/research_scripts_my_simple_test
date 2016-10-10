package spark.validators
{
   import spark.validators.supportClasses.NumberValidatorBase;
   import mx.core.mx_internal;
   import spark.formatters.NumberFormatter;
   import spark.globalization.LastOperationStatus;
   import mx.validators.ValidationResult;
   import spark.validators.supportClasses.GlobalizationUtils;
   
   use namespace mx_internal;
   
   public class NumberValidator extends NumberValidatorBase
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const NEGATIVE_NUMBER_FORMAT:String = "negativeNumberFormat";
       
      
      private var _negativeNumberFormatError:String;
      
      private var negativeNumberFormatErrorOverride:String;
      
      public function NumberValidator()
      {
         super();
      }
      
      [Bindable("change")]
      override public function get actualLocaleIDName() : String
      {
         return getActualLocaleIDName(NUMBER_VALIDATOR_TYPE);
      }
      
      [Bindable("change")]
      public function get negativeNumberFormat() : uint
      {
         return getBasicProperty(properties,NEGATIVE_NUMBER_FORMAT);
      }
      
      public function set negativeNumberFormat(param1:uint) : void
      {
         if(!g11nWorkingInstance)
         {
            if(4 < param1)
            {
               throw new TypeError();
            }
         }
         setBasicProperty(properties,NEGATIVE_NUMBER_FORMAT,param1);
      }
      
      [Bindable("change")]
      public function get negativeNumberFormatError() : String
      {
         return this._negativeNumberFormatError;
      }
      
      public function set negativeNumberFormatError(param1:String) : void
      {
         if(this.negativeNumberFormatErrorOverride && this.negativeNumberFormatErrorOverride == param1)
         {
            return;
         }
         this.negativeNumberFormatErrorOverride = param1;
         this._negativeNumberFormatError = !!param1?param1:resourceManager.getString("validators","negativeNumberFormatError");
         update();
      }
      
      override mx_internal function createWorkingInstance() : void
      {
         createWorkingInstanceCore(NUMBER_VALIDATOR_TYPE);
      }
      
      override protected function doValidation(param1:Object) : Array
      {
         var _loc2_:Array = super.doValidation(param1);
         var _loc3_:String = !!param1?String(param1):"";
         if(_loc2_.length > 0 || _loc3_.length == 0 && !required)
         {
            return _loc2_;
         }
         return this.validateNumber(param1,null);
      }
      
      override protected function resourcesChanged() : void
      {
         super.resourcesChanged();
         loadChangedResources();
         this.negativeNumberFormatError = this.negativeNumberFormatErrorOverride;
      }
      
      [Bindable("change")]
      public function validateNumber(param1:Object, param2:String) : Array
      {
         var _loc7_:String = null;
         var _loc9_:NumberFormatter = null;
         var _loc11_:int = 0;
         var _loc3_:Number = Number(maxValue);
         var _loc4_:Number = Number(minValue);
         var _loc5_:String = String(param1);
         var _loc6_:Array = [];
         if(!_loc5_)
         {
            return _loc6_;
         }
         if(!g11nWorkingInstance || !g11nWorkingInstance.actualLocaleIDName || g11nWorkingInstance.lastOperationStatus == LastOperationStatus.LOCALE_UNDEFINED_ERROR)
         {
            _loc6_.push(new ValidationResult(true,param2,"localeUndefinedError",localeUndefinedError));
            return _loc6_;
         }
         _loc7_ = GlobalizationUtils.trim(_loc5_);
         var _loc8_:int = _loc7_.length;
         if(!validateNumberFormat(_loc7_,_loc6_,param2))
         {
            return _loc6_;
         }
         _loc9_ = g11nWorkingInstance as NumberFormatter;
         var _loc10_:Number = _loc9_.parseNumber(_loc7_);
         if(_loc9_.lastOperationStatus == LastOperationStatus.PARSE_ERROR)
         {
            if(!this.detectAndReportProblem(_loc7_,param2,_loc6_))
            {
               return _loc6_;
            }
            _loc6_.push(new ValidationResult(true,param2,"parseError",parseError));
            return _loc6_;
         }
         if(!validateNumberNegativity(_loc10_,param2,_loc6_))
         {
            return _loc6_;
         }
         if(this.negativeNumberFormat <= 2)
         {
            _loc11_ = _loc7_.lastIndexOf(decimalSeparator);
         }
         else
         {
            _loc11_ = _loc7_.indexOf(decimalSeparator);
         }
         if(!validateFractionPart(_loc7_,_loc11_,param2,_loc6_))
         {
            return _loc6_;
         }
         if(!validateNumberRange(_loc10_,param2,_loc6_))
         {
            return _loc6_;
         }
         return _loc6_;
      }
      
      private function detectAndReportProblem(param1:String, param2:String, param3:Array) : Boolean
      {
         var _loc4_:int = param1.length;
         var _loc5_:String = VALID_CHARS + decimalSeparator + groupingSeparator;
         if(validateInputCharacters(param1,_loc4_,_loc5_))
         {
            param3.push(new ValidationResult(true,param2,"invalidChar",invalidCharError));
            return false;
         }
         if(decimalSeparator != negativeSymbol && param1.indexOf(decimalSeparator) != param1.lastIndexOf(decimalSeparator))
         {
            param3.push(new ValidationResult(true,param2,"decimalPointCount",decimalPointCountError));
            return false;
         }
         var _loc6_:Boolean = false;
         if(this.negativeNumberFormat <= 2)
         {
            _loc6_ = true;
         }
         else
         {
            if(!validateDecimalString(param1,param2,param3,_loc6_))
            {
               return false;
            }
            if(inputHasNegativeSymbol(param1) || param1.charAt(0) == "(" && param1.charAt(_loc4_ - 1) == ")")
            {
               param3.push(new ValidationResult(true,param2,"negativeNumberFormat",this.negativeNumberFormatError));
               return false;
            }
         }
         return true;
      }
   }
}
