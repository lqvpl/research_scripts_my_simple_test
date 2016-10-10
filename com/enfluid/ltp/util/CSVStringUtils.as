package com.enfluid.ltp.util
{
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import flash.utils.ByteArray;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IDataHolder;
   import hr.binaria.asx3m.converters.IConverterLookup;
   import hr.binaria.asx3m.mapper.IMapper;
   import hr.binaria.asx3m.core.TreeUnmarshaller;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.graphics.SolidColorStroke;
   import flash.events.MouseEvent;
   
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
         if(_loc6_)
         {
            §§push(((-§§pop() - 26) * 107 - 1) * 21 + 1);
         }
         if(§§pop() === §§pop())
         {
            param4 = param1.length;
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() - 1) * 60 + 1) * 32 - 1 - 1);
         }
         var _loc5_:Number = §§pop();
         param1 = param1.slice(param3,param4);
         while(true)
         {
            §§push(param1.length);
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() + 1 - 27) * 12);
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
               §§push(((§§pop() + 1 - 111 - 1) * 98 - 41) * 114);
            }
            §§push(§§pop().indexOf(§§pop().substr(§§pop(),1)));
            §§push(-1);
            if(_loc5_)
            {
               §§push(-(((§§pop() + 1) * 64 + 28) * 89 * 22 - 1));
            }
            if(!(§§pop() > §§pop() && §§pop() > §§pop()))
            {
               break;
            }
            §§push(param1);
            §§push(1);
            if(_loc4_)
            {
               §§push(-§§pop() - 1 + 1);
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
               §§push(-(-(-(§§pop() + 39 + 108) * 89) - 94));
            }
            if(!(§§pop() > §§pop() && §§pop() > §§pop()))
            {
               break;
            }
            §§push(param1);
            §§push(0);
            if(_loc4_)
            {
               §§push((§§pop() - 52 - 8 + 1 - 1) * 71);
            }
            param1 = §§pop().substr(§§pop(),param1.length - 1);
         }
         return param1;
      }
   }
}
