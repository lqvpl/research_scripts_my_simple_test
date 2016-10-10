package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.hurlant.util.Memory;
   import flash.events.MouseEvent;
   
   public final class ECBMode implements IMode, ICipher
   {
       
      
      private var key:com.hurlant.crypto.symmetric.ISymmetricKey;
      
      private var padding:com.hurlant.crypto.symmetric.IPad;
      
      public function ECBMode(param1:com.hurlant.crypto.symmetric.ISymmetricKey, param2:com.hurlant.crypto.symmetric.IPad = null)
      {
         super();
         this.key = param1;
         if(param2 == null)
         {
            param2 = new PKCS5(param1.getBlockSize());
         }
         else
         {
            param2.setBlockSize(param1.getBlockSize());
         }
         this.padding = param2;
      }
      
      public function encrypt(param1:ByteArray) : void
      {
         padding.pad(param1);
         §§push(param1);
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() + 85 - 33 + 108 + 74) * 65) + 68);
         }
         §§pop().position = §§pop();
         var _loc2_:uint = key.getBlockSize();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc6_)
         {
            §§push((--(§§pop() + 1) + 1 + 1) * 13);
         }
         var _loc5_:uint = §§pop();
         while(_loc5_ < param1.length)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(-(-(§§pop() + 1) * 41 + 1) - 1));
            }
            §§pop().length = §§pop();
            §§push(param1);
            §§push(_loc3_);
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() + 1 - 23 - 1 - 119) * 33 + 1 + 1);
            }
            §§pop().readBytes(§§pop(),§§pop(),_loc2_);
            key.encrypt(_loc3_);
            _loc4_.writeBytes(_loc3_);
            _loc5_ = _loc5_ + _loc2_;
         }
         §§push(param1);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() - 1) - 115);
         }
         §§pop().length = §§pop();
         param1.writeBytes(_loc4_);
      }
      
      public function getBlockSize() : uint
      {
         return key.getBlockSize();
      }
      
      public function decrypt(param1:ByteArray) : void
      {
         §§push(param1);
         §§push(0);
         if(_loc6_)
         {
            §§push(--§§pop() * 49 * 108);
         }
         §§pop().position = §§pop();
         var _loc2_:uint = key.getBlockSize();
         §§push(param1.length % _loc2_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() + 105 + 81) * 6) * 58 + 1 + 52);
         }
         if(§§pop() != §§pop())
         {
            throw new Error("ECB mode cipher length must be a multiple of blocksize " + _loc2_);
         }
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc6_)
         {
            §§push(-((-§§pop() * 90 - 56 + 77) * 19));
         }
         var _loc5_:uint = §§pop();
         while(_loc5_ < param1.length)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(-§§pop() * 35) - 1 - 112 + 96);
            }
            §§pop().length = §§pop();
            §§push(param1);
            §§push(_loc3_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() * 117) + 1);
            }
            §§pop().readBytes(§§pop(),§§pop(),_loc2_);
            key.decrypt(_loc3_);
            _loc4_.writeBytes(_loc3_);
            _loc5_ = _loc5_ + _loc2_;
         }
         padding.unpad(_loc4_);
         §§push(param1);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 44 - 104 + 1 + 32 + 5);
         }
         §§pop().length = §§pop();
         param1.writeBytes(_loc4_);
      }
      
      public function toString() : String
      {
         return key.toString() + "-ecb";
      }
      
      public function dispose() : void
      {
         key.dispose();
         key = null;
         padding = null;
         Memory.gc();
      }
   }
}
