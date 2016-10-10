package com.hurlant.util
{
   import flash.utils.ByteArray;
   import com.enfluid.ltp.util.MajesticUtils;
   import mx.rpc.http.HTTPService;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import spark.components.Label;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.vo.KeywordVO;
   
   use namespace bi_internal;
   
   public final class Base64
   {
      
      public static const version:String = "1.0.0";
      
      private static const BASE64_CHARS:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
       
      
      public function Base64()
      {
         super();
         throw new Error("Base64 class is static container only");
      }
      
      public static function decodeToByteArrayB(param1:String) : ByteArray
      {
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() - 1 - 1) * 79 + 0 - 65);
         }
         var _loc6_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() - 80) * 100);
         }
         var _loc7_:uint = §§pop();
         var _loc2_:ByteArray = new ByteArray();
         §§push();
         §§push(4);
         if(_loc9_)
         {
            §§push(((§§pop() - 97) * 15 + 97 + 1 + 1) * 63);
         }
         var _loc3_:Array = new §§pop().Array(§§pop());
         §§push();
         §§push(3);
         if(_loc8_)
         {
            §§push(-(§§pop() + 105 - 43 + 1 + 1) + 1);
         }
         var _loc4_:Array = new §§pop().Array(§§pop());
         §§push(0);
         if(_loc9_)
         {
            §§push((-§§pop() + 1 + 1 - 1 + 21) * 6);
         }
         var _loc5_:uint = §§pop();
         while(_loc5_ < param1.length)
         {
            §§push(0);
            if(_loc8_)
            {
               §§push(§§pop() + 1 + 1 + 1 + 1 + 1 - 49);
            }
            _loc6_ = §§pop();
            while(true)
            {
               §§push(_loc6_);
               §§push(4);
               if(_loc9_)
               {
                  §§push(-(§§pop() + 1 + 101 - 1) + 1 - 41 - 88);
               }
               if(!(§§pop() < §§pop() && _loc5_ + _loc6_ < param1.length))
               {
                  break;
               }
               _loc3_[_loc6_] = BASE64_CHARS.indexOf(param1.charAt(_loc5_ + _loc6_));
               while(true)
               {
                  §§push(_loc3_[_loc6_]);
                  §§push(0);
                  if(_loc8_)
                  {
                     §§push(--(§§pop() + 1));
                  }
                  if(!(§§pop() < §§pop() && _loc5_ < param1.length))
                  {
                     break;
                  }
                  _loc5_++;
                  _loc3_[_loc6_] = BASE64_CHARS.indexOf(param1.charAt(_loc5_ + _loc6_));
               }
               _loc6_++;
            }
            §§push(_loc4_);
            §§push(0);
            if(_loc8_)
            {
               §§push(---§§pop() * 88 * 69 + 1);
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc9_)
            {
               §§push((-(§§pop() - 1) - 1) * 61 + 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(2);
            if(_loc9_)
            {
               §§push(-(§§pop() + 1 + 1 - 90 - 1) * 15);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(1);
            if(_loc8_)
            {
               §§push((-§§pop() + 22 - 1 + 1) * 108 - 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(48);
            if(_loc8_)
            {
               §§push(§§pop() + 47 - 33 + 1 + 89 - 98 + 1);
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc9_)
            {
               §§push((-(§§pop() * 41 + 1 + 1) - 1) * 110);
            }
            §§pop()[§§pop()] = §§pop() + (§§pop() >> §§pop());
            §§push(_loc4_);
            §§push(1);
            if(_loc9_)
            {
               §§push(-(-§§pop() - 1 - 77));
            }
            §§push(_loc3_);
            §§push(1);
            if(_loc8_)
            {
               §§push(-§§pop() * 76 - 1 + 1 - 1 - 1 + 15);
            }
            §§push(§§pop()[§§pop()]);
            §§push(15);
            if(_loc8_)
            {
               §§push(((§§pop() + 34) * 67 - 98 + 1 + 24 + 58) * 95);
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc9_)
            {
               §§push(-(§§pop() * 1 - 1 + 88 + 1 - 38 - 86));
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(2);
            if(_loc9_)
            {
               §§push(-(-(§§pop() + 11 + 1) + 85 + 1));
            }
            §§push(§§pop()[§§pop()]);
            §§push(60);
            if(_loc9_)
            {
               §§push(§§pop() + 1 - 26 + 1 - 1 + 37 + 119);
            }
            §§push(§§pop() & §§pop());
            §§push(2);
            if(_loc8_)
            {
               §§push(§§pop() * 71 * 50 * 29);
            }
            §§pop()[§§pop()] = §§pop() + (§§pop() >> §§pop());
            §§push(_loc4_);
            §§push(2);
            if(_loc8_)
            {
               §§push(---(§§pop() - 1 + 28 + 21));
            }
            §§push(_loc3_);
            §§push(2);
            if(_loc9_)
            {
               §§push((-§§pop() - 1 + 1 - 33) * 84);
            }
            §§push(§§pop()[§§pop()]);
            §§push(3);
            if(_loc9_)
            {
               §§push((-§§pop() + 74 + 75) * 66 - 73 + 1 - 29);
            }
            §§push(§§pop() & §§pop());
            §§push(6);
            if(_loc8_)
            {
               §§push((§§pop() - 15) * 99 + 1);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(3);
            if(_loc8_)
            {
               §§push(-(-((§§pop() - 30) * 52) + 1 + 43));
            }
            §§pop()[§§pop()] = §§pop() + §§pop()[§§pop()];
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() - 87 + 98 + 1 - 6 + 98 - 1 - 1);
            }
            _loc7_ = §§pop();
            while(_loc7_ < _loc4_.length)
            {
               §§push(_loc3_);
               §§push(_loc7_);
               §§push(1);
               if(_loc9_)
               {
                  §§push(-((§§pop() * 28 + 36) * 21) - 53 + 5 + 1);
               }
               §§push(§§pop()[§§pop() + §§pop()]);
               §§push(64);
               if(_loc8_)
               {
                  §§push((§§pop() - 18) * 85 - 111 - 1);
               }
               if(§§pop() == §§pop())
               {
                  break;
               }
               _loc2_.writeByte(_loc4_[_loc7_]);
               _loc7_++;
            }
            §§push(_loc5_);
            §§push(4);
            if(_loc8_)
            {
               §§push((§§pop() + 1 - 1) * 38 - 50 + 50);
            }
            _loc5_ = §§pop() + §§pop();
         }
         §§push(_loc2_);
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() - 102 + 1 - 17);
         }
         §§pop().position = §§pop();
         return _loc2_;
      }
      
      public static function encode(param1:String) : String
      {
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         return encodeByteArray(_loc2_);
      }
      
      public static function encodeByteArray(param1:ByteArray) : String
      {
         var _loc3_:Array = null;
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() + 1) - 89 - 1 - 20 - 88 + 57);
         }
         var _loc5_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(-§§pop() * 103 - 1 - 64);
         }
         var _loc6_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 53 - 89 + 1 - 85);
         }
         var _loc7_:uint = §§pop();
         var _loc2_:String = "";
         §§push();
         §§push(4);
         if(_loc8_)
         {
            §§push(-(--(§§pop() - 111) * 80 - 1));
         }
         var _loc4_:Array = new §§pop().Array(§§pop());
         §§push(param1);
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-(§§pop() * 63) - 1));
         }
         §§pop().position = §§pop();
         while(true)
         {
            §§push(param1.bytesAvailable);
            §§push(0);
            if(_loc8_)
            {
               §§push((§§pop() + 1 - 1 - 1) * 57 + 14 + 1);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            _loc3_ = new Array();
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1 - 99 + 66) - 31 + 69);
            }
            _loc5_ = §§pop();
            while(true)
            {
               §§push(_loc5_);
               §§push(3);
               if(_loc9_)
               {
                  §§push(-((-(§§pop() + 1) + 1) * 61 * 29 + 58));
               }
               if(!(§§pop() < §§pop() && §§pop() > §§pop()))
               {
                  break;
               }
               _loc3_[_loc5_] = param1.readUnsignedByte();
               _loc5_++;
            }
            §§push(_loc4_);
            §§push(0);
            if(_loc9_)
            {
               §§push((§§pop() - 1 + 46) * 101 + 1 - 1);
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-(-(§§pop() - 70) - 84));
            }
            §§push(§§pop()[§§pop()]);
            §§push(252);
            if(_loc9_)
            {
               §§push((§§pop() + 1) * 3 + 49 - 1 - 1);
            }
            §§push(§§pop() & §§pop());
            §§push(2);
            if(_loc8_)
            {
               §§push(§§pop() - 1 + 45 - 6 - 61 - 1 + 1);
            }
            §§pop()[§§pop()] = §§pop() >> §§pop();
            §§push(_loc4_);
            §§push(1);
            if(_loc8_)
            {
               §§push(-(-((§§pop() - 94) * 36 - 44) * 55));
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push(§§pop() + 1 + 1 + 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(3);
            if(_loc9_)
            {
               §§push(-(-(§§pop() - 77) - 60));
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc8_)
            {
               §§push((§§pop() * 73 + 58) * 44);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(1);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1 + 1));
            }
            §§push(§§pop()[§§pop()]);
            §§push(4);
            if(_loc9_)
            {
               §§push(-(§§pop() * 27 - 1 - 1 + 1 - 1) * 104);
            }
            §§pop()[§§pop()] = §§pop() | §§pop() >> §§pop();
            §§push(_loc4_);
            §§push(2);
            if(_loc9_)
            {
               §§push((§§pop() + 1) * 63 + 1 + 26);
            }
            §§push(_loc3_);
            §§push(1);
            if(_loc9_)
            {
               §§push(-(-((§§pop() - 1) * 78 + 86 - 1) + 1));
            }
            §§push(§§pop()[§§pop()]);
            §§push(15);
            if(_loc9_)
            {
               §§push(-(§§pop() * 1 - 1 - 36 + 22) - 1);
            }
            §§push(§§pop() & §§pop());
            §§push(2);
            if(_loc9_)
            {
               §§push(((§§pop() + 90 - 1) * 9 - 101 - 1) * 17);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(2);
            if(_loc8_)
            {
               §§push(-§§pop() * 77 - 43);
            }
            §§push(§§pop()[§§pop()]);
            §§push(6);
            if(_loc8_)
            {
               §§push(--((§§pop() + 1) * 37 + 1 - 1 - 1));
            }
            §§pop()[§§pop()] = §§pop() | §§pop() >> §§pop();
            §§push(_loc4_);
            §§push(3);
            if(_loc9_)
            {
               §§push((§§pop() + 7 + 68) * 3 * 88);
            }
            §§push(_loc3_);
            §§push(2);
            if(_loc8_)
            {
               §§push((§§pop() - 1 + 61 - 1) * 12 * 103);
            }
            §§push(§§pop()[§§pop()]);
            §§push(63);
            if(_loc9_)
            {
               §§push(§§pop() - 1 - 20 - 1 + 83 + 1 + 97);
            }
            §§pop()[§§pop()] = §§pop() & §§pop();
            _loc6_ = _loc3_.length;
            while(true)
            {
               §§push(_loc6_);
               §§push(3);
               if(_loc9_)
               {
                  §§push(§§pop() * 56 - 1 + 1 - 41);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§push(_loc4_);
               §§push(_loc6_);
               §§push(1);
               if(_loc8_)
               {
                  §§push((§§pop() + 1 - 1) * 14);
               }
               §§push(§§pop() + §§pop());
               §§push(64);
               if(_loc9_)
               {
                  §§push((§§pop() + 1 + 1 - 1) * 76 - 1 + 12);
               }
               §§pop()[§§pop()] = §§pop();
               _loc6_++;
            }
            §§push(0);
            if(_loc9_)
            {
               §§push((§§pop() - 87 - 32) * 74);
            }
            _loc7_ = §§pop();
            while(_loc7_ < _loc4_.length)
            {
               _loc2_ = _loc2_ + BASE64_CHARS.charAt(_loc4_[_loc7_]);
               _loc7_++;
            }
         }
         return _loc2_;
      }
      
      public static function decode(param1:String) : String
      {
         var _loc2_:ByteArray = decodeToByteArrayB(param1);
         return _loc2_.readUTFBytes(_loc2_.length);
      }
      
      public static function decodeToByteArray(param1:String) : ByteArray
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 1) * 50);
         }
         var _loc6_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(-(-(§§pop() - 11 + 49) * 26 - 1 + 96));
         }
         var _loc7_:uint = §§pop();
         var _loc2_:ByteArray = new ByteArray();
         §§push();
         §§push(4);
         if(_loc8_)
         {
            §§push(-(--§§pop() - 28 + 1));
         }
         var _loc3_:Array = new §§pop().Array(§§pop());
         §§push();
         §§push(3);
         if(_loc9_)
         {
            §§push(-(§§pop() + 98 - 32 + 114 - 1) - 1 - 1);
         }
         var _loc4_:Array = new §§pop().Array(§§pop());
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() - 49 - 1));
         }
         var _loc5_:uint = §§pop();
         while(_loc5_ < param1.length)
         {
            §§push(0);
            if(_loc8_)
            {
               §§push(-((§§pop() - 23) * 103) - 117 + 74 - 1);
            }
            _loc6_ = §§pop();
            while(true)
            {
               §§push(_loc6_);
               §§push(4);
               if(_loc8_)
               {
                  §§push((§§pop() + 116 + 1 - 99) * 94 + 1);
               }
               if(!(§§pop() < §§pop() && _loc5_ + _loc6_ < param1.length))
               {
                  break;
               }
               _loc3_[_loc6_] = BASE64_CHARS.indexOf(param1.charAt(_loc5_ + _loc6_));
               _loc6_++;
            }
            §§push(_loc4_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-(-(§§pop() - 1) + 28 + 93 - 66 - 106));
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push((§§pop() - 57 + 104 + 1) * 10 - 33);
            }
            §§push(§§pop()[§§pop()]);
            §§push(2);
            if(_loc8_)
            {
               §§push(§§pop() + 58 + 24 - 95 + 1 + 1);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(1);
            if(_loc9_)
            {
               §§push(-((§§pop() - 5 - 1) * 25) - 110);
            }
            §§push(§§pop()[§§pop()]);
            §§push(48);
            if(_loc8_)
            {
               §§push(-(§§pop() - 47) + 32);
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc9_)
            {
               §§push(§§pop() + 64 - 1 + 117 + 2);
            }
            §§pop()[§§pop()] = §§pop() + (§§pop() >> §§pop());
            §§push(_loc4_);
            §§push(1);
            if(_loc9_)
            {
               §§push(-§§pop() - 81 - 1);
            }
            §§push(_loc3_);
            §§push(1);
            if(_loc9_)
            {
               §§push(-(§§pop() + 80) + 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(15);
            if(_loc9_)
            {
               §§push(-((§§pop() * 42 + 72) * 86) * 8 + 32 + 1);
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1 - 112 - 1));
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(2);
            if(_loc8_)
            {
               §§push(§§pop() + 1 + 1 - 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(60);
            if(_loc9_)
            {
               §§push(--(§§pop() - 42 + 15) * 114);
            }
            §§push(§§pop() & §§pop());
            §§push(2);
            if(_loc9_)
            {
               §§push(§§pop() * 42 - 102 + 1 + 104);
            }
            §§pop()[§§pop()] = §§pop() + (§§pop() >> §§pop());
            §§push(_loc4_);
            §§push(2);
            if(_loc8_)
            {
               §§push(((§§pop() - 31) * 19 - 1) * 13 - 109);
            }
            §§push(_loc3_);
            §§push(2);
            if(_loc9_)
            {
               §§push(§§pop() + 84 - 29 + 106 + 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(3);
            if(_loc8_)
            {
               §§push((§§pop() + 1 + 23 - 86) * 116 + 106);
            }
            §§push(§§pop() & §§pop());
            §§push(6);
            if(_loc8_)
            {
               §§push((§§pop() + 87) * 50 + 1 + 1 - 1);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(3);
            if(_loc9_)
            {
               §§push((§§pop() * 70 + 94) * 79 * 114);
            }
            §§pop()[§§pop()] = §§pop() + §§pop()[§§pop()];
            §§push(0);
            if(_loc9_)
            {
               §§push(-(-§§pop() - 102) - 1);
            }
            _loc7_ = §§pop();
            while(_loc7_ < _loc4_.length)
            {
               §§push(_loc3_);
               §§push(_loc7_);
               §§push(1);
               if(_loc8_)
               {
                  §§push((-§§pop() * 80 - 54) * 48);
               }
               §§push(§§pop()[§§pop() + §§pop()]);
               §§push(64);
               if(_loc9_)
               {
                  §§push(-§§pop() - 28 + 14);
               }
               if(§§pop() == §§pop())
               {
                  break;
               }
               _loc2_.writeByte(_loc4_[_loc7_]);
               _loc7_++;
            }
            §§push(_loc5_);
            §§push(4);
            if(_loc8_)
            {
               §§push(-(-(§§pop() - 106) + 1 + 1 + 70 - 39));
            }
            _loc5_ = §§pop() + §§pop();
         }
         §§push(_loc2_);
         §§push(0);
         if(_loc9_)
         {
            §§push(-(-(§§pop() * 99 * 15) - 1 + 36 - 1));
         }
         §§pop().position = §§pop();
         return _loc2_;
      }
   }
}
