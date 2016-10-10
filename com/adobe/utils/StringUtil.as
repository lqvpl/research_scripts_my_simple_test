package com.adobe.utils
{
   import mx.collections.ArrayList;
   import flash.events.Event;
   import com.enfluid.ltp.controller.common.SaveGoogleCredentialsCommand;
   import flash.events.MouseEvent;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   
   public final class StringUtil
   {
       
      
      public function StringUtil()
      {
         super();
      }
      
      public static function beginsWith(param1:String, param2:String) : Boolean
      {
         §§push(param2);
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 0 - 1) * 71));
         }
         return §§pop() == §§pop().substring(§§pop(),param2.length);
      }
      
      public static function trim(param1:String) : String
      {
         return StringUtil.ltrim(StringUtil.rtrim(param1));
      }
      
      public static function stringsAreEqual(param1:String, param2:String, param3:Boolean) : Boolean
      {
         if(param3)
         {
            return param1 == param2;
         }
         return param1.toUpperCase() == param2.toUpperCase();
      }
      
      public static function replace(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      public static function rtrim(param1:String) : String
      {
         var _loc2_:Number = param1.length;
         var _loc3_:Number = _loc2_;
         while(true)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc5_)
            {
               §§push((-§§pop() - 1) * 82 + 1);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            §§push(param1.charCodeAt(_loc3_ - 1));
            §§push(32);
            if(_loc4_)
            {
               §§push(-§§pop() * 28 + 1 - 1);
            }
            if(§§pop() > §§pop())
            {
               §§push(param1);
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() - 1 + 29 - 63);
               }
               return §§pop().substring(§§pop(),_loc3_);
            }
            _loc3_--;
         }
         return "";
      }
      
      public static function endsWith(param1:String, param2:String) : Boolean
      {
         return param2 == param1.substring(param1.length - param2.length);
      }
      
      public static function stringHasValue(param1:String) : Boolean
      {
         return param1 != null && §§pop() > §§pop();
      }
      
      public static function remove(param1:String, param2:String) : String
      {
         return StringUtil.replace(param1,param2,"");
      }
      
      public static function ltrim(param1:String) : String
      {
         var _loc2_:Number = param1.length;
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 1 + 72 + 111 + 1) * 65);
         }
         var _loc3_:Number = §§pop();
         while(_loc3_ < _loc2_)
         {
            §§push(param1.charCodeAt(_loc3_));
            §§push(32);
            if(_loc5_)
            {
               §§push((§§pop() - 81 + 32 + 1) * 7 * 7);
            }
            if(§§pop() > §§pop())
            {
               return param1.substring(_loc3_);
            }
            _loc3_++;
         }
         return "";
      }
   }
}
