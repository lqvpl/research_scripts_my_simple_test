package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.KeywordArrayCollection;
   import flash.events.Event;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import spark.components.Group;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.ViewModel;
   
   public final class MajesticMigrationProjectCommand extends Command implements IPhotonCommand
   {
       
      
      public function MajesticMigrationProjectCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var currentKeywords:KeywordArrayCollection = null;
         this.cleanFilters();
         currentKeywords = model.selectedProject.keywords;
         model.selectedKeywordCollection = null;
         viewModel.doingMajesticMigration = true;
         §§push();
         §§push(function():void
         {
            var _loc1_:KeywordVO = null;
            §§push(0);
            if(_loc5_)
            {
               §§push(-§§pop() * 102 + 1 - 1);
            }
            for each(_loc1_ in currentKeywords)
            {
               _loc1_.isExpanded = false;
               _loc1_.avgKC = Values.NOT_FETCHED;
               new DeleteCompetitorUrlsCommand(_loc1_.competitorURLs,_loc1_);
               _loc1_.source = "majestic";
               _loc1_.save();
            }
            model.selectedKeywordCollection = currentKeywords;
            model.selectedProject.source = "majestic";
            model.selectedProject.save();
            done();
         });
         §§push(500);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 93 + 1) * 32 - 1) * 76);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      protected final function cleanFilters() : void
      {
         model.selectedKeywordCollection.project.keywordFilterText = null;
         model.selectedKeywordCollection.project.projectFilterText = null;
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc2_)
         {
            §§push((-§§pop() + 89) * 102);
         }
         §§pop().suggestedBidFilterMin = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1 - 61 - 1));
         }
         §§pop().suggestedBidFilterMax = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc1_)
         {
            §§push(-((§§pop() + 1) * 70 - 1 - 1) - 1 - 1);
         }
         §§pop().localSearchesFilterMin = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() * 68 - 13 - 1 - 68);
         }
         §§pop().localSearchesFilterMax = §§pop();
         model.selectedKeywordCollection.project.advertiserCompFilterLow = true;
         model.selectedKeywordCollection.project.advertiserCompFilterHigh = true;
         model.selectedKeywordCollection.project.advertiserCompFilterMed = true;
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() * 15 - 1 - 46 + 83 + 1 - 1);
         }
         §§pop().bingTitleCompFilterMin = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 63) * 7);
         }
         §§pop().bingTitleCompFilterMax = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc1_)
         {
            §§push((§§pop() + 99) * 7 - 1 + 1);
         }
         §§pop().globalSearchesFilterMin = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() * 95 * 7 + 1);
         }
         §§pop().globalSearchesFilterMax = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 - 12) * 16 * 74 * 84 * 69);
         }
         §§pop().googleTitleCompFilterMin = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) * 98 + 1));
         }
         §§pop().googleTitleCompFilterMax = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 1) * 41) - 105);
         }
         §§pop().numWordsFilterMin = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 1 + 3 + 81) * 45);
         }
         §§pop().numWordsFilterMax = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc1_)
         {
            §§push(((§§pop() - 34) * 100 + 118) * 2);
         }
         §§pop().avgKCFilterMin = §§pop();
         §§push(model.selectedKeywordCollection.project);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 51 - 1 - 22);
         }
         §§pop().avgKCFilterMa = §§pop();
         model.selectedKeywordCollection.project.matchStrings = new Array();
         model.selectedKeywordCollection.project.unMatchStrings = new Array();
         model.selectedKeywordCollection.refresh();
      }
      
      override protected function done(param1:String = "success") : void
      {
         viewModel.showMigrationPopup = false;
         viewModel.doingMajesticMigration = false;
         super.done(param1);
      }
   }
}
