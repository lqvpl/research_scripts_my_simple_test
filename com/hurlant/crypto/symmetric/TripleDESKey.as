package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.hurlant.util.Memory;
   
   public final class TripleDESKey extends DESKey
   {
       
      
      protected var encKey2:Array;
      
      protected var encKey3:Array;
      
      protected var decKey2:Array;
      
      protected var decKey3:Array;
      
      public function TripleDESKey(param1:ByteArray)
      {
         super(param1);
         §§push();
         §§push();
         §§push(false);
         §§push(param1);
         §§push(8);
         if(_loc2_)
         {
            §§push(((§§pop() - 1 - 1 - 94) * 95 + 79) * 92);
         }
         §§pop().encKey2 = §§pop().generateWorkingKey(§§pop(),§§pop(),§§pop());
         §§push();
         §§push();
         §§push(true);
         §§push(param1);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 99 - 1));
         }
         §§pop().decKey2 = §§pop().generateWorkingKey(§§pop(),§§pop(),§§pop());
         §§push(param1.length);
         §§push(16);
         if(_loc2_)
         {
            §§push((§§pop() + 110 - 75) * 7 - 95 + 1 - 1);
         }
         if(§§pop() > §§pop())
         {
            §§push();
            §§push();
            §§push(true);
            §§push(param1);
            §§push(16);
            if(_loc3_)
            {
               §§push(---(§§pop() - 1 + 70 - 84));
            }
            §§pop().encKey3 = §§pop().generateWorkingKey(§§pop(),§§pop(),§§pop());
            §§push();
            §§push();
            §§push(false);
            §§push(param1);
            §§push(16);
            if(_loc3_)
            {
               §§push(--(§§pop() - 106 + 26 - 31) + 107);
            }
            §§pop().decKey3 = §§pop().generateWorkingKey(§§pop(),§§pop(),§§pop());
         }
         else
         {
            encKey3 = encKey;
            decKey3 = decKey;
         }
      }
      
      override public function encrypt(param1:ByteArray, param2:uint = 0) : void
      {
         desFunc(encKey,param1,param2,param1,param2);
         desFunc(encKey2,param1,param2,param1,param2);
         desFunc(encKey3,param1,param2,param1,param2);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 31 - 1 - 53) * 61);
         }
         var _loc1_:uint = §§pop();
         if(encKey2 != null)
         {
            §§push(0);
            if(_loc2_)
            {
               §§push(--(-(§§pop() + 108) + 48));
            }
            _loc1_ = §§pop();
            while(_loc1_ < encKey2.length)
            {
               §§push(encKey2);
               §§push(_loc1_);
               §§push(0);
               if(_loc2_)
               {
                  §§push(-§§pop() - 47 + 1);
               }
               §§pop()[§§pop()] = §§pop();
               _loc1_++;
            }
            encKey2 = null;
         }
         if(encKey3 != null)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(-(-§§pop() + 1) + 1);
            }
            _loc1_ = §§pop();
            while(_loc1_ < encKey3.length)
            {
               §§push(encKey3);
               §§push(_loc1_);
               §§push(0);
               if(_loc3_)
               {
                  §§push(((§§pop() - 67 + 96) * 57 + 95 + 98) * 99 + 1);
               }
               §§pop()[§§pop()] = §§pop();
               _loc1_++;
            }
            encKey3 = null;
         }
         if(decKey2 != null)
         {
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() * 3 - 1 - 47 + 1);
            }
            _loc1_ = §§pop();
            while(_loc1_ < decKey2.length)
            {
               §§push(decKey2);
               §§push(_loc1_);
               §§push(0);
               if(_loc3_)
               {
                  §§push(-(§§pop() + 102 - 55 + 3 + 1 + 1) + 69);
               }
               §§pop()[§§pop()] = §§pop();
               _loc1_++;
            }
            decKey2 = null;
         }
         if(decKey3 != null)
         {
            §§push(0);
            if(_loc2_)
            {
               §§push(-(§§pop() * 115) + 1);
            }
            _loc1_ = §§pop();
            while(_loc1_ < decKey3.length)
            {
               §§push(decKey3);
               §§push(_loc1_);
               §§push(0);
               if(_loc2_)
               {
                  §§push(§§pop() + 17 + 108 - 106 - 1);
               }
               §§pop()[§§pop()] = §§pop();
               _loc1_++;
            }
            decKey3 = null;
         }
         Memory.gc();
      }
      
      override public function decrypt(param1:ByteArray, param2:uint = 0) : void
      {
         desFunc(decKey3,param1,param2,param1,param2);
         desFunc(decKey2,param1,param2,param1,param2);
         desFunc(decKey,param1,param2,param1,param2);
      }
      
      override public function toString() : String
      {
         return "3des";
      }
   }
}
