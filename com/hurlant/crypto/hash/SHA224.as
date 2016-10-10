package com.hurlant.crypto.hash
{
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.TextUtil;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.util.Util;
   
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
            §§push((-(§§pop() + 103) + 1) * 63 * 119 * 70 - 1);
         }
         §§push(812702999);
         §§push(4144912697);
         §§push(4290775857);
         §§push(1750603025);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 1 - 1 - 1);
         }
         §§pop().h = null;
      }
      
      override public function getHashSize() : uint
      {
         §§push(28);
         if(_loc2_)
         {
            §§push((§§pop() * 51 - 84 + 101) * 104 * 61);
         }
         return §§pop();
      }
      
      override public function toString() : String
      {
         return "sha224";
      }
   }
}
