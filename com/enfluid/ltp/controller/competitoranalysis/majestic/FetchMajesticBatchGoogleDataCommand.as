package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import com.enfluid.ltp.controller.common.FetchCompetitorUrls;
   import spark.components.Image;
   import mx.binding.BindingManager;
   
   public final class FetchMajesticBatchGoogleDataCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var keywordsBatch:Array;
      
      private var model:DataModel;
      
      private var viewModel:ViewModel;
      
      public function FetchMajesticBatchGoogleDataCommand(param1:Array)
      {
         this.model = DataModel.instance;
         this.viewModel = ViewModel.instance;
         this.keywordsBatch = param1;
         super();
      }
      
      override public function execute() : void
      {
         var _loc2_:KeywordVO = null;
         var _loc3_:CountryVO = null;
         var _loc4_:LanguageVO = null;
         var _loc5_:ProjectVO = null;
         var _loc1_:Boolean = true;
         this.viewModel.isFetchingBulk = true;
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() - 1 - 59 + 1 - 1 - 19 - 1 - 1);
         }
         for each(_loc2_ in this.keywordsBatch)
         {
            _loc2_.avgKC = Values.WAITING;
            if(_loc1_)
            {
               _loc2_.avgKC = Values.CURRENTLY_FETCHING;
               _loc1_ = false;
            }
            if(!this.viewModel.selectedKeywordsTab.isFavoritesTab && !this.viewModel.selectedKeywordsTab.isTrashTab)
            {
               _loc3_ = this.model.selectedProject.country;
               _loc4_ = this.model.selectedProject.language;
            }
            else
            {
               _loc5_ = _loc2_.project;
               if(_loc5_)
               {
                  _loc3_ = _loc5_.country;
                  _loc4_ = _loc5_.language;
               }
            }
            addCommand(new DeleteCompetitorUrlsCommand(_loc2_.competitorURLs,_loc2_));
            addCommand(new FetchCompetitorUrls(_loc2_,_loc3_,_loc4_));
            addCommand(new FetchMajesticCacheKcCommand(_loc2_,true));
         }
         addCommand(new FetchMajesticBatchPagesDataCommand(this.keywordsBatch));
         addCommand(new FetchMajesticDomainsBulkKcCommand(this.keywordsBatch));
         addCommand(new FetchMajesticPagesBulkKcCommand(this.keywordsBatch));
         super.execute();
      }
      
      override public function cancel() : void
      {
         var _loc1_:KeywordVO = null;
         §§push(0);
         if(_loc4_)
         {
            §§push((-§§pop() + 109 - 1 + 82 + 1) * 78 - 1);
         }
         for each(_loc1_ in this.keywordsBatch)
         {
            if(_loc1_.avgKC == Values.WAITING || _loc1_.avgKC == Values.COMPETITORS_BULK_FETCHING_DONE || _loc1_.avgKC == Values.CURRENTLY_FETCHING)
            {
               _loc1_.avgKC = Values.NOT_FETCHED;
            }
         }
         this.model.isFetchingBatchMissingMajesticKC = false;
         super.cancel();
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.viewModel.isFetchingBulk = false;
         super.done(param1);
      }
   }
}
