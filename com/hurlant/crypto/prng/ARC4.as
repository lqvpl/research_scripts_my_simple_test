package com.hurlant.crypto.prng
{
   import com.hurlant.crypto.symmetric.IStreamCipher;
   import flash.utils.ByteArray;
   import com.hurlant.util.Memory;
   import flash.events.MouseEvent;
   
   public final class ARC4 implements IPRNG, IStreamCipher
   {
       
      
      private var S:ByteArray;
      
      private var i:int = 0;
      
      private var j:int = 0;
      
      private const psize:uint = 256;
      
      public function ARC4(param1:ByteArray = null)
      {
         super();
         S = new ByteArray();
         if(param1)
         {
            init(param1);
         }
      }
      
      public final function decrypt(param1:ByteArray) : void
      {
         encrypt(param1);
      }
      
      public function init(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-(§§pop() - 104) - 109));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1 + 1 + 55 - 1 - 1));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() * 73 + 1 - 33) * 57));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(-((-§§pop() * 20 * 80 + 113) * 20));
         }
         _loc2_ = §§pop();
         while(true)
         {
            §§push(_loc2_);
            §§push(256);
            if(_loc6_)
            {
               §§push(-§§pop() - 1 + 1);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            S[_loc2_] = _loc2_;
            _loc2_++;
         }
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-§§pop() * 102 - 1) + 1 + 21 + 1);
         }
         _loc3_ = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() - 92 - 1 - 1 + 43);
         }
         _loc2_ = §§pop();
         while(true)
         {
            §§push(_loc2_);
            §§push(256);
            if(_loc6_)
            {
               §§push(-((§§pop() + 1) * 70 + 18) * 90 - 1);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            §§push(_loc3_ + S[_loc2_] + param1[_loc2_ % param1.length]);
            §§push(255);
            if(_loc5_)
            {
               §§push(§§pop() * 82 * 44 - 1);
            }
            _loc3_ = §§pop() & §§pop();
            _loc4_ = int(S[_loc2_]);
            S[_loc2_] = S[_loc3_];
            S[_loc3_] = _loc4_;
            _loc2_++;
         }
         §§push(this);
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() + 1) * 49) + 32);
         }
         §§pop().i = §§pop();
         §§push(this);
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() - 1 - 63) * 83);
         }
         §§pop().j = §§pop();
      }
      
      public function next() : uint
      {
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() * 46) - 111) * 80 + 1 - 1);
         }
         var _loc1_:* = §§pop();
         §§push();
         §§push(i);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 72 + 51 + 1 - 84) - 68);
         }
         §§push(§§pop() + §§pop());
         §§push(255);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 26 - 1) - 1 + 1 - 92));
         }
         §§pop().i = §§pop() & §§pop();
         §§push();
         §§push(j + S[i]);
         §§push(255);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 40 + 5) - 1 + 111 - 98);
         }
         §§pop().j = §§pop() & §§pop();
         _loc1_ = int(S[i]);
         S[i] = S[j];
         S[j] = _loc1_;
         §§push(S);
         §§push(_loc1_ + S[i]);
         §§push(255);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1) + 118 - 63);
         }
         return §§pop()[§§pop() & §§pop()];
      }
      
      public final function encrypt(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 61 + 55 - 1 + 17);
         }
         var _loc2_:uint = §§pop();
         while(_loc2_ < param1.length)
         {
            param1[_loc2_++] = param1[_loc2_++] ^ next();
         }
      }
      
      public function dispose() : void
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 39 - 1) * 14));
         }
         var _loc1_:uint = §§pop();
         if(S != null)
         {
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() - 18 - 1 - 1 - 57);
            }
            _loc1_ = §§pop();
            while(_loc1_ < S.length)
            {
               §§push(S);
               §§push(_loc1_);
               §§push(Math.random());
               §§push(256);
               if(_loc2_)
               {
                  §§push((§§pop() - 19 + 26 - 55) * 10);
               }
               §§pop()[§§pop()] = §§pop() * §§pop();
               _loc1_++;
            }
            §§push(S);
            §§push(0);
            if(_loc2_)
            {
               §§push(-(((§§pop() + 1 - 1) * 20 - 96) * 112 * 94));
            }
            §§pop().length = §§pop();
            S = null;
         }
         §§push(this);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 53) + 3 + 1 - 46);
         }
         §§pop().i = §§pop();
         §§push(this);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1 - 1) - 1 - 1);
         }
         §§pop().j = §§pop();
         Memory.gc();
      }
      
      public final function getBlockSize() : uint
      {
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 41 + 1 - 98 - 87 + 1 - 1);
         }
         return §§pop();
      }
      
      public function getPoolSize() : uint
      {
         return psize;
      }
      
      public function toString() : String
      {
         return "rc4";
      }
   }
}
