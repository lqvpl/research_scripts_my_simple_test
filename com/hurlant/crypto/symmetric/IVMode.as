package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.hurlant.util.Memory;
   import com.hurlant.crypto.prng.Random;
   
   public class IVMode
   {
       
      
      protected var lastIV:ByteArray;
      
      protected var iv:ByteArray;
      
      protected var blockSize:uint;
      
      protected var padding:com.hurlant.crypto.symmetric.IPad;
      
      protected var prng:Random;
      
      protected var key:com.hurlant.crypto.symmetric.ISymmetricKey;
      
      public function IVMode(param1:com.hurlant.crypto.symmetric.ISymmetricKey, param2:com.hurlant.crypto.symmetric.IPad = null)
      {
         super();
         this.key = param1;
         blockSize = param1.getBlockSize();
         if(param2 == null)
         {
            param2 = new PKCS5(blockSize);
         }
         else
         {
            param2.setBlockSize(blockSize);
         }
         this.padding = param2;
         prng = new Random();
         iv = null;
         lastIV = new ByteArray();
      }
      
      public function set IV(param1:ByteArray) : void
      {
         iv = param1;
         lastIV.length = 0;
         lastIV.writeBytes(iv);
      }
      
      protected final function getIV4d() : ByteArray
      {
         var _loc1_:ByteArray = new ByteArray();
         if(iv)
         {
            _loc1_.writeBytes(iv);
            return _loc1_;
         }
         throw new Error("an IV must be set before calling decrypt()");
      }
      
      protected final function getIV4e() : ByteArray
      {
         var _loc1_:ByteArray = new ByteArray();
         if(iv)
         {
            _loc1_.writeBytes(iv);
         }
         else
         {
            prng.nextBytes(_loc1_,blockSize);
         }
         §§push(lastIV);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 7 + 1 + 1 + 62 - 15 + 46);
         }
         §§pop().length = §§pop();
         lastIV.writeBytes(_loc1_);
         return _loc1_;
      }
      
      public function get IV() : ByteArray
      {
         return lastIV;
      }
      
      public final function dispose() : void
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 74 - 1 + 98) - 1));
         }
         var _loc1_:uint = §§pop();
         if(iv != null)
         {
            §§push(0);
            if(_loc2_)
            {
               §§push(-((§§pop() - 45) * 61) - 1 + 73 + 33 + 1);
            }
            _loc1_ = §§pop();
            while(_loc1_ < iv.length)
            {
               iv[_loc1_] = prng.nextByte();
               _loc1_++;
            }
            §§push(iv);
            §§push(0);
            if(_loc3_)
            {
               §§push(§§pop() + 1 + 6 + 109);
            }
            §§pop().length = §§pop();
            iv = null;
         }
         if(lastIV != null)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(-(§§pop() * 109 - 1 - 76) * 1 + 1);
            }
            _loc1_ = §§pop();
            while(_loc1_ < iv.length)
            {
               lastIV[_loc1_] = prng.nextByte();
               _loc1_++;
            }
            §§push(lastIV);
            §§push(0);
            if(_loc2_)
            {
               §§push(-(§§pop() - 110 + 1) + 1 + 100);
            }
            §§pop().length = §§pop();
            lastIV = null;
         }
         key.dispose();
         key = null;
         padding = null;
         prng.dispose();
         prng = null;
         Memory.gc();
      }
      
      public final function getBlockSize() : uint
      {
         return key.getBlockSize();
      }
   }
}
