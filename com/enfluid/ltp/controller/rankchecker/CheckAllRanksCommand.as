package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import spark.components.HGroup;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.ViewModel;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   
   public final class CheckAllRanksCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var model:DataModel;
      
      public function CheckAllRanksCommand()
      {
         var _loc1_:* = undefined;
         this.model = DataModel.instance;
         super();
         this.model.currentCheckAllRanksCommand = this;
         this.model.isCheckingRanks = true;
         if(this.model.rankCheckItems.length)
         {
            new SetUserEvent("UserEvent.RankChecker.FetchRanks",{"NumberOfKeywords":this.model.rankCheckItems.length}).execute();
         }
         §§push(0);
         if(_loc5_)
         {
            §§push(-((--§§pop() - 1 - 1) * 67));
         }
         for each(_loc1_ in this.model.rankCheckItems)
         {
            _loc1_.googleRank = null;
            _loc1_.googlePage = null;
            _loc1_.yahooRank = null;
            _loc1_.yahooPage = null;
            _loc1_.bingRank = null;
            _loc1_.bingPage = null;
         }
         addParallelCommands([new SetupCheckYahooRanksCommand(),new SetupCheckGoogleRanksCommand(),new SetupCheckBingRanksCommand()]);
      }
      
      override protected function commandCompleted() : void
      {
         if(commandsCompleted == totalCommands)
         {
            this.model.isCheckingRanks = false;
         }
      }
   }
}
