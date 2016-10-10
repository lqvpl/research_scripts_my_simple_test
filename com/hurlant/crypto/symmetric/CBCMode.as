package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   
   public final class CBCMode extends IVMode implements IMode
   {
       
      
      public function CBCMode(param1:ISymmetricKey, param2:IPad = null)
      {
         super(param1,param2);
      }
      
      public function toString() : String
      {
         return key.toString() + "-cbc";
      }
      
      public function encrypt(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() - 36 + 1 - 1) * 96);
         }
         var _loc4_:uint = §§pop();
         padding.pad(param1);
         var _loc2_:ByteArray = getIV4e();
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 1) * 39 - 80 + 14 + 1);
         }
         var _loc3_:uint = §§pop();
         while(_loc3_ < param1.length)
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() - 100 + 1 + 1);
            }
            _loc4_ = §§pop();
            while(_loc4_ < blockSize)
            {
               param1[_loc3_ + _loc4_] = param1[_loc3_ + _loc4_] ^ _loc2_[_loc4_];
               _loc4_++;
            }
            key.encrypt(param1,_loc3_);
            §§push(_loc2_);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(-(§§pop() - 44) - 1 + 1));
            }
            §§pop().position = §§pop();
            _loc2_.writeBytes(param1,_loc3_,blockSize);
            _loc3_ = _loc3_ + blockSize;
         }
      }
      
      public function decrypt(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(--§§pop() - 23 - 15 + 113);
         }
         var _loc5_:uint = §§pop();
         var _loc2_:ByteArray = getIV4d();
         var _loc3_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc6_)
         {
            §§push(-§§pop() * 28 + 1 + 86 - 63 + 1 + 91);
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < param1.length)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() + 38 - 1 - 1 + 102 - 1 - 1));
            }
            §§pop().position = §§pop();
            _loc3_.writeBytes(param1,_loc4_,blockSize);
            key.decrypt(param1,_loc4_);
            §§push(0);
            if(_loc6_)
            {
               §§push(--(§§pop() * 13 - 1 + 29));
            }
            _loc5_ = §§pop();
            while(_loc5_ < blockSize)
            {
               param1[_loc4_ + _loc5_] = param1[_loc4_ + _loc5_] ^ _loc2_[_loc5_];
               _loc5_++;
            }
            §§push(_loc2_);
            §§push(0);
            if(_loc6_)
            {
               §§push((-§§pop() - 1 + 106 + 1 + 1 - 86) * 41);
            }
            §§pop().position = §§pop();
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 6 + 29) * 91);
            }
            §§pop().writeBytes(§§pop(),§§pop(),blockSize);
            _loc4_ = _loc4_ + blockSize;
         }
         padding.unpad(param1);
      }
   }
}
