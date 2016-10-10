package com.enfluid.ltp.util
{
   import flash.events.MouseEvent;
   import mx.graphics.SolidColorStroke;
   import system.data.Map;
   import system.data.iterators.ArrayIterator;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IDataHolder;
   import hr.binaria.asx3m.converters.IConverterLookup;
   import hr.binaria.asx3m.mapper.IMapper;
   import hr.binaria.asx3m.core.TreeUnmarshaller;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.binding.BindingManager;
   import spark.primitives.Rect;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.ProxiesHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import mx.graphics.SolidColor;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.SlimHScrollBarThumbSkin;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.view.AddYourOwnKeywordsSection;
   import mx.core.DeferredInstanceFromFunction;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   use namespace mx_internal;
   
   public final class KeywordUtil
   {
      
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
            §§push((-§§pop() + 1) * 67 * 77);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(-(§§pop() * 79 + 1 + 17) - 63 + 84);
         }
         var _loc5_:* = §§pop();
         var _loc6_:* = null;
         §§push(0);
         if(_loc11_)
         {
            §§push(§§pop() * 50 * 87 - 1 + 1 - 1);
         }
         var _loc7_:* = §§pop();
         var _loc8_:String = null;
         try
         {
            _loc4_ = int(param2.length);
            §§push(0);
            if(_loc11_)
            {
               §§push(-(§§pop() - 65 - 1) * 45 * 85 - 1);
            }
            _loc5_ = §§pop();
            _loc6_ = "";
            §§push(0);
            if(_loc11_)
            {
               §§push(-(-(§§pop() - 31) * 94) + 70 + 67);
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
            §§push(-(§§pop() + 47 + 1));
         }
         var _loc5_:* = §§pop();
         var _loc6_:String = "";
         §§push(0);
         if(_loc9_)
         {
            §§push(-((-(§§pop() - 48) - 1 + 1) * 46 + 1));
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
         if(_loc6_)
         {
            §§push((§§pop() + 1 + 48 - 82) * 3 - 1 - 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() * 118 + 102) - 47 + 53);
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
         if(_loc3_)
         {
            §§push(-(§§pop() - 105 + 83 - 1 - 1 - 1) - 1);
         }
         if(§§pop() == §§pop())
         {
            return param1;
         }
         §§push(param1);
         §§push(0);
         if(_loc4_)
         {
            §§push(((-(§§pop() * 81 - 1) + 1) * 87 - 1) * 89);
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
            §§push((§§pop() - 1 + 1 - 42 + 86) * 40);
         }
         if(§§pop() != §§pop())
         {
            §§push(_loc2_);
            §§push(3);
            if(_loc3_)
            {
               §§push(-(((§§pop() + 63) * 76 + 1) * 28));
            }
            _loc2_ = §§pop() + §§pop();
            param1 = param1.substr(_loc2_);
         }
         _loc2_ = param1.indexOf("/");
         §§push(_loc2_);
         §§push(-1);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 115) * 50 + 1 + 9);
         }
         if(§§pop() == §§pop())
         {
            return param1;
         }
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() + 1 + 1) * 53 + 43 + 1) * 11 - 1);
         }
         return §§pop().substr(§§pop(),_loc2_);
      }
      
      public static function extractMainDomain(param1:String) : String
      {
         §§push(param1.length);
         §§push(7);
         if(_loc6_)
         {
            §§push(-(§§pop() - 1 + 1 + 1));
         }
         if(§§pop() > §§pop() && §§pop().substring(§§pop(),7) == "http://")
         {
            §§push(param1.split("http://"));
            §§push(1);
            if(_loc5_)
            {
               §§push(-(§§pop() - 1 + 1 + 1) * 99 * 100);
            }
            param1 = §§pop()[§§pop()];
         }
         §§push(param1.length);
         §§push(8);
         if(_loc6_)
         {
            §§push((§§pop() - 6) * 21 - 1 - 1);
         }
         if(§§pop() > §§pop() && §§pop().substring(§§pop(),8) == "https://")
         {
            §§push(param1.split("https://"));
            §§push(1);
            if(_loc5_)
            {
               §§push(-((§§pop() - 29 - 17) * 82 - 1 - 1 + 42));
            }
            param1 = §§pop()[§§pop()];
         }
         §§push(param1.length);
         §§push(4);
         if(_loc6_)
         {
            §§push(-(---§§pop() - 53 + 1));
         }
         if(§§pop() > §§pop() && §§pop().substring(§§pop(),4) == "www.")
         {
            §§push(param1.split("www."));
            §§push(1);
            if(_loc5_)
            {
               §§push(---(§§pop() + 1 + 69 + 1));
            }
            param1 = §§pop()[§§pop()];
         }
         §§push(param1.search(/[\/&?#]/));
         §§push(0);
         if(_loc5_)
         {
            §§push((-(§§pop() + 71) - 3 + 1) * 119 + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1.split(/[\/&?#]/));
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() - 1) * 76 + 56 + 83);
            }
            param1 = §§pop()[§§pop()];
         }
         var _loc2_:Array = param1.split(".");
         §§push(2);
         if(_loc5_)
         {
            §§push(-((§§pop() + 1 - 1) * 113 + 1) - 30);
         }
         var _loc3_:* = §§pop();
         §§push(_loc2_);
         §§push(_loc2_.length);
         §§push(2);
         if(_loc6_)
         {
            §§push((-§§pop() - 1 + 1 + 72) * 37 - 36);
         }
         var _loc4_:String = §§pop()[§§pop() - §§pop()];
         if(_loc4_ == "com" || _loc4_ == "org" || _loc4_ == "net" || _loc4_ == "co" || _loc4_ == "me" || _loc4_ == "uk" || _loc4_ == "eu" || _loc4_ == "us" || _loc4_ == "gb" || _loc4_ == "gr")
         {
            §§push(3);
            if(_loc6_)
            {
               §§push(-(§§pop() + 1 + 48 - 1 + 1));
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
            §§push(-(((-§§pop() + 1) * 53 + 1) * 105));
         }
         _loc2_ = §§pop().indexOf(§§pop(),§§pop() + §§pop());
         §§push(_loc2_);
         §§push(-1);
         if(_loc4_)
         {
            §§push(-(-(§§pop() * 77) - 84 + 32 - 116));
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
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 1 + 41 - 43 - 1);
         }
         if(§§pop().charAt(§§pop()) == " ")
         {
            §§push(param1);
            §§push(1);
            if(_loc3_)
            {
               §§push(-(§§pop() + 1 - 38) + 1 - 1 + 56 + 71);
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
         if(_loc5_)
         {
            §§push(-((§§pop() - 42) * 67));
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
      
      public static function removeNonNumericChars(param1:String) : String
      {
         var _loc4_:String = null;
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 1 - 115 - 60) * 93);
         }
         var _loc5_:* = §§pop();
         if(!param1)
         {
            return "";
         }
         var _loc2_:String = "";
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() - 70 - 1) * 112 - 17 + 1 + 1);
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1.charAt(_loc3_);
            if(/[0-9\.]/.test(_loc4_))
            {
               _loc2_ = _loc2_ + _loc4_;
            }
            _loc3_++;
         }
         if(_loc2_.lastIndexOf(".") != _loc2_.indexOf("."))
         {
            _loc5_ = int(_loc2_.indexOf("."));
            §§push(_loc2_);
            §§push(0);
            if(_loc7_)
            {
               §§push(--(§§pop() + 82) + 1);
            }
            §§push(§§pop().substring(§§pop(),_loc5_));
            §§push(_loc2_);
            §§push(_loc5_);
            §§push(1);
            if(_loc7_)
            {
               §§push(--(§§pop() * 27) + 1 + 1);
            }
            _loc2_ = §§pop() + §§pop().substring(§§pop() + §§pop());
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
            §§push((§§pop() + 1 + 1 - 1) * 50 - 21 + 1);
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
         if(_loc5_)
         {
            §§push((-§§pop() - 1 + 19 - 50) * 25);
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
               §§push(§§pop() * 56 + 58 - 13 - 88 - 1 - 111 - 19);
            }
            if(!(§§pop().charAt(§§pop()) == " " || §§pop().charAt(§§pop()) == " "))
            {
               break;
            }
            §§push(param1);
            §§push(1);
            if(_loc2_)
            {
               §§push(-§§pop() * 9 - 68 + 1);
            }
            param1 = §§pop().substr(§§pop());
         }
         while(param1.charAt(param1.length - 1) == " " || param1.charAt(param1.length - 1) == " ")
         {
            §§push(param1);
            §§push(0);
            if(_loc3_)
            {
               §§push((-§§pop() - 1) * 30);
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
         if(_loc2_)
         {
            §§push(-(§§pop() * 37 + 51) - 62);
         }
         if(§§pop() != §§pop())
         {
            §§push(param1);
            §§push(7);
            if(_loc2_)
            {
               §§push((§§pop() + 82 + 98 + 1 - 89) * 46);
            }
            param1 = §§pop().substr(§§pop());
         }
         else
         {
            §§push(param1.indexOf("https://"));
            §§push(-1);
            if(_loc2_)
            {
               §§push(-(§§pop() + 60) - 1 - 2);
            }
            if(§§pop() != §§pop())
            {
               §§push(param1);
               §§push(8);
               if(_loc3_)
               {
                  §§push(--((§§pop() + 1) * 105) * 15);
               }
               param1 = §§pop().substr(§§pop());
            }
         }
         §§push(param1.indexOf("www."));
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() * 23) * 50 + 76 + 1);
         }
         if(§§pop() == §§pop())
         {
            §§push(param1);
            §§push(4);
            if(_loc3_)
            {
               §§push(-(§§pop() - 10 + 1 - 1) - 1 - 1);
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
            §§push(---(§§pop() * 117 + 1 + 12));
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1);
            §§push(0);
            if(_loc4_)
            {
               §§push(§§pop() * 58 + 113 - 54);
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
   }
}
