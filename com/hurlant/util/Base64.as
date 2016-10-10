package com.hurlant.util
{
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.missingdatacallouts.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.view.filterviews.DomainAvailabilityFilterView;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import mx.controls.Alert;
   
   use namespace mx_internal;
   
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
         if(_loc9_)
         {
            §§push(-(-(§§pop() + 1 + 1) - 67 + 1 - 1));
         }
         var _loc6_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(((§§pop() - 1 + 100) * 112 + 94) * 35 - 109 + 1);
         }
         var _loc7_:uint = §§pop();
         var _loc2_:ByteArray = new ByteArray();
         §§push();
         §§push(4);
         if(_loc8_)
         {
            §§push(---(§§pop() * 94) * 117);
         }
         var _loc3_:Array = new §§pop().Array(§§pop());
         §§push();
         §§push(3);
         if(_loc8_)
         {
            §§push((§§pop() + 1 - 82 - 1) * 103);
         }
         var _loc4_:Array = new §§pop().Array(§§pop());
         §§push(0);
         if(_loc8_)
         {
            §§push((-(§§pop() * 7) * 69 + 1) * 42 - 39 + 1);
         }
         var _loc5_:uint = §§pop();
         while(_loc5_ < param1.length)
         {
            §§push(0);
            if(_loc9_)
            {
               §§push(-((-§§pop() - 52 - 1) * 67));
            }
            _loc6_ = §§pop();
            while(true)
            {
               §§push(_loc6_);
               §§push(4);
               if(_loc9_)
               {
                  §§push(--(§§pop() - 1) * 87 + 1);
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
                  if(_loc9_)
                  {
                     §§push((§§pop() - 32) * 101 * 111);
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
               §§push(§§pop() + 118 - 114 - 1 - 92);
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push(§§pop() * 118 - 104 - 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(2);
            if(_loc8_)
            {
               §§push(-(§§pop() * 88 - 34 + 24 + 18));
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(1);
            if(_loc8_)
            {
               §§push(-§§pop() - 1 + 13 + 1 - 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(48);
            if(_loc8_)
            {
               §§push(§§pop() + 12 + 1 + 1);
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc8_)
            {
               §§push(§§pop() * 37 + 1 + 5 - 99);
            }
            §§pop()[§§pop()] = §§pop() + (§§pop() >> §§pop());
            §§push(_loc4_);
            §§push(1);
            if(_loc9_)
            {
               §§push(§§pop() - 67 - 1 - 1 - 112 + 1 - 101);
            }
            §§push(_loc3_);
            §§push(1);
            if(_loc8_)
            {
               §§push((§§pop() * 4 + 1 + 110 - 64) * 3);
            }
            §§push(§§pop()[§§pop()]);
            §§push(15);
            if(_loc8_)
            {
               §§push((-(§§pop() + 1) + 1 + 1) * 38);
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc9_)
            {
               §§push(§§pop() + 53 + 68 + 27 - 1 + 1 + 116 - 1);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(2);
            if(_loc9_)
            {
               §§push(§§pop() + 82 - 1 + 26 + 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(60);
            if(_loc8_)
            {
               §§push((§§pop() + 78 + 66 - 106) * 86 - 80 + 1);
            }
            §§push(§§pop() & §§pop());
            §§push(2);
            if(_loc9_)
            {
               §§push(-§§pop() - 1 + 5);
            }
            §§pop()[§§pop()] = §§pop() + (§§pop() >> §§pop());
            §§push(_loc4_);
            §§push(2);
            if(_loc8_)
            {
               §§push(-(§§pop() * 64 + 1 + 1 - 1 + 1));
            }
            §§push(_loc3_);
            §§push(2);
            if(_loc8_)
            {
               §§push(-(-§§pop() * 88));
            }
            §§push(§§pop()[§§pop()]);
            §§push(3);
            if(_loc9_)
            {
               §§push(---(§§pop() + 56 - 17));
            }
            §§push(§§pop() & §§pop());
            §§push(6);
            if(_loc9_)
            {
               §§push(-(-§§pop() - 77 - 1 + 103 + 1));
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(3);
            if(_loc8_)
            {
               §§push((§§pop() + 1 - 1) * 6);
            }
            §§pop()[§§pop()] = §§pop() + §§pop()[§§pop()];
            §§push(0);
            if(_loc8_)
            {
               §§push(--§§pop() + 45 + 1);
            }
            _loc7_ = §§pop();
            while(_loc7_ < _loc4_.length)
            {
               §§push(_loc3_);
               §§push(_loc7_);
               §§push(1);
               if(_loc9_)
               {
                  §§push(((§§pop() + 1 + 17) * 111 - 80) * 80 - 1 + 1);
               }
               §§push(§§pop()[§§pop() + §§pop()]);
               §§push(64);
               if(_loc9_)
               {
                  §§push(-((§§pop() + 1 + 1) * 25 + 113 + 116));
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
               §§push(--(§§pop() + 1));
            }
            _loc5_ = §§pop() + §§pop();
         }
         §§push(_loc2_);
         §§push(0);
         if(_loc9_)
         {
            §§push(---(-§§pop() + 13));
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
            §§push((§§pop() + 33 + 118 - 74) * 109);
         }
         var _loc5_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() - 1 - 24 + 114 - 59 - 5) * 109 * 39);
         }
         var _loc6_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() * 25 + 1 - 16);
         }
         var _loc7_:uint = §§pop();
         var _loc2_:String = "";
         §§push();
         §§push(4);
         if(_loc8_)
         {
            §§push(-(§§pop() + 84) * 46 + 1);
         }
         var _loc4_:Array = new §§pop().Array(§§pop());
         §§push(param1);
         §§push(0);
         if(_loc9_)
         {
            §§push((-§§pop() - 1) * 13);
         }
         §§pop().position = §§pop();
         while(true)
         {
            §§push(param1.bytesAvailable);
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() + 1 - 25 - 107 - 117 + 106);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            _loc3_ = new Array();
            §§push(0);
            if(_loc8_)
            {
               §§push(§§pop() * 103 + 77 + 1 - 15 - 1 + 1);
            }
            _loc5_ = §§pop();
            while(true)
            {
               §§push(_loc5_);
               §§push(3);
               if(_loc9_)
               {
                  §§push((§§pop() + 94 + 1) * 47);
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
               §§push(§§pop() * 1 + 42 - 76 + 1 + 98 + 101 + 60);
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1 + 37 - 25 - 39) + 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(252);
            if(_loc9_)
            {
               §§push(((§§pop() * 53 + 116) * 21 + 66) * 95 * 86);
            }
            §§push(§§pop() & §§pop());
            §§push(2);
            if(_loc9_)
            {
               §§push(-§§pop() + 1 - 1 - 44 + 1);
            }
            §§pop()[§§pop()] = §§pop() >> §§pop();
            §§push(_loc4_);
            §§push(1);
            if(_loc9_)
            {
               §§push(-(§§pop() - 63) + 1);
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(-§§pop() - 1 + 1 + 96 + 1));
            }
            §§push(§§pop()[§§pop()]);
            §§push(3);
            if(_loc8_)
            {
               §§push(--((§§pop() - 61 - 81) * 113) + 1 - 0);
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc8_)
            {
               §§push(§§pop() * 15 - 15 + 1 - 80 + 1 - 41);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(1);
            if(_loc8_)
            {
               §§push(-(-((§§pop() + 1) * 30) + 118 + 73 + 1));
            }
            §§push(§§pop()[§§pop()]);
            §§push(4);
            if(_loc9_)
            {
               §§push(-(§§pop() * 110 - 1));
            }
            §§pop()[§§pop()] = §§pop() | §§pop() >> §§pop();
            §§push(_loc4_);
            §§push(2);
            if(_loc8_)
            {
               §§push((§§pop() + 0 - 1 + 1) * 45 - 1 - 98 - 80);
            }
            §§push(_loc3_);
            §§push(1);
            if(_loc9_)
            {
               §§push((§§pop() - 1 - 1) * 65);
            }
            §§push(§§pop()[§§pop()]);
            §§push(15);
            if(_loc8_)
            {
               §§push(-§§pop() - 1 + 1 - 101);
            }
            §§push(§§pop() & §§pop());
            §§push(2);
            if(_loc8_)
            {
               §§push(-§§pop() * 32 * 90 * 17);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(2);
            if(_loc8_)
            {
               §§push((§§pop() + 1) * 61 + 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(6);
            if(_loc8_)
            {
               §§push(((§§pop() + 81) * 53 + 1 + 25) * 61 + 1);
            }
            §§pop()[§§pop()] = §§pop() | §§pop() >> §§pop();
            §§push(_loc4_);
            §§push(3);
            if(_loc9_)
            {
               §§push(--(§§pop() * 51) * 85);
            }
            §§push(_loc3_);
            §§push(2);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1) - 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(63);
            if(_loc9_)
            {
               §§push(-(§§pop() * 24 - 1 + 1 + 24));
            }
            §§pop()[§§pop()] = §§pop() & §§pop();
            _loc6_ = _loc3_.length;
            while(true)
            {
               §§push(_loc6_);
               §§push(3);
               if(_loc8_)
               {
                  §§push(-(§§pop() - 1) * 109 * 65 - 1 + 72 + 100);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§push(_loc4_);
               §§push(_loc6_);
               §§push(1);
               if(_loc9_)
               {
                  §§push(((§§pop() + 1 - 74) * 6 + 4 + 1) * 4 - 1);
               }
               §§push(§§pop() + §§pop());
               §§push(64);
               if(_loc8_)
               {
                  §§push(-(-§§pop() - 62 - 42) - 1);
               }
               §§pop()[§§pop()] = §§pop();
               _loc6_++;
            }
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1) * 43 * 30);
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
            §§push(-(§§pop() + 69 - 73 + 107 - 118));
         }
         var _loc6_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(--(§§pop() - 91));
         }
         var _loc7_:uint = §§pop();
         var _loc2_:ByteArray = new ByteArray();
         §§push();
         §§push(4);
         if(_loc8_)
         {
            §§push(-(§§pop() + 16 + 108 - 1));
         }
         var _loc3_:Array = new §§pop().Array(§§pop());
         §§push();
         §§push(3);
         if(_loc9_)
         {
            §§push((§§pop() * 56 + 25) * 61 + 111 + 0);
         }
         var _loc4_:Array = new §§pop().Array(§§pop());
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 31 - 105) * 71 - 1);
         }
         var _loc5_:uint = §§pop();
         while(_loc5_ < param1.length)
         {
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() + 1) + 49);
            }
            _loc6_ = §§pop();
            while(true)
            {
               §§push(_loc6_);
               §§push(4);
               if(_loc8_)
               {
                  §§push(§§pop() * 55 + 1 - 1 + 1 + 1 + 85);
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
            if(_loc9_)
            {
               §§push(-(§§pop() + 1 - 1 - 92));
            }
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push((-((-§§pop() - 26) * 119 + 50) + 10) * 53);
            }
            §§push(§§pop()[§§pop()]);
            §§push(2);
            if(_loc8_)
            {
               §§push(--((-(§§pop() + 0) + 62) * 108));
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(1);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1 - 1 + 1));
            }
            §§push(§§pop()[§§pop()]);
            §§push(48);
            if(_loc9_)
            {
               §§push(§§pop() - 1 - 1 - 1 - 1 - 1);
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc9_)
            {
               §§push(§§pop() + 1 + 1 + 42 + 1 + 1 - 25);
            }
            §§pop()[§§pop()] = §§pop() + (§§pop() >> §§pop());
            §§push(_loc4_);
            §§push(1);
            if(_loc8_)
            {
               §§push(§§pop() * 85 * 55 - 97);
            }
            §§push(_loc3_);
            §§push(1);
            if(_loc9_)
            {
               §§push(§§pop() + 63 - 1 - 118);
            }
            §§push(§§pop()[§§pop()]);
            §§push(15);
            if(_loc9_)
            {
               §§push((--(§§pop() + 1) + 52) * 27 + 1 - 1);
            }
            §§push(§§pop() & §§pop());
            §§push(4);
            if(_loc9_)
            {
               §§push(-(§§pop() * 36) * 37);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(2);
            if(_loc9_)
            {
               §§push((§§pop() - 1 + 35) * 42);
            }
            §§push(§§pop()[§§pop()]);
            §§push(60);
            if(_loc8_)
            {
               §§push(-(§§pop() - 16 + 68) * 86 + 117 + 1);
            }
            §§push(§§pop() & §§pop());
            §§push(2);
            if(_loc8_)
            {
               §§push(-(§§pop() - 119) * 99 * 37 + 1);
            }
            §§pop()[§§pop()] = §§pop() + (§§pop() >> §§pop());
            §§push(_loc4_);
            §§push(2);
            if(_loc9_)
            {
               §§push(-((-(-§§pop() * 101) * 46 - 57) * 44));
            }
            §§push(_loc3_);
            §§push(2);
            if(_loc8_)
            {
               §§push(---(-§§pop() - 1) + 1);
            }
            §§push(§§pop()[§§pop()]);
            §§push(3);
            if(_loc8_)
            {
               §§push(-((--§§pop() + 18) * 112));
            }
            §§push(§§pop() & §§pop());
            §§push(6);
            if(_loc9_)
            {
               §§push(-(§§pop() + 1) - 89 + 21 - 1 + 53);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(3);
            if(_loc9_)
            {
               §§push(-(§§pop() * 36 - 61) - 1 - 28);
            }
            §§pop()[§§pop()] = §§pop() + §§pop()[§§pop()];
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() - 101 + 1 + 73 - 1 - 10 + 7);
            }
            _loc7_ = §§pop();
            while(_loc7_ < _loc4_.length)
            {
               §§push(_loc3_);
               §§push(_loc7_);
               §§push(1);
               if(_loc9_)
               {
                  §§push(-(-§§pop() + 1) + 117);
               }
               §§push(§§pop()[§§pop() + §§pop()]);
               §§push(64);
               if(_loc8_)
               {
                  §§push(-(§§pop() - 64 - 1 - 1 - 38 + 73) + 1);
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
            if(_loc9_)
            {
               §§push(-(§§pop() + 1 - 1) - 1 - 1 + 43);
            }
            _loc5_ = §§pop() + §§pop();
         }
         §§push(_loc2_);
         §§push(0);
         if(_loc9_)
         {
            §§push(-((§§pop() - 1) * 21 - 38 - 53));
         }
         §§pop().position = §§pop();
         return _loc2_;
      }
   }
}
