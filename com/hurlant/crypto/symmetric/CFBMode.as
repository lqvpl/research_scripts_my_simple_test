package com.hurlant.crypto.symmetric
{
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.ToggleIsInTrashCommand;
   import flash.utils.ByteArray;
   
   public final class CFBMode extends IVMode implements IMode
   {
       
      
      public function CFBMode(param1:ISymmetricKey, param2:IPad = null)
      {
         super(param1,null);
      }
      
      public function toString() : String
      {
         return key.toString() + "-cfb";
      }
      
      public function encrypt(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(-§§pop() * 99 * 71 + 1 + 1 - 1);
         }
         var _loc5_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-§§pop() + 81) - 1);
         }
         var _loc6_:uint = §§pop();
         var _loc2_:uint = param1.length;
         var _loc3_:ByteArray = getIV4e();
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() + 1 + 72 + 1) * 111 - 1);
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < param1.length)
         {
            key.encrypt(_loc3_);
            _loc5_ = _loc4_ + blockSize < _loc2_?uint(blockSize):uint(_loc2_ - _loc4_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-§§pop() - 1 - 53);
            }
            _loc6_ = §§pop();
            while(_loc6_ < _loc5_)
            {
               param1[_loc4_ + _loc6_] = param1[_loc4_ + _loc6_] ^ _loc3_[_loc6_];
               _loc6_++;
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push(((§§pop() + 1) * 67 + 1 + 15 + 40) * 15);
            }
            §§pop().position = §§pop();
            _loc3_.writeBytes(param1,_loc4_,_loc5_);
            _loc4_ = _loc4_ + blockSize;
         }
      }
      
      public function decrypt(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() - 76 - 15 + 61 - 93);
         }
         var _loc6_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-((-(§§pop() * 16) + 30) * 37));
         }
         var _loc7_:uint = §§pop();
         var _loc2_:uint = param1.length;
         var _loc3_:ByteArray = getIV4d();
         var _loc4_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() - 78 + 21 - 114 + 1);
         }
         var _loc5_:uint = §§pop();
         while(_loc5_ < param1.length)
         {
            key.encrypt(_loc3_);
            _loc6_ = _loc5_ + blockSize < _loc2_?uint(blockSize):uint(_loc2_ - _loc5_);
            §§push(_loc4_);
            §§push(0);
            if(_loc8_)
            {
               §§push(§§pop() + 94 - 106 + 41);
            }
            §§pop().position = §§pop();
            _loc4_.writeBytes(param1,_loc5_,_loc6_);
            §§push(0);
            if(_loc8_)
            {
               §§push((-((§§pop() + 1) * 106 + 1 - 1) + 1) * 39);
            }
            _loc7_ = §§pop();
            while(_loc7_ < _loc6_)
            {
               param1[_loc5_ + _loc7_] = param1[_loc5_ + _loc7_] ^ _loc3_[_loc7_];
               _loc7_++;
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push(((§§pop() + 1 + 1) * 111 - 62) * 116 - 69);
            }
            §§pop().position = §§pop();
            _loc3_.writeBytes(_loc4_);
            _loc5_ = _loc5_ + blockSize;
         }
      }
   }
}
