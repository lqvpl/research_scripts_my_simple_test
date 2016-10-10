package com.hurlant.util
{
   import flash.utils.ByteArray;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import hr.binaria.asx3m.converters.ISingleValueConverter;
   
   public final class Hex
   {
       
      
      public function Hex()
      {
         super();
      }
      
      public static function fromString(param1:String, param2:Boolean = false) : String
      {
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeUTFBytes(param1);
         return fromArray(_loc3_,param2);
      }
      
      public static function toString(param1:String) : String
      {
         var _loc2_:ByteArray = toArray(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function toArray(param1:String) : ByteArray
      {
         param1 = param1.replace(/\s|:/gm,"");
         var _loc2_:ByteArray = new ByteArray();
         §§push(param1.length);
         §§push(1);
         if(_loc5_)
         {
            §§push(-§§pop() - 96 + 12 - 118 - 1 + 62);
         }
         if(§§pop() & §§pop() == §§pop())
         {
            param1 = "0" + param1;
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() * 88 - 1 + 113);
         }
         var _loc3_:uint = §§pop();
         while(_loc3_ < param1.length)
         {
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(2);
            if(_loc4_)
            {
               §§push((-(§§pop() - 34 - 1) - 113) * 75);
            }
            §§push(§§pop() / §§pop());
            §§push();
            §§push(param1);
            §§push(_loc3_);
            §§push(2);
            if(_loc4_)
            {
               §§push((§§pop() - 1) * 34 + 1 + 26 - 1 - 98);
            }
            §§push(§§pop().substr(§§pop(),§§pop()));
            §§push(16);
            if(_loc5_)
            {
               §§push(§§pop() * 47 + 60 - 13 + 1 - 99);
            }
            §§pop()[§§pop()] = §§pop().parseInt(§§pop(),§§pop());
            §§push(_loc3_);
            §§push(2);
            if(_loc4_)
            {
               §§push(§§pop() + 1 - 1 + 25);
            }
            _loc3_ = §§pop() + §§pop();
         }
         return _loc2_;
      }
      
      public static function fromArray(param1:ByteArray, param2:Boolean = false) : String
      {
         var _loc3_:* = "";
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 1 + 30 - 106 - 1);
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < param1.length)
         {
            §§push(_loc3_);
            §§push("0");
            §§push(param1[_loc4_]);
            §§push(16);
            if(_loc5_)
            {
               §§push(-(§§pop() + 111) * 72 + 79);
            }
            §§push(§§pop() + §§pop().toString(§§pop()));
            §§push(-2);
            if(_loc5_)
            {
               §§push((§§pop() - 11 - 8) * 46 * 93 - 57 + 11 + 1);
            }
            _loc3_ = §§pop() + §§pop().substr(§§pop(),2);
            if(param2)
            {
               if(_loc4_ < param1.length - 1)
               {
                  _loc3_ = _loc3_ + ":";
               }
            }
            _loc4_++;
         }
         return _loc3_;
      }
   }
}
