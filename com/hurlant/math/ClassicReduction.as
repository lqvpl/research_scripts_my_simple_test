package com.hurlant.math
{
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.components.DataGroup;
   import mx.binding.BindingManager;
   import spark.primitives.Rect;
   
   use namespace bi_internal;
   
   final class ClassicReduction implements IReduction
   {
       
      
      private var m:com.hurlant.math.BigInteger;
      
      function ClassicReduction(param1:com.hurlant.math.BigInteger)
      {
         super();
         this.m = param1;
      }
      
      public function revert(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         return param1;
      }
      
      public function reduce(param1:com.hurlant.math.BigInteger) : void
      {
         param1.divRemTo(m,null,param1);
      }
      
      public function mulTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger, param3:com.hurlant.math.BigInteger) : void
      {
         param1.multiplyTo(param2,param3);
         reduce(param3);
      }
      
      public function sqrTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger) : void
      {
         param1.squareTo(param2);
         reduce(param2);
      }
      
      public function convert(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         §§push(param1.s);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 3 + 1 - 30);
         }
         if(§§pop() < §§pop() || §§pop() >= §§pop())
         {
            return param1.mod(m);
         }
         return param1;
      }
   }
}
