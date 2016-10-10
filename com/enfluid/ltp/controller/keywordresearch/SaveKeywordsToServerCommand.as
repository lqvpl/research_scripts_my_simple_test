package com.enfluid.ltp.controller.keywordresearch
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import mx.rpc.http.HTTPService;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.SearchNetworks;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.majestic.target;
   import com.enfluid.ltp.view.renderers.majestic.CompetitorAnalysisListItemRenderer;
   import mx.states.State;
   import mx.binding.Binding;
   import spark.effects.Resize;
   
   use namespace mx_internal;
   
   public final class SaveKeywordsToServerCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var seedKeyword:SeedKeywordVO;
      
      private var service:HTTPService;
      
      public function SaveKeywordsToServerCommand(param1:SeedKeywordVO)
      {
         this.service = new HTTPService();
         this.seedKeyword = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc4_:KeywordVO = null;
         var _loc6_:Object = null;
         if(!this.seedKeyword || !this.seedKeyword.keywords || §§pop() == §§pop())
         {
            done(FAILURE);
            return;
         }
         if(model.selectedProject.searchNetwork != SearchNetworks.GOOGLE || model.selectedProject.includeAdultAreas)
         {
            done();
            return;
         }
         if(this.seedKeyword.includeKeywords || this.seedKeyword.excludeKeywords || this.seedKeyword.isRelatedKeywordsOnly)
         {
            done();
            return;
         }
         var _loc1_:Object = {};
         var _loc2_:Object = {};
         _loc2_.lang = ProjectVO(this.seedKeyword.project).language.code;
         _loc2_.country = ProjectVO(this.seedKeyword.project).country.code;
         §§push(this.seedKeyword.keywords.length);
         §§push(0);
         if(_loc9_)
         {
            §§push(--((§§pop() - 104) * 51 + 1 - 1) - 83);
         }
         if(§§pop() > §§pop())
         {
            §§push(_loc2_);
            §§push(KeywordUtil);
            §§push();
            §§push(this.seedKeyword.keywords);
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() - 22 - 1 + 1) * 57 + 34 - 54 + 36);
            }
            §§pop().currency = §§pop().parseCurrencySymbol(§§pop().KeywordVO(§§pop().getItemAt(§§pop())).suggestedBidString);
         }
         else
         {
            Logger.log("Empty keywords result.");
            Logger.log("Project Details:");
            Logger.log("Country: " + model.selectedProject.countryCode);
            Logger.log("Language: " + model.selectedProject.languageCode);
            Logger.log("Keyword: " + model.currentSeedKeyword.keyword);
         }
         _loc1_.properties = _loc2_;
         var _loc3_:Array = [];
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() - 23 - 67 + 42) - 1 + 46 - 111);
         }
         for each(_loc4_ in this.seedKeyword.keywords)
         {
            if(!_loc4_.isGoogleRestrictedSearches)
            {
               _loc6_ = {};
               _loc6_.keyword = _loc4_.keyword;
               _loc6_.competition = _loc4_.advertiserCompetition;
               _loc6_.bid = _loc4_.suggestedBid;
               _loc6_.local_searches = _loc4_.localSearches;
               if(_loc4_.keyword.toLocaleLowerCase() == this.seedKeyword.keyword.toLocaleLowerCase())
               {
                  _loc1_.seed = _loc6_;
               }
               else
               {
                  _loc3_.push(_loc6_);
               }
            }
         }
         _loc1_.related = _loc3_;
         §§push(_loc1_.related.length);
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() - 15 + 1) + 1);
         }
         if(§§pop() == §§pop())
         {
            done();
            return;
         }
         var _loc5_:String = JSON.stringify(_loc1_);
         this.service.url = Constants.CACHE_API_URL + "keyword";
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         this.service.send(_loc5_).addResponder(this);
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
