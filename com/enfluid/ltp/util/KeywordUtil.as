package com.enfluid.ltp.util
{
   import mx.core.ClassFactory;
   import spark.skins.spark.DefaultItemRenderer;
   import spark.components.HGroup;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import mx.graphics.SolidColor;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.ViewModel;
   import spark.components.TextArea;
   import mx.graphics.LinearGradient;
   import spark.primitives.Rect;
   import com.enfluid.ltp.model.vo.SRTRequestDataVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.controller.services.Services;
   import mx.controls.Spacer;
   import com.hurlant.util.Memory;
   import com.adobe.utils.StringUtil;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass10;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.FindKeywordsButtonSkin;
   import flash.utils.setTimeout;
   
   public final class KeywordUtil
   {
      
      private static const periodRegExp:RegExp = /[0-9\.]/;
      
      private static const commaRegExp:RegExp = /[0-9,]/;
      
      private static const CHARACTER_MAP:Object = {
         "á":"a",
         "Á":"A",
         "à":"a",
         "À":"A",
         "ă":"a",
         "Ă":"A",
         "â":"a",
         "Â":"A",
         "å":"aa",
         "Å":"AA",
         "ã":"a",
         "Ã":"A",
         "ą":"a",
         "Ą":"A",
         "ā":"a",
         "Ā":"A",
         "ä":"ae",
         "Ä":"AE",
         "æ":"ae",
         "Æ":"AE",
         "ḃ":"b",
         "Ḃ":"B",
         "ć":"c",
         "Ć":"C",
         "ĉ":"c",
         "Ĉ":"C",
         "č":"c",
         "Č":"C",
         "ċ":"c",
         "Ċ":"C",
         "ç":"c",
         "Ç":"C",
         "ď":"d",
         "Ď":"D",
         "ḋ":"d",
         "Ḋ":"D",
         "đ":"d",
         "Đ":"D",
         "ð":"dh",
         "Ð":"Dh",
         "é":"e",
         "É":"E",
         "è":"e",
         "È":"E",
         "ĕ":"e",
         "Ĕ":"E",
         "ê":"e",
         "Ê":"E",
         "ě":"e",
         "Ě":"E",
         "ë":"e",
         "Ë":"E",
         "ė":"e",
         "Ė":"E",
         "ę":"e",
         "Ę":"E",
         "ē":"e",
         "Ē":"E",
         "ḟ":"f",
         "Ḟ":"F",
         "ƒ":"f",
         "Ƒ":"F",
         "ğ":"g",
         "Ğ":"G",
         "ĝ":"g",
         "Ĝ":"G",
         "ġ":"g",
         "Ġ":"G",
         "ģ":"g",
         "Ģ":"G",
         "ĥ":"h",
         "Ĥ":"H",
         "ħ":"h",
         "Ħ":"H",
         "í":"i",
         "Í":"I",
         "ì":"i",
         "Ì":"I",
         "î":"i",
         "Î":"I",
         "ï":"i",
         "Ï":"I",
         "ĩ":"i",
         "Ĩ":"I",
         "į":"i",
         "Į":"I",
         "ī":"i",
         "Ī":"I",
         "ĵ":"j",
         "Ĵ":"J",
         "ķ":"k",
         "Ķ":"K",
         "ĺ":"l",
         "Ĺ":"L",
         "ľ":"l",
         "Ľ":"L",
         "ļ":"l",
         "Ļ":"L",
         "ł":"l",
         "Ł":"L",
         "ṁ":"m",
         "Ṁ":"M",
         "ń":"n",
         "Ń":"N",
         "ň":"n",
         "Ň":"N",
         "ñ":"n",
         "Ñ":"N",
         "ņ":"n",
         "Ņ":"N",
         "ó":"o",
         "Ó":"O",
         "ò":"o",
         "Ò":"O",
         "ô":"o",
         "Ô":"O",
         "ő":"o",
         "Ő":"O",
         "õ":"o",
         "Õ":"O",
         "ø":"oe",
         "Ø":"OE",
         "ō":"o",
         "Ō":"O",
         "ơ":"o",
         "Ơ":"O",
         "ö":"oe",
         "Ö":"OE",
         "ṗ":"p",
         "Ṗ":"P",
         "ŕ":"r",
         "Ŕ":"R",
         "ř":"r",
         "Ř":"R",
         "ŗ":"r",
         "Ŗ":"R",
         "ś":"s",
         "Ś":"S",
         "ŝ":"s",
         "Ŝ":"S",
         "š":"s",
         "Š":"S",
         "ṡ":"s",
         "Ṡ":"S",
         "ş":"s",
         "Ş":"S",
         "ș":"s",
         "Ș":"S",
         "ß":"SS",
         "ť":"t",
         "Ť":"T",
         "ṫ":"t",
         "Ṫ":"T",
         "ţ":"t",
         "Ţ":"T",
         "ț":"t",
         "Ț":"T",
         "ŧ":"t",
         "Ŧ":"T",
         "ú":"u",
         "Ú":"U",
         "ù":"u",
         "Ù":"U",
         "ŭ":"u",
         "Ŭ":"U",
         "û":"u",
         "Û":"U",
         "ů":"u",
         "Ů":"U",
         "ű":"u",
         "Ű":"U",
         "ũ":"u",
         "Ũ":"U",
         "ų":"u",
         "Ų":"U",
         "ū":"u",
         "Ū":"U",
         "ư":"u",
         "Ư":"U",
         "ü":"ue",
         "Ü":"UE",
         "ẃ":"w",
         "Ẃ":"W",
         "ẁ":"w",
         "Ẁ":"W",
         "ŵ":"w",
         "Ŵ":"W",
         "ẅ":"w",
         "Ẅ":"W",
         "ý":"y",
         "Ý":"Y",
         "ỳ":"y",
         "Ỳ":"Y",
         "ŷ":"y",
         "Ŷ":"Y",
         "ÿ":"y",
         "Ÿ":"Y",
         "ź":"z",
         "Ź":"Z",
         "ž":"z",
         "Ž":"Z",
         "ż":"z",
         "Ż":"Z",
         "þ":"th",
         "Þ":"Th",
         "µ":"u",
         "а":"a",
         "А":"a",
         "б":"b",
         "Б":"b",
         "в":"v",
         "В":"v",
         "г":"g",
         "Г":"g",
         "д":"d",
         "Д":"d",
         "е":"e",
         "Е":"e",
         "ё":"e",
         "Ё":"e",
         "ж":"zh",
         "Ж":"zh",
         "з":"z",
         "З":"z",
         "и":"i",
         "И":"i",
         "й":"j",
         "Й":"j",
         "к":"k",
         "К":"k",
         "л":"l",
         "Л":"l",
         "м":"m",
         "М":"m",
         "н":"n",
         "Н":"n",
         "о":"o",
         "О":"o",
         "п":"p",
         "П":"p",
         "р":"r",
         "Р":"r",
         "с":"s",
         "С":"s",
         "т":"t",
         "Т":"t",
         "у":"u",
         "У":"u",
         "ф":"f",
         "Ф":"f",
         "х":"h",
         "Х":"h",
         "ц":"c",
         "Ц":"c",
         "ч":"ch",
         "Ч":"ch",
         "ш":"sh",
         "Ш":"sh",
         "щ":"sch",
         "Щ":"sch",
         "ъ":"",
         "Ъ":"",
         "ы":"y",
         "Ы":"y",
         "ь":"",
         "Ь":"",
         "э":"e",
         "Э":"e",
         "ю":"ju",
         "Ю":"ju",
         "я":"ja",
         "Я":"ja"
      };
       
      
      public function KeywordUtil()
      {
         super();
      }
      
      public static function boldKeywords(param1:String, param2:String, param3:Boolean = false) : String
      {
         §§push(0);
         if(_loc11_)
         {
            §§push(§§pop() - 1 + 1 - 101 - 93);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() - 1 - 101 + 1 + 11);
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = null;
         §§push(0);
         if(_loc11_)
         {
            §§push((-(§§pop() - 1 + 28 - 1) + 20) * 40);
         }
         var _loc7_:* = §§pop();
         var _loc8_:String = null;
         try
         {
            _loc4_ = int(param2.length);
            §§push(0);
            if(_loc11_)
            {
               §§push(§§pop() - 87 + 1 + 20 + 13 + 44);
            }
            _loc5_ = §§pop();
            _loc6_ = "";
            §§push(0);
            if(_loc11_)
            {
               §§push(-(§§pop() - 1 + 66 + 1 + 52 - 1));
            }
            _loc7_ = §§pop();
            while(_loc7_ < param1.length)
            {
               _loc8_ = param1.substr(_loc7_,_loc4_);
               if(_loc8_.toLowerCase() == param2.toLowerCase())
               {
                  if(param3 || §§pop() == §§pop() && §§pop().substr(§§pop(),§§pop()) == " " || _loc7_ + _loc4_ == param1.length && §§pop().substr(§§pop(),§§pop()) == " " || §§pop() > §§pop() && _loc7_ < param1.length && (§§pop().substr(§§pop(),§§pop()) == " " && §§pop().substr(§§pop(),§§pop()) == " "))
                  {
                     _loc6_ = _loc6_ + param1.substring(_loc5_,_loc7_) + "<b>" + _loc8_ + "</b>";
                     _loc5_ = int(_loc7_ + _loc4_);
                     _loc7_ = int(_loc5_ - 1);
                  }
               }
               _loc7_++;
            }
            _loc6_ = _loc6_ + param1.substring(_loc5_,param1.length);
            return _loc6_;
         }
         catch(err:Error)
         {
         }
         return param1;
      }
      
      public static function convertChars(param1:String, param2:String, param3:String) : String
      {
         var _loc8_:String = null;
         var _loc4_:int = param2.length;
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() - 30 - 99 + 115) - 1);
         }
         var _loc5_:* = §§pop();
         var _loc6_:String = "";
         §§push(0);
         if(_loc9_)
         {
            §§push(§§pop() + 1 + 1 - 90);
         }
         var _loc7_:* = §§pop();
         while(_loc7_ < param1.length)
         {
            _loc8_ = param1.substr(_loc7_,_loc4_);
            if(_loc8_ == param2)
            {
               _loc6_ = _loc6_ + param1.substring(_loc5_,_loc7_) + param3;
               _loc5_ = int(_loc7_ + _loc4_);
            }
            _loc7_++;
         }
         _loc6_ = _loc6_ + param1.substring(_loc5_,param1.length);
         return _loc6_;
      }
      
      public static function countChars(param1:String, param2:String) : int
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() - 93 + 20 - 11 + 1 + 87 - 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(-§§pop() + 36 + 62 - 1 + 1 - 101);
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < param1.length)
         {
            if(param1.charAt(_loc4_) == param2)
            {
               _loc3_++;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function extractDomainName(param1:String) : String
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:int = param1.indexOf(".");
         §§push(_loc2_);
         §§push(-1);
         if(_loc4_)
         {
            §§push(§§pop() * 16 * 21 + 1);
         }
         if(§§pop() == §§pop())
         {
            return param1;
         }
         §§push(param1);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1) * 102);
         }
         return §§pop().substr(§§pop(),param1.indexOf(".") - 1);
      }
      
      public static function extractFullDomain(param1:String) : String
      {
         if(!param1)
         {
            return null;
         }
         var _loc2_:int = param1.indexOf("://");
         §§push(_loc2_);
         §§push(-1);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1 + 1) - 29 - 1);
         }
         if(§§pop() != §§pop())
         {
            §§push(_loc2_);
            §§push(3);
            if(_loc3_)
            {
               §§push((-§§pop() - 60 - 1) * 30 - 1 + 90);
            }
            _loc2_ = §§pop() + §§pop();
            param1 = param1.substr(_loc2_);
         }
         _loc2_ = param1.indexOf("/");
         §§push(_loc2_);
         §§push(-1);
         if(_loc4_)
         {
            §§push(-(§§pop() * 25) - 1 + 1 + 1);
         }
         if(§§pop() == §§pop())
         {
            return param1;
         }
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 70);
         }
         return §§pop().substr(§§pop(),_loc2_);
      }
      
      public static function extractFullDomainWithPrefix(param1:String) : String
      {
         §§push(param1.indexOf("://"));
         §§push(3);
         if(_loc5_)
         {
            §§push(§§pop() * 91 - 1 - 14 + 90 + 1 - 1);
         }
         var _loc2_:int = §§pop() + §§pop();
         var _loc3_:int = param1.indexOf("/",_loc2_);
         §§push(_loc3_);
         §§push(-1);
         if(_loc5_)
         {
            §§push((§§pop() + 1) * 59 + 1);
         }
         if(§§pop() == §§pop())
         {
            return param1;
         }
         §§push(param1);
         §§push(0);
         if(_loc4_)
         {
            §§push((-§§pop() * 22 + 43 - 68) * 14 + 1);
         }
         return §§pop().substring(§§pop(),_loc3_);
      }
      
      public static function extractMainDomain(param1:String) : String
      {
         §§push(param1.length);
         §§push(7);
         if(_loc6_)
         {
            §§push(§§pop() - 92 - 1 + 86 + 1);
         }
         if(§§pop() > §§pop() && §§pop().substring(§§pop(),7) == "http://")
         {
            §§push(param1.split("http://"));
            §§push(1);
            if(_loc5_)
            {
               §§push(-(--(§§pop() - 1) + 1 + 1) - 87);
            }
            param1 = §§pop()[§§pop()];
         }
         §§push(param1.length);
         §§push(8);
         if(_loc5_)
         {
            §§push(§§pop() * 2 - 1 + 68 - 50);
         }
         if(§§pop() > §§pop() && §§pop().substring(§§pop(),8) == "https://")
         {
            §§push(param1.split("https://"));
            §§push(1);
            if(_loc6_)
            {
               §§push((§§pop() + 102) * 4 + 1 + 9);
            }
            param1 = §§pop()[§§pop()];
         }
         §§push(param1.length);
         §§push(4);
         if(_loc5_)
         {
            §§push((-§§pop() + 1 - 39) * 37 + 1);
         }
         if(§§pop() > §§pop() && §§pop().substring(§§pop(),4) == "www.")
         {
            §§push(param1.split("www."));
            §§push(1);
            if(_loc5_)
            {
               §§push(§§pop() + 1 + 43 - 40 + 58 - 108);
            }
            param1 = §§pop()[§§pop()];
         }
         §§push(param1.search(/[\/&?#]/));
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-§§pop() + 1 + 16));
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1.split(/[\/&?#]/));
            §§push(0);
            if(_loc5_)
            {
               §§push(-(--(§§pop() * 66) - 1 + 1 + 1));
            }
            param1 = §§pop()[§§pop()];
         }
         var _loc2_:Array = param1.split(".");
         §§push(2);
         if(_loc6_)
         {
            §§push(--§§pop() + 87 - 116 - 1);
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_);
         §§push(_loc2_.length);
         §§push(2);
         if(_loc6_)
         {
            §§push(-(§§pop() - 71) + 20 - 1);
         }
         var _loc4_:String = §§pop()[§§pop() - §§pop()];
         if(_loc4_ == "com" || _loc4_ == "org" || _loc4_ == "net" || _loc4_ == "co" || _loc4_ == "me" || _loc4_ == "uk" || _loc4_ == "eu" || _loc4_ == "us" || _loc4_ == "gb" || _loc4_ == "gr")
         {
            §§push(3);
            if(_loc5_)
            {
               §§push((§§pop() + 1) * 62 - 1);
            }
            _loc3_ = §§pop();
         }
         while(_loc2_.length > _loc3_)
         {
            _loc2_.shift();
         }
         param1 = _loc2_.join(".");
         return param1;
      }
      
      public static function extractPath(param1:String) : String
      {
         var _loc3_:String = null;
         var _loc2_:int = param1.indexOf("://");
         §§push(param1);
         §§push("/");
         §§push(_loc2_);
         §§push(3);
         if(_loc4_)
         {
            §§push(-(§§pop() * 67 - 1 - 36 + 1));
         }
         _loc2_ = §§pop().indexOf(§§pop(),§§pop() + §§pop());
         §§push(_loc2_);
         §§push(-1);
         if(_loc4_)
         {
            §§push((-§§pop() + 78 + 86) * 4 + 103);
         }
         if(§§pop() == §§pop())
         {
            return "";
         }
         _loc3_ = param1.substr(_loc2_);
         return _loc3_;
      }
      
      public static function formatForSearch(param1:String) : String
      {
         var _loc2_:String = "";
         if(param1)
         {
            _loc2_ = convertChars(param1,"[","");
            _loc2_ = convertChars(_loc2_,"]","");
            _loc2_ = convertChars(_loc2_,"\"","");
         }
         §§push(param1);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 1 + 1 - 1) * 26);
         }
         if(§§pop().charAt(§§pop()) == " ")
         {
            §§push(param1);
            §§push(1);
            if(_loc4_)
            {
               §§push(--(§§pop() + 119 - 1 - 63 - 48));
            }
            param1 = §§pop().slice(§§pop());
         }
         _loc2_ = _loc2_.replace(/ /g,"+");
         return _loc2_;
      }
      
      public static function isValidDomainChar(param1:String) : Boolean
      {
         if(param1 == ".")
         {
            return false;
         }
         if(param1 == " " || "A" <= param1 && param1 <= "Z")
         {
            return true;
         }
         if("a" <= param1 && param1 <= "z")
         {
            return true;
         }
         if(int(param1))
         {
            return true;
         }
         if("-")
         {
            return true;
         }
         return false;
      }
      
      public static function removeNonEnglishChars(param1:String) : String
      {
         var _loc2_:* = "";
         §§push(0);
         if(_loc4_)
         {
            §§push(-(-(§§pop() * 66) - 1) - 1 - 43 - 1);
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < param1.length)
         {
            if(!KeywordUtil.isValidDomainChar(param1.charAt(_loc3_)))
            {
               _loc2_ = _loc2_ + "";
            }
            else
            {
               _loc2_ = _loc2_ + param1.charAt(_loc3_);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function removeNonNumericChars(param1:String, param2:Boolean = false) : String
      {
         var _loc5_:String = null;
         var _loc6_:RegExp = null;
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-(-§§pop() - 101) * 26) - 1);
         }
         var _loc7_:* = §§pop();
         if(!param1)
         {
            return "";
         }
         var _loc3_:String = "";
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() - 1) - 1 - 64 + 1);
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < param1.length)
         {
            _loc5_ = param1.charAt(_loc4_);
            _loc6_ = !!param2?commaRegExp:periodRegExp;
            if(_loc6_.test(_loc5_))
            {
               _loc3_ = _loc3_ + _loc5_;
            }
            _loc4_++;
         }
         if(_loc3_.lastIndexOf(".") != _loc3_.indexOf("."))
         {
            _loc7_ = int(_loc3_.indexOf("."));
            §§push(_loc3_);
            §§push(0);
            if(_loc8_)
            {
               §§push(-(§§pop() - 53 - 1));
            }
            §§push(§§pop().substring(§§pop(),_loc7_));
            §§push(_loc3_);
            §§push(_loc7_);
            §§push(1);
            if(_loc8_)
            {
               §§push((§§pop() * 9 * 11 + 1 - 1) * 108);
            }
            _loc3_ = §§pop() + §§pop().substring(§§pop() + §§pop());
         }
         if(param2)
         {
            _loc3_ = _loc3_.replace(",",".");
         }
         return _loc3_;
      }
      
      public static function parseCurrencySymbol(param1:String) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = "";
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-(-§§pop() + 1) + 118));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1.charAt(_loc3_);
            if(!/[0-9\.]/.test(_loc4_))
            {
               _loc2_ = _loc2_ + _loc4_;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function replaceForeignCharacters(param1:String) : String
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc2_:Array = param1.split("");
         §§push(0);
         if(_loc7_)
         {
            §§push(-((-(§§pop() - 1) + 10 + 91) * 114 - 72));
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_];
            _loc5_ = CHARACTER_MAP[_loc4_];
            if(_loc5_)
            {
               _loc2_[_loc3_] = _loc5_;
            }
            _loc3_++;
         }
         return _loc2_.join("");
      }
      
      public static function replaceNonEnglishCharsBySpaces(param1:String) : String
      {
         var _loc2_:* = "";
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 115 - 1 + 79 - 1) + 1);
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < param1.length)
         {
            if(!KeywordUtil.isValidDomainChar(param1.charAt(_loc3_)))
            {
               _loc2_ = _loc2_ + " ";
            }
            else
            {
               _loc2_ = _loc2_ + param1.charAt(_loc3_);
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      public static function replaceSpacesByHyphens(param1:String) : String
      {
         if(!param1)
         {
            return null;
         }
         return param1.replace(/ /g,"-");
      }
      
      public static function removeUnsupportedCharacters(param1:String) : String
      {
         if(!param1)
         {
            return param1;
         }
         var _loc2_:String = param1;
         var _loc3_:RegExp = /[\(\)]/g;
         _loc2_ = param1.replace(_loc3_,"");
         return _loc2_;
      }
      
      public static function stripBeginningAndEndingSpaces(param1:String) : String
      {
         if(!param1)
         {
            return "";
         }
         while(true)
         {
            §§push(param1);
            §§push(0);
            if(_loc2_)
            {
               §§push(§§pop() * 44 - 62 + 28 + 50 + 102 + 116);
            }
            if(!(§§pop().charAt(§§pop()) == " " || §§pop().charAt(§§pop()) == " "))
            {
               break;
            }
            §§push(param1);
            §§push(1);
            if(_loc3_)
            {
               §§push(-(-(§§pop() - 1) + 1));
            }
            param1 = §§pop().substr(§§pop());
         }
         while(param1.charAt(param1.length - 1) == " " || param1.charAt(param1.length - 1) == " ")
         {
            §§push(param1);
            §§push(0);
            if(_loc2_)
            {
               §§push((§§pop() + 1) * 24 - 17 - 1 + 47);
            }
            param1 = §§pop().substr(§§pop(),param1.length - 1);
         }
         return param1;
      }
      
      public static function stripBracketsAndQuotes(param1:String) : String
      {
         var _loc2_:String = "";
         if(param1)
         {
            _loc2_ = convertChars(param1,"[","");
            _loc2_ = convertChars(_loc2_,"]","");
            _loc2_ = convertChars(_loc2_,"\"","");
         }
         return _loc2_;
      }
      
      public static function stripHTML(param1:String) : String
      {
         return param1.replace(/<.*?>/g,"");
      }
      
      public static function stripHttpAndWww(param1:String) : String
      {
         §§push(param1.indexOf("http://"));
         §§push(-1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 49 - 1 + 1) - 1);
         }
         if(§§pop() != §§pop())
         {
            §§push(param1);
            §§push(7);
            if(_loc3_)
            {
               §§push((§§pop() - 1) * 79 - 1 + 1);
            }
            param1 = §§pop().substr(§§pop());
         }
         else
         {
            §§push(param1.indexOf("https://"));
            §§push(-1);
            if(_loc2_)
            {
               §§push((§§pop() - 60 - 69) * 85);
            }
            if(§§pop() != §§pop())
            {
               §§push(param1);
               §§push(8);
               if(_loc2_)
               {
                  §§push((§§pop() + 1) * 31 - 1 - 1 - 1);
               }
               param1 = §§pop().substr(§§pop());
            }
         }
         §§push(param1.indexOf("www."));
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1));
         }
         if(§§pop() == §§pop())
         {
            §§push(param1);
            §§push(4);
            if(_loc3_)
            {
               §§push((§§pop() - 1) * 65 - 1 + 33 - 1);
            }
            param1 = §§pop().substr(§§pop());
         }
         return param1;
      }
      
      public static function stripSpaces(param1:String) : String
      {
         if(!param1)
         {
            return null;
         }
         return param1.replace(/ /g,"");
      }
      
      public static function stripKeyword(param1:String) : String
      {
         param1 = param1;
         param1 = convertChars(param1,"[","");
         param1 = convertChars(param1,"]","");
         param1 = convertChars(param1,"\"","");
         param1 = stripBeginningAndEndingSpaces(param1);
         param1 = param1.replace("&","");
         param1 = param1.replace(";","");
         return param1;
      }
      
      public static function calcDomainWithoutExtension(param1:String, param2:Boolean) : String
      {
         §§push(param1.indexOf("."));
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() - 1 - 83 + 24 - 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1);
            §§push(0);
            if(_loc3_)
            {
               §§push((§§pop() - 86) * 105 - 1 + 1);
            }
            param1 = §§pop().substr(§§pop(),param1.indexOf("."));
         }
         param1 = KeywordUtil.replaceForeignCharacters(param1);
         if(param2)
         {
            param1 = KeywordUtil.replaceSpacesByHyphens(param1);
         }
         else
         {
            param1 = KeywordUtil.stripSpaces(param1);
         }
         return param1;
      }
      
      public static function getSearchRangeValues(param1:String) : Array
      {
         §§push(param1.indexOf("M+"));
         §§push(-1);
         if(_loc5_)
         {
            §§push(-(§§pop() + 75 + 27) - 1);
         }
         if(§§pop() != §§pop())
         {
            §§push(1000000);
            if(_loc6_)
            {
               §§push(--(--(-§§pop() * 109) * 14));
            }
            return null;
         }
         var _loc2_:Array = param1.split("–");
         §§push(KeywordUtil);
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-§§pop() - 89 + 1));
         }
         var _loc3_:int = §§pop().getAvgRealValue(§§pop()[§§pop()]);
         §§push(KeywordUtil);
         §§push(_loc2_);
         §§push(1);
         if(_loc5_)
         {
            §§push(-((--(§§pop() * 33) - 1) * 17));
         }
         var _loc4_:int = §§pop().getAvgRealValue(§§pop()[§§pop()]);
         return [_loc3_,_loc4_];
      }
      
      public static function getAvgRealValue(param1:String) : int
      {
         var _loc2_:String = StringUtil.trim(param1).toLowerCase();
         var _loc3_:String = "";
         §§push(_loc2_.indexOf("k"));
         §§push(-1);
         if(_loc5_)
         {
            §§push(§§pop() + 17 - 1 + 1);
         }
         if(§§pop() != §§pop())
         {
            _loc3_ = _loc2_.split("k").join("");
            §§push(int(_loc3_));
            §§push(1000);
            if(_loc5_)
            {
               §§push(-(§§pop() * 53 + 90) - 119 - 1 + 68);
            }
            return §§pop() * §§pop();
         }
         §§push(_loc2_.indexOf("m"));
         §§push(-1);
         if(_loc4_)
         {
            §§push(§§pop() - 1 + 1 + 1 - 7 + 88 - 1 + 1);
         }
         if(§§pop() != §§pop())
         {
            _loc3_ = _loc2_.split("m").join("");
            §§push(int(_loc3_));
            §§push(1000000);
            if(_loc4_)
            {
               §§push(--§§pop() * 43 * 99);
            }
            return §§pop() * §§pop();
         }
         return int(param1);
      }
   }
}
