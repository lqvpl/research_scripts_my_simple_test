package com.dk.license
{
   import mx.effects.Sequence;
   import flash.utils.ByteArray;
   import com.adobe.utils.StringUtil;
   import it.sharify.event.SharifyResponseEvent;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.Logger;
   import flash.utils.setTimeout;
   
   public final class UID
   {
      
      private static const ALPHA_CHAR_CODES:Array = null;
      
      {
         §§push();
         §§push(48);
         if(_loc1_)
         {
            §§push(-(§§pop() + 52 - 47 - 1) + 21 - 49);
         }
         §§push(49);
         §§push(50);
         if(_loc1_)
         {
            §§push(-(§§pop() + 75) + 1 - 1 + 76 + 1 - 44);
         }
         §§push(51);
         §§push(52);
         if(_loc1_)
         {
            §§push((§§pop() + 1 - 36 + 111 + 1) * 72 + 44);
         }
         §§push(53);
         §§push(54);
         if(_loc2_)
         {
            §§push(--(-(§§pop() - 1 + 21) * 78 + 53));
         }
         §§push(55);
         §§push(56);
         if(_loc2_)
         {
            §§push(-((--§§pop() - 1) * 1 - 1));
         }
         §§push(57);
         §§push(65);
         if(_loc2_)
         {
            §§push(-(§§pop() - 51 + 47 + 1));
         }
         §§push(66);
         §§push(67);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 1 - 58) * 68 + 55 - 1));
         }
         §§push(68);
         §§push(69);
         if(_loc1_)
         {
            §§push((§§pop() + 46 + 43 - 1) * 86 * 50 - 35);
         }
      }
      
      public function UID()
      {
         super();
      }
      
      public static function createUID() : String
      {
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 20 + 1 + 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() * 44 + 76 + 19);
         }
         var _loc4_:* = §§pop();
         §§push();
         §§push(36);
         if(_loc9_)
         {
            §§push(-§§pop() + 1 - 1);
         }
         var _loc1_:Array = new §§pop().Array(§§pop());
         §§push(0);
         if(_loc9_)
         {
            §§push(-§§pop() + 1 - 1 - 1 - 98);
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() - 115 + 1 + 1 + 1);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(8);
            if(_loc9_)
            {
               §§push(-((§§pop() - 94 - 1) * 106 + 46) - 0);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            §§push(_loc1_);
            §§push(_loc7_);
            §§push(ALPHA_CHAR_CODES);
            §§push(Math);
            §§push(Math.random());
            §§push(16);
            if(_loc9_)
            {
               §§push(-(§§pop() - 1) - 107 + 12 - 1 - 99 - 33);
            }
            §§pop()[§§pop()] = §§pop()[§§pop().floor(§§pop() * §§pop())];
            _loc3_++;
         }
         §§push(0);
         if(_loc9_)
         {
            §§push(-(-(§§pop() - 44) + 1) + 1 + 1 - 1);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(3);
            if(_loc10_)
            {
               §§push((§§pop() + 1) * 6 * 98);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            §§push(_loc1_);
            §§push(_loc7_);
            §§push(45);
            if(_loc10_)
            {
               §§push(--§§pop() + 40 - 1 + 1);
            }
            §§pop()[§§pop()] = §§pop();
            §§push(0);
            if(_loc10_)
            {
               §§push(-((§§pop() - 83 + 42 - 1) * 6 * 59 * 79));
            }
            _loc4_ = §§pop();
            while(true)
            {
               §§push(_loc4_);
               §§push(4);
               if(_loc10_)
               {
                  §§push(((§§pop() + 1) * 89 - 1 - 1 + 1 - 1) * 58);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§push(_loc1_);
               §§push(_loc8_);
               §§push(ALPHA_CHAR_CODES);
               §§push(Math);
               §§push(Math.random());
               §§push(16);
               if(_loc9_)
               {
                  §§push(-(§§pop() + 1 + 1) + 14 - 97 + 28 - 1);
               }
               §§pop()[§§pop()] = §§pop()[§§pop().floor(§§pop() * §§pop())];
               _loc4_++;
            }
            _loc3_++;
         }
         §§push(_loc1_);
         §§push(_loc7_);
         §§push(45);
         if(_loc10_)
         {
            §§push((§§pop() - 108 - 67 - 1) * 30 - 1);
         }
         §§pop()[§§pop()] = §§pop();
         var _loc5_:Number = new Date().getTime();
         §§push("0000000");
         §§push(_loc5_);
         §§push(16);
         if(_loc9_)
         {
            §§push(-(§§pop() - 16) - 23 - 1);
         }
         §§push(§§pop() + §§pop().toString(§§pop()).toUpperCase());
         §§push(-8);
         if(_loc10_)
         {
            §§push((-(§§pop() + 107) * 68 - 54) * 3);
         }
         var _loc6_:String = §§pop().substr(§§pop());
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() + 1 - 106 + 89);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(8);
            if(_loc10_)
            {
               §§push(§§pop() * 64 - 1 + 83);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            _loc1_[_loc2_++] = _loc6_.charCodeAt(_loc3_);
            _loc3_++;
         }
         §§push(0);
         if(_loc9_)
         {
            §§push(--(§§pop() + 1) + 43);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(4);
            if(_loc9_)
            {
               §§push(((§§pop() - 99) * 32 * 24 + 88) * 85 * 39 - 96);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            §§push(_loc1_);
            §§push(_loc8_);
            §§push(ALPHA_CHAR_CODES);
            §§push(Math);
            §§push(Math.random());
            §§push(16);
            if(_loc9_)
            {
               §§push(--§§pop() - 67);
            }
            §§pop()[§§pop()] = §§pop()[§§pop().floor(§§pop() * §§pop())];
            _loc3_++;
         }
         return String.fromCharCode.apply(null,_loc1_);
      }
      
      public static function fromByteArray(param1:ByteArray) : String
      {
         var _loc2_:Array = null;
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() - 81 + 8 - 1) + 1);
         }
         var _loc3_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() + 11 + 1 - 1 + 1) - 1);
         }
         var _loc4_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(((§§pop() + 1) * 9 - 1) * 100);
         }
         var _loc5_:* = §§pop();
         if(param1 != null && §§pop() >= §§pop() && §§pop() >= §§pop())
         {
            §§push();
            §§push(36);
            if(_loc8_)
            {
               §§push(-(§§pop() * 90 - 101 - 1) - 81 + 1 + 1);
            }
            _loc2_ = new §§pop().Array(§§pop());
            §§push(0);
            if(_loc8_)
            {
               §§push(-(-(§§pop() + 2) + 1 - 1 - 1));
            }
            _loc3_ = §§pop();
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() - 1 - 69) + 1 + 1 - 1 + 86);
            }
            _loc4_ = §§pop();
            while(true)
            {
               §§push(_loc4_);
               §§push(16);
               if(_loc9_)
               {
                  §§push((§§pop() + 56 + 12 + 1) * 28);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§push(_loc4_);
               §§push(4);
               if(_loc9_)
               {
                  §§push(§§pop() * 49 - 11 - 93 + 1 + 40 + 1 + 58);
               }
               if(§§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop())
               {
                  §§push(_loc2_);
                  §§push(_loc6_);
                  §§push(45);
                  if(_loc9_)
                  {
                     §§push(-((§§pop() * 52 + 39) * 12 - 1) * 39);
                  }
                  §§pop()[§§pop()] = §§pop();
               }
               _loc5_ = int(param1.readByte());
               §§push(_loc2_);
               §§push(_loc6_);
               §§push(ALPHA_CHAR_CODES);
               §§push(_loc5_);
               §§push(240);
               if(_loc8_)
               {
                  §§push(-((§§pop() * 103 - 66 + 44) * 106 - 8 + 1));
               }
               §§push(§§pop() & §§pop());
               §§push(4);
               if(_loc8_)
               {
                  §§push(§§pop() - 1 + 101 + 45 + 1 + 1 - 1);
               }
               §§pop()[§§pop()] = §§pop()[§§pop() >>> §§pop()];
               §§push(_loc2_);
               §§push(_loc7_);
               §§push(ALPHA_CHAR_CODES);
               §§push(_loc5_);
               §§push(15);
               if(_loc9_)
               {
                  §§push((§§pop() + 1 + 97) * 106 + 79 - 1 - 28);
               }
               §§pop()[§§pop()] = §§pop()[§§pop() & §§pop()];
               _loc4_++;
            }
            return String.fromCharCode.apply(null,_loc2_);
         }
         return null;
      }
      
      public static function isUID(param1:String) : Boolean
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 62 + 1 - 1 + 1 - 1 + 57);
         }
         var _loc2_:uint = §§pop();
         var _loc3_:Number = NaN;
         if(param1 != null && §§pop() == §§pop())
         {
            §§push(0);
            if(_loc5_)
            {
               §§push((§§pop() + 1 - 36 - 1 + 1) * 97 - 36 - 1);
            }
            _loc2_ = §§pop();
            while(true)
            {
               §§push(_loc2_);
               §§push(36);
               if(_loc4_)
               {
                  §§push(((§§pop() - 1) * 42 * 38 - 109 + 92) * 11 * 12);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               _loc3_ = param1.charCodeAt(_loc2_);
               §§push(_loc2_);
               §§push(8);
               if(_loc5_)
               {
                  §§push(-(§§pop() - 1) + 117);
               }
               if(§§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop())
               {
                  §§push(_loc3_);
                  §§push(45);
                  if(_loc5_)
                  {
                     §§push((§§pop() - 1 + 38) * 41 + 1);
                  }
                  if(§§pop() != §§pop())
                  {
                     return false;
                  }
               }
               else
               {
                  §§push(_loc3_);
                  §§push(48);
                  if(_loc4_)
                  {
                     §§push(-(-§§pop() - 1) - 1 + 82);
                  }
                  if(§§pop() < §§pop() || §§pop() > §§pop() || §§pop() > §§pop() && §§pop() < §§pop())
                  {
                     return false;
                  }
               }
               _loc2_++;
            }
            return true;
         }
         return false;
      }
      
      public static function toByteArray(param1:String) : ByteArray
      {
         var _loc2_:ByteArray = null;
         §§push(0);
         if(_loc7_)
         {
            §§push(--(§§pop() - 1));
         }
         var _loc3_:uint = §§pop();
         var _loc4_:String = null;
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 1 + 1) * 96 * 23 - 1);
         }
         var _loc5_:uint = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() - 1) - 20);
         }
         var _loc6_:uint = §§pop();
         if(isUID(param1))
         {
            _loc2_ = new ByteArray();
            §§push(0);
            if(_loc7_)
            {
               §§push(--(-((§§pop() - 92) * 12) - 16) + 29);
            }
            _loc3_ = §§pop();
            while(_loc3_ < param1.length)
            {
               _loc4_ = param1.charAt(_loc3_);
               if(_loc4_ != "-")
               {
                  _loc5_ = getDigit(_loc4_);
                  _loc3_++;
                  _loc6_ = getDigit(param1.charAt(_loc3_));
                  §§push(_loc2_);
                  §§push(_loc5_);
                  §§push(4);
                  if(_loc8_)
                  {
                     §§push(-(§§pop() + 1 - 1) * 73 - 1 + 1);
                  }
                  §§push(§§pop() << §§pop() | _loc6_);
                  §§push(255);
                  if(_loc8_)
                  {
                     §§push(§§pop() + 1 - 1 + 61 + 119);
                  }
                  §§pop().writeByte(§§pop() & §§pop());
               }
               _loc3_++;
            }
            §§push(_loc2_);
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() - 1) * 30 - 1 + 59 + 1);
            }
            §§pop().position = §§pop();
            return _loc2_;
         }
         return null;
      }
      
      private static function getDigit(param1:String) : uint
      {
         if("A" === _loc2_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push((§§pop() - 22) * 88 + 52);
            }
         }
         else if("a" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(-(§§pop() - 78 + 1) * 18 + 28);
            }
         }
         else if("B" === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(---(-§§pop() - 1 + 1) - 98);
            }
         }
         else if("b" === _loc2_)
         {
            §§push(3);
            if(_loc3_)
            {
               §§push(§§pop() + 1 + 82 - 1 - 2 + 67 - 57);
            }
         }
         else if("C" === _loc2_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push((-§§pop() + 1 - 1 - 18 - 54) * 0);
            }
         }
         else if("c" === _loc2_)
         {
            §§push(5);
            if(_loc3_)
            {
               §§push(-(§§pop() - 40) + 77 - 1);
            }
         }
         else if("D" === _loc2_)
         {
            §§push(6);
            if(_loc4_)
            {
               §§push(-(§§pop() - 110 + 6 + 1) + 8);
            }
         }
         else if("d" === _loc2_)
         {
            §§push(7);
            if(_loc3_)
            {
               §§push(-(-§§pop() + 89 - 21 + 104 - 75) + 100);
            }
         }
         else if("E" === _loc2_)
         {
            §§push(8);
            if(_loc3_)
            {
               §§push(§§pop() + 1 + 1 + 1 + 1 + 13 - 50 + 1);
            }
         }
         else if("e" === _loc2_)
         {
            §§push(9);
            if(_loc4_)
            {
               §§push((-(§§pop() * 34) * 26 + 1 - 1 - 1) * 90);
            }
         }
         else if("F" === _loc2_)
         {
            §§push(10);
            if(_loc4_)
            {
               §§push(-(-§§pop() + 16 + 70 + 17 + 1));
            }
         }
         else if("f" === _loc2_)
         {
            §§push(11);
            if(_loc3_)
            {
               §§push(-(§§pop() * 57 - 1) - 1 + 1 - 1);
            }
         }
         else
         {
            §§push(12);
            if(_loc3_)
            {
               §§push(-(§§pop() - 1) - 32 + 47 + 1 + 66);
            }
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               §§push(10);
               if(_loc4_)
               {
                  return ((-§§pop() + 1) * 60 - 33) * 112 * 79 - 105;
               }
            case 2:
            case 3:
               §§push(11);
               if(_loc4_)
               {
                  return §§pop() - 1 + 85 + 13 + 57 + 1;
               }
            case 4:
            case 5:
               §§push(12);
               if(_loc3_)
               {
                  return (-(§§pop() - 1) - 61 + 8) * 27 * 26;
               }
            case 6:
            case 7:
               §§push(13);
               if(_loc4_)
               {
                  return -(§§pop() - 14) - 18 - 1;
               }
            case 8:
            case 9:
               §§push(14);
               if(_loc3_)
               {
                  return ---(-(§§pop() + 76) + 1) - 92;
               }
            case 10:
            case 11:
               §§push(15);
               if(_loc4_)
               {
                  return (§§pop() + 1) * 67 * 4;
               }
            default:
               return new uint(param1);
         }
      }
   }
}
