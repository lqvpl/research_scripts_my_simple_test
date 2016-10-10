package com.enfluid.ltp.util
{
   import flash.net.URLLoader;
   import spark.components.Group;
   import spark.components.TextArea;
   import mx.binding.BindingManager;
   import mx.core.DPIClassification;
   import mx.binding.Binding;
   import spark.filters.DropShadowFilter;
   import spark.components.Label;
   import flash.events.Event;
   import system.data.lists.ArrayList;
   import mx.events.FlexEvent;
   import spark.components.gridClasses.GridColumn;
   import flash.net.URLRequest;
   import flash.net.URLLoaderDataFormat;
   
   public final class CSV extends URLLoader
   {
       
      
      private var FieldSeperator:String;
      
      private var FieldEnclosureToken:String;
      
      private var RecordsetDelimiter:String;
      
      private var Header:Array;
      
      private var EmbededHeader:Boolean;
      
      private var HeaderOverwrite:Boolean;
      
      private var SortField;
      
      private var SortSequence:String;
      
      public function CSV(param1:URLRequest = null)
      {
         super();
         this.fieldSeperator = ",";
         this.fieldEnclosureToken = "\"";
         this.recordsetDelimiter = "\r";
         this.header = new Array();
         this.embededHeader = true;
         this.headerOverwrite = false;
         if(param1)
         {
            load(param1);
         }
         this.dataFormat = URLLoaderDataFormat.TEXT;
         addEventListener(Event.COMPLETE,this.decode);
      }
      
      public function get fieldSeperator() : String
      {
         return this.FieldSeperator;
      }
      
      public function get fieldEnclosureToken() : String
      {
         return this.FieldEnclosureToken;
      }
      
      public function get recordsetDelimiter() : String
      {
         return this.RecordsetDelimiter;
      }
      
      public function get embededHeader() : Boolean
      {
         return this.EmbededHeader;
      }
      
      public function get headerOverwrite() : Boolean
      {
         return this.HeaderOverwrite;
      }
      
      public function get header() : Array
      {
         return this.Header;
      }
      
      public function get headerHasValues() : Boolean
      {
         var check:Boolean = false;
         try
         {
            if(this.Header.length > 0)
            {
               check = true;
            }
         }
         catch(e:Error)
         {
            check = false;
         }
         finally
         {
            return check;
         }
      }
      
      public function get dataHasValues() : Boolean
      {
         var check:Boolean = false;
         try
         {
            if(data.length > 0)
            {
               check = true;
            }
         }
         catch(e:Error)
         {
            check = false;
         }
         finally
         {
            return check;
         }
      }
      
      public function set fieldSeperator(param1:String) : void
      {
         this.FieldSeperator = param1;
      }
      
      public function set fieldEnclosureToken(param1:String) : void
      {
         this.FieldEnclosureToken = param1;
      }
      
      public function set recordsetDelimiter(param1:String) : void
      {
         this.RecordsetDelimiter = param1;
      }
      
      public function set embededHeader(param1:Boolean) : void
      {
         this.EmbededHeader = param1;
      }
      
      public function set headerOverwrite(param1:Boolean) : void
      {
         this.HeaderOverwrite = param1;
      }
      
      public function set header(param1:Array) : void
      {
         if(!this.embededHeader && !this.headerHasValues || !this.embededHeader && this.headerHasValues && this.headerOverwrite || this.headerOverwrite)
         {
            this.Header = param1;
         }
      }
      
      public final function getRecordSet(param1:int) : Array
      {
         if(this.dataHasValues)
         {
            return data[param1];
         }
         return null;
      }
      
      public final function addRecordSet(param1:Array, param2:* = null) : void
      {
         if(!this.dataHasValues)
         {
            data = new Array();
         }
         if(!param2 && §§pop() != §§pop())
         {
            data.push(param1);
         }
         else
         {
            §§push(data);
            §§push(param2);
            §§push(0);
            if(_loc4_)
            {
               §§push((§§pop() + 1) * 89 + 1 - 19 + 104 - 1);
            }
            §§pop().splice(§§pop(),§§pop(),param1);
         }
      }
      
      public final function deleteRecordSet(param1:int, param2:int = 1) : Boolean
      {
         if(this.dataHasValues && param1 < data.length && §§pop() > §§pop())
         {
            return data.splice(param1,param2);
         }
         return false;
      }
      
      public final function search(param1:*, param2:Boolean = true) : Array
      {
         var _loc4_:Array = null;
         var _loc5_:String = null;
         §§push(0);
         if(_loc13_)
         {
            §§push(--§§pop() - 44 - 1);
         }
         var _loc6_:* = §§pop();
         §§push(0);
         if(_loc12_)
         {
            §§push((§§pop() + 12 + 106) * 50 - 1);
         }
         var _loc7_:* = §§pop();
         var _loc3_:Array = new Array();
         §§push(0);
         if(_loc13_)
         {
            §§push(-(§§pop() + 56 + 13 + 117 - 99) - 28);
         }
         for each(_loc4_ in data)
         {
            if(param1 is Array)
            {
               §§push(0);
               if(_loc13_)
               {
                  §§push(-(§§pop() - 1 + 1 + 1) + 1 - 1);
               }
               for each(_loc5_ in param1)
               {
                  §§push(_loc4_.indexOf(String(_loc5_)));
                  §§push(0);
                  if(_loc12_)
                  {
                     §§push((§§pop() - 58 + 1 - 1 - 1 + 99 + 1) * 84);
                  }
                  if(§§pop() >= §§pop())
                  {
                     _loc3_.push(_loc4_);
                  }
               }
            }
            else
            {
               §§push(_loc4_.indexOf(String(param1)));
               §§push(0);
               if(_loc12_)
               {
                  §§push(-((§§pop() + 1 - 1 + 44 + 21) * 91));
               }
               if(§§pop() >= §§pop())
               {
                  _loc3_.push(_loc4_);
               }
            }
         }
         if(param2 && §§pop() > §§pop())
         {
            _loc6_ = int(_loc3_.length - 1);
         }
         while(_loc6_--)
         {
            _loc7_ = int(_loc3_.length);
            while(--_loc7_ > _loc6_)
            {
               if(_loc3_[_loc6_] == _loc3_[_loc7_])
               {
                  §§push(_loc3_);
                  §§push(_loc7_);
                  §§push(1);
                  if(_loc13_)
                  {
                     §§push(-(§§pop() + 1 - 67));
                  }
                  §§pop().splice(§§pop(),§§pop());
               }
            }
         }
         return _loc3_;
      }
      
      public final function sort(param1:* = 0, param2:String = "ASC") : void
      {
         this.SortSequence = param2;
         if(this.headerHasValues && §§pop() >= §§pop())
         {
            this.SortField = this.header.indexOf(param1);
         }
         else
         {
            this.SortField = param1;
         }
         if(this.dataHasValues)
         {
            data.sort(this.sort2DArray);
         }
      }
      
      public final function decode(param1:Event = null) : void
      {
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() * 79 - 1) * 4 - 95 + 1 + 1 - 1);
         }
         var _loc2_:uint = §§pop();
         var _loc3_:Array = new Array();
         data = data.toString().split(this.recordsetDelimiter);
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() - 13) * 94 * 110 + 75) * 95);
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < data.length)
         {
            §§push();
            §§push(_loc2_);
            §§push(2);
            if(_loc5_)
            {
               §§push(§§pop() + 1 - 5 - 91);
            }
            if(!§§pop().Boolean(§§pop() % §§pop()))
            {
               _loc3_.push(data[_loc4_]);
            }
            else
            {
               _loc3_[_loc3_.length - 1] = _loc3_[_loc3_.length - 1] + data[_loc4_];
            }
            _loc2_ = _loc2_ + CSVStringUtils.count(data[_loc4_],this.fieldEnclosureToken);
            _loc4_++;
         }
         _loc3_ = _loc3_.filter(this.isNotEmptyRecord);
         _loc3_.forEach(this.fieldDetection);
         if(this.embededHeader && this.headerOverwrite)
         {
            _loc3_.shift();
         }
         else if(this.embededHeader && this.headerHasValues)
         {
            _loc3_.shift();
         }
         else if(this.embededHeader)
         {
            this.Header = _loc3_.shift();
         }
         data = _loc3_;
      }
      
      public final function encode() : void
      {
         var _loc2_:Array = null;
         var _loc1_:String = "";
         if(this.headerHasValues && §§pop() > §§pop())
         {
            this.embededHeader = true;
            data.unshift(this.header);
         }
         if(this.dataHasValues)
         {
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 1 - 1 - 44) * 111 + 33 + 0 + 103);
            }
            for each(_loc2_ in data)
            {
               _loc1_ = _loc1_ + (this.fieldEnclosureToken + _loc2_.join(this.fieldEnclosureToken + this.fieldSeperator + this.fieldEnclosureToken) + this.fieldEnclosureToken + this.recordsetDelimiter);
            }
         }
         data = _loc1_;
      }
      
      public final function dump() : String
      {
         §§push(0);
         if(_loc4_)
         {
            §§push((-((§§pop() - 46) * 7) - 1) * 75);
         }
         var _loc3_:uint = §§pop();
         var _loc1_:* = "data:Array -> [\r";
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 37 + 19 + 1 + 1 + 1);
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < data.length)
         {
            _loc1_ = _loc1_ + ("\t[" + _loc2_ + "]:Array -> [\r");
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() + 1 - 1 - 101 - 1 + 1);
            }
            _loc3_ = §§pop();
            while(_loc3_ < data[_loc2_].length)
            {
               _loc1_ = _loc1_ + ("\t\t[" + _loc3_ + "]:String -> " + data[_loc2_][_loc3_] + "\r");
               _loc3_++;
            }
            _loc1_ = _loc1_ + "\t]\r";
            _loc2_++;
         }
         _loc1_ = _loc1_ + "]\r";
         return _loc1_;
      }
      
      private final function fieldDetection(param1:*, param2:int, param3:Array) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() + 1 + 1 - 70) * 107);
         }
         var _loc4_:uint = §§pop();
         var _loc5_:Array = new Array();
         var _loc6_:Array = param1.split(this.fieldSeperator);
         §§push(0);
         if(_loc8_)
         {
            §§push(-((§§pop() + 1 + 54 + 1) * 106 - 1) * 27);
         }
         var _loc7_:uint = §§pop();
         while(_loc7_ < _loc6_.length)
         {
            §§push();
            §§push(_loc4_);
            §§push(2);
            if(_loc9_)
            {
               §§push((-(-(§§pop() + 1 + 71) - 1) + 1) * 64);
            }
            if(!§§pop().Boolean(§§pop() % §§pop()))
            {
               _loc5_.push(CSVStringUtils.trim(_loc6_[_loc7_]));
            }
            else
            {
               _loc5_[_loc5_.length - 1] = _loc5_[_loc5_.length - 1] + (this.fieldSeperator + _loc6_[_loc7_]);
            }
            _loc4_ = _loc4_ + CSVStringUtils.count(_loc6_[_loc7_],this.fieldEnclosureToken);
            _loc7_++;
         }
         param3[param2] = _loc5_;
      }
      
      private final function sort2DArray(param1:Array, param2:Array) : Number
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() - 13 + 27 - 90);
         }
         var _loc3_:* = §§pop();
         if(this.SortSequence == "ASC")
         {
            §§push(-1);
            if(_loc6_)
            {
               §§push((§§pop() + 1) * 103 * 103);
            }
         }
         else
         {
            §§push(1);
            if(_loc6_)
            {
               §§push(-(((§§pop() + 85) * 39 + 1) * 95) - 1);
            }
         }
         var _loc4_:int = §§pop();
         if(String(param1[this.SortField]) < String(param2[this.SortField]))
         {
            _loc3_ = int(_loc4_);
         }
         else if(String(param1[this.SortField]) > String(param2[this.SortField]))
         {
            _loc3_ = int(-_loc4_);
         }
         else
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() - 1 - 1 + 62) + 76);
            }
            _loc3_ = §§pop();
         }
         return _loc3_;
      }
      
      private final function isNotEmptyRecord(param1:*, param2:int, param3:Array) : Boolean
      {
         return Boolean(CSVStringUtils.trim(param1));
      }
   }
}
