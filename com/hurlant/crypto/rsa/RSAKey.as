package com.hurlant.crypto.rsa
{
   import com.hurlant.math.BigInteger;
   import com.hurlant.crypto.prng.Random;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.renderers.DomainRenderer;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import com.hurlant.crypto.tls.TLSError;
   import spark.components.TextArea;
   import com.hurlant.util.Memory;
   import spark.components.Scroller;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.skins.target;
   import mx.states.State;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.IPad;
   import mx.graphics.SolidColorStroke;
   import spark.layouts.HorizontalLayout;
   import mx.graphics.SolidColor;
   import spark.components.Label;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public final class RSAKey
   {
       
      
      public var dmp1:BigInteger;
      
      protected var canDecrypt:Boolean;
      
      public var d:BigInteger;
      
      public var e:int;
      
      public var dmq1:BigInteger;
      
      public var n:BigInteger;
      
      public var p:BigInteger;
      
      public var q:BigInteger;
      
      protected var canEncrypt:Boolean;
      
      public var coeff:BigInteger;
      
      public function RSAKey(param1:BigInteger, param2:int, param3:BigInteger = null, param4:BigInteger = null, param5:BigInteger = null, param6:BigInteger = null, param7:BigInteger = null, param8:BigInteger = null)
      {
         super();
         this.n = param1;
         this.e = param2;
         this.d = param3;
         this.p = param4;
         this.q = param5;
         this.dmp1 = param6;
         this.dmq1 = param7;
         this.coeff = param8;
         canEncrypt = n != null && §§pop() != §§pop();
         canDecrypt = canEncrypt && d != null;
      }
      
      protected static function bigRandom(param1:int, param2:Random) : BigInteger
      {
         §§push(param1);
         §§push(2);
         if(_loc5_)
         {
            §§push(-(§§pop() - 109 - 21 + 64 - 81 + 35));
         }
         if(§§pop() < §§pop())
         {
            §§push(BigInteger);
            §§push(1);
            if(_loc6_)
            {
               §§push((§§pop() - 1 + 58 - 1 - 13 + 1 + 67) * 106);
            }
            return §§pop().nbv(§§pop());
         }
         var _loc3_:ByteArray = new ByteArray();
         §§push(param2);
         §§push(_loc3_);
         §§push(param1);
         §§push(3);
         if(_loc6_)
         {
            §§push((§§pop() + 108) * 98 * 55 + 39 + 1);
         }
         §§pop().nextBytes(§§pop(),§§pop() >> §§pop());
         §§push(_loc3_);
         §§push(0);
         if(_loc6_)
         {
            §§push(--((§§pop() - 85) * 109 + 58) + 28);
         }
         §§pop().position = §§pop();
         §§push();
         §§push(_loc3_);
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 1 + 1) * 24);
         }
         var _loc4_:BigInteger = new §§pop().BigInteger(§§pop(),§§pop(),true);
         §§push(_loc4_);
         §§push(param1);
         §§push(1);
         if(_loc5_)
         {
            §§push(-(§§pop() - 1) - 18);
         }
         §§pop().primify(§§pop(),§§pop());
         return _loc4_;
      }
      
      public static function parsePublicKey(param1:String, param2:String) : RSAKey
      {
         §§push(RSAKey);
         §§push();
         §§push(param1);
         §§push(16);
         if(_loc3_)
         {
            §§push(§§pop() + 109 - 92 + 0);
         }
         §§push(new §§pop().BigInteger(§§pop(),§§pop(),true));
         §§push();
         §§push(param2);
         §§push(16);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 53 - 103 - 114) * 11);
         }
         return new §§pop()(§§pop(),§§pop().parseInt(§§pop(),§§pop()));
      }
      
      public static function generate(param1:uint, param2:String) : RSAKey
      {
         var _loc7_:BigInteger = null;
         var _loc8_:BigInteger = null;
         var _loc9_:BigInteger = null;
         var _loc10_:BigInteger = null;
         var _loc3_:Random = new Random();
         §§push(param1);
         §§push(1);
         if(_loc12_)
         {
            §§push(-§§pop() * 72 + 1 + 1 - 1);
         }
         var _loc4_:uint = §§pop() >> §§pop();
         §§push(RSAKey);
         §§push(null);
         §§push(0);
         if(_loc12_)
         {
            §§push(§§pop() + 56 + 1 - 44 - 7 - 1);
         }
         var _loc5_:RSAKey = new §§pop()(§§pop(),§§pop(),null);
         §§push(_loc5_);
         §§push();
         §§push(param2);
         §§push(16);
         if(_loc11_)
         {
            §§push((§§pop() + 1 - 62) * 15 * 4);
         }
         §§pop().e = §§pop().parseInt(§§pop(),§§pop());
         §§push();
         §§push(param2);
         §§push(16);
         if(_loc12_)
         {
            §§push(-§§pop() * 113 * 33);
         }
         var _loc6_:BigInteger = new §§pop().BigInteger(§§pop(),§§pop(),true);
         do
         {
            do
            {
               _loc5_.p = bigRandom(param1 - _loc4_,_loc3_);
               §§push(_loc5_.p.subtract(BigInteger.ONE).gcd(_loc6_).compareTo(BigInteger.ONE));
               §§push(0);
               if(_loc11_)
               {
                  §§push(-(§§pop() - 92 - 1));
               }
            }
            while(!(§§pop() == §§pop() && §§pop().isProbablePrime(§§pop())));
            
            do
            {
               _loc5_.q = bigRandom(_loc4_,_loc3_);
               §§push(_loc5_.q.subtract(BigInteger.ONE).gcd(_loc6_).compareTo(BigInteger.ONE));
               §§push(0);
               if(_loc11_)
               {
                  §§push(§§pop() - 1 - 1 - 23);
               }
            }
            while(!(§§pop() == §§pop() && §§pop().isProbablePrime(§§pop())));
            
            §§push(_loc5_.p.compareTo(_loc5_.q));
            §§push(0);
            if(_loc12_)
            {
               §§push((--(§§pop() + 1) * 101 - 119) * 62);
            }
            if(§§pop() <= §§pop())
            {
               _loc10_ = _loc5_.p;
               _loc5_.p = _loc5_.q;
               _loc5_.q = _loc10_;
            }
            _loc7_ = _loc5_.p.subtract(BigInteger.ONE);
            _loc8_ = _loc5_.q.subtract(BigInteger.ONE);
            _loc9_ = _loc7_.multiply(_loc8_);
            §§push(_loc9_.gcd(_loc6_).compareTo(BigInteger.ONE));
            §§push(0);
            if(_loc11_)
            {
               §§push(-(-§§pop() - 55));
            }
         }
         while(§§pop() != §§pop());
         
         _loc5_.n = _loc5_.p.multiply(_loc5_.q);
         _loc5_.d = _loc6_.modInverse(_loc9_);
         _loc5_.dmp1 = _loc5_.d.mod(_loc7_);
         _loc5_.dmq1 = _loc5_.d.mod(_loc8_);
         _loc5_.coeff = _loc5_.q.modInverse(_loc5_.p);
         return _loc5_;
      }
      
      public static function parsePrivateKey(param1:String, param2:String, param3:String, param4:String = null, param5:String = null, param6:String = null, param7:String = null, param8:String = null) : RSAKey
      {
         if(param4 == null)
         {
            §§push(RSAKey);
            §§push();
            §§push(param1);
            §§push(16);
            if(_loc9_)
            {
               §§push((-(§§pop() - 1) - 41) * 54);
            }
            §§push(new §§pop().BigInteger(§§pop(),§§pop(),true));
            §§push();
            §§push(param2);
            §§push(16);
            if(_loc9_)
            {
               §§push(-(--(§§pop() + 98) + 79));
            }
            §§push(§§pop().parseInt(§§pop(),§§pop()));
            §§push();
            §§push(param3);
            §§push(16);
            if(_loc10_)
            {
               §§push((§§pop() - 118) * 45 * 119);
            }
            return new §§pop()(§§pop(),§§pop(),new §§pop().BigInteger(§§pop(),§§pop(),true));
         }
         §§push(RSAKey);
         §§push();
         §§push(param1);
         §§push(16);
         if(_loc9_)
         {
            §§push(-(-(-(-§§pop() * 116) - 93) + 108));
         }
         §§push(new §§pop().BigInteger(§§pop(),§§pop(),true));
         §§push();
         §§push(param2);
         §§push(16);
         if(_loc10_)
         {
            §§push(§§pop() + 3 - 107 + 1 + 91);
         }
         §§push(§§pop().parseInt(§§pop(),§§pop()));
         §§push();
         §§push(param3);
         §§push(16);
         if(_loc10_)
         {
            §§push((§§pop() - 10) * 119 + 1 + 49);
         }
         §§push(new §§pop().BigInteger(§§pop(),§§pop(),true));
         §§push();
         §§push(param4);
         §§push(16);
         if(_loc10_)
         {
            §§push(((-(§§pop() - 58) - 1) * 98 + 1 + 77) * 77);
         }
         §§push(new §§pop().BigInteger(§§pop(),§§pop(),true));
         §§push();
         §§push(param5);
         §§push(16);
         if(_loc10_)
         {
            §§push(((§§pop() + 54) * 39 + 1) * 114 - 1 - 1);
         }
         §§push(new §§pop().BigInteger(§§pop(),§§pop(),true));
         §§push();
         §§push(param6);
         §§push(16);
         if(_loc10_)
         {
            §§push(§§pop() - 12 - 26 + 14);
         }
         §§push(new §§pop().BigInteger(§§pop(),§§pop(),true));
         §§push();
         §§push(param7);
         §§push(16);
         if(_loc10_)
         {
            §§push((§§pop() * 111 + 36) * 104 * 58 - 1 - 87);
         }
         §§push(new §§pop().BigInteger(§§pop(),§§pop(),true));
         §§push();
         §§push(param8);
         §§push(16);
         if(_loc10_)
         {
            §§push(((§§pop() + 1 - 1) * 70 - 102 + 1) * 80);
         }
         return new §§pop()(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),new §§pop().BigInteger(§§pop(),§§pop(),true));
      }
      
      public final function verify(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function = null) : void
      {
         §§push();
         §§push(doPublic);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         §§push(1);
         if(_loc5_)
         {
            §§push(-(§§pop() - 1 - 1 + 1 + 1) - 1 + 1);
         }
         §§pop()._decrypt(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
      }
      
      public final function rawunpad(param1:BigInteger, param2:uint, param3:uint = 0) : ByteArray
      {
         return param1.toByteArray();
      }
      
      public final function dump() : String
      {
         §§push("N=");
         §§push(n);
         §§push(16);
         if(_loc3_)
         {
            §§push(-(-((§§pop() - 4) * 67) + 30 + 1));
         }
         §§push(§§pop() + §§pop().toString(§§pop()) + "\n" + "E=");
         §§push(e);
         §§push(16);
         if(_loc3_)
         {
            §§push(-((§§pop() + 106) * 17));
         }
         var _loc1_:* = §§pop() + §§pop().toString(§§pop()) + "\n";
         if(canDecrypt)
         {
            §§push(_loc1_);
            §§push("D=");
            §§push(d);
            §§push(16);
            if(_loc2_)
            {
               §§push(--§§pop() + 1 - 19 + 1 - 1);
            }
            _loc1_ = §§pop() + (§§pop() + §§pop().toString(§§pop()) + "\n");
            if(p != null && q != null)
            {
               §§push(_loc1_);
               §§push("P=");
               §§push(p);
               §§push(16);
               if(_loc2_)
               {
                  §§push(§§pop() * 88 + 1 - 1 - 81);
               }
               _loc1_ = §§pop() + (§§pop() + §§pop().toString(§§pop()) + "\n");
               §§push(_loc1_);
               §§push("Q=");
               §§push(q);
               §§push(16);
               if(_loc3_)
               {
                  §§push(-(§§pop() * 115 * 4 + 66) * 3 - 107);
               }
               _loc1_ = §§pop() + (§§pop() + §§pop().toString(§§pop()) + "\n");
               §§push(_loc1_);
               §§push("DMP1=");
               §§push(dmp1);
               §§push(16);
               if(_loc3_)
               {
                  §§push(§§pop() - 1 - 42 - 1 + 24 + 52 - 1 - 1);
               }
               _loc1_ = §§pop() + (§§pop() + §§pop().toString(§§pop()) + "\n");
               §§push(_loc1_);
               §§push("DMQ1=");
               §§push(dmq1);
               §§push(16);
               if(_loc2_)
               {
                  §§push(-(-(§§pop() + 1) - 1 + 1 + 1));
               }
               _loc1_ = §§pop() + (§§pop() + §§pop().toString(§§pop()) + "\n");
               §§push(_loc1_);
               §§push("IQMP=");
               §§push(coeff);
               §§push(16);
               if(_loc3_)
               {
                  §§push(-(§§pop() + 60 - 1 + 1 + 16) + 98);
               }
               _loc1_ = §§pop() + (§§pop() + §§pop().toString(§§pop()) + "\n");
            }
         }
         return _loc1_;
      }
      
      protected final function doPrivate2(param1:BigInteger) : BigInteger
      {
         if(p == null && q == null)
         {
            return param1.modPow(d,n);
         }
         var _loc2_:BigInteger = param1.mod(p).modPow(dmp1,p);
         var _loc3_:BigInteger = param1.mod(q).modPow(dmq1,q);
         while(true)
         {
            §§push(_loc2_.compareTo(_loc3_));
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() - 63 - 42 + 1 - 1 + 1 - 1 - 12);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            _loc2_ = _loc2_.add(p);
         }
         var _loc4_:BigInteger = _loc2_.subtract(_loc3_).multiply(coeff).mod(p).multiply(q).add(_loc3_);
         return _loc4_;
      }
      
      public final function decrypt(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function = null) : void
      {
         §§push();
         §§push(doPrivate2);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         §§push(2);
         if(_loc5_)
         {
            §§push(§§pop() * 7 * 88 + 1 - 1);
         }
         §§pop()._decrypt(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
      }
      
      private final function _decrypt(param1:Function, param2:ByteArray, param3:ByteArray, param4:uint, param5:Function, param6:int) : void
      {
         var _loc9_:BigInteger = null;
         var _loc10_:BigInteger = null;
         var _loc11_:ByteArray = null;
         if(param5 == null)
         {
            param5 = pkcs1unpad;
         }
         if(param2.position >= param2.length)
         {
            §§push(param2);
            §§push(0);
            if(_loc13_)
            {
               §§push(-(-((§§pop() + 1 - 19) * 100) * 47) * 108);
            }
            §§pop().position = §§pop();
         }
         var _loc7_:uint = getBlockSize();
         var _loc8_:int = param2.position + param4;
         while(param2.position < _loc8_)
         {
            _loc9_ = new BigInteger(param2,_loc7_,true);
            _loc10_ = param1(_loc9_);
            _loc11_ = param5(_loc10_,_loc7_,param6);
            if(_loc11_ == null)
            {
               throw new TLSError("Decrypt error - padding function returned null!",TLSError.decode_error);
            }
            param3.writeBytes(_loc11_);
         }
      }
      
      protected final function doPublic(param1:BigInteger) : BigInteger
      {
         return param1.modPowInt(e,n);
      }
      
      public final function dispose() : void
      {
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 9 + 1 - 94 - 15);
         }
         §§pop().e = §§pop();
         n.dispose();
         n = null;
         Memory.gc();
      }
      
      private final function _encrypt(param1:Function, param2:ByteArray, param3:ByteArray, param4:uint, param5:Function, param6:int) : void
      {
         var _loc9_:BigInteger = null;
         var _loc10_:BigInteger = null;
         if(param5 == null)
         {
            param5 = pkcs1pad;
         }
         if(param2.position >= param2.length)
         {
            §§push(param2);
            §§push(0);
            if(_loc11_)
            {
               §§push(((§§pop() - 1) * 16 - 1 - 52 + 84) * 86 + 1);
            }
            §§pop().position = §§pop();
         }
         var _loc7_:uint = getBlockSize();
         var _loc8_:int = param2.position + param4;
         while(param2.position < _loc8_)
         {
            _loc9_ = new BigInteger(param5(param2,_loc8_,_loc7_,param6),_loc7_,true);
            _loc10_ = param1(_loc9_);
            _loc10_.toArray(param3);
         }
      }
      
      public final function rawpad(param1:ByteArray, param2:int, param3:uint, param4:uint = 0) : ByteArray
      {
         return param1;
      }
      
      public final function encrypt(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function = null) : void
      {
         §§push();
         §§push(doPublic);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         §§push(2);
         if(_loc5_)
         {
            §§push((§§pop() + 43) * 42 + 10 - 1 + 55 - 20);
         }
         §§pop()._encrypt(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
      }
      
      private final function pkcs1pad(param1:ByteArray, param2:int, param3:uint, param4:uint = 2) : ByteArray
      {
         var _loc8_:Random = null;
         §§push(0);
         if(_loc13_)
         {
            §§push(§§pop() - 97 + 1 - 111 - 1 - 21 + 1);
         }
         var _loc9_:* = §§pop();
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:uint = param1.position;
         §§push(Math);
         §§push(param2);
         §§push(param1.length);
         §§push(_loc6_ + param3);
         §§push(11);
         if(_loc13_)
         {
            §§push(-(§§pop() - 119 - 72));
         }
         param2 = §§pop().min(§§pop(),§§pop(),§§pop() - §§pop());
         param1.position = param2;
         var _loc7_:int = param2 - 1;
         while(_loc7_ >= _loc6_ && §§pop() > §§pop())
         {
            _loc5_[--param3] = param1[_loc7_--];
         }
         §§push(_loc5_);
         §§push(_loc10_);
         §§push(0);
         if(_loc13_)
         {
            §§push((§§pop() + 1 - 44) * 110);
         }
         §§pop()[§§pop()] = §§pop();
         §§push(param4);
         §§push(2);
         if(_loc13_)
         {
            §§push((§§pop() - 116) * 75 + 1 - 1);
         }
         if(§§pop() == §§pop())
         {
            _loc8_ = new Random();
            §§push(0);
            if(_loc13_)
            {
               §§push(-(§§pop() - 1 - 1 - 49 + 1 - 1));
            }
            _loc9_ = §§pop();
            while(true)
            {
               §§push(param3);
               §§push(2);
               if(_loc14_)
               {
                  §§push(-(§§pop() + 115 - 30 + 13) + 27);
               }
               if(§§pop() <= §§pop())
               {
                  break;
               }
               do
               {
                  _loc9_ = int(_loc8_.nextByte());
                  §§push(_loc9_);
                  §§push(0);
                  if(_loc14_)
                  {
                     §§push((§§pop() * 8 - 1 + 1) * 107 + 1);
                  }
               }
               while(§§pop() == §§pop());
               
               _loc5_[--param3] = _loc9_;
            }
         }
         else
         {
            while(true)
            {
               §§push(param3);
               §§push(2);
               if(_loc14_)
               {
                  §§push(§§pop() - 73 + 1 + 8);
               }
               if(§§pop() <= §§pop())
               {
                  break;
               }
               §§push(_loc5_);
               §§push(_loc11_);
               §§push(255);
               if(_loc14_)
               {
                  §§push(-§§pop() - 1 - 1);
               }
               §§pop()[§§pop()] = §§pop();
            }
         }
         _loc5_[_loc11_] = param4;
         var _loc12_:* = --param3;
         §§push(_loc5_);
         §§push(_loc12_);
         §§push(0);
         if(_loc13_)
         {
            §§push(-((§§pop() - 112 - 101 - 10) * 112 + 1));
         }
         §§pop()[§§pop()] = §§pop();
         return _loc5_;
      }
      
      private final function pkcs1unpad(param1:BigInteger, param2:uint, param3:uint = 2) : ByteArray
      {
         var _loc4_:ByteArray = param1.toByteArray();
         var _loc5_:ByteArray = new ByteArray();
         §§push(_loc4_);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         §§pop().position = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 16) * 111 - 1 - 1);
         }
         var _loc6_:* = §§pop();
         while(_loc6_ < _loc4_.length && §§pop() == §§pop())
         {
            _loc6_++;
         }
         if(_loc4_.length - _loc6_ != param2 - 1 || _loc4_[_loc6_] != param3)
         {
            §§push();
            §§push("PKCS#1 unpad: i=" + _loc6_ + ", expected b[i]==" + param3 + ", got b[i]=");
            §§push(_loc4_[_loc6_]);
            §§push(16);
            if(_loc8_)
            {
               §§push((§§pop() - 21 - 58) * 35);
            }
            §§pop().trace(§§pop() + §§pop().toString(§§pop()));
            return null;
         }
         _loc6_++;
         while(true)
         {
            §§push(_loc4_[_loc6_]);
            §§push(0);
            if(_loc7_)
            {
               §§push(--((§§pop() + 1 - 96 - 38) * 14 - 94));
            }
            if(§§pop() == §§pop())
            {
               break;
            }
            if(++_loc6_ >= _loc4_.length)
            {
               §§push();
               §§push("PKCS#1 unpad: i=" + _loc6_ + ", b[i-1]!=0 (=");
               §§push(_loc4_[_loc6_ - 1]);
               §§push(16);
               if(_loc8_)
               {
                  §§push(-(§§pop() - 1 - 1) - 39 - 6 - 1);
               }
               §§pop().trace(§§pop() + §§pop().toString(§§pop()) + ")");
               return null;
            }
         }
         while(++_loc6_ < _loc4_.length)
         {
            _loc5_.writeByte(_loc4_[_loc6_]);
         }
         §§push(_loc5_);
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() + 64 - 85) * 111);
         }
         §§pop().position = §§pop();
         return _loc5_;
      }
      
      public final function getBlockSize() : uint
      {
         §§push(n.bitLength());
         §§push(7);
         if(_loc2_)
         {
            §§push(--(§§pop() - 91) + 90);
         }
         §§push(§§pop() + §§pop());
         §§push(8);
         if(_loc1_)
         {
            §§push(--((§§pop() + 7) * 45 * 38));
         }
         return §§pop() / §§pop();
      }
      
      public final function toString() : String
      {
         return "rsa";
      }
      
      public final function sign(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function = null) : void
      {
         §§push();
         §§push(doPrivate2);
         §§push(param1);
         §§push(param2);
         §§push(param3);
         §§push(param4);
         §§push(1);
         if(_loc6_)
         {
            §§push(-(§§pop() + 22 + 26));
         }
         §§pop()._encrypt(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
      }
      
      protected final function doPrivate(param1:BigInteger) : BigInteger
      {
         if(p == null || q == null)
         {
            return param1.modPow(d,n);
         }
         var _loc2_:BigInteger = param1.mod(p).modPow(dmp1,p);
         var _loc3_:BigInteger = param1.mod(q).modPow(dmq1,q);
         while(true)
         {
            §§push(_loc2_.compareTo(_loc3_));
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() - 75 - 1 + 8 - 9);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            _loc2_ = _loc2_.add(p);
         }
         return _loc2_.subtract(_loc3_).multiply(coeff).mod(p).multiply(q).add(_loc3_);
      }
   }
}
