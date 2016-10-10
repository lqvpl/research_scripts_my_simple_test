package com.hurlant.crypto.hash
{
   public final class SHA224 extends SHA256
   {
       
      
      public function SHA224()
      {
         super();
         §§push();
         §§push(3238371032);
         §§push(914150663);
         if(_loc2_)
         {
            §§push(-(§§pop() * 36) - 52 + 108 + 30 + 1 + 66);
         }
         §§push(812702999);
         §§push(4144912697);
         §§push(4290775857);
         §§push(1750603025);
         if(_loc1_)
         {
            §§push(-(§§pop() + 41 - 46) - 1 + 1 - 107);
         }
         §§pop().h = null;
      }
      
      override public function getHashSize() : uint
      {
         §§push(28);
         if(_loc1_)
         {
            §§push(-(§§pop() + 109 + 1) - 83 - 14);
         }
         return §§pop();
      }
      
      override public function toString() : String
      {
         return "sha224";
      }
   }
}
