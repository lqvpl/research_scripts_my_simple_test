package com.enfluid.ltp.controller.competitoranalysis
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchMissingCommand;
   import spark.components.Grid;
   import spark.components.DataGrid;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.LTPComboBoxButtonSkin;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.DataModel;
   import flash.utils.getTimer;
   import com.enfluid.ltp.view.settings.SettingsDebugSection;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticBatchGoogleDataCommand;
   import flash.events.Event;
   
   public final class FetchMissingAvgKCCommand extends PhotonComplexCommand implements IPhotonCommand, FetchMissingCommand
   {
       
      
      private var model:DataModel;
      
      private var keywordsAnalized:Number = 0;
      
      private var timeInit:uint;
      
      private var timeEnd:uint;
      
      public function FetchMissingAvgKCCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         this.timeInit = getTimer();
         this.model.fetchMissingAvgKCCommand = this;
         this.model.isFetchingMissingAvgKC = true;
         if(this.model.selectedProject.source == "majestic")
         {
            this.setupMajesticCalls();
         }
         else
         {
            this.setupMozCalls();
         }
      }
      
      protected final function setupMozCalls() : void
      {
         var _loc1_:KeywordVO = null;
         var _loc2_:AnalyzeCompetitionCommand = null;
         new SetUserEvent("UserEvent.FetchAll.MozCompetitiveness").execute();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(--((§§pop() - 1) * 45) + 1));
         }
         for each(_loc1_ in this.model.selectedKeywordCollection)
         {
            §§push(_loc1_.avgKC);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(-(§§pop() - 1) + 1) - 70);
            }
            if(§§pop() < §§pop())
            {
               _loc2_ = new AnalyzeCompetitionCommand(_loc1_);
               _loc2_.addEventListener("AnalyzerFinishedKeyword",this.analyzerFinished);
               addCommand(_loc2_);
            }
         }
         super.execute();
      }
      
      protected final function setupMajesticCalls() : void
      {
         var _loc5_:KeywordVO = null;
         var _loc6_:Array = null;
         var _loc7_:FetchMajesticBatchGoogleDataCommand = null;
         new SetUserEvent("UserEvent.FetchAll.MajesticCompetitiveness").execute();
         this.model.isFetchingBatchMissingMajesticKC = true;
         var _loc1_:Array = [];
         §§push(7);
         if(_loc11_)
         {
            §§push(-((§§pop() - 55) * 77) - 1);
         }
         var _loc2_:uint = §§pop();
         §§push(0);
         if(_loc12_)
         {
            §§push(§§pop() + 1 - 1 - 104);
         }
         var _loc3_:uint = §§pop();
         §§push(0);
         if(_loc12_)
         {
            §§push(-(§§pop() + 1) - 1 + 1 - 53 - 1 + 1);
         }
         var _loc4_:uint = §§pop();
         §§push(0);
         if(_loc11_)
         {
            §§push(§§pop() + 100 + 1 - 57 - 1);
         }
         for each(_loc5_ in this.model.selectedKeywordCollection)
         {
            §§push(_loc5_.avgKC);
            §§push(0);
            if(_loc12_)
            {
               §§push(-(§§pop() + 1 - 1 - 115 - 99 + 37));
            }
            if(§§pop() < §§pop())
            {
               if(!_loc1_.length)
               {
                  _loc1_[_loc4_] = [];
               }
               if(_loc3_ < _loc2_)
               {
                  _loc1_[_loc4_].push(_loc5_);
                  _loc3_++;
               }
               else
               {
                  _loc1_[_loc10_] = [];
                  §§push(1);
                  if(_loc12_)
                  {
                     §§push(-(§§pop() - 53 + 101));
                  }
                  _loc3_ = §§pop();
                  _loc1_[_loc4_].push(_loc5_);
               }
            }
         }
         §§push(0);
         if(_loc12_)
         {
            §§push((-(§§pop() + 26 + 68) - 15 - 116) * 84);
         }
         for each(_loc6_ in _loc1_)
         {
            _loc7_ = new FetchMajesticBatchGoogleDataCommand(_loc6_);
            _loc7_.addEventListener("AnalyzerFinishedKeyword",this.analyzerFinished);
            addCommand(_loc7_);
         }
         super.execute();
      }
      
      protected final function analyzerFinished(param1:Event) : void
      {
         this.keywordsAnalized++;
      }
      
      public final function cancelCommand() : void
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-§§pop() + 68 - 1) - 26);
         }
         var _loc1_:uint = §§pop();
         if(!isCancelled)
         {
            this.timeEnd = getTimer();
            §§push(Math.round(this.timeEnd - this.timeInit));
            §§push(1000);
            if(_loc3_)
            {
               §§push((§§pop() + 83 - 108 + 42) * 80);
            }
            _loc1_ = §§pop() / §§pop();
            new SetUserEvent("UserEvent.FetchAll.CompetitivenessCancel",{
               "KeywordsAnalized":this.keywordsAnalized,
               "TimeSpend":_loc1_
            }).execute();
            cancel();
            this.model.isFetchingMissingAvgKC = false;
            this.model.isFetchingBatchMissingMajesticKC = false;
            this.model.selectedKeywordCollection.refresh();
         }
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.timeEnd = getTimer();
         §§push(Math.round(this.timeEnd - this.timeInit));
         §§push(1000);
         if(_loc4_)
         {
            §§push((-§§pop() - 1) * 66 * 75);
         }
         var _loc2_:uint = §§pop() / §§pop();
         new SetUserEvent("UserEvent.FetchAll.CompetitivenessFinish",{
            "KeywordsAnalized":this.keywordsAnalized,
            "TimeSpend":_loc2_
         }).execute();
         this.model.isFetchingMissingAvgKC = false;
         this.model.isFetchingBatchMissingMajesticKC = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
   }
}
