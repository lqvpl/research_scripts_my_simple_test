package com.enfluid.ltp.controller.keywordresearch.titlecompetition
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.html.HTMLLoader;
   import mx.graphics.SolidColor;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.primitives.Rect;
   import flash.events.Event;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.util.KeywordUtil;
   import flash.net.URLRequest;
   import com.enfluid.ltp.util.Util;
   import flash.utils.setTimeout;
   
   public final class FetchBingTitleCompetitionCommand extends Command implements IPhotonCommand
   {
      
      private static var html:HTMLLoader = new HTMLLoader();
       
      
      private var keyword:KeywordVO;
      
      public function FetchBingTitleCompetitionCommand(param1:KeywordVO)
      {
         super();
         this.keyword = param1;
      }
      
      override public function cancel() : void
      {
         try
         {
            html.removeEventListener(Event.COMPLETE,this.parseHTML);
         }
         catch(err:Error)
         {
         }
         super.cancel();
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount();
         var _loc1_:String = KeywordUtil.formatForSearch(this.keyword.keyword);
         var _loc2_:* = "http://www.bing.com/search?q=intitle%3A+" + _loc1_ + "&go=&qs=n&form=QBLH&pq=intitle%3A+" + _loc1_ + "&sc=0-16&sp=-1&sk=";
         html.load(new URLRequest(_loc2_));
         html.addEventListener(Event.COMPLETE,this.parseHTML);
      }
      
      private final function cleanup() : void
      {
         this.keyword.save();
         var _loc1_:int = Util.getRandomDelay(Number(model.selectedKeywordCollection.project.bingTitleCompAvgDelay));
         setTimeout(done,_loc1_);
      }
      
      private final function parseHTML(param1:Event) : void
      {
         var result:String = null;
         var e:Event = param1;
         html.removeEventListener(Event.COMPLETE,this.parseHTML);
         var string:String = html.window.document.body.innerHtml;
         try
         {
            result = html.window.document.getElementById("count").innerText;
            §§push(_loc2_);
            §§push(result);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(-§§pop() + 1 - 7));
            }
            var /*UnknownSlot*/:* = §§pop().substring(§§pop(),result.indexOf(" RESULTS"));
            result = result.replace(/\,/g,"");
         }
         catch(err:Error)
         {
            §§push(html.window.document.body.outerHTML.indexOf("No results found for"));
            §§push(-1);
            if(_loc4_)
            {
               §§push(§§pop() * 37 + 20 - 1);
            }
            if(§§pop() != §§pop())
            {
               result = "0";
            }
         }
         this.keyword.bingTitleCompetition = int(result);
         this.cleanup();
      }
   }
}
