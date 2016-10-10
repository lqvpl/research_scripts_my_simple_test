package com.enfluid.ltp.controller.keywordresearch.domainavailability
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import mx.graphics.LinearGradient;
   import mx.effects.Sequence;
   
   public final class FetchMissingDomainsCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var model:DataModel;
      
      public function FetchMissingDomainsCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         this.model.isFetchingMissingDomains = true;
         addCommand(new SetupCheckDomainsCommand());
         super.execute();
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.model.isFetchingMissingDomains = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
   }
}
