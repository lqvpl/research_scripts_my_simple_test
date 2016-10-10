package com.enfluid.ltp.controller.keywordresearch
{
   import com.enfluid.ltp.controller.common.Command;
   import mx.rpc.IResponder;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.events.MouseEvent;
   import spark.events.TextOperationEvent;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   
   public final class SaveAvgKCToServer extends Command implements IResponder, IPhotonCommand
   {
       
      
      private var service:HTTPService;
      
      private var keyword:KeywordVO;
      
      private var typeCall:String;
      
      public function SaveAvgKCToServer(param1:KeywordVO, param2:String = "moz")
      {
         this.service = new HTTPService();
         this.keyword = param1;
         this.typeCall = param2;
         super();
      }
      
      public final function execute() : void
      {
         §§push(this.keyword.avgKC);
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() * 98 - 1 + 1);
         }
         if(§§pop() < §§pop())
         {
            done(FAILURE);
            return;
         }
         var _loc1_:Object = {};
         _loc1_.keyword = this.keyword.keyword;
         _loc1_.avg_kc = this.keyword.avgKC;
         _loc1_.country = ProjectVO(this.keyword.project).country.code;
         _loc1_.lang = ProjectVO(this.keyword.project).language.code;
         var _loc2_:String = JSON.stringify(_loc1_);
         var _loc3_:* = Constants.CACHE_API_URL + "keyword/avg-kc";
         if(this.typeCall == "majestic")
         {
            _loc3_ = _loc3_ + "/majestic";
         }
         this.service.url = _loc3_;
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         this.service.send(_loc2_).addResponder(this);
      }
      
      public function result(param1:Object) : void
      {
         done();
      }
      
      public function fault(param1:Object) : void
      {
         done(FAILURE);
      }
   }
}
