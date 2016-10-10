package com.hurlant.crypto.prng
{
   import com.hurlant.crypto.symmetric.IStreamCipher;
   import flash.utils.ByteArray;
   import spark.effects.Fade;
   import mx.binding.BindingManager;
   import com.hurlant.util.Memory;
   
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
            §§push(-(§§pop() - 99) * 113 + 1);
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 1) * 66 + 1 + 1 - 10 + 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() + 1) * 92 + 1 + 1) * 52 + 1);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 98 + 97 - 38);
         }
         _loc2_ = §§pop();
         while(true)
         {
            §§push(_loc2_);
            §§push(256);
            if(_loc5_)
            {
               §§push(-(-§§pop() + 46));
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            S[_loc2_] = _loc2_;
            _loc2_++;
         }
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() - 1 + 1 + 1 + 1) * 119);
         }
         _loc3_ = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 1 - 1 - 1 - 67 + 72);
         }
         _loc2_ = §§pop();
         while(true)
         {
            §§push(_loc2_);
            §§push(256);
            if(_loc5_)
            {
               §§push((-(§§pop() - 1) * 21 - 1) * 23);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            §§push(_loc3_ + S[_loc2_] + param1[_loc2_ % param1.length]);
            §§push(255);
            if(_loc6_)
            {
               §§push(§§pop() * 67 - 1 + 1 - 1 - 1);
            }
            _loc3_ = §§pop() & §§pop();
            _loc4_ = int(S[_loc2_]);
            S[_loc2_] = S[_loc3_];
            S[_loc3_] = _loc4_;
            _loc2_++;
         }
         §§push(this);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() - 67 + 80));
         }
         §§pop().i = §§pop();
         §§push(this);
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() - 19) * 104 - 1));
         }
         §§pop().j = §§pop();
      }
      
      public function next() : uint
      {
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 17 - 85 + 79) * 52 - 1 + 68);
         }
         var _loc1_:* = §§pop();
         §§push();
         §§push(i);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() * 88 * 108));
         }
         §§push(§§pop() + §§pop());
         §§push(255);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 0 + 1) - 99));
         }
         §§pop().i = §§pop() & §§pop();
         §§push();
         §§push(j + S[i]);
         §§push(255);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 56 + 1 - 1);
         }
         §§pop().j = §§pop() & §§pop();
         _loc1_ = int(S[i]);
         S[i] = S[j];
         S[j] = _loc1_;
         §§push(S);
         §§push(_loc1_ + S[i]);
         §§push(255);
         if(_loc3_)
         {
            §§push(((§§pop() - 108) * 92 - 102) * 61);
         }
         return §§pop()[§§pop() & §§pop()];
      }
      
      public final function encrypt(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() - 1 + 1 + 1) * 44 + 1);
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
         if(_loc2_)
         {
            §§push(§§pop() + 7 + 1 + 1 + 62 - 15 + 46);
         }
         var _loc1_:uint = §§pop();
         if(S != null)
         {
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() + 24 + 1 - 1);
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
                  §§push((-(-§§pop() - 1) * 39 - 45) * 61);
               }
               §§pop()[§§pop()] = §§pop() * §§pop();
               _loc1_++;
            }
            §§push(S);
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() + 73 + 33 + 1 - 60);
            }
            §§pop().length = §§pop();
            S = null;
         }
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 18 - 109 + 1);
         }
         §§pop().i = §§pop();
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() - 1 - 76) * 1 + 1 + 1) * 109);
         }
         §§pop().j = §§pop();
         Memory.gc();
      }
      
      public final function getBlockSize() : uint
      {
         §§push(1);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1 + 100 + 84) + 1);
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
