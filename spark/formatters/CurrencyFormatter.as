package spark.formatters
{
   import spark.formatters.supportClasses.NumberFormatterBase;
   import mx.formatters.IFormatter;
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import spark.globalization.LastOperationStatus;
   import flash.globalization.CurrencyParseResult;
   import flash.globalization.NationalDigitsType;
   import mx.resources.ResourceManager;
   
   use namespace mx_internal;
   
   public class CurrencyFormatter extends NumberFormatterBase implements IFormatter
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const CURRENCY_ISOCODE:String = "currencyISOCode";
      
      private static const CURRENCY_SYMBOL:String = "currencySymbol";
      
      private static const NEGATIVE_CURRENCY_FORMAT:String = "negativeCurrencyFormat";
      
      private static const POSITIVE_CURRENCY_FORMAT:String = "positiveCurrencyFormat";
       
      
      private var resourceManager:IResourceManager;
      
      private var currencySymbolOverride:String = null;
      
      private var currencyISOCodeOverride:String = null;
      
      private var _useCurrencySymbol:Boolean = false;
      
      private var defaultCurrencyISOCode:String = null;
      
      public function CurrencyFormatter()
      {
         this.resourceManager = ResourceManager.getInstance();
         super();
      }
      
      public static function getAvailableLocaleIDNames() : Vector.<String>
      {
         var _loc1_:Vector.<String> = flash.globalization.CurrencyFormatter.getAvailableLocaleIDNames();
         return !!_loc1_?_loc1_:new Vector.<String>["en-US"]();
      }
      
      [Bindable("change")]
      override public function get actualLocaleIDName() : String
      {
         if(g11nWorkingInstance)
         {
            return (g11nWorkingInstance as flash.globalization.CurrencyFormatter).actualLocaleIDName;
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
      public function get currencyISOCode() : String
      {
         if(g11nWorkingInstance)
         {
            return g11nWorkingInstance.currencyISOCode;
         }
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            return undefined;
         }
         return properties.currencyISOCode;
      }
      
      public function set currencyISOCode(param1:String) : void
      {
         var _loc2_:String = null;
         if(this.currencyISOCodeOverride && this.currencyISOCodeOverride == param1)
         {
            return;
         }
         this.currencyISOCodeOverride = param1;
         if(g11nWorkingInstance)
         {
            g11nWorkingInstance.setCurrency(param1,g11nWorkingInstance.currencySymbol);
         }
         else
         {
            if(!param1)
            {
               _loc2_ = this.resourceManager.getString("core","nullParameter",[this.currencyISOCode]);
               throw new TypeError(_loc2_);
            }
            if(properties)
            {
               properties.currencyISOCode = param1;
            }
            fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
         }
         update();
      }
      
      [Bindable("change")]
      public function get currencySymbol() : String
      {
         if(g11nWorkingInstance)
         {
            return g11nWorkingInstance.currencySymbol;
         }
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            return undefined;
         }
         return properties.currencySymbol;
      }
      
      public function set currencySymbol(param1:String) : void
      {
         var _loc2_:String = null;
         if(this.currencySymbolOverride && this.currencySymbolOverride == param1)
         {
            return;
         }
         this.currencySymbolOverride = param1;
         if(g11nWorkingInstance)
         {
            g11nWorkingInstance.setCurrency(g11nWorkingInstance.currencyISOCode,param1);
         }
         else
         {
            if(!param1)
            {
               _loc2_ = this.resourceManager.getString("core","nullParameter",[this.currencySymbol]);
               throw new TypeError(_loc2_);
            }
            if(properties)
            {
               properties.currencySymbol = param1;
            }
            fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
         }
         update();
      }
      
      [Bindable("change")]
      public function get negativeCurrencyFormat() : uint
      {
         return getBasicProperty(properties,NEGATIVE_CURRENCY_FORMAT);
      }
      
      public function set negativeCurrencyFormat(param1:uint) : void
      {
         var _loc2_:String = null;
         if(!g11nWorkingInstance)
         {
            if(param1 < 0 || 15 < param1)
            {
               _loc2_ = this.resourceManager.getString("core","badIndex");
               throw new ArgumentError(_loc2_);
            }
         }
         setBasicProperty(properties,NEGATIVE_CURRENCY_FORMAT,param1);
      }
      
      [Bindable("change")]
      public function get positiveCurrencyFormat() : uint
      {
         return getBasicProperty(properties,POSITIVE_CURRENCY_FORMAT);
      }
      
      public function set positiveCurrencyFormat(param1:uint) : void
      {
         var _loc2_:String = null;
         if(!g11nWorkingInstance)
         {
            if(param1 < 0 || 4 < param1)
            {
               _loc2_ = this.resourceManager.getString("core","badIndex");
               throw new ArgumentError(_loc2_);
            }
         }
         setBasicProperty(properties,POSITIVE_CURRENCY_FORMAT,param1);
      }
      
      [Bindable("change")]
      public function get useCurrencySymbol() : Boolean
      {
         return this._useCurrencySymbol;
      }
      
      public function set useCurrencySymbol(param1:Boolean) : void
      {
         if(this._useCurrencySymbol == param1)
         {
            return;
         }
         this._useCurrencySymbol = param1;
         update();
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
         g11nWorkingInstance = new flash.globalization.CurrencyFormatter(localeStyle);
         if(g11nWorkingInstance && g11nWorkingInstance.lastOperationStatus != LastOperationStatus.UNSUPPORTED_ERROR)
         {
            properties = g11nWorkingInstance;
            this.defaultCurrencyISOCode = properties.currencyISOCode;
            propagateBasicProperties(g11nWorkingInstance);
            if(this.currencySymbolOverride)
            {
               g11nWorkingInstance.setCurrency(g11nWorkingInstance.currencyISOCode,this.currencySymbolOverride);
            }
            if(this.currencyISOCodeOverride)
            {
               g11nWorkingInstance.setCurrency(this.currencyISOCodeOverride,g11nWorkingInstance.currencySymbol);
            }
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
         var _loc3_:flash.globalization.CurrencyFormatter = null;
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
               (g11nWorkingInstance as flash.globalization.CurrencyFormatter).fractionalDigits = -1;
            }
            else
            {
               fallbackLastOperationStatus = LastOperationStatus.ILLEGAL_ARGUMENT_ERROR;
            }
            return errorText;
         }
         if(g11nWorkingInstance)
         {
            _loc3_ = g11nWorkingInstance as flash.globalization.CurrencyFormatter;
            _loc4_ = _loc3_.format(_loc2_,this.useCurrencySymbol);
            return errorText && LastOperationStatus.isError(_loc3_.lastOperationStatus)?errorText:_loc4_;
         }
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            return errorText;
         }
         fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
         return (!!this.useCurrencySymbol?this.currencySymbol:this.currencyISOCode) + _loc2_.toFixed(properties.fractionalDigits);
      }
      
      [Bindable("change")]
      public function formattingWithCurrencySymbolIsSafe(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(!param1)
         {
            _loc2_ = this.resourceManager.getString("core","nullParameter",[param1]);
            throw new TypeError(_loc2_);
         }
         if(g11nWorkingInstance)
         {
            (g11nWorkingInstance as flash.globalization.CurrencyFormatter).fractionalDigits = g11nWorkingInstance.fractionalDigits;
         }
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            return undefined;
         }
         fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
         return param1 == this.defaultCurrencyISOCode;
      }
      
      [Bindable("change")]
      public function parse(param1:String) : CurrencyParseResult
      {
         if(g11nWorkingInstance)
         {
            return g11nWorkingInstance.parse(param1);
         }
         if(localeStyle === undefined || localeStyle === null)
         {
            fallbackLastOperationStatus = LastOperationStatus.LOCALE_UNDEFINED_ERROR;
            return undefined;
         }
         fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
         var _loc2_:CurrencyParseResult = this.fallbackParseCurrency(param1);
         fallbackLastOperationStatus = !!isNaN(_loc2_.value)?LastOperationStatus.PARSE_ERROR:LastOperationStatus.NO_ERROR;
         return _loc2_;
      }
      
      private function fallbackParseCurrency(param1:String) : CurrencyParseResult
      {
         return parseToCurrencyParseResult(param1);
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
            "negativeCurrencyFormat":0,
            "positiveCurrencyFormat":0,
            "leadingZero":true,
            "trailingZeros":false,
            "currencyISOCode":"USD",
            "currencySymbol":"$"
         };
         this.defaultCurrencyISOCode = "USD";
         if(this.currencySymbolOverride)
         {
            properties.currencySymbol = this.currencySymbolOverride;
         }
         if(this.currencyISOCodeOverride)
         {
            properties.currencyISOCode = this.currencyISOCodeOverride;
         }
         propagateBasicProperties(properties);
         fallbackLastOperationStatus = LastOperationStatus.NO_ERROR;
      }
   }
}
