package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   
   public final class CTRMode extends IVMode implements IMode
   {
       
      
      public function CTRMode(param1:ISymmetricKey, param2:IPad = null)
      {
         super(param1,param2);
      }
      
      private final function core(param1:ByteArray, param2:ByteArray) : void
      {
         §§push(0);
         if(_loc10_)
         {
            §§push(-((§§pop() - 48) * 1 - 1) - 1);
         }
         var _loc6_:uint = §§pop();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         _loc3_.writeBytes(param2);
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() + 31 + 75 + 1 - 1 - 48 + 1 - 1);
         }
         var _loc5_:uint = §§pop();
         while(_loc5_ < param1.length)
         {
            §§push(_loc4_);
            §§push(0);
            if(_loc10_)
            {
               §§push(-(§§pop() + 1 - 3 + 107 - 22) - 81);
            }
            §§pop().position = §§pop();
            _loc4_.writeBytes(_loc3_);
            key.encrypt(_loc4_);
            §§push(0);
            if(_loc11_)
            {
               §§push(-((§§pop() + 1) * 12 - 0));
            }
            _loc6_ = §§pop();
            while(_loc6_ < blockSize)
            {
               param1[_loc5_ + _loc6_] = param1[_loc5_ + _loc6_] ^ _loc4_[_loc6_];
               _loc6_++;
            }
            _loc6_ = blockSize - 1;
            while(true)
            {
               §§push(_loc6_);
               §§push(0);
               if(_loc11_)
               {
                  §§push(-(-(§§pop() - 105) - 105) + 1 + 1);
               }
               if(§§pop() >= §§pop())
               {
                  _loc3_[_loc6_]++;
                  §§push(_loc3_[_loc6_]);
                  §§push(0);
                  if(_loc11_)
                  {
                     §§push(-(§§pop() * 17 * 36 + 96 - 1 + 1) - 33);
                  }
                  if(§§pop() != §§pop())
                  {
                     break;
                  }
                  _loc6_--;
                  continue;
               }
               break;
            }
            _loc5_ = _loc5_ + blockSize;
         }
      }
      
      public function toString() : String
      {
         return key.toString() + "-ctr";
      }
      
      public function encrypt(param1:ByteArray) : void
      {
         padding.pad(param1);
         var _loc2_:ByteArray = getIV4e();
         core(param1,_loc2_);
      }
      
      public function decrypt(param1:ByteArray) : void
      {
         var _loc2_:ByteArray = getIV4d();
         core(param1,_loc2_);
         padding.unpad(param1);
      }
   }
}
