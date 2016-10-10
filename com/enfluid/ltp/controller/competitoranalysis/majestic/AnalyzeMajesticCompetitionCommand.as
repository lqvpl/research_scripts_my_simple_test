package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Values;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import com.enfluid.ltp.controller.common.FetchCompetitorUrls;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchSiteAgeCommand;
   import com.enfluid.ltp.controller.keywordresearch.SaveAvgKCToServer;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import flash.events.Event;
   import com.enfluid.ltp.controller.keywordresearch.SaveTopTenToServerCommand;
   
   public final class AnalyzeMajesticCompetitionCommand extends PhotonComplexCommand implements IPhotonCommand
   {
      
      private static var activeCommands:ArrayCollection = new ArrayCollection();
       
      
      private var model:DataModel;
      
      private var viewModel:ViewModel;
      
      private var keyword:KeywordVO;
      
      private var service:HTTPService;
      
      public function AnalyzeMajesticCompetitionCommand(param1:KeywordVO)
      {
         this.model = DataModel.instance;
         this.viewModel = ViewModel.instance;
         super();
         this.keyword = param1;
         this.service = new HTTPService();
         activeCommands.addItem(this);
      }
      
      public static function cancelCommand(param1:KeywordVO) : void
      {
         var _loc2_:AnalyzeMajesticCompetitionCommand = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() * 25 - 55 - 30 + 1 + 1) * 109);
         }
         for each(_loc2_ in activeCommands)
         {
            if(param1 == _loc2_.keyword)
            {
               _loc2_.cancel();
               return;
            }
         }
      }
      
      override public function execute() : void
      {
         var _loc1_:CountryVO = null;
         var _loc2_:LanguageVO = null;
         var _loc3_:ProjectVO = null;
         if(waitInQueue)
         {
            this.keyword.avgKC = Values.WAITING;
            return;
         }
         this.keyword.avgKC = Values.CURRENTLY_FETCHING;
         if(!this.viewModel.selectedKeywordsTab.isFavoritesTab && !this.viewModel.selectedKeywordsTab.isTrashTab)
         {
            _loc1_ = this.model.selectedProject.country;
            _loc2_ = this.model.selectedProject.language;
         }
         else
         {
            _loc3_ = this.keyword.project;
            if(_loc3_)
            {
               _loc1_ = _loc3_.country;
               _loc2_ = _loc3_.language;
            }
            else
            {
               Alert.show("Yikes!  It looks like the project for this keyword no longer exits.  We need a project so we can fetch Google search results for the correct country and language.\n\nTip: Just re-add this keyword to the project of your choice using \'Quick Add & Analyze\'.","No Project");
               this.keyword.avgKC = Values.NOT_FETCHED;
               this.done();
               return;
            }
         }
         if(!this.model.isFetchingBatchMissingMajesticKC)
         {
            addCommand(new DeleteCompetitorUrlsCommand(this.keyword.competitorURLs,this.keyword));
            addCommand(new FetchCompetitorUrls(this.keyword,_loc1_,_loc2_));
         }
         addCommand(new FetchMajesticDataCommand(this.keyword));
         addCommand(new FetchMajesticDomainDataCommand(this.keyword));
         addCommand(new FetchMajesticPagesKcCommand(this.keyword));
         if(!this.model.isFetchingBatchMissingMajesticKC && this.keyword.isExpanded)
         {
            addCommand(new SetupFetchSiteAgeCommand(this.keyword),null,false);
         }
         addCommand(new CalcAllMajesticCompetitorAverage(this.keyword));
         addCommand(new SaveAvgKCToServer(this.keyword,"majestic"));
         super.execute();
      }
      
      override public function cancel() : void
      {
         super.cancel();
         this.keyword.avgKC = Values.NOT_FETCHED;
         activeCommands.removeItem(this);
      }
      
      override protected function processNextCommandInQueue() : void
      {
         super.processNextCommandInQueue();
      }
      
      override protected function done(param1:String = "success") : void
      {
         var _loc2_:CompetitorUrlVO = null;
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() - 1 - 1 - 1) * 69 - 91);
         }
         for each(_loc2_ in this.keyword.competitorURLs)
         {
            _loc2_.save();
         }
         if(!this.model.isPlatinum)
         {
            this.keyword.avgKC = Values.FETCHED;
         }
         dispatchEvent(new Event("AnalyzerFinishedKeyword"));
         super.done(param1);
         activeCommands.removeItem(this);
         this.model.selectedKeywordCollection.updateCounts();
         new SaveTopTenToServerCommand(this.keyword).execute();
      }
   }
}
