package com.enfluid.ltp.util
{
   import spark.components.HGroup;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import mx.core.FlexGlobals;
   
   public final class CSVStringUtils
   {
      
      public static var NEWLINE_TOKENS:Array = new Array("\n","\r");
      
      public static var WHITESPACE_TOKENS:Array = new Array(" ","\t");
       
      
      public function CSVStringUtils()
      {
         super();
      }
      
      public static function count(param1:String, param2:String, param3:Number = 0, param4:Number = 0) : Number
      {
         §§push(param4);
         §§push(0);
         if(_loc7_)
         {
            §§push(-§§pop() * 28 * 79 + 1 - 86);
         }
         if(§§pop() === §§pop())
         {
            param4 = param1.length;
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(-((-(§§pop() - 1 - 115) - 1) * 97) * 40);
         }
         var _loc5_:Number = §§pop();
         param1 = param1.slice(param3,param4);
         while(true)
         {
            §§push(param1.length);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() + 6 - 1));
            }
            if(!(§§pop() > §§pop() && §§pop() != §§pop()))
            {
               break;
            }
            param1 = param1.slice(param1.indexOf(param2) + param2.length);
            _loc5_++;
         }
         return _loc5_;
      }
      
      public static function trim(param1:String, param2:Array = null) : String
      {
         var _loc3_:Array = null;
         if(param2)
         {
            _loc3_ = param2;
         }
         else
         {
            _loc3_ = WHITESPACE_TOKENS.concat(NEWLINE_TOKENS);
         }
         param1 = trimLeft(param1,_loc3_);
         param1 = trimRight(param1,_loc3_);
         return param1;
      }
      
      public static function trimLeft(param1:String, param2:Array = null) : String
      {
         var _loc3_:Array = null;
         if(param2)
         {
            _loc3_ = param2;
         }
         else
         {
            _loc3_ = WHITESPACE_TOKENS.concat(NEWLINE_TOKENS);
         }
         while(true)
         {
            §§push(_loc3_.toString());
            §§push(param1);
            §§push(0);
            if(_loc4_)
            {
               §§push((§§pop() - 71 - 25 - 1 - 117) * 68 - 18);
            }
            §§push(§§pop().indexOf(§§pop().substr(§§pop(),1)));
            §§push(-1);
            if(_loc5_)
            {
               §§push((§§pop() + 1) * 39 * 63);
            }
            if(!(§§pop() > §§pop() && §§pop() > §§pop()))
            {
               break;
            }
            §§push(param1);
            §§push(1);
            if(_loc4_)
            {
               §§push(-§§pop() - 109 - 1 - 1 + 1 + 1 + 111);
            }
            param1 = §§pop().substr(§§pop());
         }
         return param1;
      }
      
      public static function trimRight(param1:String, param2:Array = null) : String
      {
         var _loc3_:Array = null;
         if(param2)
         {
            _loc3_ = param2;
         }
         else
         {
            _loc3_ = WHITESPACE_TOKENS.concat(NEWLINE_TOKENS);
         }
         while(true)
         {
            §§push(_loc3_.toString().indexOf(param1.substr(param1.length - 1)));
            §§push(-1);
            if(_loc4_)
            {
               §§push(§§pop() + 84 - 1 - 119);
            }
            if(!(§§pop() > §§pop() && §§pop() > §§pop()))
            {
               break;
            }
            §§push(param1);
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() - 38 - 1 - 1);
            }
            param1 = §§pop().substr(§§pop(),param1.length - 1);
         }
         return param1;
      }
   }
}
