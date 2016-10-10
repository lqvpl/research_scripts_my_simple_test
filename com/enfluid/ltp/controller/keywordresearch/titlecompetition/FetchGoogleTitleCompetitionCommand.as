package com.enfluid.ltp.controller.keywordresearch.titlecompetition
{
   import com.enfluid.ltp.controller.common.FetchGoogleCommand;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.Util;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.util.KeywordUtil;
   import flash.events.MouseEvent;
   
   public final class FetchGoogleTitleCompetitionCommand extends FetchGoogleCommand implements IPhotonCommand, IResponder
   {
       
      
      private var keyword:KeywordVO;
      
      public function FetchGoogleTitleCompetitionCommand(param1:KeywordVO)
      {
         this.keyword = param1;
         super();
      }
      
      public final function cleanup() : void
      {
         this.keyword.save();
         var _loc1_:Number = Util.getDelay(Number(model.selectedKeywordCollection.project.googleTitleCompAvgDelay));
         setTimeout(done,_loc1_);
         var _loc2_:int = model.selectedKeywordCollection.project.keywords.getItemIndex(this.keyword);
      }
      
      override public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount();
         super.execute();
      }
      
      override protected function calcUrl(param1:Boolean) : String
      {
         return "http://www.google.com/search?hl=en&q=allintitle%3A" + this.keyword.keyword.replace(/ /g,"+");
      }
      
      override protected function parseResult() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:String = null;
         §§push(0);
         if(_loc6_)
         {
            §§push((--§§pop() - 1 - 1) * 95 + 72);
         }
         var _loc3_:* = §§pop();
         try
         {
            _loc1_ = scraper.getElementById("resultStats");
            §§push(_loc1_.innerText.split(" "));
            §§push(1);
            if(_loc6_)
            {
               §§push(-(§§pop() - 1 + 1 + 1) + 1 - 94);
            }
            _loc2_ = §§pop()[§§pop()];
            _loc3_ = int(int(KeywordUtil.removeNonNumericChars(_loc2_)));
         }
         catch(err:Error)
         {
         }
         if(!_loc2_)
         {
            §§push(-1);
            if(_loc5_)
            {
               §§push((§§pop() - 1) * 55 + 1 + 1);
            }
            _loc3_ = §§pop();
         }
         this.keyword.googleTitleCompetition = _loc3_;
         this.cleanup();
      }
   }
}
