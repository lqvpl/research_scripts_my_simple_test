package com.enfluid.ltp.controller.keywordresearch
{
   import com.photon.controller.PhotonComplexCommand;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import spark.components.HGroup;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.SubmitAndScrapeKeywordPlannerCommand;
   import mx.states.State;
   import mx.states.SetProperty;
   import com.enfluid.ltp.view.dataandfilters.NumWordsSection;
   import flash.utils.Dictionary;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.FetchGlobalSearchVolumeCommand;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.SetupCheckDomainsCommand;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.SetupFetchTitleCompetitionCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class GenerateKeywordsCommand extends PhotonComplexCommand
   {
       
      
      public var model:DataModel;
      
      public var viewModel:ViewModel;
      
      public function GenerateKeywordsCommand()
      {
         var _loc2_:SeedKeywordVO = null;
         this.model = DataModel.instance;
         this.viewModel = ViewModel.instance;
         super();
         this.viewModel.headerState = Constants.HEADER_STATE_INPROGRESS;
         var _loc1_:Array = this.model.selectedProject.pendingSeedKeywords.source.slice();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() * 25) * 45 * 118 + 1 - 54);
         }
         for each(_loc2_ in _loc1_)
         {
            addCommand(new SubmitAndScrapeKeywordPlannerCommand(_loc2_));
            this.model.selectedProject.seedKeywords.addItem(_loc2_);
            this.model.selectedProject.pendingSeedKeywords.removeItem(_loc2_);
         }
         if(this.model.selectedProject.pendingOwnKeywords)
         {
            this.addOwnKeyowrds();
         }
         this.model.selectedProject.save();
         if(this.model.selectedProject.globalSearchesEnabled)
         {
            addCommand(new FetchGlobalSearchVolumeCommand());
         }
         if(this.model.selectedProject.domainsEnabled)
         {
            addCommand(new SetupCheckDomainsCommand());
         }
         if(this.model.selectedProject.googleTitleCompEnabled || this.model.selectedProject.bingTitleCompEnabled)
         {
            addCommand(new SetupFetchTitleCompetitionCommand());
         }
         this.model.currentGenerateKeywordsCommand = this;
         this.viewModel.selectedKeywordsTab = this.viewModel.allKeywordsTab;
         this.model.selectedKeywordCollection = this.model.selectedProject.keywords;
         ProgressBarUtil.startProgessBar(this.commandList.length);
      }
      
      override protected function commandCompleted() : void
      {
         §§push(commandList.length);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 38 + 1 + 1 + 1);
         }
         if(§§pop() == §§pop())
         {
            this.cleanup();
         }
      }
      
      private final function cleanup() : void
      {
         this.viewModel.headerState = Constants.HEADER_STATE_NORMAL;
         this.model.selectedKeywordCollection.refresh();
      }
      
      private final function addOwnKeyowrds() : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc1_:Array = this.removeDuplicateOwnKeywords();
         §§push(_loc1_.length);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() - 96) * 25);
         }
         if(§§pop() > §§pop())
         {
            if(!this.model.selectedProject.ownKeywordsSeedKeyword)
            {
               this.model.selectedProject;
            }
            _loc2_ = Util.divideKeywordsIntoGroups(_loc1_);
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() - 1) * 10 - 1);
            }
            for each(_loc3_ in _loc2_)
            {
               addCommand(new SubmitAndScrapeKeywordPlannerCommand(null,_loc3_));
            }
         }
         this.model.selectedProject.pendingOwnKeywords = "";
      }
      
      private final function removeDuplicateOwnKeywords() : Array
      {
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         §§push(0);
         if(_loc10_)
         {
            §§push(-(-§§pop() - 1 - 58 + 81) * 94);
         }
         var _loc8_:* = §§pop();
         var _loc1_:Array = this.model.selectedProject.pendingOwnKeywords.split("\n");
         var _loc2_:Array = new Array();
         var _loc3_:Dictionary = new Dictionary();
         §§push(0);
         if(_loc10_)
         {
            §§push(-(§§pop() * 44 - 1 - 17 - 1) + 49 - 1);
         }
         var _loc7_:* = §§pop();
         while(_loc7_ < _loc1_.length)
         {
            _loc6_ = new Array();
            _loc5_ = _loc1_[_loc7_].split(",");
            §§push(0);
            if(_loc10_)
            {
               §§push((§§pop() * 46 - 1 + 1) * 62 + 1);
            }
            _loc8_ = §§pop();
            while(_loc8_ < _loc5_.length)
            {
               _loc4_ = KeywordUtil.stripBeginningAndEndingSpaces(_loc5_[_loc8_]);
               if(_loc4_ && !_loc3_[_loc4_])
               {
                  _loc3_[_loc4_] = true;
                  _loc6_.push(_loc4_);
               }
               _loc8_++;
            }
            §§push(_loc6_.length);
            §§push(0);
            if(_loc9_)
            {
               §§push(§§pop() - 1 - 1 + 1 + 74);
            }
            if(§§pop() > §§pop())
            {
               _loc2_.push(_loc6_.join(","));
            }
            _loc7_++;
         }
         return _loc2_;
      }
   }
}
