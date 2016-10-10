package com.hurlant.math
{
   import mx.controls.Spacer;
   import spark.layouts.VerticalLayout;
   import spark.components.HGroup;
   import flash.events.MouseEvent;
   import flash.net.FileReference;
   import flash.net.FileFilter;
   import flash.events.Event;
   
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
            §§push((§§pop() + 1 - 1 + 51) * 9 - 34 - 93 - 63);
         }
         if(§§pop() < §§pop() || §§pop() >= §§pop())
         {
            return param1.mod(m);
         }
         return param1;
      }
   }
}
