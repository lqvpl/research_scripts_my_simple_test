package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   
   public final class AESKey implements ISymmetricKey
   {
      
      private static var __InvSbox:ByteArray;
      
      private static var __Xtime2:ByteArray;
      
      private static var __Xtime9:ByteArray;
      
      private static var __XtimeB:ByteArray;
      
      private static var __XtimeD:ByteArray;
      
      private static var __XtimeE:ByteArray;
      
      private static var __Xtime2Sbox:ByteArray;
      
      private static const _InvSbox:Array;
      
      private static var __Xtime3Sbox:ByteArray;
      
      private static const _Xtime2:Array;
      
      private static var _inited:Boolean;
      
      private static var _Rcon:Array;
      
      private static var __Rcon:ByteArray;
      
      private static const _Xtime9:Array;
      
      private static const Nb:uint = 4;
      
      private static const _XtimeB:Array;
      
      private static const _XtimeD:Array;
      
      private static const _XtimeE:Array;
      
      private static const _Xtime2Sbox:Array;
      
      private static const _Xtime3Sbox:Array;
      
      private static const _Sbox:Array;
      
      private static var __Sbox:ByteArray;
       
      
      private var state:ByteArray;
      
      private var tmp:ByteArray;
      
      private var Nr:uint;
      
      private var keyLength:uint;
      
      private var key:ByteArray;
      
      public function AESKey(param1:ByteArray)
      {
         super();
         tmp = new ByteArray();
         state = new ByteArray();
         keyLength = param1.length;
         this.key = new ByteArray();
         this.key.writeBytes(param1);
         expandKey();
      }
      
      private static function init() : void
      {
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1) * 109);
         }
         var _loc1_:uint = §§pop();
         if(!_inited)
         {
            _inited = true;
            __Sbox = new ByteArray();
            __InvSbox = new ByteArray();
            __Xtime2Sbox = new ByteArray();
            __Xtime3Sbox = new ByteArray();
            __Xtime2 = new ByteArray();
            __Xtime9 = new ByteArray();
            __XtimeB = new ByteArray();
            __XtimeD = new ByteArray();
            __XtimeE = new ByteArray();
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-(§§pop() + 1) + 114 + 115 + 1));
            }
            _loc1_ = §§pop();
            while(true)
            {
               §§push(_loc1_);
               §§push(256);
               if(_loc2_)
               {
                  §§push((§§pop() + 1 - 1 + 1) * 84 - 2 + 32);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               __Sbox[_loc1_] = _Sbox[_loc1_];
               __InvSbox[_loc1_] = _InvSbox[_loc1_];
               __Xtime2Sbox[_loc1_] = _Xtime2Sbox[_loc1_];
               __Xtime3Sbox[_loc1_] = _Xtime3Sbox[_loc1_];
               __Xtime2[_loc1_] = _Xtime2[_loc1_];
               __Xtime9[_loc1_] = _Xtime9[_loc1_];
               __XtimeB[_loc1_] = _XtimeB[_loc1_];
               __XtimeD[_loc1_] = _XtimeD[_loc1_];
               __XtimeE[_loc1_] = _XtimeE[_loc1_];
               _loc1_++;
            }
            __Rcon = new ByteArray();
            §§push(0);
            if(_loc2_)
            {
               §§push(--(-(§§pop() * 72) + 1) * 35 * 108);
            }
            _loc1_ = §§pop();
            while(_loc1_ < _Rcon.length)
            {
               __Rcon[_loc1_] = _Rcon[_loc1_];
               _loc1_++;
            }
         }
      }
      
      public static function get Xtime2() : ByteArray
      {
         init();
         return __Xtime2;
      }
      
      public static function get Sbox() : ByteArray
      {
         init();
         return __Sbox;
      }
      
      public static function get Xtime9() : ByteArray
      {
         init();
         return __Xtime9;
      }
      
      public static function get XtimeB() : ByteArray
      {
         init();
         return __XtimeB;
      }
      
      public static function get XtimeD() : ByteArray
      {
         init();
         return __XtimeD;
      }
      
      public static function get Xtime2Sbox() : ByteArray
      {
         init();
         return __Xtime2Sbox;
      }
      
      public static function get Xtime3Sbox() : ByteArray
      {
         init();
         return __Xtime3Sbox;
      }
      
      public static function get XtimeE() : ByteArray
      {
         init();
         return __XtimeE;
      }
      
      public static function get InvSbox() : ByteArray
      {
         init();
         return __InvSbox;
      }
      
      public static function get Rcon() : ByteArray
      {
         init();
         return __Rcon;
      }
      
      public function toString() : String
      {
         §§push("aes");
         §§push(8);
         if(_loc1_)
         {
            §§push((§§pop() + 69) * 18 + 1);
         }
         return §§pop() + §§pop() * keyLength;
      }
      
      public function decrypt(param1:ByteArray, param2:uint = 0) : void
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 91 + 84 - 1 - 90 - 104);
         }
         var _loc3_:uint = §§pop();
         §§push(state);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() + 78 + 51 + 49 + 36) * 89);
         }
         §§pop().position = §§pop();
         §§push(state);
         §§push(param1);
         §§push(param2);
         §§push(Nb);
         §§push(4);
         if(_loc4_)
         {
            §§push((-§§pop() - 74 - 85 + 119) * 27 + 1 - 1);
         }
         §§pop().writeBytes(§§pop(),§§pop(),§§pop() * §§pop());
         §§push();
         §§push(key);
         §§push(Nr * Nb);
         §§push(4);
         if(_loc4_)
         {
            §§push(-(-(§§pop() - 1 - 1 + 88) + 13) - 1);
         }
         §§pop().addRoundKey(§§pop(),§§pop() * §§pop());
         invShiftRows();
         _loc3_ = Nr;
         while(_loc3_--)
         {
            §§push();
            §§push(key);
            §§push(_loc3_ * Nb);
            §§push(4);
            if(_loc4_)
            {
               §§push(--(§§pop() - 1 - 91 + 1 - 1) + 25);
            }
            §§pop().addRoundKey(§§pop(),§§pop() * §§pop());
            if(_loc3_)
            {
               invMixSubColumns();
            }
         }
         param1.position = param2;
         param1.writeBytes(state);
      }
      
      protected final function invMixSubColumns() : void
      {
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 + 86 - 115 - 1);
         }
         var _loc1_:uint = §§pop();
         §§push(tmp);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 97) * 15 + 1 + 62) * 65 + 1);
         }
         §§pop().length = §§pop();
         §§push(tmp);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) * 0 + 111 - 93 + 1);
         }
         §§push(XtimeE);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 11 + 8) * 50 - 90 + 103 + 21));
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 55) - 1 - 1 + 1 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 62 - 1 + 71 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() * 18 - 20 + 1 + 116);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 93 + 52);
         }
         §§push(Xtime9);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1) * 24);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 114 - 1 - 1 - 73);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 48 - 30));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 110 + 88 - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 87 + 1) - 69 - 18);
         }
         §§push(XtimeD);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 14 * 34 - 1 - 1 - 50) * 35);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() - 30) + 74 - 1 + 93) * 67);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 38 + 1 + 4 - 16));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1 + 1 - 1) * 85 - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(15);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 + 35) * 17 + 1 - 51 + 15);
         }
         §§push(XtimeB);
         §§push(state);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) * 84 * 102);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 + 72);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() * 86 * 101 + 70 + 1 - 1 + 22 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() - 26 - 92 + 78 + 40 + 1 + 16);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(4);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1) + 1);
         }
         §§push(XtimeE);
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1) - 80 - 1) * 99);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 62) * 67 + 1 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 86 - 89) * 94);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(7);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1 - 72) * 110);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(9);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 44 - 43) + 1) - 40);
         }
         §§push(Xtime9);
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 103);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 73) - 103);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() + 55) * 102 - 50 + 85);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 - 6) * 1));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(14);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 86 * 23 + 1 + 4) * 70);
         }
         §§push(XtimeD);
         §§push(state);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 1 - 22 - 49);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) * 110);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() + 72 - 1 - 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(7);
         if(_loc2_)
         {
            §§push((§§pop() * 10 + 42 - 74 - 24 + 1) * 103 * 37);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(3);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1) + 1) * 83 - 1 + 48 - 43);
         }
         §§push(XtimeB);
         §§push(state);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() + 91 + 85 - 35);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() * 92) * 103 - 53);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push(((§§pop() - 92) * 112 - 1 + 101) * 106 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push((--(§§pop() - 88) - 1) * 79);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() - 66 - 50 + 1));
         }
         §§push(XtimeE);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 17) * 104);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(9);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 + 1 + 4) * 101 * 81);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 88) * 21) + 46);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 37 + 28) - 14) * 112);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(13);
         if(_loc2_)
         {
            §§push(§§pop() * 20 + 85 - 1 - 85 - 25);
         }
         §§push(Xtime9);
         §§push(state);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() * 46 - 55 + 41) * 55 + 25 + 1 - 11);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(-(-(§§pop() + 28) * 56 + 66) + 52));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 5) + 15);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(§§pop() * 35 - 3 + 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(2);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 16);
         }
         §§push(XtimeD);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() * 58 - 1 - 22 + 1) * 107);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(§§pop() + 56 - 1 + 1 - 66 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 25 + 1 + 25 + 101 + 79) * 45);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(11);
         if(_loc3_)
         {
            §§push((--(§§pop() - 1) + 12 + 1) * 63);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 64 + 79) + 1 - 45 + 1);
         }
         §§push(XtimeB);
         §§push(state);
         §§push(8);
         if(_loc3_)
         {
            §§push((-§§pop() - 1 - 1 - 6) * 7 * 102);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 1 + 1 + 1) - 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(10);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 + 43);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(11);
         if(_loc3_)
         {
            §§push(-(§§pop() - 109 + 1 - 1) - 43);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() + 111 + 1));
         }
         §§push(XtimeE);
         §§push(state);
         §§push(12);
         if(_loc3_)
         {
            §§push(-(--(§§pop() - 1 - 1) - 1));
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push((-(-(§§pop() + 73 - 1) + 1) + 117) * 5);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(14);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 13 + 104);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push((§§pop() - 82) * 10 - 52);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(1);
         if(_loc3_)
         {
            §§push(--§§pop() - 58 + 1 - 60 - 12 - 1);
         }
         §§push(Xtime9);
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() * 55 * 46 + 1 + 1) * 51 + 1 - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1 + 81) * 32 * 50));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push((-§§pop() + 43 - 1) * 19 - 107 - 73 - 83);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() + 39) * 46 * 34);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(§§pop() + 76) + 1);
         }
         §§push(XtimeD);
         §§push(state);
         §§push(12);
         if(_loc3_)
         {
            §§push(§§pop() + 46 - 1 - 119);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push((§§pop() - 20 - 1) * 16 * 2);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() - 41) * 104 - 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push((§§pop() - 34) * 49 + 1 - 1 + 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(11);
         if(_loc3_)
         {
            §§push(-(§§pop() * 36 + 1) + 1 - 1);
         }
         §§push(XtimeB);
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() * 54 * 95 - 1 - 116) + 32);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push(-§§pop() - 113 - 1 - 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(--§§pop() * 97 - 48) + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 108 - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(0);
         if(_loc2_)
         {
            §§push((-((§§pop() - 1) * 33 - 1) + 82) * 11);
         }
         _loc1_ = §§pop();
         while(true)
         {
            §§push(_loc1_);
            §§push(4);
            if(_loc2_)
            {
               §§push(-((§§pop() * 117 + 1) * 119) - 114 + 1 - 60);
            }
            if(§§pop() >= §§pop() * Nb)
            {
               break;
            }
            state[_loc1_] = InvSbox[tmp[_loc1_]];
            _loc1_++;
         }
      }
      
      protected final function invShiftRows() : void
      {
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 66 - 1 + 86 - 1);
         }
         var _loc1_:uint = §§pop();
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() - 1 - 1 + 1 - 61) * 64 - 18);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() * 71 * 37 - 100 - 90 + 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push(--(§§pop() + 103 + 1) * 113);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() + 54 + 1));
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push(§§pop() * 97 * 100 + 112 + 118 - 1);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 77 - 20) + 1 + 112 + 1));
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() * 12 - 24 + 1) * 117);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) - 1 + 90 - 1) * 95);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(InvSbox);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 50 * 40);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push(((§§pop() + 1 + 104) * 12 - 109) * 80 - 112);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() + 18 + 28));
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(-§§pop() * 51 - 1 + 1);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() * 62 - 71 - 1 - 40 + 84 - 1) * 17);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push((-(§§pop() * 95 * 33) - 1) * 76);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() + 97 + 1 - 1 + 33);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(1);
         if(_loc3_)
         {
            §§push((-((§§pop() + 1) * 47) - 39) * 57);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(InvSbox);
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 60 + 75);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 10 * 32);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 66 + 1) * 76 - 28 + 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(10);
         if(_loc3_)
         {
            §§push(§§pop() * 58 - 1 - 1 + 31 - 5);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(InvSbox);
         §§push(state);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() + 7) * 27 * 97);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(6);
         if(_loc2_)
         {
            §§push((-§§pop() + 63) * 13 + 1);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() * 109 + 70 - 74 - 87);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 38 + 1);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(InvSbox);
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push((--§§pop() + 102 - 83) * 62);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() + 62) * 14 - 1 + 1);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 1) + 87 + 40);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 89) * 43);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1) - 1 + 98);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(11);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 1) * 0 - 1));
         }
         §§push(InvSbox);
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 + 1) * 69 * 61 - 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 46 + 1 - 116);
         }
         §§pop()[§§pop()] = _loc1_;
      }
      
      public function dispose() : void
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 94) - 27 - 61 + 8));
         }
         var _loc1_:uint = §§pop();
         var _loc2_:Random = new Random();
         §§push(0);
         if(_loc4_)
         {
            §§push(--(-§§pop() - 1));
         }
         _loc1_ = §§pop();
         while(_loc1_ < key.length)
         {
            key[_loc1_] = _loc2_.nextByte();
            _loc1_++;
         }
         Nr = _loc2_.nextByte();
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 21 * 35 - 1 - 59 + 98);
         }
         _loc1_ = §§pop();
         while(_loc1_ < state.length)
         {
            state[_loc1_] = _loc2_.nextByte();
            _loc1_++;
         }
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 29);
         }
         _loc1_ = §§pop();
         while(_loc1_ < tmp.length)
         {
            tmp[_loc1_] = _loc2_.nextByte();
            _loc1_++;
         }
         §§push(key);
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() + 1 - 1) * 91 * 40 * 69);
         }
         §§pop().length = §§pop();
         §§push();
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1 - 1) + 76 + 1 - 31);
         }
         §§pop().keyLength = §§pop();
         §§push(state);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 48) * 23 - 64 - 1);
         }
         §§pop().length = §§pop();
         §§push(tmp);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 7 - 100 - 110 + 83 + 1);
         }
         §§pop().length = §§pop();
         key = null;
         state = null;
         tmp = null;
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1 - 1) - 109) - 1);
         }
         §§pop().Nr = §§pop();
         Memory.gc();
      }
      
      private final function expandKey() : void
      {
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 44 - 1 + 66 - 2 + 3);
         }
         var _loc1_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push((-§§pop() - 22) * 93 - 116);
         }
         var _loc2_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() + 64 - 107) * 80);
         }
         var _loc3_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() * 12 + 84 - 36);
         }
         var _loc4_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() * 20 - 94 + 34) * 96);
         }
         var _loc5_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-(-(§§pop() + 42) + 42) + 1) - 1);
         }
         var _loc6_:uint = §§pop();
         §§push(key.length);
         §§push(4);
         if(_loc9_)
         {
            §§push(-(§§pop() * 23 + 118) + 10);
         }
         var _loc7_:uint = §§pop() / §§pop();
         §§push();
         §§push(_loc7_);
         §§push(6);
         if(_loc9_)
         {
            §§push(-(-(§§pop() * 53) + 86 + 1 + 26 + 1));
         }
         §§pop().Nr = §§pop() + §§pop();
         _loc6_ = _loc7_;
         while(true)
         {
            §§push(_loc6_);
            §§push(Nb);
            §§push(Nr);
            §§push(1);
            if(_loc8_)
            {
               §§push((§§pop() * 105 - 1) * 110);
            }
            if(§§pop() >= §§pop() * (§§pop() + §§pop()))
            {
               break;
            }
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(§§pop() + 89 - 1 - 88 + 1);
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc9_)
            {
               §§push(§§pop() - 51 + 1 + 84);
            }
            _loc1_ = §§pop()[§§pop() - §§pop()];
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push(((--§§pop() + 67) * 1 - 60 - 1) * 43);
            }
            §§push(§§pop() * _loc6_);
            §§push(3);
            if(_loc9_)
            {
               §§push(-((§§pop() - 38) * 117 * 47 + 1) * 53 - 1);
            }
            _loc2_ = §§pop()[§§pop() - §§pop()];
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push(-(§§pop() - 66 - 101 - 1 + 1));
            }
            §§push(§§pop() * _loc6_);
            §§push(2);
            if(_loc9_)
            {
               §§push((§§pop() + 1 - 1 - 1 - 1 - 12 + 13) * 45);
            }
            _loc3_ = §§pop()[§§pop() - §§pop()];
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push(----§§pop() - 5);
            }
            _loc4_ = §§pop()[§§pop() * _loc6_ - 1];
            if(!(_loc6_ % _loc7_))
            {
               _loc5_ = _loc4_;
               _loc4_ = Sbox[_loc1_];
               _loc1_ = Sbox[_loc2_] ^ Rcon[_loc6_ / _loc7_];
               _loc2_ = Sbox[_loc3_];
               _loc3_ = Sbox[_loc5_];
            }
            else
            {
               §§push(_loc7_);
               §§push(6);
               if(_loc9_)
               {
                  §§push(§§pop() * 46 + 1 + 1 - 1);
               }
               if(§§pop() > §§pop() && §§pop() == §§pop())
               {
                  _loc1_ = Sbox[_loc1_];
                  _loc2_ = Sbox[_loc2_];
                  _loc3_ = Sbox[_loc3_];
                  _loc4_ = Sbox[_loc4_];
               }
            }
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push((§§pop() * 85 - 1 + 22) * 59 + 1 + 63 - 1);
            }
            §§push(§§pop() * _loc6_);
            §§push(0);
            if(_loc8_)
            {
               §§push((-(§§pop() - 1 + 1 - 69) + 81) * 93);
            }
            §§push(§§pop() + §§pop());
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push((§§pop() * 70 + 1 - 55 - 1 - 23 + 55) * 36);
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc8_)
            {
               §§push(§§pop() + 108 - 65 + 1 + 9 + 1 - 1);
            }
            §§push(§§pop() - §§pop() * _loc7_);
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() + 61 - 1 - 103 - 53 + 3);
            }
            §§pop()[§§pop()] = §§pop()[§§pop() + §§pop()] ^ _loc1_;
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push(-((§§pop() - 1 + 56) * 45 + 1));
            }
            §§push(§§pop() * _loc6_);
            §§push(1);
            if(_loc9_)
            {
               §§push(-(§§pop() + 1 + 1 + 92 - 1));
            }
            §§push(§§pop() + §§pop());
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(--(§§pop() - 20) - 106 - 17 + 1 - 112);
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc9_)
            {
               §§push((-(-(§§pop() * 62) - 6) + 119) * 93);
            }
            §§push(§§pop() - §§pop() * _loc7_);
            §§push(1);
            if(_loc8_)
            {
               §§push(--(-(§§pop() - 98) - 1));
            }
            §§pop()[§§pop()] = §§pop()[§§pop() + §§pop()] ^ _loc2_;
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(§§pop() + 1 + 1 + 0 - 1);
            }
            §§push(§§pop() * _loc6_);
            §§push(2);
            if(_loc8_)
            {
               §§push((-(§§pop() - 5) - 89) * 101 + 1);
            }
            §§push(§§pop() + §§pop());
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(-((§§pop() + 42) * 79 - 1));
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc8_)
            {
               §§push((§§pop() + 1 + 53) * 48 - 1 + 1 + 1);
            }
            §§push(§§pop() - §§pop() * _loc7_);
            §§push(2);
            if(_loc8_)
            {
               §§push(§§pop() + 1 + 53 + 1 + 119 - 1);
            }
            §§pop()[§§pop()] = §§pop()[§§pop() + §§pop()] ^ _loc3_;
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push(((§§pop() - 1) * 29 * 17 - 29 - 90 - 1) * 112);
            }
            §§push(§§pop() * _loc6_);
            §§push(3);
            if(_loc9_)
            {
               §§push(-(§§pop() + 1 - 103 + 56) * 3);
            }
            §§push(§§pop() + §§pop());
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(-(--§§pop() - 1));
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc9_)
            {
               §§push((-(§§pop() * 26 * 28 + 99 + 75) - 1) * 73);
            }
            §§push(§§pop() - §§pop() * _loc7_);
            §§push(3);
            if(_loc8_)
            {
               §§push(§§pop() + 1 - 26 - 1);
            }
            §§pop()[§§pop()] = §§pop()[§§pop() + §§pop()] ^ _loc4_;
            _loc6_++;
         }
      }
      
      protected final function addRoundKey(param1:ByteArray, param2:uint) : void
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-§§pop() * 100) + 1 + 1);
         }
         var _loc3_:uint = §§pop();
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 10) - 1 - 80 - 1);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(16);
            if(_loc4_)
            {
               §§push(--((§§pop() + 111 + 15 - 59) * 46) - 119);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            state[_loc3_] = state[_loc3_] ^ param1[_loc3_ + param2];
            _loc3_++;
         }
      }
      
      public function encrypt(param1:ByteArray, param2:uint = 0) : void
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 1 - 27 - 4 - 1));
         }
         var _loc3_:uint = §§pop();
         §§push(state);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-§§pop() + 62 - 54) * 104);
         }
         §§pop().position = §§pop();
         §§push(state);
         §§push(param1);
         §§push(param2);
         §§push(Nb);
         §§push(4);
         if(_loc5_)
         {
            §§push(-(-(§§pop() * 43) + 1));
         }
         §§pop().writeBytes(§§pop(),§§pop(),§§pop() * §§pop());
         §§push();
         §§push(key);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 104 - 1 + 1 - 76 + 1 - 6);
         }
         §§pop().addRoundKey(§§pop(),§§pop());
         §§push(1);
         if(_loc4_)
         {
            §§push((§§pop() * 9 + 1 - 3 - 106 - 1) * 100);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(Nr);
            §§push(1);
            if(_loc4_)
            {
               §§push(§§pop() - 88 + 27 - 115 + 95 + 103 - 1);
            }
            if(§§pop() >= §§pop() + §§pop())
            {
               break;
            }
            if(_loc3_ < Nr)
            {
               mixSubColumns();
            }
            else
            {
               shiftRows();
            }
            §§push();
            §§push(key);
            §§push(_loc3_ * Nb);
            §§push(4);
            if(_loc4_)
            {
               §§push(§§pop() + 109 - 1 + 1);
            }
            §§pop().addRoundKey(§§pop(),§§pop() * §§pop());
            _loc3_++;
         }
         param1.position = param2;
         param1.writeBytes(state);
      }
      
      protected final function mixSubColumns() : void
      {
         §§push(tmp);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() + 1 + 1 - 7 + 2 + 1 + 75);
         }
         §§pop().length = §§pop();
         §§push(tmp);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 63 + 21 - 92) * 10) * 67);
         }
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() * 73 + 1 + 42) * 54 + 85 - 1) * 78);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 41 + 65);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(10);
         if(_loc1_)
         {
            §§push(-((§§pop() - 1) * 100 - 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1) * 39) + 110 + 105 - 73 - 119);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(1);
         if(_loc1_)
         {
            §§push(-(§§pop() - 1 + 1) - 76 - 51 + 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() * 110 + 1 - 1 - 1 - 1 + 83 - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 98 - 1 - 1 - 65 - 86);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push((---(§§pop() - 46) - 11) * 32);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(15);
         if(_loc1_)
         {
            §§push((§§pop() * 45 * 104 - 22 - 1) * 73 - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(2);
         if(_loc1_)
         {
            §§push(-(§§pop() - 22 + 1 + 88));
         }
         §§push(Sbox);
         §§push(state);
         §§push(0);
         if(_loc1_)
         {
            §§push(-(§§pop() + 9) - 1 + 1 - 1 - 1 - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(5);
         if(_loc1_)
         {
            §§push(--(§§pop() + 81 - 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(10);
         if(_loc1_)
         {
            §§push(((§§pop() + 103 - 82 + 73) * 119 - 39) * 66 + 20);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 51 + 5 - 1 + 89 - 1 + 11);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(3);
         if(_loc1_)
         {
            §§push((-§§pop() * 31 + 1 + 48 + 65) * 94 + 1);
         }
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(-§§pop() * 59 * 59 - 1));
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(5);
         if(_loc1_)
         {
            §§push(-(§§pop() - 13 + 70 - 1 + 1) - 97);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 79) + 67 - 1 + 99) + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(15);
         if(_loc1_)
         {
            §§push(-(§§pop() * 40 - 1) - 99);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 105);
         }
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(4);
         if(_loc1_)
         {
            §§push(-(§§pop() - 42 + 1 - 46 + 1 - 52) * 38);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(9);
         if(_loc1_)
         {
            §§push(-((§§pop() * 9 + 1 + 1) * 74 + 1 - 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(14);
         if(_loc1_)
         {
            §§push(§§pop() * 2 - 1 + 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) - 10 + 65) * 46);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(5);
         if(_loc1_)
         {
            §§push((-(§§pop() - 1) - 1 + 19) * 65);
         }
         §§push(Sbox);
         §§push(state);
         §§push(4);
         if(_loc1_)
         {
            §§push((§§pop() * 28 + 1 + 106) * 80 - 5 - 1 - 9);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(9);
         if(_loc1_)
         {
            §§push(-(-(§§pop() + 1) + 1 - 12) + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push(-§§pop() + 69 + 1 - 1 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(3);
         if(_loc1_)
         {
            §§push(-(-§§pop() * 90 + 8 + 12 - 77));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(6);
         if(_loc2_)
         {
            §§push(-((-(-§§pop() + 1 + 1) - 1) * 97));
         }
         §§push(Sbox);
         §§push(state);
         §§push(4);
         if(_loc2_)
         {
            §§push(--(§§pop() - 1 - 1 + 1 - 88));
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(§§pop() + 115) + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(§§pop() * 103) + 1 - 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 3) - 94);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(7);
         if(_loc1_)
         {
            §§push(-§§pop() * 104 - 100);
         }
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(4);
         if(_loc1_)
         {
            §§push((§§pop() + 1 - 1 + 1 - 118) * 45);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 72 + 53);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(14);
         if(_loc1_)
         {
            §§push((§§pop() + 107 - 88) * 41 + 34);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(3);
         if(_loc1_)
         {
            §§push(-((§§pop() - 55) * 47) - 14);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(8);
         if(_loc2_)
         {
            §§push(--§§pop() - 1);
         }
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1) * 93);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push(-((§§pop() * 106 - 28) * 90 + 1) + 108 + 69);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(2);
         if(_loc1_)
         {
            §§push(-(-§§pop() - 1) - 1 + 87 + 34);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(7);
         if(_loc1_)
         {
            §§push(((§§pop() + 1 + 1) * 12 - 1) * 47);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(9);
         if(_loc1_)
         {
            §§push((§§pop() + 1 + 1) * 76);
         }
         §§push(Sbox);
         §§push(state);
         §§push(8);
         if(_loc1_)
         {
            §§push(§§pop() + 17 + 1 - 1 + 56 + 1 - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() * 68 + 105) * 73 * 62 * 20 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1 + 1 + 96) - 1 + 66) * 87);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(7);
         if(_loc1_)
         {
            §§push(--(§§pop() * 51 - 24 + 1) - 67);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(10);
         if(_loc1_)
         {
            §§push(--§§pop() - 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(8);
         if(_loc1_)
         {
            §§push(-((§§pop() + 1) * 63) + 36);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(13);
         if(_loc1_)
         {
            §§push(((-§§pop() + 38) * 47 + 110 - 1) * 20 - 2);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1) - 1 + 88);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() + 20 + 1 + 1 - 86);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(11);
         if(_loc1_)
         {
            §§push(-§§pop() + 1 + 1 + 1);
         }
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(8);
         if(_loc1_)
         {
            §§push(§§pop() + 67 - 106 - 1 - 19 - 1 + 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 88);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) + 15) * 111 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(7);
         if(_loc1_)
         {
            §§push(-(-(-§§pop() + 1) - 1 + 29) - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() * 55 + 1 - 90 + 36) - 1);
         }
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(12);
         if(_loc1_)
         {
            §§push((§§pop() - 15 + 1) * 105 + 1 + 42);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 + 89 - 1 + 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(6);
         if(_loc1_)
         {
            §§push((§§pop() + 9) * 10 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(11);
         if(_loc1_)
         {
            §§push(-(§§pop() - 1) - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 41) * 40 + 1 + 41);
         }
         §§push(Sbox);
         §§push(state);
         §§push(12);
         if(_loc1_)
         {
            §§push((-(§§pop() * 42) - 1 - 51 + 118) * 37 - 104);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(1);
         if(_loc1_)
         {
            §§push((§§pop() - 25 - 1) * 56 * 44 * 37);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(6);
         if(_loc1_)
         {
            §§push(§§pop() + 1 + 1 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(--(§§pop() * 5 - 78) - 26 - 3);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(14);
         if(_loc1_)
         {
            §§push(-§§pop() - 53 - 7);
         }
         §§push(Sbox);
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push((-§§pop() - 1) * 4 + 58);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(1);
         if(_loc1_)
         {
            §§push(--(§§pop() + 42));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(6);
         if(_loc1_)
         {
            §§push(§§pop() - 1 - 3 + 7 - 117);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1 + 1 - 24) * 8 - 113);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 59));
         }
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(12);
         if(_loc1_)
         {
            §§push(-((§§pop() * 54 * 23 - 1 + 1) * 119 + 1));
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 1) - 14);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(6);
         if(_loc1_)
         {
            §§push(§§pop() + 1 + 58 + 67 - 1 - 1 - 1 + 50);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(11);
         if(_loc1_)
         {
            §§push((§§pop() - 1 + 1 - 1 + 1 + 1) * 101 - 41);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() + 1 - 19 - 1 - 1 + 52);
         }
         §§pop().position = §§pop();
         §§push(state);
         §§push(tmp);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 52 - 1 - 1 - 1 + 1);
         }
         §§push(Nb);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1 + 1) + 1 + 54);
         }
         §§pop().writeBytes(§§pop(),§§pop(),§§pop() * §§pop());
      }
      
      protected final function shiftRows() : void
      {
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() - 84 + 1 + 1 + 42);
         }
         var _loc1_:uint = §§pop();
         §§push(state);
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1) - 91) * 42 + 118 + 1 + 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 92 - 21 + 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push((-(§§pop() * 7) + 1 + 1) * 84);
         }
         §§push(Sbox);
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push(((§§pop() - 17 + 1) * 104 + 1) * 36 - 69);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() * 119 + 1 - 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 54) - 1 + 1));
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push(((§§pop() + 1 - 1) * 49 - 116) * 68);
         }
         §§push(Sbox);
         §§push(state);
         §§push(12);
         if(_loc3_)
         {
            §§push(-((-(§§pop() - 1 - 53) * 36 - 74) * 111));
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(Sbox);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() - 118 + 1) - 18) * 99 + 1);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push((--(§§pop() + 1 + 1 + 74) + 64) * 104);
         }
         §§push(Sbox);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(-§§pop() + 4 - 29 - 9 + 1 - 88);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() + 112 - 1 - 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(§§pop() + 69 + 114 - 58 - 1 + 10);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(9);
         if(_loc3_)
         {
            §§push((§§pop() + 62 - 1) * 106);
         }
         §§push(Sbox);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() - 93 - 1 + 1 + 1) * 44);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push((--(§§pop() + 1 - 1) - 32 + 1) * 49);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(Sbox);
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 88 + 82 + 1);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 56 + 11 + 85 + 1 + 1 + 53);
         }
         §§push(Sbox);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 + 1 - 1 + 1) * 4 - 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(10);
         if(_loc3_)
         {
            §§push((-(§§pop() + 30 - 18) - 1) * 32 - 20 + 1);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(Sbox);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push((§§pop() - 105 + 31) * 59);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(6);
         if(_loc2_)
         {
            §§push(---(§§pop() + 1 - 30) * 29 + 69);
         }
         §§push(Sbox);
         §§push(state);
         §§push(14);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1 + 58) - 1) * 104 + 73);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 116 - 117));
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(Sbox);
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(--§§pop() - 109 - 70 + 97 - 1);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 103 + 94 + 1 - 1 + 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 1 - 1 + 1 + 63 + 36));
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(-(§§pop() * 68) * 90 - 61);
         }
         §§push(Sbox);
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(--§§pop() * 14 - 83 + 1));
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 113 - 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 47 + 43 + 1) * 56);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push(-§§pop() * 4 + 1 + 108 - 1 + 1);
         }
         §§pop()[§§pop()] = _loc1_;
      }
      
      public function getBlockSize() : uint
      {
         §§push(16);
         if(_loc1_)
         {
            §§push(-§§pop() + 102 + 74 + 1 - 1 - 1);
         }
         return §§pop();
      }
   }
}
