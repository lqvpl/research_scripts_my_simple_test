package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import mx.events.FlexEvent;
   import flash.ui.ContextMenuItem;
   import flash.events.ContextMenuEvent;
   import flash.ui.ContextMenu;
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   
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
            §§push((§§pop() - 58) * 100 + 7 - 1);
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
               §§push((-(§§pop() - 73) * 109 + 1) * 110 + 1 + 78);
            }
            _loc1_ = §§pop();
            while(true)
            {
               §§push(_loc1_);
               §§push(256);
               if(_loc2_)
               {
                  §§push((§§pop() + 1) * 59 - 1 - 1 + 1);
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
               §§push((§§pop() + 1) * 32 * 1 - 1);
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
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 55 - 1 - 1));
         }
         return §§pop() + §§pop() * keyLength;
      }
      
      public function decrypt(param1:ByteArray, param2:uint = 0) : void
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(--(§§pop() - 1));
         }
         var _loc3_:uint = §§pop();
         §§push(state);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() + 1 - 5 - 1 + 40 + 7));
         }
         §§pop().position = §§pop();
         §§push(state);
         §§push(param1);
         §§push(param2);
         §§push(Nb);
         §§push(4);
         if(_loc5_)
         {
            §§push(--(-(§§pop() * 94) + 70) * 104 - 119);
         }
         §§pop().writeBytes(§§pop(),§§pop(),§§pop() * §§pop());
         §§push();
         §§push(key);
         §§push(Nr * Nb);
         §§push(4);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 106 + 59);
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
               §§push(-(§§pop() + 52) * 13 - 59);
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
            §§push(-(-§§pop() - 34));
         }
         var _loc1_:uint = §§pop();
         §§push(tmp);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1 - 11 - 1 - 1) * 65);
         }
         §§pop().length = §§pop();
         §§push(tmp);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 1) * 105) * 39 + 58);
         }
         §§push(XtimeE);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) + 1 + 1) * 25 * 68 + 61);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(1);
         if(_loc3_)
         {
            §§push((-((§§pop() - 94 - 10) * 7) + 56) * 111);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(((§§pop() + 1) * 83 * 35 + 84) * 40) + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 1 + 1 + 1) * 58 - 54 - 91);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 64 + 1 - 1);
         }
         §§push(Xtime9);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 103 - 1 - 94 - 1) * 95);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 45);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push(---(§§pop() - 20 + 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(3);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 46 + 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 109) * 104 + 67 + 1 + 68 - 39);
         }
         §§push(XtimeD);
         §§push(state);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 73 + 1 - 24);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() + 74 - 19 + 54 + 23);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 18 + 110 - 1 - 7 + 1 - 1 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 38) + 77 - 1));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 - 1 - 1);
         }
         §§push(XtimeB);
         §§push(state);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 4 + 85 - 95 - 1) * 90);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 13) * 31 + 1 - 27);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push((§§pop() - 91 - 1 - 77) * 73 + 72 + 55 + 54);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(3);
         if(_loc3_)
         {
            §§push(-§§pop() * 72 - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(-((§§pop() + 19) * 13) + 1) * 112);
         }
         §§push(XtimeE);
         §§push(state);
         §§push(4);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 19) - 1) * 40 * 43);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push(-(§§pop() + 6 + 1) - 1 + 43 + 47);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(7);
         if(_loc2_)
         {
            §§push((-§§pop() - 58 + 1) * 37);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(9);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 113 - 1 - 19 - 1);
         }
         §§push(Xtime9);
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push(§§pop() * 75 * 74 - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() + 86 + 59 - 2);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push(§§pop() * 61 - 1 - 9 + 25 - 56 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 - 7 + 70 + 1 - 111);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 - 79 + 1) - 32) + 1);
         }
         §§push(XtimeD);
         §§push(state);
         §§push(4);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1 + 23 + 23));
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 114 + 1 + 55);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push(--§§pop() * 79 - 104);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 72) + 59 - 1 + 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() - 40) * 86 * 20 + 113 - 1);
         }
         §§push(XtimeB);
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() - 35) * 82 - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() - 53) - 68 - 89);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push((§§pop() * 98 - 1) * 46 - 53);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push(((§§pop() + 80) * 71 - 13 + 1 + 21) * 112);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 1 + 1) * 25 + 22);
         }
         §§push(XtimeE);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() - 106 - 94) * 103 + 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 + 1 + 1) * 116 + 68);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1 - 7 + 1) + 1 + 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(11);
         if(_loc3_)
         {
            §§push(-§§pop() - 1 - 1 - 26);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(13);
         if(_loc2_)
         {
            §§push(--(-§§pop() + 1 + 44) - 61);
         }
         §§push(Xtime9);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1 - 1 + 41) - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 28 + 68 - 1 - 46) + 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push(--(-(§§pop() * 11 - 102 - 1) + 14));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(§§pop() - 111 + 108 - 73);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 91 - 1 + 112 - 50);
         }
         §§push(XtimeD);
         §§push(state);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(§§pop() * 75 - 1 + 107 + 1 + 40));
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(---((§§pop() - 1) * 18 - 1) - 26);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 1 - 14 - 119);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(11);
         if(_loc3_)
         {
            §§push(-((-§§pop() + 1) * 2) * 7);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() * 0 + 1 - 1);
         }
         §§push(XtimeB);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1 + 78 - 1) + 1 + 10));
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(9);
         if(_loc3_)
         {
            §§push(-(§§pop() - 89) + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 102 - 87) * 97 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(11);
         if(_loc3_)
         {
            §§push(-((§§pop() - 83 + 39 + 1) * 79));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(12);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 8) - 47 - 1 - 8));
         }
         §§push(XtimeE);
         §§push(state);
         §§push(12);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 54 + 4 - 1 + 109) - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push(-(§§pop() * 116) + 1 - 1 - 119);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push(-((-§§pop() - 18 - 1) * 51) + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(15);
         if(_loc3_)
         {
            §§push(§§pop() - 18 - 26 - 46);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(1);
         if(_loc3_)
         {
            §§push(--(§§pop() - 46 + 1 + 101 + 1 - 68));
         }
         §§push(Xtime9);
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 34 - 32);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 15 - 1) + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() - 35 - 45 - 1 + 1) * 44 + 106);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(--(§§pop() - 55 + 1));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(6);
         if(_loc3_)
         {
            §§push(--(§§pop() - 1) + 29 - 33 - 10);
         }
         §§push(XtimeD);
         §§push(state);
         §§push(12);
         if(_loc3_)
         {
            §§push((-(§§pop() - 1) - 1) * 48);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push(-(§§pop() - 88 + 106) * 1 + 1 - 118 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(14);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 14 + 33) + 22 + 37));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeB);
         §§push(state);
         §§push(15);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 82) * 88);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(11);
         if(_loc3_)
         {
            §§push((§§pop() - 83 - 1) * 78 - 1 - 1);
         }
         §§push(XtimeB);
         §§push(state);
         §§push(12);
         if(_loc3_)
         {
            §§push(§§pop() - 115 - 1 + 1 - 1 + 1 + 109);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(XtimeD);
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push((§§pop() + 57 + 96 + 99) * 114 + 10 - 4 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime9);
         §§push(state);
         §§push(14);
         if(_loc3_)
         {
            §§push(§§pop() * 60 - 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(XtimeE);
         §§push(state);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(§§pop() * 51) - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 1 - 1 - 1 + 1 + 1);
         }
         _loc1_ = §§pop();
         while(true)
         {
            §§push(_loc1_);
            §§push(4);
            if(_loc2_)
            {
               §§push(§§pop() - 1 + 1 - 108 - 42);
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
            §§push((-(§§pop() - 41 + 1) + 1) * 63);
         }
         var _loc1_:uint = §§pop();
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 68 + 53 + 1 + 1 + 1 + 1 + 89);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 72 - 1 - 1) - 111);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push((-((§§pop() + 46) * 17 - 43) + 38) * 92);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push(-(§§pop() * 108 + 1 + 1 - 1 - 1) * 0);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 1 - 35);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push((-(§§pop() - 1) - 1 + 1) * 90 * 114);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() * 14 + 55) + 98 + 25);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(12);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 1 + 1) * 18 * 119 - 16);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(InvSbox);
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 83 - 1 - 94) + 1);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push((§§pop() + 32 + 53) * 9 * 87 - 111 + 37);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(9);
         if(_loc3_)
         {
            §§push(-(§§pop() - 35) + 1 + 1 + 47 - 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push((-(-§§pop() - 1 + 1) + 64) * 53);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 53 - 35 - 1) - 115 - 45 + 104);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(5);
         if(_loc3_)
         {
            §§push(§§pop() * 87 - 2 + 1 - 1 + 1);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push(((§§pop() - 1) * 103 * 118 - 12 - 36 - 2) * 62);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 1 - 1);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(InvSbox);
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() + 33 + 34 - 75 - 1 + 119 - 1);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push(((§§pop() + 6 - 1 + 1) * 50 - 1) * 21 - 89);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 27 - 1 + 1 + 82 + 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(10);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1 - 1) + 1) * 41);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(InvSbox);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push(--(§§pop() * 74 + 41 - 65) * 39 - 84);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push((-((-§§pop() + 22) * 17) - 62) * 48 * 26);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(14);
         if(_loc3_)
         {
            §§push(-§§pop() + 67 + 5);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(14);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1 - 23));
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(InvSbox);
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 83 + 96) * 80 - 42 + 69);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 38 - 105 - 1 - 106 + 33);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push(-§§pop() * 41 - 34);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 26) + 113) + 1 - 1);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(§§pop() - 103 - 114 + 88 - 71);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(11);
         if(_loc3_)
         {
            §§push((§§pop() + 79) * 59 - 97 - 80);
         }
         §§push(InvSbox);
         §§push(state);
         §§push(15);
         if(_loc3_)
         {
            §§push(-(((§§pop() * 63 + 1) * 78 - 1) * 91) - 106);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() - 49 - 1 + 1);
         }
         §§pop()[§§pop()] = _loc1_;
      }
      
      public function dispose() : void
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 91 - 1) * 70 + 28 + 118);
         }
         var _loc1_:uint = §§pop();
         var _loc2_:Random = new Random();
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 65 + 20) * 101 - 77 + 1 + 1);
         }
         _loc1_ = §§pop();
         while(_loc1_ < key.length)
         {
            key[_loc1_] = _loc2_.nextByte();
            _loc1_++;
         }
         Nr = _loc2_.nextByte();
         §§push(0);
         if(_loc4_)
         {
            §§push(--(§§pop() * 116) + 1);
         }
         _loc1_ = §§pop();
         while(_loc1_ < state.length)
         {
            state[_loc1_] = _loc2_.nextByte();
            _loc1_++;
         }
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 108 - 1 + 61 - 23 + 1);
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
            §§push(--((§§pop() - 1 + 70 - 51) * 37));
         }
         §§pop().length = §§pop();
         §§push();
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() * 99 + 16) * 88);
         }
         §§pop().keyLength = §§pop();
         §§push(state);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 58 + 66 + 1) * 79);
         }
         §§pop().length = §§pop();
         §§push(tmp);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 38 - 1 + 53 - 1 + 1 - 106));
         }
         §§pop().length = §§pop();
         key = null;
         state = null;
         tmp = null;
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push(-(((§§pop() - 106) * 67 + 46 + 1 + 1) * 28));
         }
         §§pop().Nr = §§pop();
         Memory.gc();
      }
      
      private final function expandKey() : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() * 0 + 40) - 1 - 101);
         }
         var _loc1_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(--§§pop() + 1 - 33 - 74);
         }
         var _loc2_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() * 115 - 1 + 23 - 73);
         }
         var _loc3_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 1 + 29 + 1);
         }
         var _loc4_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() * 13 + 29 + 40);
         }
         var _loc5_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() + 67 - 1 + 1 + 1 + 1 + 1);
         }
         var _loc6_:uint = §§pop();
         §§push(key.length);
         §§push(4);
         if(_loc8_)
         {
            §§push((§§pop() - 1) * 40 + 1);
         }
         var _loc7_:uint = §§pop() / §§pop();
         §§push();
         §§push(_loc7_);
         §§push(6);
         if(_loc9_)
         {
            §§push(§§pop() + 1 + 1 + 1);
         }
         §§pop().Nr = §§pop() + §§pop();
         _loc6_ = _loc7_;
         while(true)
         {
            §§push(_loc6_);
            §§push(Nb);
            §§push(Nr);
            §§push(1);
            if(_loc9_)
            {
               §§push(-(§§pop() - 1 + 1 + 1));
            }
            if(§§pop() >= §§pop() * (§§pop() + §§pop()))
            {
               break;
            }
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(-((§§pop() + 1) * 116 - 119 + 107) - 115);
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc8_)
            {
               §§push((§§pop() + 1 - 1 + 114 + 1) * 11 - 66 - 29);
            }
            _loc1_ = §§pop()[§§pop() - §§pop()];
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push((§§pop() + 1 - 79) * 6 + 1);
            }
            §§push(§§pop() * _loc6_);
            §§push(3);
            if(_loc9_)
            {
               §§push(--(-(§§pop() + 46 - 1) * 34) + 67);
            }
            _loc2_ = §§pop()[§§pop() - §§pop()];
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push((§§pop() * 103 * 59 + 1 - 64 + 1) * 16 + 1);
            }
            §§push(§§pop() * _loc6_);
            §§push(2);
            if(_loc8_)
            {
               §§push(--((§§pop() + 1) * 86 * 82 + 96 - 1));
            }
            _loc3_ = §§pop()[§§pop() - §§pop()];
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push(((§§pop() - 1) * 105 - 1 - 57) * 2 - 1 - 54);
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
               if(_loc8_)
               {
                  §§push(-(§§pop() - 39) + 1 + 1 - 106);
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
            if(_loc9_)
            {
               §§push(§§pop() + 42 - 50 - 45 + 27 - 111);
            }
            §§push(§§pop() * _loc6_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() + 1 - 1));
            }
            §§push(§§pop() + §§pop());
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(§§pop() + 1 + 1 + 1);
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc9_)
            {
               §§push(-(-(§§pop() + 14) - 25 + 47 + 106));
            }
            §§push(§§pop() - §§pop() * _loc7_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() - 1 - 41) + 103 + 9);
            }
            §§pop()[§§pop()] = §§pop()[§§pop() + §§pop()] ^ _loc1_;
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push(-(§§pop() + 54 - 87) + 75);
            }
            §§push(§§pop() * _loc6_);
            §§push(1);
            if(_loc8_)
            {
               §§push(-(-§§pop() + 1) - 1 - 84);
            }
            §§push(§§pop() + §§pop());
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push(-(§§pop() - 53 + 1 - 33 + 41) * 57 * 20);
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc8_)
            {
               §§push(§§pop() + 11 - 50 - 19);
            }
            §§push(§§pop() - §§pop() * _loc7_);
            §§push(1);
            if(_loc8_)
            {
               §§push(((§§pop() - 73) * 69 + 61) * 89 - 59);
            }
            §§pop()[§§pop()] = §§pop()[§§pop() + §§pop()] ^ _loc2_;
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(--(-§§pop() + 1) * 7 + 1);
            }
            §§push(§§pop() * _loc6_);
            §§push(2);
            if(_loc9_)
            {
               §§push(§§pop() * 6 + 111 + 76 - 1);
            }
            §§push(§§pop() + §§pop());
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(-§§pop() + 51 + 1 + 1 - 1 + 42);
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc9_)
            {
               §§push(-(§§pop() * 37 * 91) * 87);
            }
            §§push(§§pop() - §§pop() * _loc7_);
            §§push(2);
            if(_loc8_)
            {
               §§push(§§pop() - 77 + 1 + 31 - 114 - 111);
            }
            §§pop()[§§pop()] = §§pop()[§§pop() + §§pop()] ^ _loc3_;
            §§push(key);
            §§push(4);
            if(_loc8_)
            {
               §§push((§§pop() - 1 + 1 + 103 - 1) * 111);
            }
            §§push(§§pop() * _loc6_);
            §§push(3);
            if(_loc9_)
            {
               §§push(-((-(-§§pop() - 1) + 1) * 83 + 1));
            }
            §§push(§§pop() + §§pop());
            §§push(key);
            §§push(4);
            if(_loc9_)
            {
               §§push(--§§pop() * 81 + 1);
            }
            §§push(§§pop() * _loc6_);
            §§push(4);
            if(_loc9_)
            {
               §§push(((§§pop() - 1) * 118 - 1 - 1 + 1) * 35);
            }
            §§push(§§pop() - §§pop() * _loc7_);
            §§push(3);
            if(_loc8_)
            {
               §§push(§§pop() - 1 + 1 + 1);
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
            §§push(§§pop() * 76 * 0 - 16 - 1);
         }
         var _loc3_:uint = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 1 - 1 - 89);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(16);
            if(_loc4_)
            {
               §§push(§§pop() * 95 + 83 + 1 + 116);
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
            §§push(---(-(§§pop() - 1) + 1) * 75);
         }
         var _loc3_:uint = §§pop();
         §§push(state);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 1 - 17 + 1 + 1 + 73 - 1);
         }
         §§pop().position = §§pop();
         §§push(state);
         §§push(param1);
         §§push(param2);
         §§push(Nb);
         §§push(4);
         if(_loc4_)
         {
            §§push((§§pop() + 1 + 1) * 16 * 65);
         }
         §§pop().writeBytes(§§pop(),§§pop(),§§pop() * §§pop());
         §§push();
         §§push(key);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-(§§pop() - 1) + 117) + 104);
         }
         §§pop().addRoundKey(§§pop(),§§pop());
         §§push(1);
         if(_loc5_)
         {
            §§push(-(--(§§pop() * 72) + 6) * 98);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(Nr);
            §§push(1);
            if(_loc5_)
            {
               §§push((§§pop() - 12 - 1) * 60);
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
               §§push(-(§§pop() - 66 - 36) - 1 - 1 - 1);
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
            §§push(-(§§pop() - 1 + 1) - 1);
         }
         §§pop().length = §§pop();
         §§push(tmp);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() + 61) + 1 + 1);
         }
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() + 90 + 102));
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() + 99 + 24 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push(-((-§§pop() + 1) * 86) * 14 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() * 80 * 63 + 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(1);
         if(_loc1_)
         {
            §§push(-(-§§pop() + 41) + 62 - 1 + 1 - 50);
         }
         §§push(Sbox);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(--§§pop() + 58 - 49);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() + 64 - 7 - 1 - 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(10);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1 + 1) * 55 * 62 - 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(15);
         if(_loc1_)
         {
            §§push(§§pop() + 1 - 22 + 1 - 1 - 1 + 1 - 84);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 41) + 1) * 20 + 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(---§§pop() * 91 + 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(5);
         if(_loc1_)
         {
            §§push(-((§§pop() + 1 - 107) * 98 + 1) + 105);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 50) * 9 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(15);
         if(_loc1_)
         {
            §§push((§§pop() - 1) * 40 - 77);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(3);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1) * 112 - 39);
         }
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(0);
         if(_loc1_)
         {
            §§push((§§pop() - 117 - 3) * 73);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() * 54 - 1) * 18 - 42);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(10);
         if(_loc1_)
         {
            §§push((-(§§pop() + 1) - 77) * 30 + 92 - 1 - 66);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(15);
         if(_loc1_)
         {
            §§push(-(§§pop() * 92 - 1 + 97 + 104));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(4);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 57 + 1 - 87 + 20 - 75);
         }
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(4);
         if(_loc1_)
         {
            §§push(-(§§pop() * 117) - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(9);
         if(_loc1_)
         {
            §§push(§§pop() - 94 + 16 + 94 + 1 + 1 - 59);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(14);
         if(_loc1_)
         {
            §§push((§§pop() + 1 + 69) * 30 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() + 23 - 1 + 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(5);
         if(_loc1_)
         {
            §§push(-(-§§pop() - 35) - 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(4);
         if(_loc1_)
         {
            §§push(-§§pop() + 1 + 114);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(9);
         if(_loc1_)
         {
            §§push(-(§§pop() + 30) - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() + 21 + 74 - 16 - 1) * 11);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(3);
         if(_loc1_)
         {
            §§push(---(§§pop() - 1 + 1 + 1) + 100);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() * 19 * 77 * 86 - 1) * 99);
         }
         §§push(Sbox);
         §§push(state);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() + 49 + 1 + 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1) * 74);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(14);
         if(_loc1_)
         {
            §§push(§§pop() + 88 - 39 - 1 - 85);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(3);
         if(_loc1_)
         {
            §§push((-§§pop() - 1 + 51) * 32 - 114);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 101 + 1 - 1 - 1 - 40);
         }
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(4);
         if(_loc1_)
         {
            §§push(--(§§pop() * 58) + 1 + 1 + 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push(-(-§§pop() - 85 - 16) - 92 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(§§pop() * 45 - 119) + 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(3);
         if(_loc1_)
         {
            §§push(-(§§pop() - 13 - 1) - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(8);
         if(_loc1_)
         {
            §§push(-(§§pop() * 54 + 0 + 1 + 1) * 29 + 45);
         }
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) * 51);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 1 + 88);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(2);
         if(_loc1_)
         {
            §§push(§§pop() * 59 - 1 - 95 - 1 - 83 - 20);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(7);
         if(_loc1_)
         {
            §§push(-(§§pop() * 15 * 77) + 50 - 69);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(9);
         if(_loc1_)
         {
            §§push(§§pop() + 102 - 1 - 31 + 8 - 2);
         }
         §§push(Sbox);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 1) - 10 + 59 + 1 + 78);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() * 114 + 1 + 92) * 76 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(2);
         if(_loc1_)
         {
            §§push(-(§§pop() * 70 - 2 - 30) * 118 + 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() - 13 - 1 + 106);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() * 70 + 4 - 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push(§§pop() + 71 - 45 - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push(-(--§§pop() - 1 + 1 + 88 + 119));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(2);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1 - 1) * 35);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) * 104 - 1));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(11);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) + 89) * 38);
         }
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(8);
         if(_loc1_)
         {
            §§push(-§§pop() * 0 - 1 - 49 - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(13);
         if(_loc1_)
         {
            §§push(§§pop() * 53 + 1 - 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 119 + 35 + 112);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(7);
         if(_loc1_)
         {
            §§push((§§pop() + 62 + 7 - 1) * 20 + 23);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(12);
         if(_loc2_)
         {
            §§push(§§pop() + 40 + 1 + 1 - 119 - 43);
         }
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push(-§§pop() + 58 - 61 + 65);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 22 - 37 + 1 + 43);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(6);
         if(_loc1_)
         {
            §§push(§§pop() - 1 + 1 - 59 + 1 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(11);
         if(_loc1_)
         {
            §§push((-(§§pop() - 1) * 23 + 15 + 1) * 33 - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(13);
         if(_loc1_)
         {
            §§push(§§pop() - 1 + 1 + 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() * 63) + 1 - 86);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 1 + 20);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(6);
         if(_loc1_)
         {
            §§push((§§pop() + 1) * 25 * 108);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(11);
         if(_loc1_)
         {
            §§push(-(-(-(§§pop() - 1) + 81 - 1) + 31));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(14);
         if(_loc1_)
         {
            §§push(§§pop() + 85 - 71 + 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(12);
         if(_loc1_)
         {
            §§push(-(-(§§pop() + 1) - 88 + 15) + 45 - 1);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push((-(§§pop() + 42) + 1 - 1) * 109 + 74);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(6);
         if(_loc2_)
         {
            §§push((§§pop() - 56 + 106 + 105 + 98 + 1 - 51) * 66);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(11);
         if(_loc1_)
         {
            §§push(-(§§pop() - 7 - 1 + 18) + 1 + 28 - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(tmp);
         §§push(15);
         if(_loc1_)
         {
            §§push(-§§pop() * 90 * 112 - 1 - 48);
         }
         §§push(Xtime3Sbox);
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push(-§§pop() + 67 + 31);
         }
         §§push(§§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(1);
         if(_loc1_)
         {
            §§push(-(§§pop() + 14 + 1));
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Sbox);
         §§push(state);
         §§push(6);
         if(_loc1_)
         {
            §§push(-(§§pop() + 13 + 74 + 1) * 117 - 1);
         }
         §§push(§§pop() ^ §§pop()[§§pop()[§§pop()]]);
         §§push(Xtime2Sbox);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 49) + 73));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(0);
         if(_loc1_)
         {
            §§push(-(-(-§§pop() - 55) - 108 - 1 + 1));
         }
         §§pop().position = §§pop();
         §§push(state);
         §§push(tmp);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() - 1 - 118 + 44 + 1);
         }
         §§push(Nb);
         §§push(4);
         if(_loc1_)
         {
            §§push(((§§pop() + 1 + 18) * 76 + 1) * 69 + 1);
         }
         §§pop().writeBytes(§§pop(),§§pop(),§§pop() * §§pop());
      }
      
      protected final function shiftRows() : void
      {
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 9) * 72 + 114);
         }
         var _loc1_:uint = §§pop();
         §§push(state);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(§§pop() + 1));
         }
         §§push(Sbox);
         §§push(state);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 19 - 1 + 72) * 17);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 - 1) * 15 - 1 + 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(4);
         if(_loc2_)
         {
            §§push((-(§§pop() + 94) + 1) * 118 + 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(8);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 49);
         }
         §§push(Sbox);
         §§push(state);
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() - 5) * 46 + 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(12);
         if(_loc3_)
         {
            §§push(-§§pop() + 65 - 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() * 106) - 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(Sbox);
         §§push(state);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 + 1 + 1) * 95);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 22) * 45 * 54 + 1 + 71);
         }
         §§push(Sbox);
         §§push(state);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() - 64 - 49 - 1));
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(5);
         if(_loc3_)
         {
            §§push((-§§pop() + 1) * 103);
         }
         §§push(Sbox);
         §§push(state);
         §§push(9);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 62) - 1 + 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(9);
         if(_loc2_)
         {
            §§push((--(-§§pop() - 1) + 1) * 92 - 47);
         }
         §§push(Sbox);
         §§push(state);
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() + 110 + 105 - 18) * 28);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(13);
         if(_loc3_)
         {
            §§push((--§§pop() + 69 + 107 + 1) * 14);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(Sbox);
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1));
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() * 82 + 1 + 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(10);
         if(_loc3_)
         {
            §§push(--(§§pop() * 39) + 31 - 85);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 51 + 47 - 11 - 30);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(Sbox);
         §§push(state);
         §§push(6);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 5 + 1);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) + 1 + 100);
         }
         §§push(Sbox);
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(§§pop() + 107 + 1 + 1) + 1 - 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(14);
         if(_loc2_)
         {
            §§push(-(§§pop() - 104) - 62);
         }
         §§pop()[§§pop()] = _loc1_;
         §§push(Sbox);
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) + 20) + 1);
         }
         _loc1_ = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(15);
         if(_loc2_)
         {
            §§push(--((§§pop() + 44 + 1) * 56) - 1 + 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 102 - 1 + 1 - 1 + 25 + 56);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(11);
         if(_loc2_)
         {
            §§push(-(-(§§pop() * 51 - 1 - 1) - 1) * 86);
         }
         §§push(Sbox);
         §§push(state);
         §§push(7);
         if(_loc3_)
         {
            §§push(-(§§pop() - 32 + 1 + 113 - 36 - 1) - 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(§§pop() * 26) + 1 - 1);
         }
         §§push(Sbox);
         §§push(state);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 38 - 1);
         }
         §§pop()[§§pop()] = §§pop()[§§pop()[§§pop()]];
         §§push(state);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 98 - 38 + 40);
         }
         §§pop()[§§pop()] = _loc1_;
      }
      
      public function getBlockSize() : uint
      {
         §§push(16);
         if(_loc1_)
         {
            §§push(§§pop() - 92 + 1 - 1);
         }
         return §§pop();
      }
   }
}
