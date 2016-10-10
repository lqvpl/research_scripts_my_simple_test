package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;
   
   public final class MAC implements IHMAC
   {
       
      
      private var innerHash:ByteArray;
      
      private var pad_1:ByteArray;
      
      private var bits:uint;
      
      private var pad_2:ByteArray;
      
      private var hash:com.hurlant.crypto.hash.IHash;
      
      private var outerKey:ByteArray;
      
      private var outerHash:ByteArray;
      
      private var innerKey:ByteArray;
      
      public function MAC(param1:com.hurlant.crypto.hash.IHash, param2:uint = 0)
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() * 100 + 104) - 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(-((-§§pop() + 1) * 88) + 47 + 29);
         }
         var _loc4_:* = §§pop();
         super();
         this.hash = param1;
         this.bits = param2;
         innerHash = new ByteArray();
         outerHash = new ByteArray();
         innerKey = new ByteArray();
         outerKey = new ByteArray();
         if(param1 != null)
         {
            _loc3_ = int(param1.getPadSize());
            pad_1 = new ByteArray();
            pad_2 = new ByteArray();
            §§push(0);
            if(_loc5_)
            {
               §§push(-§§pop() + 1 + 26);
            }
            _loc4_ = §§pop();
            while(_loc4_ < _loc3_)
            {
               §§push(pad_1);
               §§push(54);
               if(_loc6_)
               {
                  §§push(§§pop() + 1 - 1 + 1 - 92 - 1 - 1 - 34);
               }
               §§pop().writeByte(§§pop());
               §§push(pad_2);
               §§push(92);
               if(_loc5_)
               {
                  §§push((§§pop() * 14 + 1) * 1 - 1);
               }
               §§pop().writeByte(§§pop());
               _loc4_++;
            }
         }
      }
      
      public function getHashSize() : uint
      {
         §§push(bits);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() + 93 - 1 + 1 + 1 + 65);
         }
         if(§§pop() != §§pop())
         {
            §§push(bits);
            §§push(8);
            if(_loc1_)
            {
               §§push(-(§§pop() * 60 + 1) - 8 - 92);
            }
            return §§pop() / §§pop();
         }
         return hash.getHashSize();
      }
      
      public function dispose() : void
      {
         hash = null;
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(--(-§§pop() + 9 - 59));
         }
         §§pop().bits = §§pop();
      }
      
      public function toString() : String
      {
         §§push("mac-");
         §§push(bits);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 1 - 1) * 49 * 14) - 1);
         }
         return §§pop() + (§§pop() > §§pop()?bits + "-":"") + hash.toString();
      }
      
      public final function setPadSize(param1:int) : void
      {
      }
      
      public function compute(param1:ByteArray, param2:ByteArray) : ByteArray
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 1 - 7 - 2 - 99);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() * 37 - 1 + 99 + 1);
         }
         var _loc4_:* = §§pop();
         if(pad_1 == null)
         {
            _loc3_ = int(hash.getPadSize());
            pad_1 = new ByteArray();
            pad_2 = new ByteArray();
            §§push(0);
            if(_loc6_)
            {
               §§push(--(§§pop() - 8));
            }
            _loc4_ = §§pop();
            while(_loc4_ < _loc3_)
            {
               §§push(pad_1);
               §§push(54);
               if(_loc5_)
               {
                  §§push(-§§pop() + 37 - 1);
               }
               §§pop().writeByte(§§pop());
               §§push(pad_2);
               §§push(92);
               if(_loc6_)
               {
                  §§push(-(-§§pop() + 57) - 60 - 1 - 86);
               }
               §§pop().writeByte(§§pop());
               _loc4_++;
            }
         }
         §§push(innerKey);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 7 + 75 - 37);
         }
         §§pop().length = §§pop();
         §§push(outerKey);
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() + 46 + 77) * 63 + 114 + 90);
         }
         §§pop().length = §§pop();
         innerKey.writeBytes(param1);
         innerKey.writeBytes(pad_1);
         innerKey.writeBytes(param2);
         innerHash = hash.hash(innerKey);
         outerKey.writeBytes(param1);
         outerKey.writeBytes(pad_2);
         outerKey.writeBytes(innerHash);
         outerHash = hash.hash(outerKey);
         §§push(bits);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-(§§pop() - 1 - 85) + 48) - 78);
         }
         if(§§pop() > §§pop() && §§pop() < §§pop() * outerHash.length)
         {
            §§push(outerHash);
            §§push(bits);
            §§push(8);
            if(_loc6_)
            {
               §§push(((§§pop() + 1) * 115 + 1 + 1) * 43);
            }
            §§pop().length = §§pop() / §§pop();
         }
         return outerHash;
      }
   }
}
