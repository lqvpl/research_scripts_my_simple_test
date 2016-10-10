package com.hurlant.crypto.hash
{
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import mx.collections.ArrayCollection;
   
   public class SHA256 extends SHABase implements IHash
   {
      
      protected static const k:Array = null;
      
      {
         §§push();
         §§push(1116352408);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1 - 1 - 100 - 57) * 67 - 1));
         }
         §§push(1899447441);
         §§push(3049323471);
         §§push(3921009573);
         §§push(961987163);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1) + 34 + 1 + 37);
         }
         §§push(1508970993);
         §§push(2453635748);
         §§push(2870763221);
         §§push(3624381080);
         §§push(310598401);
         if(_loc1_)
         {
            §§push(-(§§pop() - 90) + 84 - 1 - 1 + 35);
         }
         §§push(607225278);
         §§push(1426881987);
         if(_loc2_)
         {
            §§push(-((§§pop() + 103) * 52) * 10 + 39 - 1 - 70);
         }
         §§push(1925078388);
         §§push(2162078206);
         §§push(2614888103);
         §§push(3248222580);
         §§push(3835390401);
         §§push(4022224774);
         §§push(264347078);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 45);
         }
         §§push(604807628);
         §§push(770255983);
         if(_loc2_)
         {
            §§push((-§§pop() + 50 - 33 + 1) * 20 - 15);
         }
         §§push(1249150122);
         §§push(1555081692);
         if(_loc1_)
         {
            §§push(-(§§pop() - 1 - 41 - 1) - 31);
         }
         §§push(1996064986);
         §§push(2554220882);
         §§push(2821834349);
         §§push(2952996808);
         §§push(3210313671);
         §§push(3336571891);
         §§push(3584528711);
         §§push(113926993);
         if(_loc1_)
         {
            §§push((§§pop() - 17) * 61 - 1 - 1);
         }
         §§push(338241895);
         §§push(666307205);
         if(_loc1_)
         {
            §§push((§§pop() + 1 - 1 + 1) * 49);
         }
         §§push(773529912);
         §§push(1294757372);
         if(_loc2_)
         {
            §§push(§§pop() * 63 + 1 + 35);
         }
         §§push(1396182291);
         §§push(1695183700);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1) * 56 + 82 + 1 + 72);
         }
         §§push(1986661051);
         §§push(2177026350);
         §§push(2456956037);
         §§push(2730485921);
         §§push(2820302411);
         §§push(3259730800);
         §§push(3345764771);
         §§push(3516065817);
         §§push(3600352804);
         §§push(4094571909);
         §§push(275423344);
         if(_loc2_)
         {
            §§push(§§pop() * 94 + 1 - 1 - 1);
         }
         §§push(430227734);
         §§push(506948616);
         if(_loc1_)
         {
            §§push(--§§pop() + 1);
         }
         §§push(659060556);
         §§push(883997877);
         if(_loc2_)
         {
            §§push(§§pop() * 49 + 34 + 72 + 1 + 1 - 1);
         }
         §§push(958139571);
         §§push(1322822218);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) + 70) * 46 - 91);
         }
         §§push(1537002063);
         §§push(1747873779);
         if(_loc2_)
         {
            §§push((-((§§pop() - 1) * 37) - 74) * 11);
         }
         §§push(1955562222);
         §§push(2024104815);
         if(_loc2_)
         {
            §§push(-(§§pop() - 119) + 1 - 1 + 1 - 17);
         }
      }
      
      protected var h:Array;
      
      public function SHA256()
      {
         §§push();
         §§push(1779033703);
         if(_loc1_)
         {
            §§push(--((§§pop() * 114 - 87) * 109 + 1));
         }
         §§push(3144134277);
         §§push(1013904242);
         if(_loc1_)
         {
            §§push(-(§§pop() - 16 + 119 + 1) * 73);
         }
         §§push(2773480762);
         §§push(1359893119);
         if(_loc1_)
         {
            §§push(-(§§pop() + 79 + 45) + 76);
         }
         §§push(2600822924);
         §§push(528734635);
         if(_loc1_)
         {
            §§push(--§§pop() * 7 - 1 - 1 + 86);
         }
         §§pop().h = null;
         super();
      }
      
      override public function toString() : String
      {
         return "sha256";
      }
      
      override public function getHashSize() : uint
      {
         §§push(32);
         if(_loc1_)
         {
            §§push(-(§§pop() + 47 + 29 - 30) + 1 + 26 - 114);
         }
         return §§pop();
      }
      
      protected final function rrol(param1:uint, param2:uint) : uint
      {
         §§push(param1);
         §§push(32);
         if(_loc4_)
         {
            §§push(§§pop() - 92 - 1 - 1 - 34 - 111);
         }
         return §§pop() << §§pop() - param2 | param1 >>> param2;
      }
      
      override protected function core(param1:Array, param2:uint) : Array
      {
         §§push(0);
         if(_loc27_)
         {
            §§push(((§§pop() * 1 - 1) * 71 - 1) * 51);
         }
         var _loc13_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push(((§§pop() + 101) * 104 * 61 * 40 + 14) * 48 - 100);
         }
         var _loc14_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push((§§pop() - 1) * 119 * 70 - 1 - 92 + 1);
         }
         var _loc15_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(§§pop() - 1 - 1 + 17);
         }
         var _loc16_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push((§§pop() * 32 * 77 + 1) * 48 * 16 + 76);
         }
         var _loc17_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(-(§§pop() - 41 + 1 - 59 - 47 - 33 + 95));
         }
         var _loc18_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push(-((-(§§pop() + 1) * 90 - 50) * 92) - 40);
         }
         var _loc19_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push(-(§§pop() * 102 + 1));
         }
         var _loc20_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(-(§§pop() + 52 + 9) * 72 + 41);
         }
         var _loc21_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(§§pop() + 1 + 1 + 1 + 1 + 1);
         }
         var _loc22_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push(-(-(§§pop() * 56 - 1) - 1));
         }
         var _loc23_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(-(§§pop() + 43) * 33);
         }
         var _loc24_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push((§§pop() + 69 + 1) * 44 + 74 + 103);
         }
         var _loc25_:uint = §§pop();
         §§push(param1);
         §§push(param2);
         §§push(5);
         if(_loc26_)
         {
            §§push((§§pop() - 1 + 1) * 22 * 86 * 31 - 17);
         }
         §§push(§§pop() >> §§pop());
         §§push(param1);
         §§push(param2);
         §§push(5);
         if(_loc26_)
         {
            §§push(-(§§pop() * 89) - 1 - 1);
         }
         §§push(§§pop()[§§pop() >> §§pop()]);
         §§push(128);
         if(_loc26_)
         {
            §§push(-(§§pop() - 1 + 3) - 1 - 87);
         }
         §§push(24);
         §§push(param2);
         §§push(32);
         if(_loc27_)
         {
            §§push(§§pop() - 1 - 5 + 1 - 1 + 1 + 1);
         }
         §§pop()[§§pop()] = §§pop() | §§pop() << §§pop() - §§pop() % §§pop();
         §§push(param1);
         §§push(param2);
         §§push(64);
         if(_loc27_)
         {
            §§push((-(§§pop() - 37 + 1) + 11) * 13 + 1);
         }
         §§push(§§pop() + §§pop());
         §§push(9);
         if(_loc27_)
         {
            §§push(-((§§pop() * 112 + 1) * 41 * 53 + 1 - 1));
         }
         §§push(§§pop() >> §§pop());
         §§push(4);
         if(_loc27_)
         {
            §§push(((§§pop() - 45 - 57) * 32 * 103 - 1) * 33 - 1);
         }
         §§push(§§pop() << §§pop());
         §§push(15);
         if(_loc26_)
         {
            §§push(((§§pop() + 1) * 76 * 15 * 103 + 27) * 86);
         }
         §§pop()[§§pop() + §§pop()] = param2;
         var _loc3_:Array = [];
         §§push(h);
         §§push(0);
         if(_loc27_)
         {
            §§push(-(§§pop() + 16 + 1 - 1 - 1 + 71 + 115));
         }
         var _loc4_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(1);
         if(_loc26_)
         {
            §§push(--(§§pop() * 68 * 81) + 1);
         }
         var _loc5_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(2);
         if(_loc26_)
         {
            §§push(((§§pop() + 107) * 39 + 65 - 1) * 119);
         }
         var _loc6_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(3);
         if(_loc27_)
         {
            §§push(§§pop() + 1 - 0 + 34);
         }
         var _loc7_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(4);
         if(_loc26_)
         {
            §§push((§§pop() + 102 - 1 - 1) * 16 - 61);
         }
         var _loc8_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(5);
         if(_loc26_)
         {
            §§push(-((§§pop() + 41) * 117));
         }
         var _loc9_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(6);
         if(_loc27_)
         {
            §§push(-((§§pop() - 1) * 43) - 1);
         }
         var _loc10_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(7);
         if(_loc27_)
         {
            §§push((§§pop() - 1) * 94 - 1 + 1 + 1 + 109);
         }
         var _loc11_:uint = §§pop()[§§pop()];
         §§push(0);
         if(_loc27_)
         {
            §§push(-(§§pop() - 39 + 99 + 20));
         }
         var _loc12_:uint = §§pop();
         while(_loc12_ < param1.length)
         {
            _loc13_ = _loc4_;
            _loc14_ = _loc5_;
            _loc15_ = _loc6_;
            _loc16_ = _loc7_;
            _loc17_ = _loc8_;
            _loc18_ = _loc9_;
            _loc19_ = _loc10_;
            _loc20_ = _loc11_;
            §§push(0);
            if(_loc26_)
            {
               §§push(-§§pop() * 98 - 1 - 1 + 15 - 1);
            }
            _loc21_ = §§pop();
            while(true)
            {
               §§push(_loc21_);
               §§push(64);
               if(_loc27_)
               {
                  §§push(-((-(§§pop() * 51) - 48) * 46) - 1 + 5);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§push(_loc21_);
               §§push(16);
               if(_loc26_)
               {
                  §§push((§§pop() - 1) * 103 + 79 + 79 + 1);
               }
               if(§§pop() < §§pop())
               {
                  _loc3_[_loc21_] = param1[_loc12_ + _loc21_] || §§pop();
               }
               else
               {
                  §§push();
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(15);
                  if(_loc27_)
                  {
                     §§push(§§pop() - 1 + 1 - 55 + 81 - 1 + 1 - 1);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(7);
                  if(_loc27_)
                  {
                     §§push(§§pop() * 62 + 1 - 1 - 1 - 18 + 88 + 113);
                  }
                  §§push(§§pop().rrol(§§pop(),§§pop()));
                  §§push();
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(15);
                  if(_loc27_)
                  {
                     §§push(-(§§pop() - 31) * 100 + 97 + 1);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(18);
                  if(_loc26_)
                  {
                     §§push(§§pop() * 13 * 86 - 81);
                  }
                  §§push(§§pop() ^ §§pop().rrol(§§pop(),§§pop()));
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(15);
                  if(_loc26_)
                  {
                     §§push((-(-(§§pop() + 97 - 1) - 80) - 1) * 86);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(3);
                  if(_loc27_)
                  {
                     §§push(§§pop() - 44 + 1 - 1 + 87 + 1 + 108 - 68);
                  }
                  _loc24_ = §§pop() ^ §§pop() >>> §§pop();
                  §§push();
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(2);
                  if(_loc26_)
                  {
                     §§push((§§pop() * 100 + 1) * 78 + 56 + 1);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(17);
                  if(_loc27_)
                  {
                     §§push(-((§§pop() * 51 - 1) * 51 - 1 - 1));
                  }
                  §§push(§§pop().rrol(§§pop(),§§pop()));
                  §§push();
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(2);
                  if(_loc26_)
                  {
                     §§push(-(§§pop() * 12 + 115 + 1 + 1) * 108);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(19);
                  if(_loc26_)
                  {
                     §§push((§§pop() - 1) * 68 + 112 + 57);
                  }
                  §§push(§§pop() ^ §§pop().rrol(§§pop(),§§pop()));
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(2);
                  if(_loc27_)
                  {
                     §§push(-(-§§pop() + 1 - 1 + 1));
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(10);
                  if(_loc26_)
                  {
                     §§push((§§pop() * 107 - 1) * 9 + 20 - 29 + 1 + 1);
                  }
                  _loc25_ = §§pop() ^ §§pop() >>> §§pop();
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(16);
                  if(_loc26_)
                  {
                     §§push(-((§§pop() - 1 - 1 + 1 + 1) * 34 + 28));
                  }
                  §§push(§§pop()[§§pop() - §§pop()] + _loc24_);
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(7);
                  if(_loc27_)
                  {
                     §§push(-(§§pop() - 83 + 3 + 1));
                  }
                  §§pop()[§§pop()] = §§pop() + §§pop()[§§pop() - §§pop()] + _loc25_;
               }
               §§push();
               §§push(_loc4_);
               §§push(2);
               if(_loc26_)
               {
                  §§push(--(§§pop() + 1) * 66 - 71);
               }
               §§push(§§pop().rrol(§§pop(),§§pop()));
               §§push();
               §§push(_loc4_);
               §§push(13);
               if(_loc27_)
               {
                  §§push((§§pop() * 111 + 1) * 38 + 1 - 78);
               }
               §§push(§§pop() ^ §§pop().rrol(§§pop(),§§pop()));
               §§push();
               §§push(_loc4_);
               §§push(22);
               if(_loc26_)
               {
                  §§push(-(§§pop() + 111) + 64);
               }
               _loc22_ = (§§pop() ^ §§pop().rrol(§§pop(),§§pop())) + (_loc4_ & _loc5_ ^ _loc4_ & _loc6_ ^ _loc5_ & _loc6_);
               §§push(_loc11_);
               §§push();
               §§push(_loc8_);
               §§push(6);
               if(_loc27_)
               {
                  §§push(-(-(§§pop() + 46 + 110 - 1) - 49 - 1));
               }
               §§push(§§pop().rrol(§§pop(),§§pop()));
               §§push();
               §§push(_loc8_);
               §§push(11);
               if(_loc26_)
               {
                  §§push(-(§§pop() * 31 * 45 + 28 + 78));
               }
               §§push(§§pop() ^ §§pop().rrol(§§pop(),§§pop()));
               §§push();
               §§push(_loc8_);
               §§push(25);
               if(_loc26_)
               {
                  §§push(-(§§pop() + 1 + 63));
               }
               _loc23_ = §§pop() + (§§pop() ^ §§pop().rrol(§§pop(),§§pop())) + (_loc8_ & _loc9_ ^ _loc10_ & ~_loc8_) + k[_loc21_] + _loc3_[_loc21_];
               _loc11_ = _loc10_;
               _loc10_ = _loc9_;
               _loc9_ = _loc8_;
               _loc8_ = _loc7_ + _loc23_;
               _loc7_ = _loc6_;
               _loc6_ = _loc5_;
               _loc5_ = _loc4_;
               _loc4_ = _loc23_ + _loc22_;
               _loc21_++;
            }
            _loc4_ = _loc4_ + _loc13_;
            _loc5_ = _loc5_ + _loc14_;
            _loc6_ = _loc6_ + _loc15_;
            _loc7_ = _loc7_ + _loc16_;
            _loc8_ = _loc8_ + _loc17_;
            _loc9_ = _loc9_ + _loc18_;
            _loc10_ = _loc10_ + _loc19_;
            _loc11_ = _loc11_ + _loc20_;
            §§push(_loc12_);
            §§push(16);
            if(_loc27_)
            {
               §§push(-((---(§§pop() + 1) - 1) * 30));
            }
            _loc12_ = §§pop() + §§pop();
         }
         return [_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_];
      }
   }
}
