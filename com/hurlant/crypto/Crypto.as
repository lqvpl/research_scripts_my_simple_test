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
   import spark.layouts.VerticalLayout;
   import com.hurlant.crypto.hash.MD2;
   import com.hurlant.crypto.hash.MD5;
   import com.hurlant.crypto.hash.SHA1;
   import com.hurlant.crypto.hash.SHA224;
   import com.hurlant.crypto.hash.SHA256;
   import com.hurlant.crypto.rsa.RSAKey;
   import spark.effects.Rotate;
   import mx.binding.BindingManager;
   import com.hurlant.crypto.symmetric.IMode;
   import com.hurlant.crypto.symmetric.ISymmetricKey;
   import com.hurlant.crypto.symmetric.ECBMode;
   import com.hurlant.crypto.symmetric.CFBMode;
   import com.hurlant.crypto.symmetric.CFB8Mode;
   import com.hurlant.crypto.symmetric.OFBMode;
   import com.hurlant.crypto.symmetric.CTRMode;
   import com.hurlant.crypto.symmetric.CBCMode;
   import flash.events.MouseEvent;
   import flash.display.DisplayObject;
   import mx.core.FlexGlobals;
   import com.hurlant.crypto.symmetric.NullPad;
   import com.hurlant.crypto.symmetric.PKCS5;
   import com.hurlant.crypto.hash.HMAC;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Values;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import com.enfluid.ltp.controller.common.FetchCompetitorUrls;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticDataCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticDomainDataCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticPagesKcCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchSiteAgeCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.CalcAllMajesticCompetitorAverage;
   import com.enfluid.ltp.controller.keywordresearch.SaveAvgKCToServer;
   import com.enfluid.ltp.view.KeywordPlannerSection;
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
         if(_loc5_)
         {
            §§push(-(-(§§pop() + 1 + 1 - 1) * 83 * 47));
         }
         if(§§pop()[§§pop()] == "mac")
         {
            _loc2_.shift();
         }
         §§push(0);
         if(_loc5_)
         {
            §§push(-§§pop() + 65 + 1 + 1 + 0);
         }
         var _loc3_:uint = §§pop();
         §§push(_loc2_.length);
         §§push(1);
         if(_loc5_)
         {
            §§push(-§§pop() - 1 + 1 - 36 - 12);
         }
         if(§§pop() > §§pop())
         {
            §§push();
            §§push(_loc2_);
            §§push(1);
            if(_loc5_)
            {
               §§push(§§pop() - 45 - 1 + 1);
            }
            _loc3_ = §§pop().parseInt(§§pop()[§§pop()]);
         }
         §§push();
         §§push();
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push((-(§§pop() + 1) + 80) * 67);
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
            §§push(§§pop() - 1 - 1 - 1);
         }
         if("simple" === _loc6_)
         {
            §§push(0);
            if(_loc7_)
            {
               §§push(§§pop() - 71 - 92 + 1);
            }
         }
         else if("aes" === _loc6_)
         {
            §§push(1);
            if(_loc8_)
            {
               §§push((-(§§pop() + 72) + 22 - 70 + 36) * 11 - 1);
            }
         }
         else if("aes128" === _loc6_)
         {
            §§push(2);
            if(_loc7_)
            {
               §§push(-(§§pop() * 86 - 1 + 114 + 26) * 70 - 19);
            }
         }
         else if("aes192" === _loc6_)
         {
            §§push(3);
            if(_loc7_)
            {
               §§push(§§pop() * 76 * 63 - 11);
            }
         }
         else if("aes256" === _loc6_)
         {
            §§push(4);
            if(_loc8_)
            {
               §§push(-§§pop() - 1 - 11);
            }
         }
         else if("bf" === _loc6_)
         {
            §§push(5);
            if(_loc8_)
            {
               §§push((-(§§pop() * 105) + 33) * 119);
            }
         }
         else if("blowfish" === _loc6_)
         {
            §§push(6);
            if(_loc7_)
            {
               §§push((-(§§pop() + 1) + 1) * 26 * 78 + 1);
            }
         }
         else if("des" === _loc6_)
         {
            §§push(7);
            if(_loc8_)
            {
               §§push(--§§pop() + 55);
            }
         }
         else if("3des" === _loc6_)
         {
            §§push(8);
            if(_loc7_)
            {
               §§push(§§pop() - 1 + 82 - 4);
            }
         }
         else if("des3" === _loc6_)
         {
            §§push(9);
            if(_loc7_)
            {
               §§push(§§pop() + 1 - 1 - 1);
            }
         }
         else if("xtea" === _loc6_)
         {
            §§push(10);
            if(_loc7_)
            {
               §§push(-(§§pop() - 16 + 1));
            }
         }
         else if("rc4" === _loc6_)
         {
            §§push(11);
            if(_loc7_)
            {
               §§push(-(§§pop() + 28 - 115) - 1);
            }
         }
         else
         {
            §§push(12);
            if(_loc7_)
            {
               §§push(-(§§pop() + 90 + 1) * 6 * 109 + 1);
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
                  §§push(§§pop() - 54 - 1 + 36 - 93 + 10);
               }
               §§push(§§pop() * §§pop());
               §§push(_loc4_);
               §§push(0);
               if(_loc8_)
               {
                  §§push(-(§§pop() - 1) - 80 - 13 - 1);
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
                  §§push(-(-(§§pop() * 104 * 23 - 86) - 1));
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
                  §§push((((-§§pop() + 93) * 30 - 1) * 87 - 1) * 23);
               }
               return §§pop().getMode(§§pop()[§§pop()],new BlowFishKey(param2),param3);
            case 7:
               _loc4_.shift();
               §§push(_loc4_);
               §§push(0);
               if(_loc8_)
               {
                  §§push(-(-§§pop() * 35));
               }
               if(§§pop()[§§pop()] != "ede" && §§pop()[§§pop()] != "ede3")
               {
                  §§push();
                  §§push(_loc4_);
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(-(§§pop() * 20) - 1);
                  }
                  return §§pop().getMode(§§pop()[§§pop()],new DESKey(param2),param3);
               }
               §§push(_loc4_.length);
               §§push(1);
               if(_loc8_)
               {
                  §§push(-(§§pop() + 4 + 16 - 1));
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
                  §§push(-(§§pop() - 1) - 1 - 1 - 1);
               }
               return §§pop().getMode(§§pop()[§§pop()],new TripleDESKey(param2),param3);
            case 10:
               _loc4_.shift();
               §§push();
               §§push(_loc4_);
               §§push(0);
               if(_loc8_)
               {
                  §§push(-((§§pop() - 90 - 1 + 119 - 1) * 100));
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
               §§push((-§§pop() * 13 + 98) * 68 + 44 + 1);
            }
         }
         else if("md5" === _loc2_)
         {
            §§push(1);
            if(_loc3_)
            {
               §§push(-(-§§pop() + 1) * 62 + 1);
            }
         }
         else if("sha" === _loc2_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(-(§§pop() + 86) + 1 - 1);
            }
         }
         else if("sha1" === _loc2_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push(-(§§pop() + 1 + 30) + 1 - 1);
            }
         }
         else if("sha224" === _loc2_)
         {
            §§push(4);
            if(_loc3_)
            {
               §§push(--(§§pop() + 1 - 1) * 105 - 1);
            }
         }
         else if("sha256" === _loc2_)
         {
            §§push(5);
            if(_loc4_)
            {
               §§push(-(§§pop() * 106 + 1 - 60) + 1 - 77 - 1);
            }
         }
         else
         {
            §§push(6);
            if(_loc3_)
            {
               §§push(-((§§pop() + 36) * 107 + 1 - 1) * 112);
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
            if(_loc6_)
            {
               §§push(-(-(§§pop() + 1) - 1) * 26 + 1);
            }
         }
         else if("cfb" === _loc4_)
         {
            §§push(1);
            if(_loc5_)
            {
               §§push((-(§§pop() + 1 - 1 - 32) + 1) * 43);
            }
         }
         else if("cfb8" === _loc4_)
         {
            §§push(2);
            if(_loc5_)
            {
               §§push((§§pop() + 1 + 1 - 66 - 1) * 28);
            }
         }
         else if("ofb" === _loc4_)
         {
            §§push(3);
            if(_loc5_)
            {
               §§push(-§§pop() * 64 - 1 + 1 - 1);
            }
         }
         else if("ctr" === _loc4_)
         {
            §§push(4);
            if(_loc6_)
            {
               §§push(§§pop() - 1 - 1 - 1 - 1);
            }
         }
         else if("cbc" === _loc4_)
         {
            §§push(5);
            if(_loc5_)
            {
               §§push(§§pop() * 30 - 43 - 1 - 1 + 88);
            }
         }
         else
         {
            §§push(6);
            if(_loc5_)
            {
               §§push(-§§pop() - 57 + 35 - 59 - 103 - 1);
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
         if(_loc5_)
         {
            §§push((§§pop() + 22 - 88) * 76 + 68);
         }
         if("simple" === _loc3_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(--(§§pop() - 52) - 84 + 1 + 60);
            }
         }
         else if("aes128" === _loc3_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(-((§§pop() + 1) * 96 - 82));
            }
         }
         else if("aes192" === _loc3_)
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(-(§§pop() * 56 * 35 * 97 * 36) - 68);
            }
         }
         else if("aes256" === _loc3_)
         {
            §§push(3);
            if(_loc4_)
            {
               §§push((§§pop() + 1) * 84 + 105);
            }
         }
         else if("aes" === _loc3_)
         {
            §§push(4);
            if(_loc5_)
            {
               §§push((§§pop() + 1 + 46) * 7 + 87);
            }
         }
         else if("bf" === _loc3_)
         {
            §§push(5);
            if(_loc4_)
            {
               §§push(((§§pop() + 1) * 78 + 1 - 1 + 1) * 64 + 109);
            }
         }
         else if("blowfish" === _loc3_)
         {
            §§push(6);
            if(_loc4_)
            {
               §§push(((§§pop() - 1 - 78) * 37 + 1) * 44);
            }
         }
         else if("des" === _loc3_)
         {
            §§push(7);
            if(_loc4_)
            {
               §§push(-((§§pop() - 111) * 44 + 1 - 110 + 19));
            }
         }
         else if("3des" === _loc3_)
         {
            §§push(8);
            if(_loc5_)
            {
               §§push(-(§§pop() * 86 + 1));
            }
         }
         else if("des3" === _loc3_)
         {
            §§push(9);
            if(_loc4_)
            {
               §§push(-(§§pop() * 102 + 51) - 1 + 1);
            }
         }
         else if("xtea" === _loc3_)
         {
            §§push(10);
            if(_loc5_)
            {
               §§push(-((§§pop() - 1) * 60));
            }
         }
         else if("rc4" === _loc3_)
         {
            §§push(11);
            if(_loc5_)
            {
               §§push(-((-§§pop() + 36) * 78));
            }
         }
         else
         {
            §§push(12);
            if(_loc5_)
            {
               §§push(--(§§pop() + 96) * 51 + 75 - 68 - 108);
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
                  return (§§pop() - 69 - 1) * 117 - 1;
               }
            case 2:
               §§push(24);
               if(_loc4_)
               {
                  return §§pop() * 66 + 1 + 1 + 31;
               }
            case 3:
               §§push(32);
               if(_loc5_)
               {
                  return §§pop() + 1 - 51 + 1;
               }
            case 4:
               _loc2_.shift();
               §§push();
               §§push(_loc2_);
               §§push(0);
               if(_loc4_)
               {
                  §§push(§§pop() - 74 + 1 + 1 - 1 - 1);
               }
               §§push(§§pop().parseInt(§§pop()[§§pop()]));
               §§push(8);
               if(_loc4_)
               {
                  §§push(-((§§pop() - 1) * 34));
               }
               return §§pop() / §§pop();
            case 5:
            case 6:
               §§push(16);
               if(_loc5_)
               {
                  return -(§§pop() + 116) * 33;
               }
            case 7:
               _loc2_.shift();
               §§push(_loc2_);
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() + 110 + 74 - 1 + 1);
               }
               if("ede" === _loc3_)
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(---(§§pop() - 80 - 1 - 1) - 104);
                  }
               }
               else if("ede3" === _loc3_)
               {
                  §§push(1);
                  if(_loc4_)
                  {
                     §§push((§§pop() - 1 - 66 - 40) * 52 + 1 + 51 + 1);
                  }
               }
               else
               {
                  §§push(2);
                  if(_loc5_)
                  {
                     §§push((§§pop() - 15) * 51 * 44);
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     §§push(16);
                     if(_loc5_)
                     {
                        return ((-§§pop() - 86) * 34 + 7) * 115 * 16;
                     }
                  case 1:
                     §§push(24);
                     if(_loc4_)
                     {
                        return -§§pop() - 1 - 36 + 1;
                     }
                  default:
                     §§push(8);
                     if(_loc5_)
                     {
                        return §§pop() + 1 - 1 - 1;
                     }
               }
            case 8:
            case 9:
               §§push(24);
               if(_loc4_)
               {
                  return --§§pop() - 3 + 1 - 1 + 103 + 1;
               }
            case 10:
               §§push(8);
               if(_loc4_)
               {
                  return -((--§§pop() + 1) * 109 * 64 - 1);
               }
            case 11:
               §§push();
               §§push(_loc2_);
               §§push(1);
               if(_loc4_)
               {
                  §§push((§§pop() * 84 - 43 + 1 + 1 - 1) * 58);
               }
               §§push(§§pop().parseInt(§§pop()[§§pop()]));
               §§push(0);
               if(_loc4_)
               {
                  §§push((§§pop() - 1 + 97 - 24) * 73);
               }
               if(§§pop() > §§pop())
               {
                  §§push();
                  §§push(_loc2_);
                  §§push(1);
                  if(_loc4_)
                  {
                     §§push(-(-(-§§pop() + 50) - 30) + 91);
                  }
                  §§push(§§pop().parseInt(§§pop()[§§pop()]));
                  §§push(8);
                  if(_loc4_)
                  {
                     §§push(----((§§pop() - 1) * 118) - 1);
                  }
                  return §§pop() / §§pop();
               }
               §§push(16);
               if(_loc4_)
               {
                  return -(§§pop() * 35 * 56 + 1 + 113);
               }
            default:
               §§push(0);
               if(_loc5_)
               {
                  §§push((§§pop() + 3 + 53) * 6 + 97 - 20 - 1 + 71);
               }
               return §§pop();
         }
      }
      
      public static function getPad(param1:String) : IPad
      {
         if("null" === _loc2_)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(((-§§pop() - 4) * 12 + 11 + 1) * 14 * 12);
            }
         }
         else if("pkcs5" === _loc2_)
         {
            §§push(1);
            if(_loc4_)
            {
               §§push(-(-(§§pop() * 94 + 117) * 28 - 1) + 28);
            }
         }
         else
         {
            §§push(2);
            if(_loc4_)
            {
               §§push(§§pop() * 83 + 27 - 1 + 117 + 36);
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
            §§push(-(-(§§pop() * 72) * 70));
         }
         if(§§pop()[§§pop()] == "hmac")
         {
            _loc2_.shift();
         }
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() - 24) * 102 + 115 + 1) + 1);
         }
         var _loc3_:uint = §§pop();
         §§push(_loc2_.length);
         §§push(1);
         if(_loc5_)
         {
            §§push(--§§pop() - 50);
         }
         if(§§pop() > §§pop())
         {
            §§push();
            §§push(_loc2_);
            §§push(1);
            if(_loc4_)
            {
               §§push(-((§§pop() - 1 + 36) * 50 - 1) - 19);
            }
            _loc3_ = §§pop().parseInt(§§pop()[§§pop()]);
         }
         §§push();
         §§push();
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() - 1 + 25 - 18 + 1 - 1 - 3);
         }
         return new §§pop().HMAC(§§pop().getHash(§§pop()[§§pop()]),_loc3_);
      }
   }
}
