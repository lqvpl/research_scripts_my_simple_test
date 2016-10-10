package com.enfluid.ltp.controller.keywordresearch.domainavailability
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchMissingCommand;
   import mx.core.ClassFactory;
   import spark.skins.spark.DefaultGridItemRenderer;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import flash.display.Graphics;
   import spark.layouts.VerticalLayout;
   import com.hurlant.math.BigInteger;
   
   public final class FetchMissingDomainsCommand extends PhotonComplexCommand implements IPhotonCommand, FetchMissingCommand
   {
       
      
      private var model:DataModel;
      
      public function FetchMissingDomainsCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         this.model.fetchMissingDomainsCommand = this;
         this.model.isFetchingMissingDomains = true;
         addCommand(new SetupCheckDomainsCommand());
         super.execute();
      }
      
      public final function cancelCommand() : void
      {
         if(!isCancelled)
         {
            cancel();
            this.model.isFetchingMissingDomains = false;
            this.model.selectedKeywordCollection.refresh();
         }
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.model.isFetchingMissingDomains = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
   }
}
