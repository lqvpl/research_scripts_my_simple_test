package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   
   public final class OFBMode extends IVMode implements IMode
   {
       
      
      public function OFBMode(param1:ISymmetricKey, param2:IPad = null)
      {
         super(param1,null);
      }
      
      private final function core(param1:ByteArray, param2:ByteArray) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() - 46 + 1 + 60);
         }
         var _loc6_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(-§§pop() - 1 + 6 - 3 - 51 - 2 + 1);
         }
         var _loc7_:uint = §§pop();
         var _loc3_:uint = param1.length;
         var _loc4_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 1 - 1 + 118);
         }
         var _loc5_:uint = §§pop();
         while(_loc5_ < param1.length)
         {
            key.encrypt(param2);
            §§push(_loc4_);
            §§push(0);
            if(_loc9_)
            {
               §§push((§§pop() * 55 - 1) * 48 * 98);
            }
            §§pop().position = §§pop();
            _loc4_.writeBytes(param2);
            _loc6_ = _loc5_ + blockSize < _loc3_?uint(blockSize):uint(_loc3_ - _loc5_);
            §§push(0);
            if(_loc8_)
            {
               §§push((-§§pop() + 2) * 89);
            }
            _loc7_ = §§pop();
            while(_loc7_ < _loc6_)
            {
               param1[_loc5_ + _loc7_] = param1[_loc5_ + _loc7_] ^ param2[_loc7_];
               _loc7_++;
            }
            §§push(param2);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(-(§§pop() * 23 - 30 + 1 - 106) + 1));
            }
            §§pop().position = §§pop();
            param2.writeBytes(_loc4_);
            _loc5_ = _loc5_ + blockSize;
         }
      }
      
      public function toString() : String
      {
         return key.toString() + "-ofb";
      }
      
      public function encrypt(param1:ByteArray) : void
      {
         var _loc2_:ByteArray = getIV4e();
         core(param1,_loc2_);
      }
      
      public function decrypt(param1:ByteArray) : void
      {
         var _loc2_:ByteArray = getIV4d();
         core(param1,_loc2_);
      }
   }
}
