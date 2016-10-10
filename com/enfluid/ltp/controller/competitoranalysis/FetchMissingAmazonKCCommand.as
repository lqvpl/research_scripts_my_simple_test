package com.enfluid.ltp.controller.competitoranalysis
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.controller.keywordresearch.titlecompetition.FetchMissingCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.amazonkc.GetAmazonKCCommand;
   
   public final class FetchMissingAmazonKCCommand extends PhotonComplexCommand implements IPhotonCommand, FetchMissingCommand
   {
       
      
      private var model:DataModel;
      
      private var timeEnd:uint;
      
      public function FetchMissingAmazonKCCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:KeywordVO = null;
         var _loc2_:GetAmazonKCCommand = null;
         this.model.fetchMissingAmazonKCCommand = this;
         this.model.isFetchingMissingAmazonKC = true;
         §§push(0);
         if(_loc6_)
         {
            §§push(--(§§pop() * 41 * 1 + 1));
         }
         for each(_loc1_ in this.model.selectedKeywordCollection)
         {
            §§push(_loc1_.amazonKC);
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() - 1 - 1 + 1 - 64 - 96 - 1 - 1);
            }
            if(§§pop() < §§pop())
            {
               _loc2_ = new GetAmazonKCCommand(_loc1_);
               addCommand(_loc2_);
            }
         }
         super.execute();
      }
      
      public final function cancelCommand() : void
      {
         if(!isCancelled)
         {
            cancel();
            this.model.isFetchingMissingAmazonKC = false;
            this.model.selectedKeywordCollection.refresh();
         }
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.model.isFetchingMissingAvgKC = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
   }
}
