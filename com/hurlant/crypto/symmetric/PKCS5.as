package com.hurlant.crypto.symmetric
{
   import com.enfluid.ltp.model.constants.Values;
   import flash.utils.ByteArray;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   
   public final class PKCS5 implements IPad
   {
       
      
      private var blockSize:uint;
      
      public function PKCS5(param1:uint = 0)
      {
         super();
         this.blockSize = param1;
      }
      
      public function pad(param1:ByteArray) : void
      {
         var _loc2_:uint = blockSize - param1.length % blockSize;
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() - 1) + 1 + 5);
         }
         var _loc3_:uint = §§pop();
         while(_loc3_ < _loc2_)
         {
            param1[param1.length] = _loc2_;
            _loc3_++;
         }
      }
      
      public function setBlockSize(param1:uint) : void
      {
         blockSize = param1;
      }
      
      public function unpad(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(-((§§pop() - 1 - 110) * 117) * 98 + 1);
         }
         var _loc4_:uint = §§pop();
         var _loc2_:uint = param1.length % blockSize;
         §§push(_loc2_);
         §§push(0);
         if(_loc8_)
         {
            §§push(-§§pop() - 7 - 1);
         }
         if(§§pop() != §§pop())
         {
            throw new Error("PKCS#5::unpad: ByteArray.length isn\'t a multiple of the blockSize");
         }
         _loc2_ = param1[param1.length - 1];
         var _loc3_:uint = _loc2_;
         while(true)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-((§§pop() - 58) * 40 + 1) + 1);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            _loc4_ = param1[param1.length - 1];
            param1.length--;
            if(_loc2_ != _loc4_)
            {
               throw new Error("PKCS#5:unpad: Invalid padding value. expected [" + _loc2_ + "], found [" + _loc4_ + "]");
            }
            _loc3_--;
         }
      }
   }
}
