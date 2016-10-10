package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.Scraper;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import flash.html.HTMLLoader;
   import mx.collections.XMLListCollection;
   import flash.net.URLRequest;
   import flash.events.Event;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.constants.RankCheckConstants;
   import spark.layouts.VerticalLayout;
   
   public final class CheckBingRankCommand extends Command implements IPhotonCommand
   {
       
      
      private var scraper:Scraper;
      
      private var rankCheckItem:RankCheckItemVO;
      
      private var currentSearchResult:int;
      
      private var html:HTMLLoader;
      
      public function CheckBingRankCommand(param1:RankCheckItemVO)
      {
         this.scraper = new Scraper();
         this.rankCheckItem = param1;
         super();
      }
      
      public function execute() : void
      {
         §§push(this);
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 98) * 56 + 82 + 1) * 66);
         }
         §§pop().currentSearchResult = §§pop();
         this.html = new HTMLLoader();
         var _loc1_:String = "http://www.bing.com/search?q=" + this.rankCheckItem.searchTerm.replace(/ /g,"+");
         this.html.load(new URLRequest(_loc1_));
         this.html.addEventListener(Event.COMPLETE,this.onNextPageLoadBing);
      }
      
      private final function onNextPageLoadBing(param1:Event) : void
      {
         this.html.removeEventListener(Event.COMPLETE,this.onNextPageLoadBing);
         if(isCancelled)
         {
            new SaveRankItemsCommand().execute();
            return;
         }
         this.parsePageBing();
      }
      
      private final function parsePageBing() : void
      {
         var results:* = undefined;
         var result:* = undefined;
         var userUrl:String = null;
         var anchors:* = undefined;
         var pageUrl:String = null;
         var pageLinkFound:Boolean = false;
         var tmp1:Object = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 70 + 1 + 1) - 1);
         }
         var /*UnknownSlot*/:* = §§pop();
         var pageLink:String = null;
         var resultFound:Boolean = false;
         try
         {
            results = this.html.window.document.getElementsByClassName("b_algo");
            §§push(0);
            if(_loc7_)
            {
               §§push((-§§pop() + 16) * 116 + 1 + 1);
            }
            for each(result in results)
            {
               if(!(result is int || result is Function))
               {
                  this.currentSearchResult++;
                  userUrl = this.rankCheckItem.domain;
                  anchors = result.getElementsByTagName("a");
                  §§push(anchors.length);
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push(-§§pop() + 28 + 1 + 6 + 89 + 1);
                  }
                  if(§§pop() > §§pop())
                  {
                     §§push(_loc1_);
                     §§push(anchors);
                     §§push(0);
                     if(_loc7_)
                     {
                        §§push(§§pop() + 87 + 1 - 90 - 1 - 108 - 78);
                     }
                     var /*UnknownSlot*/:* = §§pop()[§§pop()].getAttribute("href");
                     if(Util.isRankCheckMatch(userUrl,pageUrl))
                     {
                        resultFound = true;
                        break;
                     }
                  }
               }
            }
            if(resultFound)
            {
               this.rankCheckItem.bingRank = this.currentSearchResult.toString();
               this.rankCheckItem.bingPage = pageUrl;
               done();
            }
            else if(this.currentSearchResult < Constants.MAX_RANKS_TO_CHECK)
            {
               pageLinkFound = false;
               tmp1 = this.html.window.document.getElementsByTagName("a");
               §§push(_loc1_);
               §§push(0);
               if(_loc7_)
               {
                  §§push(-(-(§§pop() + 1) * 0) - 113 - 1);
               }
               var /*UnknownSlot*/:* = §§pop();
               while(k < tmp1.length)
               {
                  if(tmp1[k].getAttribute("class") == "sb_pagN")
                  {
                     pageLink = tmp1[k].getAttribute("href");
                     pageLinkFound = true;
                     break;
                  }
                  k++;
               }
               if(pageLinkFound)
               {
                  this.html.load(new URLRequest("http://www.bing.com" + pageLink));
                  this.html.addEventListener(Event.COMPLETE,this.onNextPageLoadBing);
               }
               else
               {
                  this.rankCheckItemOutOfRange();
               }
            }
            else
            {
               this.rankCheckItemOutOfRange();
            }
            return;
         }
         catch(e:Error)
         {
            rankCheckItemOutOfRange();
            return;
         }
      }
      
      private final function rankCheckItemOutOfRange() : void
      {
         this.rankCheckItem.bingRank = RankCheckConstants.OVER_250;
         done();
      }
   }
}
