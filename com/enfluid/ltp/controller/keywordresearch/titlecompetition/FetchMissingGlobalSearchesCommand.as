package com.enfluid.ltp.controller.keywordresearch.titlecompetition
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.FetchGlobalSearchVolumeCommand;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   
   public final class FetchMissingGlobalSearchesCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var model:DataModel;
      
      public function FetchMissingGlobalSearchesCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         this.model.isFetchingMissingGlobalSearches = true;
         addCommand(new FetchGlobalSearchVolumeCommand(false));
         super.execute();
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.model.isFetchingMissingGlobalSearches = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
   }
}
