package com.hurlant.math
{
   import system.errors.NoSuchElementError;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import mx.states.State;
   import mx.states.SetProperty;
   import spark.effects.RemoveAction;
   import mx.binding.BindingManager;
   
   use namespace bi_internal;
   
   final class MontgomeryReduction implements IReduction
   {
       
      
      private var mp:int;
      
      private var mph:int;
      
      private var mpl:int;
      
      private var mt2:int;
      
      private var m:com.hurlant.math.BigInteger;
      
      private var um:int;
      
      function MontgomeryReduction(param1:com.hurlant.math.BigInteger)
      {
         super();
         this.m = param1;
         mp = param1.invDigit();
         §§push();
         §§push(mp);
         §§push(32767);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1 + 0 - 1) + 1);
         }
         §§pop().mpl = §§pop() & §§pop();
         §§push();
         §§push(mp);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() * 71 + 1 - 49 - 53 + 1 - 90 + 1);
         }
         §§pop().mph = §§pop() >> §§pop();
         §§push();
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 3 + 1 - 62) * 75 + 49);
         }
         §§push(com.hurlant.math.BigInteger.DB);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 11 - 71 + 30);
         }
         §§pop().um = §§pop() << §§pop() - §§pop() - 1;
         §§push();
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 88 + 113));
         }
         §§pop().mt2 = §§pop() * param1.t;
      }
      
      public function convert(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         param1.abs().dlShiftTo(m.t,_loc2_);
         _loc2_.divRemTo(m,null,_loc2_);
         §§push(param1.s);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 1 - 105 - 1) - 94);
         }
         if(§§pop() < §§pop() && §§pop() > §§pop())
         {
            m.subTo(_loc2_,_loc2_);
         }
         return _loc2_;
      }
      
      public function revert(param1:com.hurlant.math.BigInteger) : com.hurlant.math.BigInteger
      {
         var _loc2_:com.hurlant.math.BigInteger = new com.hurlant.math.BigInteger();
         param1.copyTo(_loc2_);
         reduce(_loc2_);
         return _loc2_;
      }
      
      public function sqrTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger) : void
      {
         param1.squareTo(param2);
         reduce(param2);
      }
      
      public function reduce(param1:com.hurlant.math.BigInteger) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-(-(§§pop() - 1) + 59 + 26) * 70));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(-(-(§§pop() + 1 - 1) - 80 - 1));
         }
         var _loc4_:* = §§pop();
         while(param1.t <= mt2)
         {
            §§push(param1.a);
            §§push(_loc5_);
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() * 70 + 107 + 1 - 59);
            }
            §§pop()[§§pop()] = §§pop();
         }
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() + 1) + 80 - 115 + 51 - 44);
         }
         var _loc2_:* = §§pop();
         while(_loc2_ < m.t)
         {
            §§push(param1.a[_loc2_]);
            §§push(32767);
            if(_loc9_)
            {
               §§push(-§§pop() - 1 + 1 + 1 + 54 + 118 - 1);
            }
            _loc3_ = §§pop() & §§pop();
            §§push(_loc3_ * mpl);
            §§push(_loc3_ * mph);
            §§push(param1.a[_loc2_]);
            §§push(15);
            if(_loc8_)
            {
               §§push(-(-(§§pop() + 1) + 1 - 1 + 58));
            }
            §§push(§§pop() + (§§pop() >> §§pop()) * mpl & um);
            §§push(15);
            if(_loc8_)
            {
               §§push((-§§pop() - 11) * 43);
            }
            _loc4_ = §§pop() + (§§pop() << §§pop()) & com.hurlant.math.BigInteger.DM;
            _loc3_ = int(_loc2_ + m.t);
            §§push(param1.a);
            §§push(_loc3_);
            §§push(param1.a[_loc3_]);
            §§push(m);
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() * 116 - 1 - 9);
            }
            §§push(_loc4_);
            §§push(param1);
            §§push(_loc2_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() * 61 + 1 - 27 - 5));
            }
            §§pop()[§§pop()] = §§pop() + §§pop().am(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),m.t);
            while(param1.a[_loc3_] >= com.hurlant.math.BigInteger.DV)
            {
               param1.a[_loc3_] = param1.a[_loc3_] - com.hurlant.math.BigInteger.DV;
               param1.a[++_loc3_]++;
            }
            _loc2_++;
         }
         param1.clamp();
         param1.drShiftTo(m.t,param1);
         §§push(param1.compareTo(m));
         §§push(0);
         if(_loc8_)
         {
            §§push(-((§§pop() - 25) * 17 + 119));
         }
         if(§§pop() >= §§pop())
         {
            param1.subTo(m,param1);
         }
      }
      
      public function mulTo(param1:com.hurlant.math.BigInteger, param2:com.hurlant.math.BigInteger, param3:com.hurlant.math.BigInteger) : void
      {
         param1.multiplyTo(param2,param3);
         reduce(param3);
      }
   }
}
