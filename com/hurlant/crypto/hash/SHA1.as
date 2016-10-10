package com.hurlant.crypto.hash
{
   public final class SHA1 extends SHABase implements IHash
   {
      
      public static const HASH_SIZE:int = 20;
       
      
      public function SHA1()
      {
         super();
      }
      
      override public function toString() : String
      {
         return "sha1";
      }
      
      override protected function core(param1:Array, param2:uint) : Array
      {
         §§push(0);
         if(_loc18_)
         {
            §§push(§§pop() * 95 + 86 + 34 + 40 - 9);
         }
         var _loc10_:uint = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push(§§pop() * 107 + 97 + 1 - 76 + 41 + 1 + 77);
         }
         var _loc11_:uint = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push(-(§§pop() + 11 - 1) - 41);
         }
         var _loc12_:uint = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push(-(§§pop() - 1 + 31 + 22) - 119);
         }
         var _loc13_:uint = §§pop();
         §§push(0);
         if(_loc17_)
         {
            §§push(((§§pop() + 34 - 54 - 5) * 115 + 1) * 13);
         }
         var _loc14_:uint = §§pop();
         §§push(0);
         if(_loc18_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         var _loc15_:uint = §§pop();
         §§push(0);
         if(_loc18_)
         {
            §§push(§§pop() - 32 + 1 + 1 + 1 + 112 + 1);
         }
         var _loc16_:uint = §§pop();
         §§push(param1);
         §§push(param2);
         §§push(5);
         if(_loc17_)
         {
            §§push((§§pop() - 117) * 108 + 7);
         }
         §§push(§§pop() >> §§pop());
         §§push(param1);
         §§push(param2);
         §§push(5);
         if(_loc18_)
         {
            §§push(-(§§pop() + 1) * 65);
         }
         §§push(§§pop()[§§pop() >> §§pop()]);
         §§push(128);
         if(_loc17_)
         {
            §§push(--((-§§pop() + 1 - 1) * 84) + 1);
         }
         §§push(24);
         §§push(param2);
         §§push(32);
         if(_loc17_)
         {
            §§push((-(§§pop() + 1) - 1) * 117 - 1 + 63 + 62);
         }
         §§pop()[§§pop()] = §§pop() | §§pop() << §§pop() - §§pop() % §§pop();
         §§push(param1);
         §§push(param2);
         §§push(64);
         if(_loc18_)
         {
            §§push((-§§pop() - 1 - 92 + 1 + 1) * 21);
         }
         §§push(§§pop() + §§pop());
         §§push(9);
         if(_loc17_)
         {
            §§push(-(-(-§§pop() + 19) + 86 - 1));
         }
         §§push(§§pop() >> §§pop());
         §§push(4);
         if(_loc18_)
         {
            §§push(§§pop() * 11 + 63 - 103);
         }
         §§push(§§pop() << §§pop());
         §§push(15);
         if(_loc18_)
         {
            §§push(-(-§§pop() - 1));
         }
         §§pop()[§§pop() + §§pop()] = param2;
         var _loc3_:Array = [];
         §§push(1732584193);
         if(_loc18_)
         {
            §§push(-(§§pop() + 1 - 1));
         }
         var _loc4_:uint = §§pop();
         var _loc5_:uint = 4023233417;
         var _loc6_:uint = 2562383102;
         §§push(271733878);
         if(_loc18_)
         {
            §§push((§§pop() - 19 + 1 - 34 - 1 + 1) * 55 - 10);
         }
         var _loc7_:uint = §§pop();
         var _loc8_:uint = 3285377520;
         §§push(0);
         if(_loc18_)
         {
            §§push(-(-§§pop() - 1 - 1) + 95 + 79);
         }
         var _loc9_:uint = §§pop();
         while(_loc9_ < param1.length)
         {
            _loc10_ = _loc4_;
            _loc11_ = _loc5_;
            _loc12_ = _loc6_;
            _loc13_ = _loc7_;
            _loc14_ = _loc8_;
            §§push(0);
            if(_loc17_)
            {
               §§push(-(-(§§pop() * 116) - 68 + 25) + 1);
            }
            _loc15_ = §§pop();
            while(true)
            {
               §§push(_loc15_);
               §§push(80);
               if(_loc18_)
               {
                  §§push((§§pop() - 55 - 1) * 78);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§push(_loc15_);
               §§push(16);
               if(_loc17_)
               {
                  §§push((-§§pop() * 112 + 8 + 1) * 82 - 73 - 99);
               }
               if(§§pop() < §§pop())
               {
                  _loc3_[_loc15_] = param1[_loc9_ + _loc15_] || §§pop();
               }
               else
               {
                  §§push(_loc3_);
                  §§push(_loc15_);
                  §§push();
                  §§push(_loc3_);
                  §§push(_loc15_);
                  §§push(3);
                  if(_loc17_)
                  {
                     §§push(§§pop() + 1 + 17 + 117);
                  }
                  §§push(§§pop()[§§pop() - §§pop()]);
                  §§push(_loc3_);
                  §§push(_loc15_);
                  §§push(8);
                  if(_loc18_)
                  {
                     §§push(§§pop() * 81 + 44 + 1);
                  }
                  §§push(§§pop() ^ §§pop()[§§pop() - §§pop()]);
                  §§push(_loc3_);
                  §§push(_loc15_);
                  §§push(14);
                  if(_loc17_)
                  {
                     §§push((§§pop() * 12 + 1) * 76 + 1 - 1 - 76 - 1);
                  }
                  §§push(§§pop() ^ §§pop()[§§pop() - §§pop()]);
                  §§push(_loc3_);
                  §§push(_loc15_);
                  §§push(16);
                  if(_loc17_)
                  {
                     §§push(-(§§pop() * 78 * 102 + 108) + 3);
                  }
                  §§push(§§pop() ^ §§pop()[§§pop() - §§pop()]);
                  §§push(1);
                  if(_loc17_)
                  {
                     §§push((§§pop() + 1 + 1) * 24 - 29 - 100 - 1);
                  }
                  §§pop()[§§pop()] = §§pop().rol(§§pop(),§§pop());
               }
               §§push();
               §§push(_loc4_);
               §§push(5);
               if(_loc18_)
               {
                  §§push(§§pop() - 1 + 70 + 82 + 99 + 1 + 50);
               }
               _loc16_ = §§pop().rol(§§pop(),§§pop()) + ft(_loc15_,_loc5_,_loc6_,_loc7_) + _loc8_ + _loc3_[_loc15_] + kt(_loc15_);
               _loc8_ = _loc7_;
               _loc7_ = _loc6_;
               §§push();
               §§push(_loc5_);
               §§push(30);
               if(_loc18_)
               {
                  §§push((§§pop() + 1 + 11) * 27 - 1 - 91 + 25 - 1);
               }
               _loc6_ = §§pop().rol(§§pop(),§§pop());
               _loc5_ = _loc4_;
               _loc4_ = _loc16_;
               _loc15_++;
            }
            _loc4_ = _loc4_ + _loc10_;
            _loc5_ = _loc5_ + _loc11_;
            _loc6_ = _loc6_ + _loc12_;
            _loc7_ = _loc7_ + _loc13_;
            _loc8_ = _loc8_ + _loc14_;
            §§push(_loc9_);
            §§push(16);
            if(_loc18_)
            {
               §§push(§§pop() - 1 + 1 - 1);
            }
            _loc9_ = §§pop() + §§pop();
         }
         return [_loc4_,_loc5_,_loc6_,_loc7_,_loc8_];
      }
      
      private final function kt(param1:uint) : uint
      {
         §§push(param1);
         §§push(20);
         if(_loc2_)
         {
            §§push((§§pop() * 84 + 111 + 1 - 1 - 1) * 5);
         }
         if(§§pop() < §§pop())
         {
            §§push(1518500249);
            if(_loc2_)
            {
               §§push(-(§§pop() + 1) * 37);
            }
            §§push(uint(§§pop()));
         }
         else
         {
            §§push(param1);
            §§push(40);
            if(_loc3_)
            {
               §§push((-(-§§pop() - 37) + 1) * 77);
            }
            if(§§pop() < §§pop())
            {
               §§push(1859775393);
               if(_loc3_)
               {
                  §§push(--(-(§§pop() * 28) + 97));
               }
               §§push(uint(§§pop()));
            }
            else
            {
               §§push(param1);
               §§push(60);
               if(_loc2_)
               {
                  §§push(-§§pop() - 69 + 1 + 69 + 1);
               }
               §§push(§§pop() < §§pop()?uint(2400959708):uint(3395469782));
            }
         }
         return §§pop();
      }
      
      override public function getHashSize() : uint
      {
         return HASH_SIZE;
      }
      
      private final function ft(param1:uint, param2:uint, param3:uint, param4:uint) : uint
      {
         §§push(param1);
         §§push(20);
         if(_loc6_)
         {
            §§push(§§pop() + 1 - 1 - 1 + 95);
         }
         if(§§pop() < §§pop())
         {
            return param2 & param3 | ~param2 & param4;
         }
         §§push(param1);
         §§push(40);
         if(_loc6_)
         {
            §§push(§§pop() + 13 + 1 + 24 - 28 + 93 - 1);
         }
         if(§§pop() < §§pop())
         {
            return param2 ^ param3 ^ param4;
         }
         §§push(param1);
         §§push(60);
         if(_loc6_)
         {
            §§push(§§pop() + 30 + 2 + 1 - 100);
         }
         if(§§pop() < §§pop())
         {
            return param2 & param3 | param2 & param4 | param3 & param4;
         }
         return param2 ^ param3 ^ param4;
      }
      
      private final function rol(param1:uint, param2:uint) : uint
      {
         §§push(param1 << param2);
         §§push(param1);
         §§push(32);
         if(_loc3_)
         {
            §§push(§§pop() + 18 + 25 - 10 - 104);
         }
         return §§pop() | §§pop() >>> §§pop() - param2;
      }
   }
}
