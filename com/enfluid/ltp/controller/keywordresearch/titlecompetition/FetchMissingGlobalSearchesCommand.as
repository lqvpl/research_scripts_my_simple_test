package com.enfluid.ltp.controller.keywordresearch.titlecompetition
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.DataModel;
   import mx.states.Transition;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.FetchGlobalSearchVolumeCommand;
   
   public final class FetchMissingGlobalSearchesCommand extends PhotonComplexCommand implements IPhotonCommand, FetchMissingCommand
   {
       
      
      private var model:DataModel;
      
      private var timeInit:uint;
      
      private var timeEnd:uint;
      
      public function FetchMissingGlobalSearchesCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         this.timeInit = getTimer();
         this.model.fetchMissingGlobalSearchesCommand = this;
         this.model.isFetchingMissingGlobalSearches = true;
         new SetUserEvent("UserEvent.FetchAll.GlobalSearches").execute();
         addCommand(new FetchGlobalSearchVolumeCommand(false));
         super.execute();
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.timeEnd = getTimer();
         §§push(Math.round(this.timeEnd - this.timeInit));
         §§push(1000);
         if(_loc3_)
         {
            §§push(-((§§pop() - 38) * 45));
         }
         var _loc2_:uint = §§pop() / §§pop();
         new SetUserEvent("UserEvent.FetchAll.GlobalSearchesFinish",{"TimeSpend":_loc2_}).execute();
         this.model.isFetchingMissingGlobalSearches = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
      
      public final function cancelCommand() : void
      {
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() * 0) + 1 - 1) * 74 * 105);
         }
         var _loc1_:uint = §§pop();
         if(!isCancelled)
         {
            this.timeEnd = getTimer();
            §§push(Math.round(this.timeEnd - this.timeInit));
            §§push(1000);
            if(_loc3_)
            {
               §§push(-((-§§pop() - 1) * 16 - 1 + 1 + 93));
            }
            _loc1_ = §§pop() / §§pop();
            new SetUserEvent("UserEvent.FetchAll.GlobalSearchesCancel",{"TimeSpend":_loc1_}).execute();
            cancel();
            this.model.isFetchingMissingGlobalSearches = false;
            this.model.selectedKeywordCollection.refresh();
         }
      }
   }
}
