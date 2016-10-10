package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   
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
         if(_loc6_)
         {
            §§push((§§pop() + 106 + 62 + 1) * 6 + 1 + 1 + 103);
         }
         var _loc5_:uint = §§pop();
         var _loc2_:ByteArray = getIV4e();
         var _loc3_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() - 1 - 1 - 1 + 77 + 1);
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < param1.length)
         {
            §§push(_loc3_);
            §§push(0);
            if(_loc7_)
            {
               §§push((-(§§pop() - 1) - 48 - 88) * 99);
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
               §§push(((§§pop() + 1 + 77 + 19 - 114) * 42 - 1) * 59);
            }
            §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()];
            §§push(0);
            if(_loc7_)
            {
               §§push((-§§pop() + 1) * 117 + 1 - 1);
            }
            _loc5_ = §§pop();
            while(_loc5_ < blockSize - 1)
            {
               §§push(_loc2_);
               §§push(_loc5_);
               §§push(_loc3_);
               §§push(_loc5_);
               §§push(1);
               if(_loc7_)
               {
                  §§push(--(§§pop() * 10 + 41));
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
            §§push(§§pop() + 90 - 18 - 1 + 66);
         }
         var _loc5_:uint = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() - 100 - 1 - 33);
         }
         var _loc6_:uint = §§pop();
         var _loc2_:ByteArray = getIV4d();
         var _loc3_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 36 - 91 + 4 + 1);
         }
         var _loc4_:uint = §§pop();
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1[_loc4_];
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push((§§pop() + 1 - 1 - 1) * 75 - 1 - 1);
            }
            §§pop().position = §§pop();
            _loc3_.writeBytes(_loc2_);
            key.encrypt(_loc2_);
            §§push(param1);
            §§push(_loc4_);
            §§push(param1[_loc4_]);
            §§push(_loc2_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-(((§§pop() - 1) * 71 - 1 - 1) * 8 - 22));
            }
            §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()];
            §§push(0);
            if(_loc8_)
            {
               §§push(§§pop() + 1 + 38 + 1 - 2);
            }
            _loc6_ = §§pop();
            while(_loc6_ < blockSize - 1)
            {
               §§push(_loc2_);
               §§push(_loc6_);
               §§push(_loc3_);
               §§push(_loc6_);
               §§push(1);
               if(_loc7_)
               {
                  §§push(-(-(§§pop() + 33) - 80 - 1 + 1) - 1);
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
