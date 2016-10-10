package com.enfluid.ltp.util
{
   import mx.formatters.DateFormatter;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.RTDomain;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.controller.rankchecker.DeleteRankCheckRecordCommand;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.model.vo.RTKeyword;
   import spark.effects.AddAction;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.ProjectDropDownItemRenderer;
   import spark.primitives.Rect;
   import flash.filesystem.File;
   import mx.binding.Binding;
   import spark.components.Label;
   import flash.events.Event;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.controller.keywordresearch.SaveKeywordsToServerCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.collections.ArrayCollection;
   import com.hurlant.crypto.prng.ARC4;
   import com.hurlant.crypto.prng.IPRNG;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.view.skins.KeywordDataGridSkinInnerClass7;
   import com.hurlant.math.BigInteger;
   import com.enfluid.ltp.model.vo.DomainsVO;
   
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
         if(_loc7_)
         {
            §§push((-(§§pop() - 21) + 1) * 82 * 45);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 13 - 96 + 33);
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
         if(_loc6_)
         {
            §§push(-§§pop() * 89 + 20 - 44);
         }
         var _loc2_:int = §§pop().ceil(§§pop() / §§pop());
         var _loc3_:int = Math.ceil(param1.length / _loc2_);
         var _loc4_:Array = [];
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() + 14) * 74 * 9 + 1) * 1);
         }
         var _loc5_:* = §§pop();
         while(_loc5_ < _loc2_)
         {
            §§push(_loc4_);
            §§push(_loc5_);
            §§push(param1);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() + 1 - 57 + 1 - 47) - 1 + 1);
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
            §§push((§§pop() + 1 - 1) * 68 - 23);
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
            if(_loc7_)
            {
               §§push(-((§§pop() - 112 - 104) * 1));
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
         if(_loc5_)
         {
            §§push(-(§§pop() - 1 - 1) * 54 - 1 - 1);
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
            §§push(--(§§pop() * 23 - 1 - 87 - 1));
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
         if(_loc5_)
         {
            §§push((§§pop() * 76 - 3 + 1 - 1) * 12 - 1 - 2);
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
            §§push(-1820302785);
            if(_loc3_)
            {
               §§push((-(§§pop() + 14) - 28 + 79) * 90);
            }
            §§pop()._userKey = §§pop().§_e_-_-__-§(§§pop()) + _loc1_;
         }
         return _userKey;
      }
      
      public static function isInArray(param1:String, param2:Array) : Boolean
      {
         var _loc3_:String = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(-§§pop() - 63 + 30 - 1);
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
            §§push(-((§§pop() + 1) * 84) * 99);
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
         if(_loc6_)
         {
            §§push(§§pop() - 62 - 1 + 2 + 1);
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
            if(_loc5_)
            {
               §§push(-(-§§pop() - 94));
            }
            §§push(§§pop().parseInt(§§pop().String(§§pop()[§§pop()])));
            §§push(0);
            if(_loc5_)
            {
               §§push(-§§pop() + 1 + 1 - 81 - 1 - 1 + 1);
            }
            if(§§pop() == §§pop())
            {
               return false;
            }
            §§push();
            §§push();
            §§push(_loc3_);
            §§push(3);
            if(_loc5_)
            {
               §§push(§§pop() * 100 + 102 + 1);
            }
            §§push(§§pop().parseInt(§§pop().String(§§pop()[§§pop()])));
            §§push(0);
            if(_loc5_)
            {
               §§push((§§pop() - 1) * 80 + 1);
            }
            if(§§pop() == §§pop())
            {
               return false;
            }
            §§push(0);
            if(_loc5_)
            {
               §§push(-(§§pop() - 1 + 39 - 67));
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
         if(_loc5_)
         {
            §§push(§§pop() * 97 - 69 + 26);
         }
         var _loc4_:* = §§pop();
         §§push(param1);
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 56 + 1 - 116 - 1);
         }
         if(§§pop().substr(§§pop(),7) == "http://")
         {
            param1 = param1.split("http://").join("");
         }
         §§push(param1);
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 32 + 1) * 36 + 1);
         }
         if(§§pop().substr(§§pop(),8) == "https://")
         {
            param1 = param1.split("https://").join("");
         }
         §§push(param1);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-§§pop() + 32 + 1) * 113 * 70);
         }
         if(§§pop().substr(§§pop(),4) == "www.")
         {
            param1 = param1.split("www.").join("");
         }
         §§push(param1.search("/"));
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() * 43 - 1) - 1 + 3);
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1.split("/"));
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() + 1 + 1 - 102) - 3 - 1 - 66);
            }
            param1 = §§pop()[§§pop()];
         }
         §§push(0);
         if(_loc5_)
         {
            §§push(-§§pop() - 20 + 1 + 66 - 1 - 1 + 28);
         }
         var _loc2_:Number = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(-§§pop() * 51 + 3 - 111 - 1);
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
         if(_loc6_)
         {
            §§push(-(§§pop() + 24 + 1 + 1 - 12) * 60);
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1.split("."));
            §§push(1);
            if(_loc6_)
            {
               §§push((§§pop() * 20 + 1 - 109 - 42) * 10 + 1);
            }
            §§push(§§pop()[§§pop()].length);
            §§push(3);
            if(_loc6_)
            {
               §§push(-((-(§§pop() * 7) - 100) * 110 * 3 - 1));
            }
            if(§§pop() > §§pop())
            {
               §§push(param1.split("."));
               §§push(0);
               if(_loc6_)
               {
                  §§push(§§pop() + 1 - 1 - 104);
               }
               _loc4_ = int(§§pop()[§§pop()].length);
               §§push(param1);
               §§push(_loc4_);
               §§push(1);
               if(_loc5_)
               {
                  §§push(§§pop() - 38 - 8 - 1 - 1 - 1 - 1);
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
            §§push(---§§pop() - 1);
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
      
      public static function findKeywordVOs(param1:String, param2:ArrayCollection) : Array
      {
         var _loc4_:KeywordVO = null;
         var _loc3_:Array = [];
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() * 91 - 1 + 80);
         }
         for each(_loc4_ in param2.source)
         {
            if(_loc4_.keyword == param1)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
      
      public static function calcCompAnalysisAvg(param1:KeywordVO, param2:String, param3:int) : Number
      {
         var _loc6_:CompetitorUrlVO = null;
         var _loc7_:Number = NaN;
         §§push(0);
         if(_loc11_)
         {
            §§push(§§pop() + 116 + 41 + 1 - 1);
         }
         var _loc4_:Number = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(--(§§pop() - 1 - 1) - 62);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push((§§pop() - 1 + 80) * 65 - 81 - 5 - 1);
         }
         for each(_loc6_ in param1.competitorURLs)
         {
            _loc7_ = _loc6_[param2];
            §§push(_loc7_);
            §§push(0);
            if(_loc10_)
            {
               §§push((-§§pop() + 9) * 87);
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
            §§push(§§pop() * 113 - 1 - 101 - 54 - 65);
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
            if(_loc11_)
            {
               §§push((-§§pop() - 1) * 28 - 1);
            }
            §§push(§§pop().round(§§pop() * (§§pop() * param3)));
            §§push(10);
            if(_loc10_)
            {
               §§push(§§pop() - 86 - 1 - 66);
            }
            _loc4_ = §§pop() / (§§pop() * param3);
         }
         return _loc4_;
      }
      
      public static function calcPageAuthorityAvg(param1:KeywordVO, param2:String, param3:String, param4:int) : Number
      {
         var _loc7_:CompetitorUrlVO = null;
         var _loc8_:Number = NaN;
         §§push(0);
         if(_loc12_)
         {
            §§push(§§pop() * 43 - 85 + 98 - 1 - 1 - 1 + 1);
         }
         var _loc5_:Number = §§pop();
         §§push(0);
         if(_loc12_)
         {
            §§push(-((-§§pop() + 93 - 1 - 1) * 31));
         }
         var _loc6_:* = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(§§pop() - 1 - 1 + 1 - 1);
         }
         for each(_loc7_ in param1.competitorURLs)
         {
            _loc8_ = _loc7_[param2];
            §§push(_loc8_);
            §§push(1);
            if(_loc11_)
            {
               §§push((§§pop() - 1) * 25 - 34 - 116 + 98);
            }
            if(§§pop() > §§pop())
            {
               _loc5_ = _loc5_ + _loc8_;
               _loc6_++;
            }
            else
            {
               §§push(_loc8_);
               §§push(1);
               if(_loc12_)
               {
                  §§push(§§pop() - 1 + 1 + 22);
               }
               if(§§pop() == §§pop() && §§pop() > §§pop())
               {
                  _loc5_ = _loc5_ + _loc7_[param3] * 0.55;
                  _loc6_++;
               }
            }
         }
         _loc5_ = _loc5_ / _loc6_;
         §§push(param4);
         §§push(0);
         if(_loc11_)
         {
            §§push((-§§pop() - 45 + 1 + 1 + 1) * 82 + 1);
         }
         if(§§pop() == §§pop())
         {
            _loc5_ = Math.round(_loc5_);
         }
         else
         {
            §§push(Math);
            §§push(_loc5_);
            §§push(10);
            if(_loc11_)
            {
               §§push(-(-§§pop() + 13) * 65 * 6);
            }
            §§push(§§pop().round(§§pop() * (§§pop() * param4)));
            §§push(10);
            if(_loc11_)
            {
               §§push((§§pop() + 1 - 1) * 46 + 115);
            }
            _loc5_ = §§pop() / (§§pop() * param4);
         }
         return _loc5_;
      }
      
      public static function randomSort(param1:*, param2:*) : Number
      {
         if(Math.random() < 0.5)
         {
            §§push(-1);
            if(_loc3_)
            {
               return (§§pop() + 1 + 1 - 34 - 1 - 1 + 98) * 100;
            }
         }
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() + 84 - 13) * 70 + 18);
         }
         return §§pop();
      }
      
      public static function maskPassword(param1:String) : String
      {
         var _loc2_:* = "";
         §§push(0);
         if(_loc6_)
         {
            §§push(-(-(§§pop() + 79) + 95) + 98);
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
               §§push(§§pop() + 88 - 1 - 1);
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
      
      public static function saveDomains(param1:*) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:DomainsVO = null;
         var _loc5_:KeywordVO = null;
         var _loc2_:Object = {};
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() * 107 - 1 - 40 - 89 + 1);
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_ is DomainsVO)
            {
               _loc4_ = _loc3_ as DomainsVO;
               _loc4_.checkHasMissingData();
               _loc5_ = _loc4_.getKeyword();
               _loc2_[_loc5_.keyword] = _loc5_;
            }
            else if(_loc3_ is Array)
            {
               §§push(0);
               if(_loc10_)
               {
                  §§push(-(§§pop() * 110) * 27 * 96);
               }
               for each(_loc4_ in _loc3_)
               {
                  _loc4_.checkHasMissingData();
                  _loc5_ = _loc4_.getKeyword();
                  _loc2_[_loc5_.keyword] = _loc5_;
               }
            }
         }
         §§push(0);
         if(_loc11_)
         {
            §§push((-(§§pop() + 1) + 1) * 54 * 18 + 1);
         }
         for each(_loc5_ in _loc2_)
         {
            _loc5_.save();
         }
      }
   }
}
