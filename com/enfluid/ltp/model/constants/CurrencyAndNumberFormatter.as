package com.enfluid.ltp.model.constants
{
   import spark.components.Label;
   import mx.binding.BindingManager;
   import mx.formatters.CurrencyFormatter;
   import com.enfluid.ltp.model.DataModel;
   import spark.formatters.NumberFormatter;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.components.majestic.target;
   import com.enfluid.ltp.view.components.majestic.CompetitorMajesticAnalysisHeaderComponent;
   import mx.binding.Binding;
   import flash.utils.ByteArray;
   import mx.graphics.GradientEntry;
   
   use namespace mx_internal;
   
   public final class CurrencyAndNumberFormatter
   {
       
      
      public var isPrefix:Boolean;
      
      public var prefixSuffix:String;
      
      public var currencyDecimals:Number;
      
      public var decimals:Number = 0;
      
      public var currencyFormatter:CurrencyFormatter;
      
      public var txt:String;
      
      public var model:DataModel;
      
      public var cf:CurrencyFormatter;
      
      public var nf:NumberFormatter;
      
      public function CurrencyAndNumberFormatter()
      {
         this.model = DataModel.instance;
         this.cf = new CurrencyFormatter();
         this.nf = new NumberFormatter();
         super();
         this.cf.rounding = "up";
         this.cf.decimalSeparatorFrom = ".";
         this.cf.decimalSeparatorTo = ".";
         this.cf.useNegativeSign = "true";
         this.cf.useThousandsSeparator = "true";
         this.cf.thousandsSeparatorFrom = ",";
         this.cf.thousandsSeparatorTo = ",";
         this.isPrefix = this.model.selectedProject.currencySignBeforeNumber;
         this.prefixSuffix = this.model.selectedProject.currencySign;
         this.currencyDecimals = this.model.selectedProject.currencyDecimals;
         this.nf.trailingZeros = false;
      }
      
      public final function formattedNumberValue(param1:Object) : String
      {
         var _loc2_:Number = Number(param1);
         §§push(_loc2_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 32 - 85) * 118 * 94 - 19) + 1);
         }
         if(§§pop() < §§pop())
         {
            return " ";
         }
         return this.nf.format(param1);
      }
      
      public final function formattedCurrencyValue(param1:String) : String
      {
         var _loc2_:Number = Number(param1);
         §§push(Number(param1));
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 1 - 1);
         }
         if(§§pop() < §§pop())
         {
            return "";
         }
         this.cf.alignSymbol = !!this.isPrefix?"left":"right";
         this.cf.currencySymbol = this.prefixSuffix;
         this.cf.precision = this.currencyDecimals;
         this.txt = this.cf.format(Number(param1));
         return this.txt;
      }
   }
}
