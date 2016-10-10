package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import flash.html.HTMLLoader;
   import mx.rpc.http.HTTPService;
   import flash.net.URLRequest;
   import spark.layouts.VerticalLayout;
   import mx.binding.BindingManager;
   import mx.rpc.events.ResultEvent;
   import mx.rpc.events.FaultEvent;
   import com.enfluid.ltp.util.GooglePageRankUtil;
   import spark.primitives.Rect;
   import mx.graphics.SolidColorStroke;
   import com.enfluid.ltp.model.constants.Values;
   import mx.utils.StringUtil;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import mx.core.FlexGlobals;
   
   public final class FetchPageRankCommand extends Command implements IPhotonCommand
   {
       
      
      private var competitor:CompetitorUrlVO;
      
      private var html:HTMLLoader;
      
      private var httpService:HTTPService;
      
      private var maxRetries:int = 5;
      
      private var retryCount:int = 0;
      
      private var retryDelay:int = 300;
      
      private var timeout:uint;
      
      private var url:String;
      
      private var urlReq:URLRequest;
      
      public function FetchPageRankCommand(param1:CompetitorUrlVO)
      {
         this.competitor = param1;
         super();
      }
      
      public function execute() : void
      {
         if(this.httpService == null)
         {
            this.httpService = new HTTPService();
            this.httpService.useProxy = false;
            this.httpService.method = "GET";
            if(!this.httpService.hasEventListener(ResultEvent.RESULT))
            {
               this.httpService.addEventListener(ResultEvent.RESULT,this.resultHandler);
               this.httpService.addEventListener(FaultEvent.FAULT,this.faultHandler);
            }
         }
         var _loc1_:String = this.competitor.url;
         _loc1_ = this.unencodeHTMLChars(_loc1_);
         this.httpService.url = "http://toolbarqueries.google.com/tbr?client=navclient-auto&features=Rank&ch=" + GooglePageRankUtil.getCheckSum(_loc1_) + "&q=info:" + encodeURIComponent(_loc1_);
         this.retryCount++;
         this.httpService.send();
      }
      
      private final function faultHandler(param1:* = null) : void
      {
         if(isCancelled)
         {
            return;
         }
         this.competitor.pageRank = Values.ERROR;
         done(FAILURE);
      }
      
      private final function resultHandler(param1:* = null) : void
      {
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() - 1 - 118 - 5);
         }
         var /*UnknownSlot*/:* = §§pop();
         var num:Number = NaN;
         var event:* = param1;
         if(isCancelled)
         {
            return;
         }
         if(StringUtil.trim(event.result) == "" && this.retryCount < this.maxRetries)
         {
            setTimeout(this.execute,this.retryDelay);
            return;
         }
         var rankData:Array = String(event.result).split(":");
         try
         {
            §§push(_loc2_);
            §§push();
            §§push(rankData);
            §§push(2);
            if(_loc4_)
            {
               §§push(§§pop() - 1 + 1 - 89);
            }
            var /*UnknownSlot*/:* = Number(§§pop().Number(§§pop()[§§pop()]));
            var rank:int = num;
         }
         catch(err:Error)
         {
            rank = Values.NO_VALUE;
         }
         if(isNaN(rank))
         {
            rank = Values.NO_VALUE;
         }
         this.competitor.pageRank = rank;
         done();
      }
      
      private final function unencodeHTMLChars(param1:String) : String
      {
         var _loc2_:String = param1.replace(/&amp;/ig,"&");
         _loc2_ = _loc2_.replace(/&lt;/ig,"<");
         _loc2_ = _loc2_.replace(/&gt;/ig,">");
         return _loc2_;
      }
   }
}
