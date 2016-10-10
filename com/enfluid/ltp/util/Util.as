package com.enfluid.ltp.util
{
   import mx.formatters.DateFormatter;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.RTDomain;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.RTKeyword;
   import mx.graphics.GradientEntry;
   import flash.filesystem.File;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.target;
   import com.enfluid.ltp.view.AddYourOwnKeywordsSection;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import system.data.Map;
   import system.data.Iterator;
   import spark.filters.DropShadowFilter;
   import mx.effects.Parallel;
   import spark.events.TextOperationEvent;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   
   use namespace mx_internal;
   
   public final class Util
   {
      
      private static const NUM_NON_MASKED_CHARS:int = 4;
      
      private static var _userKey:String;
      
      private static var formatter:DateFormatter = new DateFormatter();
       
      
      public function Util()
      {
         super();
      }
      
      public static function countKeywords(param1:Array, param2:Array) : int
      {
         var _loc4_:String = null;
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() - 58 - 1) * 14);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 101 + 1 - 93);
         }
         for each(_loc4_ in param1)
         {
            if(Util.isInArray(_loc4_,param2))
            {
               _loc3_++;
            }
         }
         return _loc3_;
      }
      
      public static function datesMatch(param1:Date, param2:Date) : Boolean
      {
         if(param1.date == param2.date && param1.month == param2.month && param1.fullYear == param2.fullYear)
         {
            return true;
         }
         return false;
      }
      
      public static function divideKeywordsIntoGroups(param1:Array) : Array
      {
         §§push(Math);
         §§push(param1.length);
         §§push(800);
         if(_loc7_)
         {
            §§push((-(§§pop() - 1 - 10 - 1) - 40) * 103);
         }
         var _loc2_:int = §§pop().ceil(§§pop() / §§pop());
         var _loc3_:int = Math.ceil(param1.length / _loc2_);
         var _loc4_:Array = [];
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 30 - 1 + 77 - 1);
         }
         var _loc5_:* = §§pop();
         while(_loc5_ < _loc2_)
         {
            §§push(_loc4_);
            §§push(_loc5_);
            §§push(param1);
            §§push(0);
            if(_loc6_)
            {
               §§push(--§§pop() - 16 - 1 + 49 + 50);
            }
            §§pop()[§§pop()] = §§pop().splice(§§pop(),_loc3_);
            _loc5_++;
         }
         return _loc4_;
      }
      
      public static function findRTDomain(param1:String) : RTDomain
      {
         var _loc2_:RTDomain = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-(§§pop() + 18) * 114 - 107 + 1));
         }
         for each(_loc2_ in DataModel.instance.rankTrackerDomains)
         {
            if(_loc2_.domain == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function findRTKeyword(param1:String, param2:String, param3:RTDomain) : RTKeyword
      {
         var k:RTKeyword = null;
         var keyword:String = param1;
         var location:String = param2;
         var domain:RTDomain = param3;
         try
         {
            §§push(0);
            if(_loc8_)
            {
               §§push((§§pop() - 100) * 90 + 116);
            }
            for each(k in domain.keywordsAC)
            {
               if(k.keyword == keyword && k.location == location)
               {
                  return k;
               }
            }
         }
         catch(error:Error)
         {
         }
         return null;
      }
      
      public static function formatDate(param1:Date) : String
      {
         formatter.formatString = "YYYY-MM-DD";
         return formatter.format(param1);
      }
      
      public static function formatDateMonthFirst(param1:Date) : String
      {
         formatter.formatString = "MM-DD-YY";
         return formatter.format(param1);
      }
      
      public static function formatRankTrackerDateString(param1:int) : String
      {
         var _loc2_:Date = new Date(param1 * 1000);
         return Util.formatDateMonthFirst(_loc2_);
      }
      
      public static function getDelay(param1:Number) : int
      {
         var _loc2_:Number = Number(param1) * 0.5;
         var _loc3_:Number = Number(param1) * 1.5;
         var _loc4_:Number = Math.round(Math.random() * (_loc3_ - _loc2_)) + _loc2_;
         §§push(_loc4_);
         §§push(1000);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1 + 46));
         }
         return §§pop() * §§pop();
      }
      
      public static function getKeywordPresentList(param1:Array, param2:Array) : Array
      {
         var _loc4_:String = null;
         var _loc3_:Array = [];
         §§push(0);
         if(_loc7_)
         {
            §§push(-((§§pop() - 1) * 66 + 57 - 1 + 105 - 52));
         }
         for each(_loc4_ in param1)
         {
            if(Util.isInArray(_loc4_,param2))
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public static function getRandomDelay(param1:Number) : int
      {
         var _loc2_:Number = Number(param1) * 0.5;
         var _loc3_:Number = Number(param1) * 1.5;
         §§push(Math.random() * (_loc3_ - _loc2_) + _loc2_);
         §§push(1000);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 97 + 48);
         }
         return §§pop() * §§pop();
      }
      
      public static function getRegistrationStatusFolder() : File
      {
         var _loc1_:File = File.applicationStorageDirectory;
         _loc1_ = new File(_loc1_.nativePath);
         return _loc1_.parent.parent;
      }
      
      public static function getUserKey() : String
      {
         var _loc1_:String = null;
         if(!_userKey)
         {
            _loc1_ = File.userDirectory.name;
            §§push();
            §§push(§_e_-----_§);
            §§push(-1820302818);
            if(_loc2_)
            {
               §§push(--§§pop() * 28 * 79 + 1);
            }
            §§pop()._userKey = §§pop().§_e_-_-__-§(§§pop()) + _loc1_;
         }
         return _userKey;
      }
      
      public static function isInArray(param1:String, param2:Array) : Boolean
      {
         var _loc3_:String = null;
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() + 1 - 1 - 115));
         }
         for each(_loc3_ in param2)
         {
            if(_loc3_ == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function isRankCheckMatch(param1:String, param2:String) : Boolean
      {
         var _loc7_:String = null;
         var _loc3_:String = KeywordUtil.extractFullDomain(param1);
         var _loc4_:String = KeywordUtil.extractFullDomain(param2);
         var _loc5_:String = KeywordUtil.extractMainDomain(param2);
         if(_loc3_ != _loc4_ && _loc5_ != _loc3_)
         {
            return false;
         }
         var _loc6_:String = KeywordUtil.extractPath(param1);
         if(!_loc6_ || _loc6_ == "/")
         {
            return true;
         }
         _loc7_ = KeywordUtil.extractPath(param2);
         §§push(_loc7_.indexOf(_loc6_));
         §§push(0);
         if(_loc8_)
         {
            §§push(-§§pop() * 40 + 105 + 6 - 1);
         }
         if(§§pop() == §§pop())
         {
            return true;
         }
         return false;
      }
      
      public static function isValidIP(param1:String) : Boolean
      {
         var _loc3_:Array = null;
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() * 116 - 1 + 62 - 68) * 60 * 63);
         }
         var _loc4_:* = §§pop();
         param1 = param1.replace(/\s/g,"");
         var _loc2_:RegExp = /^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$/;
         if(_loc2_.test(param1))
         {
            _loc3_ = param1.split(".");
            §§push();
            §§push();
            §§push(_loc3_);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() + 69) - 109 - 1 - 1 + 1 + 1);
            }
            §§push(§§pop().parseInt(§§pop().String(§§pop()[§§pop()])));
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() + 1) * 103 * 67 - 57);
            }
            if(§§pop() == §§pop())
            {
               return false;
            }
            §§push();
            §§push();
            §§push(_loc3_);
            §§push(3);
            if(_loc6_)
            {
               §§push((-(§§pop() * 68 - 18) - 32) * 39);
            }
            §§push(§§pop().parseInt(§§pop().String(§§pop()[§§pop()])));
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() + 105 + 49 - 54 + 1 + 6 + 1);
            }
            if(§§pop() == §§pop())
            {
               return false;
            }
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() - 1 - 1) - 78 + 117 - 119);
            }
            _loc4_ = §§pop();
            if(!_loc4_)
            {
               return true;
            }
            return false;
         }
         return false;
      }
      
      public static function maskString(param1:String) : String
      {
         var _loc2_:* = "";
         var _loc3_:int = param1.length - NUM_NON_MASKED_CHARS;
         _loc2_ = _loc2_ + "...";
         _loc2_ = _loc2_ + param1.substr(_loc3_);
         return _loc2_;
      }
      
      public static function parseDomain(param1:String) : String
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-(§§pop() - 31) - 9) - 1);
         }
         var _loc4_:* = §§pop();
         §§push(param1);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-(§§pop() + 1) - 1 - 57));
         }
         if(§§pop().substr(§§pop(),7) == "http://")
         {
            param1 = param1.split("http://").join("");
         }
         §§push(param1);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 1 - 1 - 1 - 82 + 1);
         }
         if(§§pop().substr(§§pop(),8) == "https://")
         {
            param1 = param1.split("https://").join("");
         }
         §§push(param1);
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() * 11 + 40 + 1 - 29 + 1 + 70 + 1);
         }
         if(§§pop().substr(§§pop(),4) == "www.")
         {
            param1 = param1.split("www.").join("");
         }
         §§push(param1.search("/"));
         §§push(0);
         if(_loc5_)
         {
            §§push(--§§pop() * 76 + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1.split("/"));
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() * 44 * 59 * 99 - 14) - 4 - 1);
            }
            param1 = §§pop()[§§pop()];
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() + 1 + 1) * 91 + 1 + 1) - 6);
         }
         var _loc2_:Number = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 109 + 30 - 115);
         }
         var _loc3_:* = §§pop();
         while(_loc3_ < param1.length)
         {
            if(param1.charAt(_loc3_) == ".")
            {
               _loc2_++;
            }
            _loc3_++;
         }
         §§push(_loc2_);
         §§push(2);
         if(_loc5_)
         {
            §§push(--(§§pop() - 1) + 73 - 110 + 1 - 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1.split("."));
            §§push(1);
            if(_loc5_)
            {
               §§push(§§pop() * 86 + 1 - 1);
            }
            §§push(§§pop()[§§pop()].length);
            §§push(3);
            if(_loc5_)
            {
               §§push(§§pop() - 1 + 113 - 1);
            }
            if(§§pop() > §§pop())
            {
               §§push(param1.split("."));
               §§push(0);
               if(_loc5_)
               {
                  §§push(-(§§pop() - 1) - 107 + 119);
               }
               _loc4_ = int(§§pop()[§§pop()].length);
               §§push(param1);
               §§push(_loc4_);
               §§push(1);
               if(_loc6_)
               {
                  §§push((§§pop() - 1) * 44 * 79 - 1);
               }
               param1 = §§pop().substr(§§pop() + §§pop());
            }
         }
         return param1;
      }
      
      public static function targetedDevicesLabelFunction(param1:int) : String
      {
         return Constants.TARGETED_DEVICES[param1];
      }
      
      public static function findKeywordVO(param1:String, param2:ArrayCollection) : KeywordVO
      {
         var _loc3_:KeywordVO = null;
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() + 1 - 21) + 110);
         }
         for each(_loc3_ in param2.source)
         {
            if(_loc3_.keyword == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public static function calcCompAnalysisAvg(param1:KeywordVO, param2:String, param3:int) : Number
      {
         var _loc6_:CompetitorUrlVO = null;
         var _loc7_:Number = NaN;
         §§push(0);
         if(_loc11_)
         {
            §§push((§§pop() * 60 + 1 - 1) * 78);
         }
         var _loc4_:Number = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() * 99 * 61 + 37 - 29 - 1);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(-(§§pop() + 1 + 1));
         }
         for each(_loc6_ in param1.competitorURLs)
         {
            _loc7_ = _loc6_[param2];
            §§push(_loc7_);
            §§push(0);
            if(_loc10_)
            {
               §§push((-((§§pop() + 104) * 26 - 76) * 95 - 39) * 73);
            }
            if(§§pop() >= §§pop())
            {
               _loc4_ = _loc4_ + _loc7_;
               _loc5_++;
            }
         }
         _loc4_ = _loc4_ / _loc5_;
         §§push(param3);
         §§push(0);
         if(_loc10_)
         {
            §§push((-((§§pop() + 81) * 50) + 1 - 1 + 28) * 74);
         }
         if(§§pop() == §§pop())
         {
            _loc4_ = Math.round(_loc4_);
         }
         else
         {
            §§push(Math);
            §§push(_loc4_);
            §§push(10);
            if(_loc10_)
            {
               §§push((-(§§pop() * 74 * 7) - 33) * 18);
            }
            §§push(§§pop().round(§§pop() * (§§pop() * param3)));
            §§push(10);
            if(_loc11_)
            {
               §§push(-(-§§pop() - 62 + 1 - 1 + 1));
            }
            _loc4_ = §§pop() / (§§pop() * param3);
         }
         return _loc4_;
      }
      
      public static function randomSort(param1:*, param2:*) : Number
      {
         if(Math.random() < 0.5)
         {
            §§push(-1);
            if(_loc4_)
            {
               return -(§§pop() + 1 + 1 - 103 + 1);
            }
         }
         §§push(1);
         if(_loc4_)
         {
            §§push(§§pop() * 64 + 1 - 1 + 59 + 1);
         }
         return §§pop();
      }
      
      private static function saveCurrencySign(param1:String, param2:Boolean, param3:Number, param4:ProjectVO) : void
      {
         if(param1 && !param4.currencySign)
         {
            param4.currencySign = param1;
            param4.currencySignBeforeNumber = param2;
            param4.currencyDecimals = param3;
            param4.save();
         }
      }
      
      public static function maskPassword(param1:String) : String
      {
         var _loc2_:* = "";
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 1 - 1) * 62 + 1 - 1);
         }
         var _loc3_:* = §§pop();
         if(param1)
         {
            §§push(int(param1.length));
         }
         else
         {
            §§push(0);
            if(_loc6_)
            {
               §§push(-((§§pop() - 110) * 76 + 1 + 25 - 1) * 107);
            }
         }
         var _loc4_:int = §§pop();
         while(_loc3_ < _loc4_)
         {
            _loc2_ = _loc2_ + "*";
            _loc3_++;
         }
         return _loc2_;
      }
   }
}
