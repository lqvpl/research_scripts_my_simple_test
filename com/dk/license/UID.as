package com.dk.license
{
   import spark.components.gridClasses.GridColumn;
   import mx.binding.BindingManager;
   import flash.utils.ByteArray;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import mx.controls.HTML;
   
   public final class UID
   {
      
      private static const ALPHA_CHAR_CODES:Array = null;
      
      {
         §§push();
         §§push(48);
         if(_loc2_)
         {
            §§push(--§§pop() * 88 + 56 + 55);
         }
         §§push(49);
         §§push(50);
         if(_loc1_)
         {
            §§push(-((§§pop() * 9 - 1) * 32 - 1) + 94);
         }
         §§push(51);
         §§push(52);
         if(_loc2_)
         {
            §§push((§§pop() + 89 - 1) * 11);
         }
         §§push(53);
         §§push(54);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 86 - 44) * 16 - 1 + 42 + 1);
         }
         §§push(55);
         §§push(56);
         if(_loc1_)
         {
            §§push((§§pop() - 39 + 24 - 103) * 13 - 1);
         }
         §§push(57);
         §§push(65);
         if(_loc2_)
         {
            §§push(-((§§pop() - 29) * 103 - 1 + 87) * 3);
         }
         §§push(66);
         §§push(67);
         if(_loc1_)
         {
            §§push(§§pop() + 87 - 76 - 1);
         }
         §§push(68);
         §§push(69);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 1 - 1 - 1 + 1 + 63);
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
            §§push(--((§§pop() + 1) * 85));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push((-(§§pop() + 96 - 1) - 1) * 17 + 28);
         }
         var _loc4_:* = §§pop();
         §§push();
         §§push(36);
         if(_loc9_)
         {
            §§push(-(§§pop() - 1) - 0 - 1);
         }
         var _loc1_:Array = new §§pop().Array(§§pop());
         §§push(0);
         if(_loc9_)
         {
            §§push(-((-§§pop() + 98 + 1) * 58) + 57 - 1);
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push(-(-(§§pop() + 1) * 19 - 1 - 75));
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(8);
            if(_loc9_)
            {
               §§push(§§pop() - 64 - 48 - 1);
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
               §§push((§§pop() + 1 - 1 + 1 - 54) * 75 - 1 + 71);
            }
            §§pop()[§§pop()] = §§pop()[§§pop().floor(§§pop() * §§pop())];
            _loc3_++;
         }
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() + 28) + 1 - 1);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(3);
            if(_loc9_)
            {
               §§push(((§§pop() + 1) * 85 - 1 + 1 - 1) * 59);
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
               §§push((§§pop() - 1) * 112 - 11 - 1 + 19);
            }
            §§pop()[§§pop()] = §§pop();
            §§push(0);
            if(_loc9_)
            {
               §§push(-(-§§pop() - 37) + 1 - 1 - 1 + 86);
            }
            _loc4_ = §§pop();
            while(true)
            {
               §§push(_loc4_);
               §§push(4);
               if(_loc9_)
               {
                  §§push(-(§§pop() - 65 - 1 + 5 - 1 - 52));
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
                  §§push(§§pop() * 50 * 60 + 35 + 1 - 1 - 1);
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
            §§push(§§pop() + 81 - 1 - 3);
         }
         §§pop()[§§pop()] = §§pop();
         var _loc5_:Number = new Date().getTime();
         §§push("0000000");
         §§push(_loc5_);
         §§push(16);
         if(_loc10_)
         {
            §§push(§§pop() + 1 + 88 + 44 + 1 + 1);
         }
         §§push(§§pop() + §§pop().toString(§§pop()).toUpperCase());
         §§push(-8);
         if(_loc10_)
         {
            §§push((§§pop() * 34 - 1) * 72 - 1);
         }
         var _loc6_:String = §§pop().substr(§§pop());
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() - 1) - 1 - 1 - 101 + 1 - 82);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(8);
            if(_loc9_)
            {
               §§push((§§pop() + 50 + 1 + 1 - 1) * 21 - 71);
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
            §§push(§§pop() - 48 + 1 + 1);
         }
         _loc3_ = §§pop();
         while(true)
         {
            §§push(_loc3_);
            §§push(4);
            if(_loc9_)
            {
               §§push(-(-(§§pop() + 111 + 13 - 1) + 45) - 1);
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
               §§push(-(-(-(§§pop() * 5) * 38) - 114) - 25);
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
            §§push(-(§§pop() - 65 - 1));
         }
         var _loc3_:uint = §§pop();
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 41 - 110) * 68);
         }
         var _loc4_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 1 - 101 + 1));
         }
         var _loc5_:* = §§pop();
         if(param1 != null && §§pop() >= §§pop() && §§pop() >= §§pop())
         {
            §§push();
            §§push(36);
            if(_loc8_)
            {
               §§push(§§pop() * 53 - 18 - 85);
            }
            _loc2_ = new §§pop().Array(§§pop());
            §§push(0);
            if(_loc8_)
            {
               §§push(-((§§pop() - 1) * 83 - 62));
            }
            _loc3_ = §§pop();
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() - 1 + 1 + 1 - 1);
            }
            _loc4_ = §§pop();
            while(true)
            {
               §§push(_loc4_);
               §§push(16);
               if(_loc8_)
               {
                  §§push(((§§pop() + 46) * 41 + 109 - 113) * 94 * 51 - 84);
               }
               if(§§pop() >= §§pop())
               {
                  break;
               }
               §§push(_loc4_);
               §§push(4);
               if(_loc8_)
               {
                  §§push(--(-(§§pop() - 75) * 32));
               }
               if(§§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop())
               {
                  §§push(_loc2_);
                  §§push(_loc6_);
                  §§push(45);
                  if(_loc8_)
                  {
                     §§push((§§pop() - 1 + 1) * 107 * 14 + 1);
                  }
                  §§pop()[§§pop()] = §§pop();
               }
               _loc5_ = int(param1.readByte());
               §§push(_loc2_);
               §§push(_loc6_);
               §§push(ALPHA_CHAR_CODES);
               §§push(_loc5_);
               §§push(240);
               if(_loc9_)
               {
                  §§push((§§pop() - 1 + 1 + 96 + 1) * 15);
               }
               §§push(§§pop() & §§pop());
               §§push(4);
               if(_loc8_)
               {
                  §§push(§§pop() * 39 + 1 - 10 + 1 - 16);
               }
               §§pop()[§§pop()] = §§pop()[§§pop() >>> §§pop()];
               §§push(_loc2_);
               §§push(_loc7_);
               §§push(ALPHA_CHAR_CODES);
               §§push(_loc5_);
               §§push(15);
               if(_loc8_)
               {
                  §§push((-(§§pop() - 98) + 1 - 108 - 1 + 1) * 46);
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
            §§push((§§pop() - 1 + 96) * 2 + 1 + 1 - 116);
         }
         var _loc2_:uint = §§pop();
         var _loc3_:Number = NaN;
         if(param1 != null && §§pop() == §§pop())
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(-§§pop() * 61 - 56);
            }
            _loc2_ = §§pop();
            while(true)
            {
               §§push(_loc2_);
               §§push(36);
               if(_loc5_)
               {
                  §§push(-§§pop() - 34 - 81 - 1);
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
                  §§push(-§§pop() - 1 - 71);
               }
               if(§§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop() || §§pop() == §§pop())
               {
                  §§push(_loc3_);
                  §§push(45);
                  if(_loc4_)
                  {
                     §§push(---(§§pop() + 1 + 55 - 100) + 117);
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
                     §§push(((-§§pop() + 107) * 81 + 1 + 75 - 1) * 19);
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
         if(_loc8_)
         {
            §§push(-(§§pop() - 1 + 30));
         }
         var _loc3_:uint = §§pop();
         var _loc4_:String = null;
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 91 - 117 - 1 + 1 + 1));
         }
         var _loc5_:uint = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(-§§pop() - 1 + 1 + 1 - 3);
         }
         var _loc6_:uint = §§pop();
         if(isUID(param1))
         {
            _loc2_ = new ByteArray();
            §§push(0);
            if(_loc8_)
            {
               §§push(§§pop() + 1 - 59 + 1 - 1);
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
                  if(_loc7_)
                  {
                     §§push(-(§§pop() * 56 * 58));
                  }
                  §§push(§§pop() << §§pop() | _loc6_);
                  §§push(255);
                  if(_loc7_)
                  {
                     §§push(-(§§pop() - 95 - 1 - 30 + 46 - 1 + 1));
                  }
                  §§pop().writeByte(§§pop() & §§pop());
               }
               _loc3_++;
            }
            §§push(_loc2_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() - 1 - 71 - 30) * 65);
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
               §§push(§§pop() - 27 - 1 + 1 - 1);
            }
         }
         else if("a" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(--(--§§pop() * 13) + 1 - 1);
            }
         }
         else if("B" === _loc2_)
         {
            §§push(2);
            if(_loc3_)
            {
               §§push(---(§§pop() - 73) + 114);
            }
         }
         else if("b" === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push((§§pop() - 38) * 61 + 17);
            }
         }
         else if("C" === _loc2_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push((§§pop() * 80 + 1 + 1 + 104 + 88) * 119);
            }
         }
         else if("c" === _loc2_)
         {
            §§push(5);
            if(_loc3_)
            {
               §§push(-((§§pop() * 90 - 1) * 22 - 67) + 1);
            }
         }
         else if("D" === _loc2_)
         {
            §§push(6);
            if(_loc4_)
            {
               §§push((§§pop() + 46 + 1 + 1 - 1 + 1) * 43);
            }
         }
         else if("d" === _loc2_)
         {
            §§push(7);
            if(_loc3_)
            {
               §§push(-§§pop() + 1 - 99 + 79 + 12);
            }
         }
         else if("E" === _loc2_)
         {
            §§push(8);
            if(_loc3_)
            {
               §§push((-(§§pop() - 48) + 1 + 1 + 1) * 8 + 1);
            }
         }
         else if("e" === _loc2_)
         {
            §§push(9);
            if(_loc3_)
            {
               §§push(-(-(§§pop() + 1) + 1 - 47 - 1) - 57);
            }
         }
         else if("F" === _loc2_)
         {
            §§push(10);
            if(_loc3_)
            {
               §§push(§§pop() + 111 + 95 - 1 - 1 + 1);
            }
         }
         else if("f" === _loc2_)
         {
            §§push(11);
            if(_loc4_)
            {
               §§push(((§§pop() + 1 - 115 - 23) * 46 + 18 + 1) * 57);
            }
         }
         else
         {
            §§push(12);
            if(_loc4_)
            {
               §§push(--(§§pop() - 1 - 99 - 1 + 1) - 1);
            }
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               §§push(10);
               if(_loc4_)
               {
                  return §§pop() * 64 - 104 + 1 - 1;
               }
            case 2:
            case 3:
               §§push(11);
               if(_loc3_)
               {
                  return §§pop() + 1 + 1 + 72 - 1 + 1 + 117;
               }
            case 4:
            case 5:
               §§push(12);
               if(_loc4_)
               {
                  return -((-§§pop() + 5) * 45 + 65) - 111 - 108;
               }
            case 6:
            case 7:
               §§push(13);
               if(_loc3_)
               {
                  return -((§§pop() - 6 - 1) * 56 - 1 - 1 + 1);
               }
            case 8:
            case 9:
               §§push(14);
               if(_loc4_)
               {
                  return --(§§pop() * 111 + 39) - 22 - 7 + 1;
               }
            case 10:
            case 11:
               §§push(15);
               if(_loc3_)
               {
                  return §§pop() + 115 - 3 - 20 - 1 + 1;
               }
            default:
               return new uint(param1);
         }
      }
   }
}
