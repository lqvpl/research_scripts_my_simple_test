package mx.formatters
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class CurrencyFormatter extends Formatter
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      private var _alignSymbol:String;
      
      private var alignSymbolOverride:String;
      
      private var _currencySymbol:String;
      
      private var currencySymbolOverride:String;
      
      private var _decimalSeparatorFrom:String;
      
      private var decimalSeparatorFromOverride:String;
      
      private var _decimalSeparatorTo:String;
      
      private var decimalSeparatorToOverride:String;
      
      private var _precision:Object;
      
      private var precisionOverride:Object;
      
      private var _rounding:String;
      
      private var roundingOverride:String;
      
      private var _thousandsSeparatorFrom:String;
      
      private var thousandsSeparatorFromOverride:String;
      
      private var _thousandsSeparatorTo:String;
      
      private var thousandsSeparatorToOverride:String;
      
      private var _useNegativeSign:Object;
      
      private var useNegativeSignOverride:Object;
      
      private var _useThousandsSeparator:Object;
      
      private var useThousandsSeparatorOverride:Object;
      
      public function CurrencyFormatter()
      {
         super();
      }
      
      public function get alignSymbol() : String
      {
         return this._alignSymbol;
      }
      
      public function set alignSymbol(param1:String) : void
      {
         this.alignSymbolOverride = param1;
         this._alignSymbol = param1 != null?param1:resourceManager.getString("SharedResources","alignSymbol");
      }
      
      public function get currencySymbol() : String
      {
         return this._currencySymbol;
      }
      
      public function set currencySymbol(param1:String) : void
      {
         this.currencySymbolOverride = param1;
         this._currencySymbol = param1 != null?param1:resourceManager.getString("SharedResources","currencySymbol");
      }
      
      public function get decimalSeparatorFrom() : String
      {
         return this._decimalSeparatorFrom;
      }
      
      public function set decimalSeparatorFrom(param1:String) : void
      {
         this.decimalSeparatorFromOverride = param1;
         this._decimalSeparatorFrom = param1 != null?param1:resourceManager.getString("SharedResources","decimalSeparatorFrom");
      }
      
      public function get decimalSeparatorTo() : String
      {
         return this._decimalSeparatorTo;
      }
      
      public function set decimalSeparatorTo(param1:String) : void
      {
         this.decimalSeparatorToOverride = param1;
         this._decimalSeparatorTo = param1 != null?param1:resourceManager.getString("SharedResources","decimalSeparatorTo");
      }
      
      public function get precision() : Object
      {
         return this._precision;
      }
      
      public function set precision(param1:Object) : void
      {
         this.precisionOverride = param1;
         this._precision = param1 != null?int(param1):resourceManager.getInt("formatters","currencyFormatterPrecision");
      }
      
      public function get rounding() : String
      {
         return this._rounding;
      }
      
      public function set rounding(param1:String) : void
      {
         this.roundingOverride = param1;
         this._rounding = param1 != null?param1:resourceManager.getString("formatters","rounding");
      }
      
      public function get thousandsSeparatorFrom() : String
      {
         return this._thousandsSeparatorFrom;
      }
      
      public function set thousandsSeparatorFrom(param1:String) : void
      {
         this.thousandsSeparatorFromOverride = param1;
         this._thousandsSeparatorFrom = param1 != null?param1:resourceManager.getString("SharedResources","thousandsSeparatorFrom");
      }
      
      public function get thousandsSeparatorTo() : String
      {
         return this._thousandsSeparatorTo;
      }
      
      public function set thousandsSeparatorTo(param1:String) : void
      {
         this.thousandsSeparatorToOverride = param1;
         this._thousandsSeparatorTo = param1 != null?param1:resourceManager.getString("SharedResources","thousandsSeparatorTo");
      }
      
      public function get useNegativeSign() : Object
      {
         return this._useNegativeSign;
      }
      
      public function set useNegativeSign(param1:Object) : void
      {
         this.useNegativeSignOverride = param1;
         this._useNegativeSign = param1 != null?Boolean(param1):resourceManager.getBoolean("formatters","useNegativeSignInCurrency");
      }
      
      public function get useThousandsSeparator() : Object
      {
         return this._useThousandsSeparator;
      }
      
      public function set useThousandsSeparator(param1:Object) : void
      {
         this.useThousandsSeparatorOverride = param1;
         this._useThousandsSeparator = param1 != null?Boolean(param1):resourceManager.getBoolean("formatters","useThousandsSeparator");
      }
      
      override protected function resourcesChanged() : void
      {
         super.resourcesChanged();
         this.alignSymbol = this.alignSymbolOverride;
         this.currencySymbol = this.currencySymbolOverride;
         this.decimalSeparatorFrom = this.decimalSeparatorFromOverride;
         this.decimalSeparatorTo = this.decimalSeparatorToOverride;
         this.precision = this.precisionOverride;
         this.rounding = this.roundingOverride;
         this.thousandsSeparatorFrom = this.thousandsSeparatorFromOverride;
         this.thousandsSeparatorTo = this.thousandsSeparatorToOverride;
         this.useNegativeSign = this.useNegativeSignOverride;
         this.useThousandsSeparator = this.useThousandsSeparatorOverride;
      }
      
      override public function format(param1:Object) : String
      {
         var _loc8_:String = null;
         var _loc9_:Array = null;
         var _loc10_:String = null;
         var _loc11_:Number = NaN;
         var _loc12_:String = null;
         var _loc13_:Number = NaN;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:String = null;
         if(error)
         {
            error = null;
         }
         if(this.useThousandsSeparator && (this.decimalSeparatorFrom == this.thousandsSeparatorFrom || this.decimalSeparatorTo == this.thousandsSeparatorTo))
         {
            error = defaultInvalidFormatError;
            return "";
         }
         if(this.decimalSeparatorTo == "")
         {
            error = defaultInvalidFormatError;
            return "";
         }
         var _loc2_:NumberBase = new NumberBase(this.decimalSeparatorFrom,this.thousandsSeparatorFrom,this.decimalSeparatorTo,this.thousandsSeparatorTo);
         if(param1 is String)
         {
            _loc8_ = _loc2_.parseNumberString(String(param1));
            if(_loc8_ == "0")
            {
               _loc9_ = param1.split(this.decimalSeparatorFrom);
               param1 = _loc9_[0];
               if(_loc9_[1] != undefined)
               {
                  param1 = param1 + ("." + _loc9_[1]);
               }
               else
               {
                  param1 = _loc8_;
               }
            }
            else
            {
               param1 = _loc8_;
            }
         }
         if(param1 === null || isNaN(Number(param1)))
         {
            error = defaultInvalidValueError;
            return "";
         }
         var _loc3_:* = Number(param1) < 0;
         var _loc4_:String = param1.toString();
         var _loc5_:Array = _loc4_.split(".");
         var _loc6_:int = !!_loc5_[1]?int(String(_loc5_[1]).length):0;
         if(this.precision <= _loc6_)
         {
            if(this.rounding != NumberBaseRoundType.NONE)
            {
               _loc4_ = _loc2_.formatRoundingWithPrecision(_loc4_,this.rounding,int(this.precision));
            }
         }
         var _loc7_:Number = Number(_loc4_);
         if(Math.abs(_loc7_) >= 1)
         {
            _loc5_ = _loc4_.split(".");
            _loc10_ = !!this.useThousandsSeparator?_loc2_.formatThousands(String(_loc5_[0])):String(_loc5_[0]);
            if(_loc5_[1] != null && _loc5_[1] != "")
            {
               _loc4_ = _loc10_ + this.decimalSeparatorTo + _loc5_[1];
            }
            else
            {
               _loc4_ = _loc10_;
            }
         }
         else if(Math.abs(_loc7_) >= 0)
         {
            if(_loc4_.indexOf("e") != -1)
            {
               _loc13_ = Math.abs(_loc7_) + 1;
               _loc4_ = _loc13_.toString();
            }
            _loc11_ = _loc4_.indexOf(".");
            _loc12_ = _loc11_ > 0?"0":"";
            if(_loc11_ != -1)
            {
               _loc4_ = _loc12_ + this.decimalSeparatorTo + _loc4_.substring(_loc11_ + 1);
            }
         }
         _loc4_ = _loc2_.formatPrecision(_loc4_,int(this.precision));
         if(Number(_loc4_) == 0)
         {
            _loc3_ = false;
         }
         if(_loc3_)
         {
            _loc4_ = _loc2_.formatNegative(_loc4_,this.useNegativeSign);
         }
         if(!_loc2_.isValid)
         {
            error = defaultInvalidFormatError;
            return "";
         }
         if(this.alignSymbol == "left")
         {
            if(_loc3_)
            {
               _loc14_ = _loc4_.charAt(0);
               _loc15_ = _loc4_.substr(1,_loc4_.length - 1);
               _loc4_ = _loc14_ + this.currencySymbol + _loc15_;
            }
            else
            {
               _loc4_ = this.currencySymbol + _loc4_;
            }
         }
         else if(this.alignSymbol == "right")
         {
            _loc16_ = _loc4_.charAt(_loc4_.length - 1);
            if(_loc3_ && _loc16_ == ")")
            {
               _loc15_ = _loc4_.substr(0,_loc4_.length - 1);
               _loc4_ = _loc15_ + this.currencySymbol + _loc16_;
            }
            else
            {
               _loc4_ = _loc4_ + this.currencySymbol;
            }
         }
         else
         {
            error = defaultInvalidFormatError;
            return "";
         }
         return _loc4_;
      }
   }
}
