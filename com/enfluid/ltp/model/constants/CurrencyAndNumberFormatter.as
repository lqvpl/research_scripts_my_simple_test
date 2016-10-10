package com.enfluid.ltp.model.constants
{
   import mx.formatters.CurrencyFormatter;
   import com.enfluid.ltp.model.DataModel;
   import spark.formatters.NumberFormatter;
   import com.enfluid.ltp.util.BlowFishUtil;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.controller.filesystem.SaveStringToDiskCommand;
   import flash.utils.ByteArray;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import system.data.Map;
   import system.data.Iterator;
   
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
            §§push(-((§§pop() - 1) * 12) * 0 - 90 + 79);
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
            §§push(--§§pop() - 1 - 45 - 57 + 13);
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
