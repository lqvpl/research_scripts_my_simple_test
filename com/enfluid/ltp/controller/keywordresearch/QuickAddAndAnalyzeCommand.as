package com.enfluid.ltp.controller.keywordresearch
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.photon.controller.PhotonCommandCompletionEvent;
   import spark.effects.Fade;
   import mx.binding.BindingManager;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.SubmitAndScrapeKeywordPlannerCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   
   public final class QuickAddAndAnalyzeCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var viewModel:ViewModel;
      
      private var model:DataModel;
      
      private var keyword:KeywordVO;
      
      public function QuickAddAndAnalyzeCommand(param1:String)
      {
         this.viewModel = ViewModel.instance;
         this.model = DataModel.instance;
         this.keyword = new KeywordVO();
         super();
         param1 = param1.toLocaleLowerCase();
         param1 = KeywordUtil.stripBeginningAndEndingSpaces(param1);
         var _loc2_:KeywordVO = Util.findKeywordVO(param1,this.model.selectedProject.keywords);
         if(_loc2_)
         {
            this.keyword = _loc2_;
            if(this.keyword.seedKeyword)
            {
               SeedKeywordVO(this.keyword.seedKeyword).keywords.removeItem(this.keyword);
               this.keyword.seedKeyword = null;
               this.keyword.movedToOwnKeywordsThisSession = true;
            }
            else
            {
               this.model.selectedProject.ownKeywords.removeItem(this.keyword);
            }
         }
         else
         {
            this.keyword.keyword = param1;
            this.keyword.project = this.model.selectedProject;
            this.model.selectedProject.keywords.addItem(this.keyword);
         }
         §§push(this.model.selectedProject.ownKeywords);
         §§push(this.keyword);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 97 * 17 - 1);
         }
         §§pop().addItemAt(§§pop(),§§pop());
         this.keyword.quickAddedThisSession = true;
         this.keyword.isExpanded = true;
         this.keyword.isOwnKeyword = true;
         this.keyword.source = "majestic";
         this.keyword.save();
         if(this.model.selectedProject.source == "majestic")
         {
            addCommand(new SubmitAndScrapeKeywordPlannerCommand(null,[param1],false,true),this.checkMeetsFilterCriteria,false);
            addCommand(new AnalyzeMajesticCompetitionCommand(this.keyword),this.checkMeetsFilterCriteria);
         }
         else
         {
            addCommand(new SubmitAndScrapeKeywordPlannerCommand(null,[param1],false,true),this.checkMeetsFilterCriteria,false);
            addCommand(new AnalyzeCompetitionCommand(this.keyword),this.checkMeetsFilterCriteria);
         }
         this.model.selectedKeywordCollection = this.model.selectedProject.ownKeywords;
         this.model.selectedKeywordCollection = this.model.selectedKeywordCollection.cleanKeywords();
         this.viewModel.selectedKeywordsTab = this.viewModel.ownKeywordsTab;
         this.viewModel.resetKeywordScrollPosition = false;
         this.viewModel.resetKeywordScrollPosition = true;
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.model.selectedKeywordCollection.refresh();
         super.done(param1);
      }
      
      private final function checkMeetsFilterCriteria(param1:PhotonCommandCompletionEvent) : void
      {
         if(this.keyword.meetsAllFilters)
         {
            this.keyword.showQuickAddDoesntMatchFilterWarning = true;
         }
      }
   }
}
