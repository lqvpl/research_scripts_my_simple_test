package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.DataModel;
   
   public final class CFB8Mode extends IVMode implements IMode
   {
       
      
      public function CFB8Mode(param1:ISymmetricKey, param2:IPad = null)
      {
         super(param1,null);
      }
      
      public function toString() : String
      {
         return key.toString() + "-cfb8";
      }
      
      public function encrypt(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(--(§§pop() * 75 - 71 - 1));
         }
         var _loc5_:uint = §§pop();
         var _loc2_:ByteArray = getIV4e();
         var _loc3_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() + 1) * 76 * 20) - 1);
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < param1.length)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() * 72 * 65 + 93));
            }
            §§pop().position = §§pop();
            _loc3_.writeBytes(_loc2_);
            key.encrypt(_loc2_);
            §§push(param1);
            §§push(_loc4_);
            §§push(param1[_loc4_]);
            §§push(_loc2_);
            §§push(0);
            if(_loc7_)
            {
               §§push(§§pop() * 111 + 10 - 1);
            }
            §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()];
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() - 1) - 44 + 47 - 105);
            }
            _loc5_ = §§pop();
            while(_loc5_ < blockSize - 1)
            {
               §§push(_loc2_);
               §§push(_loc5_);
               §§push(_loc3_);
               §§push(_loc5_);
               §§push(1);
               if(_loc6_)
               {
                  §§push(§§pop() + 57 - 1 - 1 - 1 - 7);
               }
               §§pop()[§§pop()] = §§pop()[§§pop() + §§pop()];
               _loc5_++;
            }
            _loc2_[blockSize - 1] = param1[_loc4_];
            _loc4_++;
         }
      }
      
      public function decrypt(param1:ByteArray) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(-((§§pop() + 1) * 110) + 84);
         }
         var _loc5_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() + 89) * 114 - 58);
         }
         var _loc6_:uint = §§pop();
         var _loc2_:ByteArray = getIV4d();
         var _loc3_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc7_)
         {
            §§push(-((§§pop() - 38) * 55 - 35) - 15 - 101);
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1[_loc4_];
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push((-(§§pop() + 1 + 52) + 1) * 109);
            }
            §§pop().position = §§pop();
            _loc3_.writeBytes(_loc2_);
            key.encrypt(_loc2_);
            §§push(param1);
            §§push(_loc4_);
            §§push(param1[_loc4_]);
            §§push(_loc2_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-((§§pop() + 112 - 1 - 1) * 30 - 1 - 103));
            }
            §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()];
            §§push(0);
            if(_loc7_)
            {
               §§push(-(-(-(§§pop() * 22 - 102) * 100) - 1));
            }
            _loc6_ = §§pop();
            while(_loc6_ < blockSize - 1)
            {
               §§push(_loc2_);
               §§push(_loc6_);
               §§push(_loc3_);
               §§push(_loc6_);
               §§push(1);
               if(_loc8_)
               {
                  §§push((-(§§pop() - 1) + 1 - 75) * 96 - 37);
               }
               §§pop()[§§pop()] = §§pop()[§§pop() + §§pop()];
               _loc6_++;
            }
            _loc2_[blockSize - 1] = _loc5_;
            _loc4_++;
         }
      }
   }
}
