package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.DataModel;
   
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
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() - 1) * 37));
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
