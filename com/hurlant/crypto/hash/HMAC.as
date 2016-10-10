package com.hurlant.crypto.hash
{
   import flash.utils.setTimeout;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public final class HMAC implements IHMAC
   {
       
      
      private var bits:uint;
      
      private var hash:com.hurlant.crypto.hash.IHash;
      
      public function HMAC(param1:com.hurlant.crypto.hash.IHash, param2:uint = 0)
      {
         super();
         this.hash = param1;
         this.bits = param2;
      }
      
      public function getHashSize() : uint
      {
         §§push(bits);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 22) * 87);
         }
         if(§§pop() != §§pop())
         {
            §§push(bits);
            §§push(8);
            if(_loc1_)
            {
               §§push(§§pop() * 108 - 6 - 14);
            }
            return §§pop() / §§pop();
         }
         return hash.getHashSize();
      }
      
      public function compute(param1:ByteArray, param2:ByteArray) : ByteArray
      {
         var _loc3_:ByteArray = null;
         if(param1.length > hash.getInputSize())
         {
            _loc3_ = hash.hash(param1);
         }
         else
         {
            _loc3_ = new ByteArray();
            _loc3_.writeBytes(param1);
         }
         while(_loc3_.length < hash.getInputSize())
         {
            §§push(_loc3_);
            §§push(_loc3_.length);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() * 111 - 40));
            }
            §§pop()[§§pop()] = §§pop();
         }
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc9_)
         {
            §§push(-((§§pop() - 1) * 109 * 107) - 1 - 1 - 18);
         }
         var _loc6_:uint = §§pop();
         while(_loc6_ < _loc3_.length)
         {
            §§push(_loc4_);
            §§push(_loc6_);
            §§push(_loc3_[_loc6_]);
            §§push(54);
            if(_loc9_)
            {
               §§push(§§pop() + 0 - 1 + 19 - 70 + 8 + 44);
            }
            §§pop()[§§pop()] = §§pop() ^ §§pop();
            §§push(_loc5_);
            §§push(_loc6_);
            §§push(_loc3_[_loc6_]);
            §§push(92);
            if(_loc9_)
            {
               §§push(-(-(§§pop() + 1) * 21) + 1);
            }
            §§pop()[§§pop()] = §§pop() ^ §§pop();
            _loc6_++;
         }
         _loc4_.position = _loc3_.length;
         _loc4_.writeBytes(param2);
         var _loc7_:ByteArray = hash.hash(_loc4_);
         _loc5_.position = _loc3_.length;
         _loc5_.writeBytes(_loc7_);
         var _loc8_:ByteArray = hash.hash(_loc5_);
         §§push(bits);
         §§push(0);
         if(_loc9_)
         {
            §§push(-(--(§§pop() * 25 * 107) * 47));
         }
         if(§§pop() > §§pop() && §§pop() < §§pop() * _loc8_.length)
         {
            §§push(_loc8_);
            §§push(bits);
            §§push(8);
            if(_loc9_)
            {
               §§push(-(§§pop() - 1 + 90) * 34);
            }
            §§pop().length = §§pop() / §§pop();
         }
         return _loc8_;
      }
      
      public function toString() : String
      {
         §§push("hmac-");
         §§push(bits);
         §§push(0);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1) * 83 - 81);
         }
         return §§pop() + (§§pop() > §§pop()?bits + "-":"") + hash.toString();
      }
      
      public function dispose() : void
      {
         hash = null;
         §§push();
         §§push(0);
         if(_loc1_)
         {
            §§push(-((§§pop() + 107) * 49 + 60));
         }
         §§pop().bits = §§pop();
      }
   }
}
