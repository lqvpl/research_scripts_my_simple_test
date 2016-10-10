package com.enfluid.ltp.controller.keywordresearch.amazonkc
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.AmazonResultVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.dataandfilters.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.components.majestic.CompetitorMajesticAnalysisContentComponent;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.constants.Values;
   
   use namespace mx_internal;
   
   public final class SaveAmazonResultsToServerCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var keyword:KeywordVO;
      
      private var service:HTTPService;
      
      public function SaveAmazonResultsToServerCommand(param1:KeywordVO)
      {
         this.service = new HTTPService();
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc3_:AmazonResultVO = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc1_:Object = {};
         _loc1_.keyword = this.keyword.keyword;
         _loc1_.country = ProjectVO(this.keyword.project).country.code;
         _loc1_.lang = ProjectVO(this.keyword.project).language.code;
         var _loc2_:Array = [];
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 22 + 36) - 19);
         }
         for each(_loc3_ in this.keyword.amazonResults)
         {
            _loc5_ = {};
            _loc5_.asin = _loc3_.asin;
            _loc5_.url = _loc3_.url;
            _loc5_.thumbnail_url = _loc3_.thumbnailUrl;
            _loc5_.title = _loc3_.title;
            _loc5_.price = _loc3_.price;
            _loc5_.category = _loc3_.category;
            _loc5_.star_rating = _loc3_.starRating;
            _loc5_.num_reviews = _loc3_.numReviews;
            _loc5_.seller = _loc3_.seller;
            _loc5_.rank_on_page = _loc3_.rank;
            _loc2_.push(_loc5_);
         }
         _loc1_.products = _loc2_;
         _loc4_ = JSON.stringify(_loc1_);
         this.service.url = Constants.CACHE_API_URL + "amazon/products";
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         this.service.send(_loc4_).addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         done();
      }
      
      public final function fault(param1:Object) : void
      {
         done(FAILURE);
      }
   }
}
