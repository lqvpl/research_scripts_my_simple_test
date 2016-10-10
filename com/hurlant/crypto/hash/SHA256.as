package com.hurlant.crypto.hash
{
   import spark.components.BorderContainer;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.view.skins.ProjectDetailsItemSkin;
   import mx.binding.BindingManager;
   
   public class SHA256 extends SHABase implements IHash
   {
      
      protected static const k:Array = null;
      
      {
         §§push();
         §§push(1116352408);
         if(_loc2_)
         {
            §§push(((§§pop() - 101 + 73 - 1) * 1 + 100) * 52);
         }
         §§push(1899447441);
         §§push(3049323471);
         §§push(3921009573);
         §§push(961987163);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1 + 16) - 96 + 1);
         }
         §§push(1508970993);
         §§push(2453635748);
         §§push(2870763221);
         §§push(3624381080);
         §§push(310598401);
         if(_loc1_)
         {
            §§push(§§pop() * 19 + 47 + 69 - 1 + 1 + 84 + 1);
         }
         §§push(607225278);
         §§push(1426881987);
         if(_loc1_)
         {
            §§push((-(§§pop() - 1) - 41 - 1) * 109 - 13);
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
            §§push(§§pop() + 116 - 1 - 50);
         }
         §§push(604807628);
         §§push(770255983);
         if(_loc2_)
         {
            §§push(-(§§pop() - 49) + 45 + 64 - 1);
         }
         §§push(1249150122);
         §§push(1555081692);
         if(_loc2_)
         {
            §§push(-(§§pop() + 15 + 92 - 1) - 107 + 1 + 104);
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
            §§push(§§pop() * 118 - 1 + 4 + 71 + 64);
         }
         §§push(338241895);
         §§push(666307205);
         if(_loc1_)
         {
            §§push(§§pop() - 89 + 1 + 62 - 13 + 1 + 1 - 1);
         }
         §§push(773529912);
         §§push(1294757372);
         if(_loc1_)
         {
            §§push(§§pop() + 1 + 1 + 76 + 1 - 24 + 1 - 1);
         }
         §§push(1396182291);
         §§push(1695183700);
         if(_loc1_)
         {
            §§push((-§§pop() - 1 - 62 + 25) * 104 - 1 - 1);
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
            §§push(-(-§§pop() * 83 + 48 - 74) - 36 - 1);
         }
         §§push(430227734);
         §§push(506948616);
         if(_loc1_)
         {
            §§push(-(§§pop() - 1 - 0) * 115 + 1);
         }
         §§push(659060556);
         §§push(883997877);
         if(_loc1_)
         {
            §§push(-(-§§pop() - 55 - 92 + 1 - 1 - 1));
         }
         §§push(958139571);
         §§push(1322822218);
         if(_loc1_)
         {
            §§push(-(-(§§pop() + 104 + 1 - 89) + 25));
         }
         §§push(1537002063);
         §§push(1747873779);
         if(_loc2_)
         {
            §§push(§§pop() + 44 + 93 - 58 + 77 + 1);
         }
         §§push(1955562222);
         §§push(2024104815);
         if(_loc1_)
         {
            §§push(§§pop() + 1 + 1 - 1 + 1);
         }
      }
      
      protected var h:Array;
      
      public function SHA256()
      {
         §§push();
         §§push(1779033703);
         if(_loc1_)
         {
            §§push(§§pop() + 1 - 105 + 1 + 1 + 1);
         }
         §§push(3144134277);
         §§push(1013904242);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 11) - 1 + 119 + 59 - 35);
         }
         §§push(2773480762);
         §§push(1359893119);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 - 55) * 24 - 1 + 1);
         }
         §§push(2600822924);
         §§push(528734635);
         if(_loc1_)
         {
            §§push((§§pop() - 119) * 105 - 1);
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
            §§push(-(-(§§pop() - 1) - 65) + 1 + 1 - 39);
         }
         return §§pop();
      }
      
      protected final function rrol(param1:uint, param2:uint) : uint
      {
         §§push(param1);
         §§push(32);
         if(_loc3_)
         {
            §§push((-§§pop() - 1) * 47);
         }
         return §§pop() << §§pop() - param2 | param1 >>> param2;
      }
      
      override protected function core(param1:Array, param2:uint) : Array
      {
         §§push(0);
         if(_loc27_)
         {
            §§push(§§pop() + 1 + 1 - 108);
         }
         var _loc13_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push(§§pop() + 1 + 76 + 10 - 1 + 1 - 73 - 73);
         }
         var _loc14_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push(-(-((-§§pop() - 1) * 38) - 1 + 1));
         }
         var _loc15_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push(-(§§pop() - 1 - 1) * 31 - 1 - 1);
         }
         var _loc16_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(-((§§pop() - 1 + 55) * 56 + 35));
         }
         var _loc17_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(-§§pop() - 1 + 17 - 90 - 24 + 97);
         }
         var _loc18_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push((§§pop() + 15 - 119) * 105 + 1 - 1 - 81 + 71);
         }
         var _loc19_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(§§pop() - 1 + 1 - 1);
         }
         var _loc20_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(-(§§pop() + 1 + 1 + 24) - 3);
         }
         var _loc21_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push(-(§§pop() + 29 - 26 + 95 + 69 - 78) * 71);
         }
         var _loc22_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push((§§pop() - 109 + 1 - 72) * 14 * 2 - 1);
         }
         var _loc23_:uint = §§pop();
         §§push(0);
         if(_loc27_)
         {
            §§push(-(§§pop() + 40 + 8));
         }
         var _loc24_:uint = §§pop();
         §§push(0);
         if(_loc26_)
         {
            §§push(§§pop() * 12 - 1 - 48 + 76 - 1 + 84);
         }
         var _loc25_:uint = §§pop();
         §§push(param1);
         §§push(param2);
         §§push(5);
         if(_loc27_)
         {
            §§push(-(§§pop() * 31 - 117) + 12);
         }
         §§push(§§pop() >> §§pop());
         §§push(param1);
         §§push(param2);
         §§push(5);
         if(_loc26_)
         {
            §§push((-(§§pop() + 74 + 1 + 57 - 1) + 1) * 7);
         }
         §§push(§§pop()[§§pop() >> §§pop()]);
         §§push(128);
         if(_loc27_)
         {
            §§push(-§§pop() + 1 + 83 - 110);
         }
         §§push(24);
         §§push(param2);
         §§push(32);
         if(_loc26_)
         {
            §§push(-(§§pop() - 79 + 48) - 1 - 1 - 1 - 41);
         }
         §§pop()[§§pop()] = §§pop() | §§pop() << §§pop() - §§pop() % §§pop();
         §§push(param1);
         §§push(param2);
         §§push(64);
         if(_loc27_)
         {
            §§push(-(§§pop() - 80 + 113));
         }
         §§push(§§pop() + §§pop());
         §§push(9);
         if(_loc26_)
         {
            §§push((-(§§pop() + 1 - 5) + 90 - 1) * 52 + 73);
         }
         §§push(§§pop() >> §§pop());
         §§push(4);
         if(_loc26_)
         {
            §§push((§§pop() + 16) * 106 * 38);
         }
         §§push(§§pop() << §§pop());
         §§push(15);
         if(_loc27_)
         {
            §§push((§§pop() - 27) * 51 + 40 + 1);
         }
         §§pop()[§§pop() + §§pop()] = param2;
         var _loc3_:Array = [];
         §§push(h);
         §§push(0);
         if(_loc27_)
         {
            §§push(-(§§pop() - 77) - 54);
         }
         var _loc4_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(1);
         if(_loc27_)
         {
            §§push(§§pop() - 28 + 1 + 1);
         }
         var _loc5_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(2);
         if(_loc26_)
         {
            §§push(--(-(§§pop() + 1) * 49 + 86) + 4);
         }
         var _loc6_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(3);
         if(_loc27_)
         {
            §§push(-§§pop() * 82 + 74 + 1);
         }
         var _loc7_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(4);
         if(_loc27_)
         {
            §§push(-((-(§§pop() - 33) + 87 - 1) * 71));
         }
         var _loc8_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(5);
         if(_loc26_)
         {
            §§push(§§pop() + 1 - 53 - 1 - 11);
         }
         var _loc9_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(6);
         if(_loc26_)
         {
            §§push(-§§pop() - 1 - 1);
         }
         var _loc10_:uint = §§pop()[§§pop()];
         §§push(h);
         §§push(7);
         if(_loc27_)
         {
            §§push((§§pop() - 58 + 1 - 1 + 114) * 27 + 1);
         }
         var _loc11_:uint = §§pop()[§§pop()];
         §§push(0);
         if(_loc26_)
         {
            §§push((-§§pop() - 14 - 1 - 1 - 1) * 25 - 27);
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
               §§push(-(-(§§pop() + 1) * 87 - 14) * 78 - 76);
            }
            _loc21_ = §§pop();
            while(true)
            {
               §§push(_loc21_);
               §§push(64);
               if(_loc26_)
               {
                  §§push(((§§pop() - 32) * 6 - 1 - 1) * 83 + 1);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§push(_loc21_);
               §§push(16);
               if(_loc26_)
               {
                  §§push(-(§§pop() + 1 - 59));
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
                  if(_loc26_)
                  {
                     §§push((§§pop() + 63 - 1 + 79 + 20 - 1) * 42 - 105);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(7);
                  if(_loc27_)
                  {
                     §§push(-(-(§§pop() + 1) - 7) * 84);
                  }
                  §§push(§§pop().rrol(§§pop(),§§pop()));
                  §§push();
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(15);
                  if(_loc27_)
                  {
                     §§push((--((§§pop() - 1) * 7) - 1) * 93);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(18);
                  if(_loc27_)
                  {
                     §§push(§§pop() * 57 * 20 + 1 + 1);
                  }
                  §§push(§§pop() ^ §§pop().rrol(§§pop(),§§pop()));
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(15);
                  if(_loc26_)
                  {
                     §§push(§§pop() * 97 + 1 - 86);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(3);
                  if(_loc27_)
                  {
                     §§push(-(((§§pop() + 17 + 60) * 2 * 65 - 1) * 59));
                  }
                  _loc24_ = §§pop() ^ §§pop() >>> §§pop();
                  §§push();
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(2);
                  if(_loc26_)
                  {
                     §§push((§§pop() - 1) * 48 - 99 - 1 - 68);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(17);
                  if(_loc27_)
                  {
                     §§push(-((§§pop() + 1) * 84) + 1 + 1 + 1);
                  }
                  §§push(§§pop().rrol(§§pop(),§§pop()));
                  §§push();
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(2);
                  if(_loc27_)
                  {
                     §§push(-(-(§§pop() + 48) + 13 - 1) - 1);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(19);
                  if(_loc27_)
                  {
                     §§push((-((§§pop() + 1) * 37 + 1) + 95 - 1) * 103);
                  }
                  §§push(§§pop() ^ §§pop().rrol(§§pop(),§§pop()));
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(2);
                  if(_loc26_)
                  {
                     §§push(-(-§§pop() - 1 - 90));
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(10);
                  if(_loc27_)
                  {
                     §§push(-((§§pop() + 36) * 3 - 1));
                  }
                  _loc25_ = §§pop() ^ §§pop() >>> §§pop();
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(16);
                  if(_loc27_)
                  {
                     §§push((-(§§pop() * 117 + 1) + 1) * 102 + 63);
                  }
                  §§push(§§pop()[§§pop() - §§pop()] + _loc24_);
                  §§push(_loc3_);
                  §§push(_loc21_);
                  §§push(7);
                  if(_loc27_)
                  {
                     §§push(-(§§pop() * 73 - 1 - 1 + 27 + 1));
                  }
                  §§pop()[§§pop()] = §§pop() + §§pop()[§§pop() - §§pop()] + _loc25_;
               }
               §§push();
               §§push(_loc4_);
               §§push(2);
               if(_loc27_)
               {
                  §§push((§§pop() + 19) * 87 - 22 + 53 - 22 + 5);
               }
               §§push(§§pop().rrol(§§pop(),§§pop()));
               §§push();
               §§push(_loc4_);
               §§push(13);
               if(_loc27_)
               {
                  §§push(-(§§pop() + 1 + 1) - 1);
               }
               §§push(§§pop() ^ §§pop().rrol(§§pop(),§§pop()));
               §§push();
               §§push(_loc4_);
               §§push(22);
               if(_loc27_)
               {
                  §§push(-((§§pop() + 65) * 101 + 1 - 1));
               }
               _loc22_ = (§§pop() ^ §§pop().rrol(§§pop(),§§pop())) + (_loc4_ & _loc5_ ^ _loc4_ & _loc6_ ^ _loc5_ & _loc6_);
               §§push(_loc11_);
               §§push();
               §§push(_loc8_);
               §§push(6);
               if(_loc26_)
               {
                  §§push((-§§pop() - 23) * 27);
               }
               §§push(§§pop().rrol(§§pop(),§§pop()));
               §§push();
               §§push(_loc8_);
               §§push(11);
               if(_loc27_)
               {
                  §§push(§§pop() + 1 + 1 - 108 - 1 - 1 + 1);
               }
               §§push(§§pop() ^ §§pop().rrol(§§pop(),§§pop()));
               §§push();
               §§push(_loc8_);
               §§push(25);
               if(_loc26_)
               {
                  §§push((-§§pop() - 113 - 1 + 48) * 6);
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
            if(_loc26_)
            {
               §§push(§§pop() - 1 - 75 + 1 - 1 + 1 - 1);
            }
            _loc12_ = §§pop() + §§pop();
         }
         return [_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_];
      }
   }
}
