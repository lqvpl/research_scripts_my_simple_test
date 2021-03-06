package com.hurlant.crypto.symmetric
{
   import com.enfluid.ltp.model.vo.DomainsVO;
   import mx.core.FlexGlobals;
   import flash.utils.ByteArray;
   import com.hurlant.util.Memory;
   
   public final class SimpleIVMode implements IMode, com.hurlant.crypto.symmetric.ICipher
   {
       
      
      protected var mode:com.hurlant.crypto.symmetric.IVMode;
      
      protected var cipher:com.hurlant.crypto.symmetric.ICipher;
      
      public function SimpleIVMode(param1:com.hurlant.crypto.symmetric.IVMode)
      {
         super();
         this.mode = param1;
         cipher = param1 as com.hurlant.crypto.symmetric.ICipher;
      }
      
      public function encrypt(param1:ByteArray) : void
      {
         cipher.encrypt(param1);
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeBytes(mode.IV);
         _loc2_.writeBytes(param1);
         §§push(param1);
         §§push(0);
         if(_loc4_)
         {
            §§push(-((§§pop() + 1 + 1) * 27) + 1 - 66 - 1);
         }
         §§pop().position = §§pop();
         param1.writeBytes(_loc2_);
      }
      
      public function decrypt(param1:ByteArray) : void
      {
         var _loc2_:ByteArray = new ByteArray();
         §§push(_loc2_);
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 92) + 46);
         }
         §§pop().writeBytes(§§pop(),§§pop(),getBlockSize());
         mode.IV = _loc2_;
         _loc2_ = new ByteArray();
         _loc2_.writeBytes(param1,getBlockSize());
         cipher.decrypt(_loc2_);
         §§push(param1);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 1) * 61 - 1) - 49);
         }
         §§pop().length = §§pop();
         param1.writeBytes(_loc2_);
      }
      
      public function dispose() : void
      {
         mode.dispose();
         mode = null;
         cipher = null;
         Memory.gc();
      }
      
      public function getBlockSize() : uint
      {
         return mode.getBlockSize();
      }
      
      public function toString() : String
      {
         return "simple-" + cipher.toString();
      }
   }
}
