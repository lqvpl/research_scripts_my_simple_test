package spark.formatters
{
   import spark.formatters.supportClasses.NumberFormatterBase;
   import mx.formatters.IFormatter;
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import spark.globalization.LastOperationStatus;
   import flash.globalization.NumberParseResult;
   import flash.globalization.NationalDigitsType;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class NumberFormatter extends NumberFormatterBase implements IFormatter
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const NEGATIVE_NUMBER_FORMAT:String = "negativeNumberFormat";
       
      
      private var resourceManager:IResourceManager;
      
      public function NumberFormatter()
      {
         this.resourceManager = ResourceManager.getInstance();
         super();
      }
      
      public static function getAvailableLocaleIDNames() : Vector.<String>
      {
         var _loc1_:Vector.<String> = flash.globalization.NumberFormatter.getAvailableLocaleIDNames();
         return !!_loc1_?_loc1_:new Vector.<String>["en-US"]();
      }
      
      [Bindable("change")]
      override public function get actualLocaleIDName() : String
      {
         if(g11nWorkingInstance)
         {
            return (g11nWorkingInstance as flash.globalization.NumberFormatter).actualLocaleIDName;
         }
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            return undefined;
         }
         fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
         return "en-US";
      }
      
      [Bindable("change")]
      public function get negativeNumberFormat() : uint
      {
         return getBasicProperty(properties,NEGATIVE_NUMBER_FORMAT);
      }
      
      public function set negativeNumberFormat(param1:uint) : void
      {
         var _loc2_:String = null;
         if(!g11nWorkingInstance)
         {
            if(4 < param1)
            {
               _loc2_ = this.resourceManager.getString("core","badIndex",[this.negativeNumberFormat]);
               throw new ArgumentError(_loc2_);
            }
         }
         setBasicProperty(properties,NEGATIVE_NUMBER_FORMAT,param1);
      }
      
      override mx_internal function createWorkingInstance() : void
      {
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            g11nWorkingInstance = null;
            properties = null;
            return;
         }
         if(enforceFallback)
         {
            this.fallbackInstantiate();
            g11nWorkingInstance = null;
            return;
         }
         g11nWorkingInstance = new flash.globalization.NumberFormatter(localeStyle);
         if(g11nWorkingInstance && g11nWorkingInstance.lastOperationStatus != LastOperationStatus.UNSUPPORTED_ERROR)
         {
            properties = g11nWorkingInstance;
            propagateBasicProperties(g11nWorkingInstance);
            return;
         }
         this.fallbackInstantiate();
         g11nWorkingInstance = null;
         if(fallbackLastOperationStatus == LastOperationStatus.NO_ERROR)
         {
            fallbackLastOperationStatus = LastOperationStatus.USING_FALLBACK_WARNING;
         }
      }
      
      [Bindable("change")]
      public function format(param1:Object) : String
      {
         var _loc3_:flash.globalization.NumberFormatter = null;
         var _loc4_:String = null;
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Number = Number(param1);
         if(isNaN(_loc2_))
         {
            if(g11nWorkingInstance)
            {
               (g11nWorkingInstance as flash.globalization.NumberFormatter).fractionalDigits = -1;
            }
            else
            {
               fallbackLastOperationStatus = LastOperationStatus.ILLEGAL_ARGUMENT_ERROR;
            }
            return errorText;
         }
         if(g11nWorkingInstance)
         {
            _loc3_ = g11nWorkingInstance as flash.globalization.NumberFormatter;
            _loc4_ = _loc3_.formatNumber(_loc2_);
            return errorText && LastOperationStatus.isError(_loc3_.lastOperationStatus)?errorText:_loc4_;
         }
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            return errorText;
         }
         fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
         return _loc2_.toFixed(properties.fractionalDigits);
      }
      
      [Bindable("change")]
      public function parse(param1:String) : NumberParseResult
      {
         if(g11nWorkingInstance)
         {
            return (g11nWorkingInstance as flash.globalization.NumberFormatter).parse(param1);
         }
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            return undefined;
         }
         fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
         return this.fallbackParse(param1);
      }
      
      [Bindable("change")]
      public function parseNumber(param1:String) : Number
      {
         if(g11nWorkingInstance)
         {
            return (g11nWorkingInstance as flash.globalization.NumberFormatter).parseNumber(param1);
         }
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            return undefined;
         }
         var _loc2_:Number = this.fallbackParseNumber(param1);
         fallbackLastOperationStatus = !!isNaN(_loc2_)?LastOperationStatus.PARSE_ERROR:LastOperationStatus.NO_ERROR;
         return _loc2_;
      }
      
      private function fallbackParse(param1:String) : NumberParseResult
      {
         return parseToNumberParseResult(param1);
      }
      
      private function fallbackParseNumber(param1:String) : Number
      {
         var _loc2_:NumberParseResult = parseToNumberParseResult(param1);
         if(!_loc2_.startIndex && _loc2_.endIndex == param1.length)
         {
            return _loc2_.value;
         }
         return NaN;
      }
      
      private function fallbackInstantiate() : void
      {
         properties = {
            "fractionalDigits":0,
            "useGrouping":false,
            "groupingPattern":"3",
            "digitsType":NationalDigitsType.EUROPEAN,
            "decimalSeparator":".",
            "groupingSeparator":",",
            "negativeSymbol":"-",
            "negativeNumberFormat":0,
            "leadingZero":true,
            "trailingZeros":false
         };
         propagateBasicProperties(properties);
         fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
      }
   }
}
