package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class SubmitAndScrapeKeywordPlannerCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var fetchGlobalSearchVolume:Boolean;
      
      private var model:DataModel;
      
      private var seedKeyword:SeedKeywordVO;
      
      private var suppliedKeywords:Array;
      
      private var viewModel:ViewModel;
      
      public function SubmitAndScrapeKeywordPlannerCommand(param1:SeedKeywordVO = null, param2:Array = null, param3:Boolean = false)
      {
         this.model = DataModel.instance;
         this.viewModel = ViewModel.instance;
         super();
         this.seedKeyword = param1;
         this.suppliedKeywords = param2;
         this.fetchGlobalSearchVolume = param3;
      }
      
      override public function execute() : void
      {
         var _loc2_:String = null;
         if(waitInQueue)
         {
            return;
         }
         this.model.currentSeedKeyword = this.seedKeyword;
         if(this.seedKeyword)
         {
            this.model.currentSeedKeywordId = this.seedKeyword.id;
         }
         else
         {
            this.model.currentSeedKeywordId = Constants.OWN_KEYWORD_ID;
         }
         var _loc1_:Boolean = Boolean(this.suppliedKeywords);
         addCommand(new CheckKeywordPlannerLoggedInAndLoadedCommand(_loc1_));
         addCommand(new CheckForDebugHtmlCommand("submit.html"));
         if(this.seedKeyword)
         {
            _loc2_ = this.seedKeyword.keyword;
         }
         else
         {
            _loc2_ = this.suppliedKeywords.join(",");
         }
         addCommand(new SelectCountryCommand(this.fetchGlobalSearchVolume));
         if(!_loc1_)
         {
            addCommand(new SelectLanguageCommand());
            addCommand(new SelectKeywordOptionsCommand());
            addCommand(new SetKeywordFiltersCommand());
            addCommand(new SetIncludeKeywordsCommand(this.seedKeyword));
            addCommand(new SetNegativeKeywordsCommand(this.seedKeyword));
         }
         addCommand(new SelectSearchNetworkCommand());
         addCommand(new InsertKeywordsCommand(_loc2_));
         addCommand(new ClickGetIdeasCommand(_loc1_));
         addCommand(new ClickKeywordIdeasTabCommand());
         addCommand(new CheckForDebugHtmlCommand("scrape.html"));
         addCommand(new ScrapeKeywordsCommand(this.fetchGlobalSearchVolume));
         addCommand(new CheckForKeywordVolumeError());
         var _loc3_:String = !!this.seedKeyword?"Generating keyword ideas for \"" + this.seedKeyword.keyword + "\"":!!this.fetchGlobalSearchVolume?"Fetching Global Search Volume":"Fetching data for user submitted keywords";
         if(this.seedKeyword)
         {
            ProgressBarUtil.startProgressBarStep(_loc3_,this.commandList.length);
         }
         else if(!this.fetchGlobalSearchVolume)
         {
            ProgressBarUtil.setProgressDetails(_loc3_,commandList.length);
         }
         else
         {
            ProgressBarUtil.setText(_loc3_);
         }
         super.execute();
      }
      
      override protected function commandCompleted() : void
      {
         if(!isCancelled && §§pop() == §§pop() && this.seedKeyword)
         {
            this.seedKeyword.save();
         }
      }
   }
}
