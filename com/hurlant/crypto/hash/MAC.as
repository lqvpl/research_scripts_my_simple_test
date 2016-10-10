package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   
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
         if(_loc5_)
         {
            §§push((§§pop() + 36 - 101) * 9);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-§§pop() - 1));
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
            if(_loc6_)
            {
               §§push(--(-(§§pop() * 10) - 1 + 24));
            }
            _loc4_ = §§pop();
            while(_loc4_ < _loc3_)
            {
               §§push(pad_1);
               §§push(54);
               if(_loc5_)
               {
                  §§push(-(§§pop() * 101 + 33) + 87 + 84);
               }
               §§pop().writeByte(§§pop());
               §§push(pad_2);
               §§push(92);
               if(_loc6_)
               {
                  §§push(-(§§pop() - 61 + 1 + 90 + 1 + 1 + 50));
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
            §§push((§§pop() + 15) * 61 * 67 - 1);
         }
         if(§§pop() != §§pop())
         {
            §§push(bits);
            §§push(8);
            if(_loc2_)
            {
               §§push((§§pop() * 51 - 1) * 72 * 3 + 1 + 52);
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
            §§push(§§pop() + 1 + 49 - 1 - 1 + 1);
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
            §§push(((§§pop() - 5 - 1) * 19 - 72) * 12 + 21);
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
            §§push((§§pop() * 66 + 1 + 19 - 1 + 1 - 1) * 42);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() - 1) * 39 + 1) * 113 + 93);
         }
         var _loc4_:* = §§pop();
         if(pad_1 == null)
         {
            _loc3_ = int(hash.getPadSize());
            pad_1 = new ByteArray();
            pad_2 = new ByteArray();
            §§push(0);
            if(_loc5_)
            {
               §§push(--§§pop() + 73 - 1 + 1);
            }
            _loc4_ = §§pop();
            while(_loc4_ < _loc3_)
            {
               §§push(pad_1);
               §§push(54);
               if(_loc5_)
               {
                  §§push((§§pop() + 1) * 36 + 1);
               }
               §§pop().writeByte(§§pop());
               §§push(pad_2);
               §§push(92);
               if(_loc6_)
               {
                  §§push(§§pop() - 1 + 1 + 43 + 1 - 1 + 1 + 1);
               }
               §§pop().writeByte(§§pop());
               _loc4_++;
            }
         }
         §§push(innerKey);
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() * 28 - 44 + 1 + 1 - 1) * 86 * 115);
         }
         §§pop().length = §§pop();
         §§push(outerKey);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() + 23 - 1) * 58 + 1 + 1 - 31);
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
         if(_loc6_)
         {
            §§push((--(-§§pop() + 84) - 62) * 1);
         }
         if(§§pop() > §§pop() && §§pop() < §§pop() * outerHash.length)
         {
            §§push(outerHash);
            §§push(bits);
            §§push(8);
            if(_loc5_)
            {
               §§push((§§pop() - 11 - 1 - 1) * 3 + 96);
            }
            §§pop().length = §§pop() / §§pop();
         }
         return outerHash;
      }
   }
}
