package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.util.KeywordUtil;
   
   public final class CalcKeywordCompetitiveness extends Command implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      private var competitorUrls:CompetitorUrlVO;
      
      public function CalcKeywordCompetitiveness(param1:CompetitorUrlVO, param2:KeywordVO)
      {
         this.competitorUrls = param1;
         this.keyword = param2;
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:Number = NaN;
         var _loc11_:String = null;
         §§push(0);
         if(_loc25_)
         {
            §§push((§§pop() - 58 + 1 + 105 + 1) * 30 + 55);
         }
         var _loc20_:* = §§pop();
         §§push(0);
         if(_loc25_)
         {
            §§push((§§pop() - 1 - 1 - 78 - 61 - 92) * 11 - 1);
         }
         var _loc21_:* = §§pop();
         §§push(0);
         if(_loc25_)
         {
            §§push(§§pop() + 55 + 105 - 58);
         }
         var _loc22_:* = §§pop();
         if(!this.competitorUrls.pageAuthority || !this.competitorUrls.pageAuthority || !this.keyword.keywordStemmed || !this.competitorUrls.title || !this.competitorUrls.titleStemmed || !this.competitorUrls.urlAsKeywordsStemmed || !this.competitorUrls.urlAsKeywords)
         {
            this.competitorUrls.keywordCompetitiveness = Values.ERROR;
            done();
            return;
         }
         §§push(this.competitorUrls.pageAuthority);
         §§push(1);
         if(_loc26_)
         {
            §§push((§§pop() + 74 - 30 - 1 - 99) * 36);
         }
         if(§§pop() == §§pop())
         {
            _loc1_ = Number(this.competitorUrls.domainAuthority) * 0.55;
         }
         else
         {
            _loc1_ = Number(this.competitorUrls.pageAuthority);
         }
         var _loc2_:Array = this.keyword.keywordStemmed.split(" ");
         var _loc3_:String = this.competitorUrls.titleStemmed;
         var _loc4_:Array = _loc3_.split(" ");
         var _loc5_:int = Util.countKeywords(_loc2_,_loc4_);
         var _loc6_:Array = Util.getKeywordPresentList(_loc2_,_loc4_);
         var _loc7_:Number = _loc5_ / _loc2_.length;
         _loc1_ = _loc1_ * 0.45 + _loc1_ * 0.75 * _loc7_;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         §§push(0);
         if(_loc26_)
         {
            §§push(--(-§§pop() * 21 + 1 + 84));
         }
         for each(_loc11_ in _loc4_)
         {
            §§push(_loc11_);
            §§push(_loc6_);
            §§push(0);
            if(_loc26_)
            {
               §§push(-(§§pop() - 84 + 1) * 62 - 30);
            }
            if(§§pop() == §§pop()[§§pop()])
            {
               _loc6_.shift();
               _loc10_ = true;
            }
            else if(_loc10_ && _loc11_ != "")
            {
               _loc8_ = true;
            }
            §§push(_loc6_.length);
            §§push(0);
            if(_loc25_)
            {
               §§push(§§pop() - 81 + 50 - 1);
            }
            if(§§pop() == §§pop())
            {
               _loc9_ = true;
               break;
            }
         }
         if(!_loc9_)
         {
            §§push(_loc1_);
            §§push(5);
            if(_loc26_)
            {
               §§push(§§pop() - 113 - 117 + 1 + 1);
            }
            _loc1_ = §§pop() - §§pop();
         }
         else if(_loc8_)
         {
            §§push(_loc1_);
            §§push(2);
            if(_loc26_)
            {
               §§push(-(§§pop() - 1 + 1) - 89);
            }
            _loc1_ = §§pop() - §§pop();
         }
         var _loc12_:Array = this.keyword.strippedKeyword.split(" ");
         var _loc13_:String = this.competitorUrls.title.toLowerCase().replace(/[^A-Za-z0-9]/g," ");
         var _loc14_:Array = _loc13_.split(" ");
         var _loc15_:int = Util.countKeywords(_loc12_,_loc4_);
         if(_loc15_ < _loc5_)
         {
            §§push(_loc1_);
            §§push(3);
            if(_loc25_)
            {
               §§push(--(-((§§pop() + 6) * 97 + 105) - 1));
            }
            _loc1_ = §§pop() - §§pop();
         }
         var _loc16_:String = KeywordUtil.stripSpaces(this.keyword.strippedKeyword);
         var _loc17_:String = KeywordUtil.extractMainDomain(this.competitorUrls.url);
         §§push(_loc17_);
         §§push(0);
         if(_loc26_)
         {
            §§push(-(§§pop() + 115 + 65 + 111));
         }
         _loc17_ = §§pop().substr(§§pop(),_loc17_.indexOf("."));
         if(_loc17_ == _loc16_)
         {
            §§push(_loc1_);
            §§push(7);
            if(_loc26_)
            {
               §§push((§§pop() + 1 - 1) * 107 * 15 * 114);
            }
            _loc1_ = §§pop() + §§pop();
         }
         else
         {
            _loc20_ = int(_loc12_.length);
            _loc21_ = int(Util.countKeywords(_loc12_,this.competitorUrls.urlAsKeywords.split(" ")));
            _loc22_ = int(Util.countKeywords(_loc2_,this.competitorUrls.urlAsKeywordsStemmed.split(" ")));
            §§push(_loc22_);
            §§push(0);
            if(_loc26_)
            {
               §§push(-(§§pop() - 1) - 1);
            }
            if(§§pop() > §§pop())
            {
               if(_loc21_ == _loc20_)
               {
                  §§push(_loc1_);
                  §§push(5);
                  if(_loc26_)
                  {
                     §§push(-(§§pop() - 1) - 38);
                  }
                  _loc1_ = §§pop() + §§pop();
               }
               if(_loc22_ == _loc20_)
               {
                  §§push(_loc1_);
                  §§push(4);
                  if(_loc26_)
                  {
                     §§push(§§pop() - 1 - 1 + 71);
                  }
                  _loc1_ = §§pop() + §§pop();
               }
               else if(_loc22_ == _loc20_ - 1)
               {
                  §§push(_loc1_);
                  §§push(3);
                  if(_loc25_)
                  {
                     §§push(((§§pop() + 46) * 69 - 99 - 1) * 38 + 1);
                  }
                  _loc1_ = §§pop() + §§pop();
               }
               else
               {
                  §§push(_loc22_);
                  §§push(_loc20_);
                  §§push(2);
                  if(_loc25_)
                  {
                     §§push(-((§§pop() * 18 * 37 - 1 - 8) * 85) + 1);
                  }
                  if(§§pop() == §§pop() - §§pop())
                  {
                     §§push(_loc1_);
                     §§push(2);
                     if(_loc26_)
                     {
                        §§push(-(-(§§pop() + 97) + 1));
                     }
                     _loc1_ = §§pop() + §§pop();
                  }
                  else
                  {
                     §§push(_loc22_);
                     §§push(_loc20_);
                     §§push(3);
                     if(_loc26_)
                     {
                        §§push(-(§§pop() + 1 - 1 - 1) - 22);
                     }
                     if(§§pop() == §§pop() - §§pop())
                     {
                        §§push(_loc1_);
                        §§push(1);
                        if(_loc25_)
                        {
                           §§push(-(-(§§pop() + 1 + 1) * 111) - 1 + 1);
                        }
                        _loc1_ = §§pop() + §§pop();
                     }
                  }
               }
            }
         }
         var _loc18_:int = this.competitorUrls.urlAsKeywords.split(" ").length;
         §§push(_loc18_);
         §§push(3);
         if(_loc25_)
         {
            §§push(§§pop() - 1 + 72 - 112 + 103 + 72);
         }
         var _loc19_:* = int(§§pop() - §§pop());
         §§push(_loc19_);
         §§push(0);
         if(_loc26_)
         {
            §§push(-((§§pop() + 78) * 67 * 95 + 1) - 1 + 1);
         }
         if(§§pop() < §§pop())
         {
            §§push(0);
            if(_loc26_)
            {
               §§push((-(§§pop() + 1) - 1 - 1) * 92 - 1 - 1);
            }
            _loc19_ = §§pop();
         }
         §§push(_loc1_);
         §§push(2);
         if(_loc25_)
         {
            §§push((§§pop() - 3) * 37 * 117);
         }
         _loc1_ = §§pop() - §§pop() * _loc19_;
         §§push(_loc1_);
         §§push(100);
         if(_loc25_)
         {
            §§push(--§§pop() + 1 - 17 + 56);
         }
         if(§§pop() > §§pop())
         {
            §§push(100);
            if(_loc25_)
            {
               §§push(-(§§pop() + 92 + 47 - 49));
            }
            _loc1_ = §§pop();
         }
         §§push(_loc1_);
         §§push(0);
         if(_loc26_)
         {
            §§push(-§§pop() + 1 - 55 + 109);
         }
         if(§§pop() < §§pop())
         {
            §§push(0);
            if(_loc25_)
            {
               §§push(-(§§pop() - 69 + 102) - 1);
            }
            _loc1_ = §§pop();
         }
         §§push(this.competitorUrls);
         §§push(Math);
         §§push(_loc1_);
         §§push(100);
         if(_loc25_)
         {
            §§push(-(§§pop() - 1) * 12 + 1);
         }
         §§push(§§pop().round(§§pop() * §§pop()));
         §§push(100);
         if(_loc25_)
         {
            §§push(-(§§pop() * 30 * 100) * 45 + 1 + 1);
         }
         §§pop().keywordCompetitiveness = §§pop() / §§pop();
         done();
      }
   }
}
