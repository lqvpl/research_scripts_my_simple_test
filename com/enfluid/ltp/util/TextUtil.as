package com.enfluid.ltp.util
{
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   
   public final class TextUtil
   {
       
      
      public function TextUtil()
      {
         super();
      }
      
      public static function stripLineBreaks(param1:String) : String
      {
         while(true)
         {
            §§push(param1.indexOf("\n"));
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-§§pop() - 1));
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            param1 = param1.replace("\n","");
         }
         return param1;
      }
   }
}
