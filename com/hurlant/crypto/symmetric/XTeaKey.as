package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   
   public final class XTeaKey implements ISymmetricKey
   {
       
      
      private var k:Array;
      
      public const NUM_ROUNDS:uint = 64;
      
      public function XTeaKey(param1:ByteArray)
      {
         super();
         §§push(param1);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 51 + 1 + 1 + 49) * 55 - 1 - 1);
         }
         §§pop().position = §§pop();
         k = [param1.readUnsignedInt(),param1.readUnsignedInt(),param1.readUnsignedInt(),param1.readUnsignedInt()];
      }
      
      public static function parseKey(param1:String) : XTeaKey
      {
         var _loc2_:ByteArray = new ByteArray();
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1 - 1) + 1));
         }
         §§push(§§pop().substr(§§pop(),8));
         §§push(16);
         if(_loc4_)
         {
            §§push((§§pop() + 45 - 13) * 66 * 5);
         }
         §§pop().writeUnsignedInt(§§pop().parseInt(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() + 21 + 1) * 103);
         }
         §§push(§§pop().substr(§§pop(),§§pop()));
         §§push(16);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 70 + 58 - 90 - 1) - 49));
         }
         §§pop().writeUnsignedInt(§§pop().parseInt(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(16);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1 - 27) + 1 + 1);
         }
         §§push(§§pop().substr(§§pop(),8));
         §§push(16);
         if(_loc4_)
         {
            §§push((§§pop() - 30 + 1 + 1) * 63 + 1 + 33 - 108);
         }
         §§pop().writeUnsignedInt(§§pop().parseInt(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(24);
         if(_loc3_)
         {
            §§push(§§pop() + 92 + 1 + 7);
         }
         §§push(§§pop().substr(§§pop(),8));
         §§push(16);
         if(_loc4_)
         {
            §§push(§§pop() + 118 - 78 - 90);
         }
         §§pop().writeUnsignedInt(§§pop().parseInt(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 103 - 1 - 1);
         }
         §§pop().position = §§pop();
         return new XTeaKey(_loc2_);
      }
      
      public function encrypt(param1:ByteArray, param2:uint = 0) : void
      {
         §§push(0);
         if(_loc9_)
         {
            §§push(--(§§pop() + 1));
         }
         var _loc5_:uint = §§pop();
         param1.position = param2;
         var _loc3_:uint = param1.readUnsignedInt();
         var _loc4_:uint = param1.readUnsignedInt();
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() - 103 - 35 - 8 - 1 + 1) - 1);
         }
         var _loc6_:uint = §§pop();
         var _loc7_:uint = 2654435769;
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() * 112 + 1 + 69) * 45);
         }
         _loc5_ = §§pop();
         while(_loc5_ < NUM_ROUNDS)
         {
            §§push(_loc3_);
            §§push(_loc4_);
            §§push(4);
            if(_loc9_)
            {
               §§push(--(§§pop() + 1 + 73 - 1) * 79 - 1);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc4_);
            §§push(5);
            if(_loc8_)
            {
               §§push(--(§§pop() - 29) - 31);
            }
            §§push((§§pop() ^ §§pop() >> §§pop()) + _loc4_);
            §§push(_loc6_);
            §§push(k);
            §§push(_loc6_);
            §§push(3);
            if(_loc9_)
            {
               §§push((-(§§pop() - 1 - 114) - 81) * 81 * 94 - 1);
            }
            _loc3_ = §§pop() + (§§pop() ^ §§pop() + §§pop()[§§pop() & §§pop()]);
            _loc6_ = _loc6_ + _loc7_;
            §§push(_loc4_);
            §§push(_loc3_);
            §§push(4);
            if(_loc9_)
            {
               §§push((§§pop() - 46 - 23) * 85);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(5);
            if(_loc9_)
            {
               §§push(((§§pop() + 1) * 98 - 46 + 1 + 1 - 1) * 12);
            }
            §§push((§§pop() ^ §§pop() >> §§pop()) + _loc3_);
            §§push(_loc6_);
            §§push(k);
            §§push(_loc6_);
            §§push(11);
            if(_loc9_)
            {
               §§push(-(-§§pop() - 1 + 105) - 1 + 1);
            }
            §§push(§§pop() >> §§pop());
            §§push(3);
            if(_loc9_)
            {
               §§push(§§pop() + 9 - 52 + 35);
            }
            _loc4_ = §§pop() + (§§pop() ^ §§pop() + §§pop()[§§pop() & §§pop()]);
            _loc5_++;
         }
         §§push(param1);
         §§push(param1.position);
         §§push(8);
         if(_loc8_)
         {
            §§push(-(-§§pop() + 71 - 9 - 107) - 21 + 1);
         }
         §§pop().position = §§pop() - §§pop();
         param1.writeUnsignedInt(_loc3_);
         param1.writeUnsignedInt(_loc4_);
      }
      
      public function decrypt(param1:ByteArray, param2:uint = 0) : void
      {
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() + 56) + 1);
         }
         var _loc5_:uint = §§pop();
         param1.position = param2;
         var _loc3_:uint = param1.readUnsignedInt();
         var _loc4_:uint = param1.readUnsignedInt();
         var _loc6_:uint = 2654435769;
         var _loc7_:uint = _loc6_ * NUM_ROUNDS;
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() + 1 + 1 + 59) * 15 * 116);
         }
         _loc5_ = §§pop();
         while(_loc5_ < NUM_ROUNDS)
         {
            §§push(_loc4_);
            §§push(_loc3_);
            §§push(4);
            if(_loc9_)
            {
               §§push((§§pop() - 44 + 77 - 30) * 12);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(5);
            if(_loc8_)
            {
               §§push(-(§§pop() - 65 - 104));
            }
            §§push((§§pop() ^ §§pop() >> §§pop()) + _loc3_);
            §§push(_loc7_);
            §§push(k);
            §§push(_loc7_);
            §§push(11);
            if(_loc9_)
            {
               §§push((-(§§pop() + 1 - 27) + 53 - 86) * 66);
            }
            §§push(§§pop() >> §§pop());
            §§push(3);
            if(_loc8_)
            {
               §§push(-((§§pop() + 35 - 20 - 101) * 69 + 1) + 1);
            }
            _loc4_ = §§pop() - (§§pop() ^ §§pop() + §§pop()[§§pop() & §§pop()]);
            _loc7_ = _loc7_ - _loc6_;
            §§push(_loc3_);
            §§push(_loc4_);
            §§push(4);
            if(_loc8_)
            {
               §§push(--(§§pop() * 24 + 44 - 58));
            }
            §§push(§§pop() << §§pop());
            §§push(_loc4_);
            §§push(5);
            if(_loc8_)
            {
               §§push(-((§§pop() - 62 - 24) * 15) - 1 + 34 - 90);
            }
            §§push((§§pop() ^ §§pop() >> §§pop()) + _loc4_);
            §§push(_loc7_);
            §§push(k);
            §§push(_loc7_);
            §§push(3);
            if(_loc9_)
            {
               §§push(((§§pop() + 1 + 1) * 58 + 71) * 105 * 69);
            }
            _loc3_ = §§pop() - (§§pop() ^ §§pop() + §§pop()[§§pop() & §§pop()]);
            _loc5_++;
         }
         §§push(param1);
         §§push(param1.position);
         §§push(8);
         if(_loc9_)
         {
            §§push(-(§§pop() + 44 - 32) - 64);
         }
         §§pop().position = §§pop() - §§pop();
         param1.writeUnsignedInt(_loc3_);
         param1.writeUnsignedInt(_loc4_);
      }
      
      public function getBlockSize() : uint
      {
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() - 44 - 1 - 1) * 95 - 74);
         }
         return §§pop();
      }
      
      public function toString() : String
      {
         return "xtea";
      }
      
      public function dispose() : void
      {
         var _loc1_:Random = new Random();
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 86 + 100 + 38 + 1 + 1 + 50);
         }
         var _loc2_:uint = §§pop();
         while(_loc2_ < k.length)
         {
            k[_loc2_] = _loc1_.nextByte();
            delete k[_loc2_];
            _loc2_++;
         }
         k = null;
         Memory.gc();
      }
   }
}
