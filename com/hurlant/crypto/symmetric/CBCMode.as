package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import flash.events.MouseEvent;
   
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
            §§push(-(§§pop() - 65 - 1 - 39 + 1 + 23 + 20));
         }
         var _loc4_:uint = §§pop();
         padding.pad(param1);
         var _loc2_:ByteArray = getIV4e();
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() - 1 - 1 + 1 - 94 + 80);
         }
         var _loc3_:uint = §§pop();
         while(_loc3_ < param1.length)
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() - 108 - 55));
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
            if(_loc6_)
            {
               §§push(§§pop() * 73 + 115 + 92 + 1);
            }
            §§pop().position = §§pop();
            _loc2_.writeBytes(param1,_loc3_,blockSize);
            _loc3_ = _loc3_ + blockSize;
         }
      }
      
      public function decrypt(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-§§pop() + 1) + 62 - 1 + 1 - 1);
         }
         var _loc5_:uint = §§pop();
         var _loc2_:ByteArray = getIV4d();
         var _loc3_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 18 + 34 + 1 - 1 + 58) - 35);
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < param1.length)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc7_)
            {
               §§push((-((§§pop() - 1 - 33) * 49) - 63) * 55);
            }
            §§pop().position = §§pop();
            _loc3_.writeBytes(param1,_loc4_,blockSize);
            key.decrypt(param1,_loc4_);
            §§push(0);
            if(_loc7_)
            {
               §§push(((§§pop() - 52) * 64 - 45 + 1 + 48) * 112 - 1);
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
               §§push(-(-(§§pop() + 73 + 1 - 68) + 42));
            }
            §§pop().position = §§pop();
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-((-§§pop() - 20) * 83 + 57) - 29);
            }
            §§pop().writeBytes(§§pop(),§§pop(),blockSize);
            _loc4_ = _loc4_ + blockSize;
         }
         padding.unpad(param1);
      }
   }
}
