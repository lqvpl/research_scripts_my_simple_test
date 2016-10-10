package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.hurlant.util.Memory;
   import system.data.lists.ArrayList;
   
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
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1) * 11);
         }
         §§pop().encKey2 = §§pop().generateWorkingKey(§§pop(),§§pop(),§§pop());
         §§push();
         §§push();
         §§push(true);
         §§push(param1);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() * 84 - 1 - 1 - 1) * 20);
         }
         §§pop().decKey2 = §§pop().generateWorkingKey(§§pop(),§§pop(),§§pop());
         §§push(param1.length);
         §§push(16);
         if(_loc2_)
         {
            §§push(-(§§pop() * 50 - 1) - 1 - 1 - 1 + 1);
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
               §§push(--(§§pop() + 46) + 1 + 28 - 51 - 11);
            }
            §§pop().encKey3 = §§pop().generateWorkingKey(§§pop(),§§pop(),§§pop());
            §§push();
            §§push();
            §§push(false);
            §§push(param1);
            §§push(16);
            if(_loc2_)
            {
               §§push((§§pop() - 69) * 60 + 72 - 24 - 1 + 1);
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
            §§push(((-(§§pop() - 1 + 1) - 1) * 57 + 1) * 6);
         }
         var _loc1_:uint = §§pop();
         if(encKey2 != null)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(§§pop() + 1 - 105 - 39);
            }
            _loc1_ = §§pop();
            while(_loc1_ < encKey2.length)
            {
               §§push(encKey2);
               §§push(_loc1_);
               §§push(0);
               if(_loc2_)
               {
                  §§push(§§pop() + 117 + 99 + 1 - 1 - 40 + 99 + 8);
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
               §§push(-((§§pop() - 100 + 1) * 52 + 1 + 62) + 18);
            }
            _loc1_ = §§pop();
            while(_loc1_ < encKey3.length)
            {
               §§push(encKey3);
               §§push(_loc1_);
               §§push(0);
               if(_loc2_)
               {
                  §§push((-(§§pop() - 1) + 1) * 63 + 95);
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
               §§push((§§pop() + 86 - 112) * 116 * 1 + 1);
            }
            _loc1_ = §§pop();
            while(_loc1_ < decKey2.length)
            {
               §§push(decKey2);
               §§push(_loc1_);
               §§push(0);
               if(_loc3_)
               {
                  §§push(--(--(§§pop() - 118 + 49) + 113));
               }
               §§pop()[§§pop()] = §§pop();
               _loc1_++;
            }
            decKey2 = null;
         }
         if(decKey3 != null)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(-(§§pop() + 25 - 29 + 1 - 1));
            }
            _loc1_ = §§pop();
            while(_loc1_ < decKey3.length)
            {
               §§push(decKey3);
               §§push(_loc1_);
               §§push(0);
               if(_loc3_)
               {
                  §§push(--(§§pop() * 68 * 10 * 90 * 49) - 103);
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
