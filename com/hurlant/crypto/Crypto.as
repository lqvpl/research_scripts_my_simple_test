package com.hurlant.crypto
{
   import com.hurlant.crypto.hash.MAC;
   import com.hurlant.crypto.symmetric.ICipher;
   import flash.utils.ByteArray;
   import com.hurlant.crypto.symmetric.IPad;
   import com.hurlant.crypto.symmetric.IVMode;
   import com.hurlant.crypto.symmetric.SimpleIVMode;
   import com.hurlant.crypto.symmetric.AESKey;
   import com.hurlant.crypto.symmetric.BlowFishKey;
   import com.hurlant.crypto.symmetric.DESKey;
   import com.hurlant.crypto.symmetric.TripleDESKey;
   import com.hurlant.crypto.symmetric.XTeaKey;
   import com.hurlant.crypto.prng.ARC4;
   import com.hurlant.crypto.hash.IHash;
   import com.hurlant.crypto.hash.MD2;
   import com.hurlant.crypto.hash.MD5;
   import com.hurlant.crypto.hash.SHA1;
   import com.hurlant.crypto.hash.SHA224;
   import com.hurlant.crypto.hash.SHA256;
   import com.hurlant.crypto.rsa.RSAKey;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import com.enfluid.ltp.view.containers.CheckBoxCollapsiblePanel;
   import com.enfluid.ltp.model.DataModel;
   import com.hurlant.crypto.symmetric.IMode;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import spark.components.ComboBox;
   import com.enfluid.ltp.view.skins.FlatUIComponents.Combobox.GeneralComboboxSkin;
   import com.hurlant.crypto.symmetric.ECBMode;
   import com.hurlant.crypto.symmetric.CFBMode;
   import com.hurlant.crypto.symmetric.CFB8Mode;
   import com.hurlant.crypto.symmetric.OFBMode;
   import com.hurlant.crypto.symmetric.CTRMode;
   import com.hurlant.crypto.symmetric.CBCMode;
   import com.hurlant.crypto.symmetric.NullPad;
   import com.hurlant.crypto.symmetric.PKCS5;
   import com.hurlant.crypto.hash.HMAC;
   import com.hurlant.util.Base64;
   
   public final class Crypto
   {
       
      
      private var b64:Base64;
      
      public function Crypto()
      {
         super();
      }
      
      public static function getMAC(param1:String) : MAC
      {
         var _loc2_:Array = param1.split("-");
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 89 + 22 + 22 + 1 - 82);
         }
         if(§§pop()[§§pop()] == "mac")
         {
            _loc2_.shift();
         }
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() + 28 + 1 - 1 - 27) * 89 + 114);
         }
         var _loc3_:uint = §§pop();
         §§push(_loc2_.length);
         §§push(1);
         if(_loc4_)
         {
            §§push(§§pop() - 15 + 1 - 95 + 37);
         }
         if(§§pop() > §§pop())
         {
            §§push();
            §§push(_loc2_);
            §§push(1);
            if(_loc5_)
            {
               §§push(-(§§pop() * 115) + 1 + 1);
            }
            _loc3_ = §§pop().parseInt(§§pop()[§§pop()]);
         }
         §§push();
         §§push();
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() + 46) * 21 - 1 - 83);
         }
         return new §§pop().MAC(§§pop().getHash(§§pop()[§§pop()]),_loc3_);
      }
      
      public static function getCipher(param1:String, param2:ByteArray, param3:IPad = null) : ICipher
      {
         var _loc5_:ICipher = null;
         var _loc4_:Array = param1.split("-");
         §§push(_loc4_);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() - 1 - 60 - 31);
         }
         if("simple" === _loc6_)
         {
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() - 84 - 11 + 1 + 1 - 1) * 38);
            }
         }
         else if("aes" === _loc6_)
         {
            §§push(1);
            if(_loc8_)
            {
               §§push(§§pop() - 1 + 1 + 1);
            }
         }
         else if("aes128" === _loc6_)
         {
            §§push(2);
            if(_loc7_)
            {
               §§push((-(-§§pop() - 1) + 1) * 23);
            }
         }
         else if("aes192" === _loc6_)
         {
            §§push(3);
            if(_loc7_)
            {
               §§push(-(§§pop() - 4) + 1 + 1);
            }
         }
         else if("aes256" === _loc6_)
         {
            §§push(4);
            if(_loc7_)
            {
               §§push(-§§pop() * 77 * 36 + 75);
            }
         }
         else if("bf" === _loc6_)
         {
            §§push(5);
            if(_loc8_)
            {
               §§push(-(§§pop() * 13 - 37 - 1) * 103 - 0);
            }
         }
         else if("blowfish" === _loc6_)
         {
            §§push(6);
            if(_loc8_)
            {
               §§push(§§pop() * 0 * 20 + 1 + 44 + 1 + 84);
            }
         }
         else if("des" === _loc6_)
         {
            §§push(7);
            if(_loc7_)
            {
               §§push((§§pop() - 1 - 1 - 1 - 1 + 1 + 1) * 2);
            }
         }
         else if("3des" === _loc6_)
         {
            §§push(8);
            if(_loc7_)
            {
               §§push(-(§§pop() + 1 - 1 + 1 - 66) * 80 + 35);
            }
         }
         else if("des3" === _loc6_)
         {
            §§push(9);
            if(_loc8_)
            {
               §§push((§§pop() * 80 * 82 - 1) * 72 * 91 + 1 - 10);
            }
         }
         else if("xtea" === _loc6_)
         {
            §§push(10);
            if(_loc7_)
            {
               §§push(§§pop() * 45 + 1 - 81);
            }
         }
         else if("rc4" === _loc6_)
         {
            §§push(11);
            if(_loc7_)
            {
               §§push(§§pop() + 114 - 87 - 1 + 1 + 3 - 18);
            }
         }
         else
         {
            §§push(12);
            if(_loc7_)
            {
               §§push(§§pop() - 51 - 1 - 1 - 1 - 53 - 1 + 26);
            }
         }
         switch(§§pop())
         {
            case 0:
               _loc4_.shift();
               param1 = _loc4_.join("-");
               _loc5_ = getCipher(param1,param2,param3);
               if(_loc5_ is IVMode)
               {
                  return new SimpleIVMode(_loc5_ as IVMode);
               }
               return _loc5_;
            case 1:
            case 2:
            case 3:
            case 4:
               _loc4_.shift();
               §§push(param2.length);
               §§push(8);
               if(_loc8_)
               {
                  §§push((§§pop() - 1 - 93 + 1) * 54);
               }
               §§push(§§pop() * §§pop());
               §§push(_loc4_);
               §§push(0);
               if(_loc8_)
               {
                  §§push(-((§§pop() + 43) * 15) * 44);
               }
               if(§§pop() == §§pop()[§§pop()])
               {
                  _loc4_.shift();
               }
               §§push();
               §§push(_loc4_);
               §§push(0);
               if(_loc8_)
               {
                  §§push(§§pop() * 86 * 4 * 41 - 69 + 1);
               }
               return §§pop().getMode(§§pop()[§§pop()],new AESKey(param2),param3);
            case 5:
            case 6:
               _loc4_.shift();
               §§push();
               §§push(_loc4_);
               §§push(0);
               if(_loc8_)
               {
                  §§push((§§pop() + 5 + 1) * 107 - 14);
               }
               return §§pop().getMode(§§pop()[§§pop()],new BlowFishKey(param2),param3);
            case 7:
               _loc4_.shift();
               §§push(_loc4_);
               §§push(0);
               if(_loc7_)
               {
                  §§push(-(§§pop() + 31 + 81) - 1 + 1 - 1 + 39);
               }
               if(§§pop()[§§pop()] != "ede" && §§pop()[§§pop()] != "ede3")
               {
                  §§push();
                  §§push(_loc4_);
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push((§§pop() - 69) * 81 + 17);
                  }
                  return §§pop().getMode(§§pop()[§§pop()],new DESKey(param2),param3);
               }
               §§push(_loc4_.length);
               §§push(1);
               if(_loc7_)
               {
                  §§push(-((§§pop() - 48) * 71 * 21));
               }
               if(§§pop() == §§pop())
               {
                  _loc4_.push("ecb");
               }
            case 8:
            case 9:
               _loc4_.shift();
               §§push();
               §§push(_loc4_);
               §§push(0);
               if(_loc8_)
               {
                  §§push(§§pop() + 1 - 1 - 27 + 46 + 1);
               }
               return §§pop().getMode(§§pop()[§§pop()],new TripleDESKey(param2),param3);
            case 10:
               _loc4_.shift();
               §§push();
               §§push(_loc4_);
               §§push(0);
               if(_loc8_)
               {
                  §§push(-§§pop() - 105 - 1);
               }
               return §§pop().getMode(§§pop()[§§pop()],new XTeaKey(param2),param3);
            case 11:
               _loc4_.shift();
               return new ARC4(param2);
            default:
               return null;
         }
      }
      
      public static function getHash(param1:String) : IHash
      {
         if("md2" === _loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(§§pop() - 22 - 1 + 85 - 37 - 50);
            }
         }
         else if("md5" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push((§§pop() * 81 - 100) * 2 - 1 - 1);
            }
         }
         else if("sha" === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(-(§§pop() * 38 * 72) + 1);
            }
         }
         else if("sha1" === _loc2_)
         {
            §§push(3);
            if(_loc3_)
            {
               §§push(-(§§pop() - 1) * 85 - 36 + 1);
            }
         }
         else if("sha224" === _loc2_)
         {
            §§push(4);
            if(_loc4_)
            {
               §§push(§§pop() * 86 - 1 + 47);
            }
         }
         else if("sha256" === _loc2_)
         {
            §§push(5);
            if(_loc3_)
            {
               §§push(-(§§pop() * 112 + 59 - 1) - 3 - 1);
            }
         }
         else
         {
            §§push(6);
            if(_loc3_)
            {
               §§push(§§pop() - 114 + 1 - 1 + 49 - 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               return new MD2();
            case 1:
               return new MD5();
            case 2:
            case 3:
               return new SHA1();
            case 4:
               return new SHA224();
            case 5:
               return new SHA256();
            default:
               return null;
         }
      }
      
      public static function getRSA(param1:String, param2:String) : RSAKey
      {
         return RSAKey.parsePublicKey(param2,param1);
      }
      
      private static function getMode(param1:String, param2:ISymmetricKey, param3:IPad = null) : IMode
      {
         if("ecb" === _loc4_)
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() * 87 * 24 + 1);
            }
         }
         else if("cfb" === _loc4_)
         {
            §§push(1);
            if(_loc6_)
            {
               §§push(-((§§pop() - 46 + 67) * 101 * 76) - 1);
            }
         }
         else if("cfb8" === _loc4_)
         {
            §§push(2);
            if(_loc6_)
            {
               §§push((§§pop() - 1 + 79) * 89 + 100);
            }
         }
         else if("ofb" === _loc4_)
         {
            §§push(3);
            if(_loc5_)
            {
               §§push(§§pop() + 80 + 1 + 76);
            }
         }
         else if("ctr" === _loc4_)
         {
            §§push(4);
            if(_loc6_)
            {
               §§push((§§pop() * 30 + 1 - 1) * 23);
            }
         }
         else if("cbc" === _loc4_)
         {
            §§push(5);
            if(_loc6_)
            {
               §§push((-(§§pop() * 42) + 45 - 1) * 73 * 68 * 43);
            }
         }
         else
         {
            §§push(6);
            if(_loc5_)
            {
               §§push(§§pop() - 1 + 1 + 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               return new ECBMode(param2,param3);
            case 1:
               return new CFBMode(param2,param3);
            case 2:
               return new CFB8Mode(param2,param3);
            case 3:
               return new OFBMode(param2,param3);
            case 4:
               return new CTRMode(param2,param3);
            case 5:
            default:
               return new CBCMode(param2,param3);
         }
      }
      
      public static function getKeySize(param1:String) : uint
      {
         var _loc2_:Array = param1.split("-");
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-((-§§pop() - 1 + 1 + 1) * 88));
         }
         if("simple" === _loc3_)
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() + 106) - 54);
            }
         }
         else if("aes128" === _loc3_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push((-(§§pop() - 1) + 16) * 92 - 1 + 1 + 1);
            }
         }
         else if("aes192" === _loc3_)
         {
            §§push(2);
            if(_loc5_)
            {
               §§push((§§pop() + 1) * 103 - 5 - 1);
            }
         }
         else if("aes256" === _loc3_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(-(-§§pop() + 64 + 65) - 1 - 1);
            }
         }
         else if("aes" === _loc3_)
         {
            §§push(4);
            if(_loc5_)
            {
               §§push(-(-§§pop() + 82) - 1);
            }
         }
         else if("bf" === _loc3_)
         {
            §§push(5);
            if(_loc5_)
            {
               §§push(--§§pop() * 116);
            }
         }
         else if("blowfish" === _loc3_)
         {
            §§push(6);
            if(_loc4_)
            {
               §§push((§§pop() - 1 - 39) * 55);
            }
         }
         else if("des" === _loc3_)
         {
            §§push(7);
            if(_loc5_)
            {
               §§push(§§pop() + 1 - 1 + 1);
            }
         }
         else if("3des" === _loc3_)
         {
            §§push(8);
            if(_loc5_)
            {
               §§push((§§pop() + 1 - 1 + 1 - 1) * 59 - 1);
            }
         }
         else if("des3" === _loc3_)
         {
            §§push(9);
            if(_loc5_)
            {
               §§push((§§pop() + 74 + 1 - 108 + 108) * 16 - 62);
            }
         }
         else if("xtea" === _loc3_)
         {
            §§push(10);
            if(_loc5_)
            {
               §§push(§§pop() - 1 + 103 + 108 + 1 + 77);
            }
         }
         else if("rc4" === _loc3_)
         {
            §§push(11);
            if(_loc4_)
            {
               §§push((§§pop() - 61 + 1 - 108) * 53 - 55);
            }
         }
         else
         {
            §§push(12);
            if(_loc5_)
            {
               §§push((§§pop() * 21 - 1 - 91 + 9 + 1) * 18);
            }
         }
         switch(§§pop())
         {
            case 0:
               _loc2_.shift();
               return getKeySize(_loc2_.join("-"));
            case 1:
               §§push(16);
               if(_loc4_)
               {
                  return (§§pop() + 1 + 1) * 34 + 112 + 1 - 21 - 100;
               }
            case 2:
               §§push(24);
               if(_loc5_)
               {
                  return -(§§pop() * 57) * 35 + 1;
               }
            case 3:
               §§push(32);
               if(_loc5_)
               {
                  return -(§§pop() - 1) - 57;
               }
            case 4:
               _loc2_.shift();
               §§push();
               §§push(_loc2_);
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(-(-§§pop() - 1) + 105));
               }
               §§push(§§pop().parseInt(§§pop()[§§pop()]));
               §§push(8);
               if(_loc5_)
               {
                  §§push((§§pop() + 56 - 82) * 87 * 77 - 1);
               }
               return §§pop() / §§pop();
            case 5:
            case 6:
               §§push(16);
               if(_loc4_)
               {
                  return (§§pop() + 33 + 28 - 1) * 15 - 1 + 110;
               }
            case 7:
               _loc2_.shift();
               §§push(_loc2_);
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() + 73 + 17 - 87);
               }
               if("ede" === _loc3_)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     §§push(-(--§§pop() + 52 + 41 + 56) * 22);
                  }
               }
               else if("ede3" === _loc3_)
               {
                  §§push(1);
                  if(_loc5_)
                  {
                     §§push(-(§§pop() + 1) - 110 - 11 + 99 - 1);
                  }
               }
               else
               {
                  §§push(2);
                  if(_loc5_)
                  {
                     §§push(---(§§pop() - 1 + 64) - 81);
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     §§push(16);
                     if(_loc5_)
                     {
                        return (§§pop() - 1) * 113 + 1 + 1;
                     }
                  case 1:
                     §§push(24);
                     if(_loc4_)
                     {
                        return -(-§§pop() - 15 + 80);
                     }
                  default:
                     §§push(8);
                     if(_loc5_)
                     {
                        return (§§pop() + 1 + 108) * 34 * 39;
                     }
               }
            case 8:
            case 9:
               §§push(24);
               if(_loc4_)
               {
                  return §§pop() - 1 + 111 + 82;
               }
            case 10:
               §§push(8);
               if(_loc4_)
               {
                  return §§pop() + 1 - 43 - 9;
               }
            case 11:
               §§push();
               §§push(_loc2_);
               §§push(1);
               if(_loc5_)
               {
                  §§push((§§pop() - 105 + 1 - 1) * 108 + 1);
               }
               §§push(§§pop().parseInt(§§pop()[§§pop()]));
               §§push(0);
               if(_loc5_)
               {
                  §§push((§§pop() - 1 + 77 - 24 + 1 - 1) * 9);
               }
               if(§§pop() > §§pop())
               {
                  §§push();
                  §§push(_loc2_);
                  §§push(1);
                  if(_loc5_)
                  {
                     §§push((§§pop() + 106 - 1) * 104 - 78 - 10);
                  }
                  §§push(§§pop().parseInt(§§pop()[§§pop()]));
                  §§push(8);
                  if(_loc5_)
                  {
                     §§push(--§§pop() - 28 + 1);
                  }
                  return §§pop() / §§pop();
               }
               §§push(16);
               if(_loc4_)
               {
                  return §§pop() + 111 - 1 - 1;
               }
            default:
               §§push(0);
               if(_loc4_)
               {
                  §§push(-((§§pop() - 76) * 47 * 69));
               }
               return §§pop();
         }
      }
      
      public static function getPad(param1:String) : IPad
      {
         if("null" === _loc2_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() * 47) + 108 + 1 - 36);
            }
         }
         else if("pkcs5" === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(-(§§pop() - 96 - 1));
            }
         }
         else
         {
            §§push(2);
            if(_loc4_)
            {
               §§push((-§§pop() - 34) * 91 - 1);
            }
         }
         switch(§§pop())
         {
            case 0:
               return new NullPad();
            case 1:
            default:
               return new PKCS5();
         }
      }
      
      public static function getHMAC(param1:String) : HMAC
      {
         var _loc2_:Array = param1.split("-");
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 82 * 25 + 7 - 1 + 50));
         }
         if(§§pop()[§§pop()] == "hmac")
         {
            _loc2_.shift();
         }
         §§push(0);
         if(_loc5_)
         {
            §§push((-(§§pop() - 1 - 58 - 30 - 1) + 1) * 20);
         }
         var _loc3_:uint = §§pop();
         §§push(_loc2_.length);
         §§push(1);
         if(_loc5_)
         {
            §§push(-§§pop() - 79 - 60);
         }
         if(§§pop() > §§pop())
         {
            §§push();
            §§push(_loc2_);
            §§push(1);
            if(_loc5_)
            {
               §§push((§§pop() - 33) * 58 + 105 - 1 + 87 + 7 + 77);
            }
            _loc3_ = §§pop().parseInt(§§pop()[§§pop()]);
         }
         §§push();
         §§push();
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 32) - 23);
         }
         return new §§pop().HMAC(§§pop().getHash(§§pop()[§§pop()]),_loc3_);
      }
   }
}
