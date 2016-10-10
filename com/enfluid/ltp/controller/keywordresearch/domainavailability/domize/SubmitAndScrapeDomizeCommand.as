package com.enfluid.ltp.controller.keywordresearch.domainavailability.domize
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import mx.core.FlexGlobals;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   
   public final class SubmitAndScrapeDomizeCommand extends DomizeCommand implements IPhotonCommand
   {
      
      private static const DIV_NOT_THERE:int = 1;
      
      private static const RESULT_NOT_THERE:int = 2;
      
      private static const SCRAPED_SUCCESSFULLY:int = 0;
       
      
      private var domains:Array;
      
      private var domainsToScrape:Array;
      
      private var _textArea;
      
      public function SubmitAndScrapeDomizeCommand(param1:Array)
      {
         this.domainsToScrape = [];
         this.domains = param1;
         super();
      }
      
      private function get textArea() : *
      {
         if(!this._textArea)
         {
            this._textArea = scraper.getElementById("qry");
         }
         return this._textArea;
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount();
         this.insertKeyword();
      }
      
      private final function clickClear() : void
      {
         var _loc1_:* = scraper.getElementById("clr");
         if(_loc1_)
         {
            scraper.click(_loc1_);
         }
      }
      
      private final function ensureAllDomainsLoaded(param1:int = 0) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc2_:* = scraper.getElementsByClassName("err");
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() - 1) * 64 * 92);
         }
         for each(_loc3_ in _loc2_)
         {
            try
            {
               scraper.click(_loc3_);
            }
            catch(error:Error)
            {
               continue;
            }
         }
         _loc4_ = scraper.getElementsByClassName("sp");
         §§push(_loc4_.length);
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 1 - 78 + 1) * 66 * 112 - 41);
         }
         if(§§pop() > §§pop() && §§pop() < §§pop())
         {
            §§push();
            §§push(this.ensureAllDomainsLoaded);
            §§push(100);
            if(_loc8_)
            {
               §§push(§§pop() + 96 - 1 - 28 + 85);
            }
            §§push(param1);
            §§push(1);
            if(_loc9_)
            {
               §§push((--§§pop() + 1) * 22 + 1);
            }
            §§pop().setTimeout(§§pop(),§§pop(),§§pop() + §§pop());
         }
         else
         {
            §§push(_loc2_.length);
            §§push(0);
            if(_loc8_)
            {
               §§push(--§§pop() - 104 - 1 + 1 + 88 - 1);
            }
            if(§§pop() == §§pop())
            {
               this.scrapeDomains();
            }
            else
            {
               §§push();
               §§push(this.scrapeDomains);
               §§push(250);
               if(_loc9_)
               {
                  §§push(§§pop() + 1 - 108 + 1 - 48 - 38 + 1);
               }
               §§pop().callDelayed(§§pop(),§§pop());
            }
         }
      }
      
      private final function insertKeyword() : void
      {
         var _loc1_:DomainsVO = null;
         §§push(this.domains.length);
         §§push(0);
         if(_loc4_)
         {
            §§push(--(§§pop() * 1) + 9 - 80);
         }
         if(§§pop() > §§pop())
         {
            _loc1_ = this.domains.shift();
            this.domainsToScrape.push(_loc1_);
            scraper.insertText(_loc1_.domainWithoutExtension,this.textArea);
            §§push(scraper);
            §§push(this.textArea);
            §§push(0);
            if(_loc4_)
            {
               §§push(-(((§§pop() - 69) * 55 + 8 - 1) * 48 - 1));
            }
            §§pop().fireKeyDown(§§pop(),§§pop(),§§pop());
            §§push(scraper);
            §§push(this.textArea);
            §§push(0);
            if(_loc5_)
            {
               §§push((-(§§pop() - 1) + 1 + 32) * 16);
            }
            §§pop().fireKeyUp(§§pop(),§§pop(),§§pop());
            FlexGlobals.topLevelApplication.callLater(this.insertKeyword);
            viewModel.domainCommandsCompleted++;
         }
         else
         {
            callDelayed(this.ensureAllDomainsLoaded);
         }
      }
      
      private final function scrapeDomain(param1:DomainsVO) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         §§push(0);
         if(_loc11_)
         {
            §§push(-(-§§pop() * 96));
         }
         var _loc6_:* = §§pop();
         var _loc2_:* = scraper.getElementById("dmz" + param1.domainWithoutExtension);
         if(!_loc2_)
         {
            Logger.log("DIV NOT FOUND FOR DOMAIN: " + param1.domainWithoutExtension);
            return;
         }
         var _loc3_:* = _loc2_.getElementsByTagName("li");
         §§push(0);
         if(_loc10_)
         {
            §§push((§§pop() * 16 - 1 - 73) * 51 + 1 - 45);
         }
         for each(_loc4_ in _loc3_)
         {
            try
            {
               _loc5_ = _loc4_.innerText;
               if(_loc5_)
               {
                  if("a" === _loc9_)
                  {
                     §§push(0);
                     if(_loc10_)
                     {
                        §§push(-(§§pop() * 83 + 86 + 1 - 67 + 1 + 114));
                     }
                  }
                  else if("u" === _loc9_)
                  {
                     §§push(1);
                     if(_loc11_)
                     {
                        §§push(-(§§pop() + 47) + 1 - 74 + 1);
                     }
                  }
                  else if("s" === _loc9_)
                  {
                     §§push(2);
                     if(_loc10_)
                     {
                        §§push((§§pop() + 106 - 1 - 1) * 13 * 78);
                     }
                  }
                  else if("err" === _loc9_)
                  {
                     §§push(3);
                     if(_loc11_)
                     {
                        §§push(§§pop() + 1 - 1 - 1);
                     }
                  }
                  else
                  {
                     §§push(4);
                     if(_loc10_)
                     {
                        §§push((§§pop() + 0 + 1 - 112) * 90 + 108 - 1 - 17);
                     }
                  }
                  switch(§§pop())
                  {
                     case 0:
                        _loc6_ = int(DomainStatuses.AVAILABLE);
                        break;
                     case 1:
                        _loc6_ = int(DomainStatuses.UNAVAILABLE);
                        break;
                     case 2:
                        _loc6_ = int(DomainStatuses.UNAVAILABLE);
                        break;
                     case 3:
                        _loc6_ = int(DomainStatuses.ERROR);
                        break;
                     default:
                        _loc6_ = int(DomainStatuses.ERROR);
                  }
                  param1[_loc5_.replace(".","")] = _loc6_;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         param1.save();
      }
      
      private final function scrapeDomains() : void
      {
         var _loc1_:DomainsVO = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 71 * 65 + 100 - 1 - 80);
         }
         for each(_loc1_ in this.domainsToScrape)
         {
            this.scrapeDomain(_loc1_);
         }
         this.clickClear();
         §§push();
         §§push(done);
         §§push(500);
         if(_loc4_)
         {
            §§push(-(§§pop() + 92 + 1) + 38);
         }
         §§pop().callDelayed(§§pop(),§§pop());
      }
   }
}
