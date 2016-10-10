package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import mx.rpc.AsyncToken;
   import com.enfluid.ltp.util.Logger;
   import com.photon.controller.PhotonCommand;
   import mx.effects.Sequence;
   
   public final class StemKeywordsCommand extends Command implements IPhotonCommand, IResponder
   {
      
      private static const ITEM_SEPARATOR:String = " *#* ";
      
      private static const SECTION_SEPARATOR:String = " :^^: ";
       
      
      private var keyword:KeywordVO;
      
      private var service:HTTPService;
      
      public function StemKeywordsCommand(param1:KeywordVO)
      {
         this.service = new HTTPService();
         this.keyword = param1;
         super();
      }
      
      public final function createStringToStem() : String
      {
         var _loc2_:CompetitorUrlVO = null;
         var _loc1_:String = "";
         _loc1_ = _loc1_ + (this.keyword.strippedKeyword + SECTION_SEPARATOR);
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() + 1 - 1) * 22 + 78) * 1 + 1);
         }
         for each(_loc2_ in this.keyword.competitorURLs)
         {
            _loc1_ = _loc1_ + ((_loc2_.urlAsKeywords || "") + ITEM_SEPARATOR);
         }
         _loc1_ = _loc1_ + SECTION_SEPARATOR;
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() + 1 - 77) * 10);
         }
         for each(_loc2_ in this.keyword.competitorURLs)
         {
            _loc1_ = _loc1_ + ((_loc2_.title || "") + ITEM_SEPARATOR);
         }
         return _loc1_;
      }
      
      public function execute() : void
      {
         var _loc1_:String = KeywordUtil.stripHTML(this.createStringToStem());
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.url = "http://longtailpro.com/ftp1/stemmer-relay.php";
         §§push(this.service);
         §§push("X-Mashape-Authorization");
         §§push(§_e_-----_§);
         §§push(-1820302790);
         if(_loc5_)
         {
            §§push(-(§§pop() + 99) * 111);
         }
         §§pop().headers = {§§pop():§§pop().§_e_-_-__-§(§§pop())};
         this.service.method = "POST";
         var _loc2_:Object = {};
         _loc2_.stemmer = "lancaster";
         _loc2_.text = _loc1_;
         var _loc3_:AsyncToken = this.service.send(_loc2_);
         _loc3_.addResponder(this);
      }
      
      public final function fault(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(isCancelled)
         {
            return;
         }
         §§push((param1.message.body as String).indexOf("text"));
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 119 + 1) - 5);
         }
         if(§§pop() > §§pop())
         {
            _loc2_ = new Object();
            _loc2_.result = param1.message.body;
            this.result(_loc2_);
         }
         else
         {
            Logger.log("KEYWORD STEMMER FAILED: " + param1.fault.faultDetail);
            done(PhotonCommand.FAILURE);
         }
      }
      
      public final function result(param1:Object) : void
      {
         var _loc8_:CompetitorUrlVO = null;
         if(isCancelled)
         {
            return;
         }
         var _loc2_:Object = JSON.parse(param1.result);
         var _loc3_:String = _loc2_.text;
         var _loc4_:Array = _loc3_.split(SECTION_SEPARATOR);
         §§push(this.keyword);
         §§push(_loc4_);
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() + 76 - 1) * 19);
         }
         §§pop().keywordStemmed = §§pop()[§§pop()];
         §§push();
         §§push(_loc4_);
         §§push(1);
         if(_loc9_)
         {
            §§push(-(-(§§pop() * 34) - 32 - 1 + 1) + 1);
         }
         var _loc5_:Array = §§pop().String(§§pop()[§§pop()]).split(ITEM_SEPARATOR);
         §§push();
         §§push(_loc4_);
         §§push(2);
         if(_loc9_)
         {
            §§push(§§pop() + 18 + 1 - 10);
         }
         var _loc6_:Array = §§pop().String(§§pop()[§§pop()]).split(ITEM_SEPARATOR);
         §§push(0);
         if(_loc9_)
         {
            §§push(--(§§pop() * 65) * 83 + 87 + 1);
         }
         var _loc7_:* = §§pop();
         while(_loc7_ < _loc5_.length)
         {
            _loc8_ = CompetitorUrlVO(this.keyword.competitorURLs.getItemAt(_loc7_));
            _loc8_.urlAsKeywordsStemmed = _loc5_[_loc7_];
            _loc8_.titleStemmed = _loc6_[_loc7_];
            _loc7_++;
         }
         done();
      }
   }
}
