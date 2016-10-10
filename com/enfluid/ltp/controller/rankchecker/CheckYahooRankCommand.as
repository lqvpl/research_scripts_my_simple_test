package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.html.HTMLLoader;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import flash.net.URLRequest;
   import flash.events.Event;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.model.constants.RankCheckConstants;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.utils.setTimeout;
   import spark.effects.Resize;
   import mx.binding.BindingManager;
   
   use namespace bi_internal;
   
   public final class CheckYahooRankCommand extends Command implements IPhotonCommand
   {
       
      
      private var currentRank:int = 0;
      
      private var html:HTMLLoader;
      
      private var rankCheckItem:RankCheckItemVO;
      
      private var searchTermSubmitted:Boolean = false;
      
      public function CheckYahooRankCommand(param1:RankCheckItemVO)
      {
         this.html = new HTMLLoader();
         super();
         this.rankCheckItem = param1;
      }
      
      public function execute() : void
      {
         this.html.load(new URLRequest("http://search.yahoo.com/web/advanced"));
         this.html.addEventListener(Event.COMPLETE,this.onLoad);
      }
      
      private final function cleanup() : void
      {
         this.html.removeEventListener(Event.COMPLETE,this.onLoad);
         done();
      }
      
      private final function clickNextPage() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:String = null;
         var _loc1_:Object = this.html.window.document.getElementsByClassName("next");
         §§push(0);
         if(_loc7_)
         {
            §§push(-(((§§pop() - 96 - 1) * 64 - 1) * 81 - 1));
         }
         for each(_loc2_ in _loc1_)
         {
            try
            {
               if(_loc2_.href)
               {
                  _loc3_ = _loc2_.href;
                  break;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         if(!_loc2_ || !_loc3_)
         {
            this.rankCheckItem.yahooPage = RankCheckConstants.OVER_250;
            this.cleanup();
            return;
         }
         this.html.load(new URLRequest(_loc3_));
      }
      
      private final function onLoad(param1:Event) : void
      {
         if(!this.searchTermSubmitted)
         {
            this.submitSearchTerm();
         }
         else
         {
            this.scrapeResults();
         }
      }
      
      private final function scrapeResults() : void
      {
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         §§push(0);
         if(_loc15_)
         {
            §§push((§§pop() + 1 - 1) * 51 - 95);
         }
         var _loc7_:* = §§pop();
         §§push(0);
         if(_loc15_)
         {
            §§push(-(-§§pop() + 93));
         }
         var _loc8_:* = §§pop();
         var _loc9_:String = null;
         var _loc1_:Boolean = false;
         var _loc2_:Object = this.html.window.document.getElementsByTagName("a");
         var _loc3_:Array = [];
         §§push(0);
         if(_loc15_)
         {
            §§push((§§pop() + 1 - 31) * 56);
         }
         for each(_loc4_ in _loc2_)
         {
            try
            {
               §§push(_loc4_.getAttribute("class").indexOf("ac-algo"));
               §§push(0);
               if(_loc15_)
               {
                  §§push(((§§pop() - 1 - 1 + 72) * 100 - 1) * 18);
               }
               if(§§pop() >= §§pop())
               {
                  _loc6_ = _loc4_.href;
                  §§push(_loc6_.indexOf("RU="));
                  §§push(3);
                  if(_loc14_)
                  {
                     §§push(-(§§pop() + 1 - 7) - 1);
                  }
                  _loc7_ = int(§§pop() + §§pop());
                  _loc8_ = int(_loc6_.indexOf("/",_loc7_));
                  _loc9_ = _loc6_.substring(_loc7_,_loc8_);
                  _loc9_ = unescape(_loc9_);
                  _loc3_.push(_loc9_);
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         §§push(0);
         if(_loc15_)
         {
            §§push(--((§§pop() + 1) * 33));
         }
         for each(_loc5_ in _loc3_)
         {
            this.currentRank++;
            if(Util.isRankCheckMatch(this.rankCheckItem.domain,_loc5_))
            {
               this.rankCheckItem.yahooPage = _loc5_;
               this.rankCheckItem.yahooRank = String(this.currentRank);
               this.cleanup();
               return;
            }
         }
         if(this.currentRank < Constants.MAX_RANKS_TO_CHECK)
         {
            §§push();
            §§push(this.clickNextPage);
            §§push(1000);
            if(_loc15_)
            {
               §§push(-(-(§§pop() * 50) - 1) + 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
         else
         {
            this.rankCheckItem.yahooRank = RankCheckConstants.OVER_250;
            this.cleanup();
         }
      }
      
      private final function submitSearchTerm() : void
      {
         var inputs:Object = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 95 - 1 - 48);
         }
         var /*UnknownSlot*/:* = §§pop();
         try
         {
            this.html.window.document.getElementById("f0va").value = this.rankCheckItem.searchTerm;
            this.html.window.document.getElementById("f0n").value = "100";
            inputs = this.html.window.document.getElementById("yschfrm").getElementsByTagName("input");
            §§push(_loc1_);
            §§push(0);
            if(_loc3_)
            {
               §§push(-(§§pop() - 1 + 1) + 88 + 1 - 1);
            }
            var /*UnknownSlot*/:* = §§pop();
            while(i < inputs.length)
            {
               if(inputs[i].getAttribute("type") == "submit")
               {
                  inputs[i].click();
                  break;
               }
               i++;
            }
            this.searchTermSubmitted = true;
            return;
         }
         catch(e:Error)
         {
            rankCheckItem.yahooPage = RankCheckConstants.FETCHING_ERROR;
            rankCheckItem.yahooRank = RankCheckConstants.FETCHING_ERROR;
            cleanup();
            return;
         }
      }
   }
}
