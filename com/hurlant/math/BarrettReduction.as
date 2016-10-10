package com.hurlant.math
{
   import mx.events.FlexEvent;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.vo.KeywordVO;
   
   use namespace bi_internal;
   
   final class BarrettReduction implements IReduction
   {
       
      
      private var r2:com.hurlant.math.BigInteger;
      
      private var q3:com.hurlant.math.BigInteger;
      
      private var mu:com.hurlant.math.BigInteger;
      
      private var m:com.hurlant.math.BigInteger;
      
      function BarrettReduction(param1:com.hurlant.math.BigInteger)
      {
         super();
         r2 = new com.hurlant.math.BigInteger();
         q3 = new com.hurlant.math.BigInteger();
         §§push(com.hurlant.math.BigInteger.ONE);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 75 - 59) + 1 + 101 + 1);
         }
         §§pop().dlShiftTo(§§pop() * param1.t,r2);
         mu = r2.divide(param1);
         this.m = param1;
      }
      
      public function revert(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         return param1;
      }
      
      public function sqrTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger) : void
      {
         param1.squareTo(param2);
         reduce(param2);
      }
      
      public function convert(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = null;
         §§push(param1.s);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 27 - 28 - 111);
         }
         if(§§pop() < §§pop() || §§pop() > §§pop() * m.t)
         {
            return param1.mod(m);
         }
         §§push(param1.compareTo(m));
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 40 - 1 + 29 - 1);
         }
         if(§§pop() < §§pop())
         {
            return param1;
         }
         _loc2_ = new com.hurlant.math.BigInteger();
         param1.copyTo(_loc2_);
         reduce(_loc2_);
         return _loc2_;
      }
      
      public function reduce(param1:com.hurlant.math.BigInteger) : void
      {
         var _loc2_:com.hurlant.math.BigInteger = param1 as com.hurlant.math.BigInteger;
         _loc2_.drShiftTo(m.t - 1,r2);
         §§push(_loc2_.t);
         §§push(m.t);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 43 - 1 - 1);
         }
         if(§§pop() > §§pop() + §§pop())
         {
            §§push(_loc2_);
            §§push(m.t);
            §§push(1);
            if(_loc3_)
            {
               §§push(-(§§pop() - 1) - 1);
            }
            §§pop().t = §§pop() + §§pop();
            _loc2_.clamp();
         }
         §§push(mu);
         §§push(r2);
         §§push(m.t);
         §§push(1);
         if(_loc4_)
         {
            §§push((-(§§pop() - 1) * 22 + 103) * 115);
         }
         §§pop().multiplyUpperTo(§§pop(),§§pop() + §§pop(),q3);
         §§push(m);
         §§push(q3);
         §§push(m.t);
         §§push(1);
         if(_loc4_)
         {
            §§push(-((-§§pop() + 1) * 52 - 7 + 1));
         }
         §§pop().multiplyLowerTo(§§pop(),§§pop() + §§pop(),r2);
         while(true)
         {
            §§push(_loc2_.compareTo(r2));
            §§push(0);
            if(_loc3_)
            {
               §§push((§§pop() - 1 - 54) * 83 * 104 - 1);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            §§push(_loc2_);
            §§push(1);
            if(_loc4_)
            {
               §§push(-§§pop() + 117 - 44 + 56);
            }
            §§push(m.t);
            §§push(1);
            if(_loc4_)
            {
               §§push((-§§pop() + 114) * 29);
            }
            §§pop().dAddOffset(§§pop(),§§pop() + §§pop());
         }
         _loc2_.subTo(r2,_loc2_);
         while(true)
         {
            §§push(_loc2_.compareTo(m));
            §§push(0);
            if(_loc3_)
            {
               §§push((§§pop() - 8) * 90 + 31);
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            _loc2_.subTo(m,_loc2_);
         }
      }
      
      public function mulTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger, param3:com.hurlant.math.BigInteger) : void
      {
         param1.multiplyTo(param2,param3);
         reduce(param3);
      }
   }
}
