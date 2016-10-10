package com.enfluid.ltp.controller.keywordresearch.titlecompetition
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   
   public final class FetchMissingGoogleTitleCompetitionCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var model:DataModel;
      
      public function FetchMissingGoogleTitleCompetitionCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:KeywordVO = null;
         this.model.isFetchingMissingGoogleTitleCompetition = true;
         §§push(0);
         if(_loc5_)
         {
            §§push(§§pop() + 95 - 47 - 1);
         }
         for each(_loc1_ in this.model.selectedKeywordCollection)
         {
            §§push(_loc1_.googleTitleCompetition);
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() - 1 + 65 + 57 + 107 - 1 + 80 - 67);
            }
            if(§§pop() < §§pop())
            {
               addCommand(new FetchGoogleTitleCompetitionCommand(_loc1_));
            }
         }
         super.execute();
      }
      
      override protected function done(param1:String = "success") : void
      {
         this.model.isFetchingMissingGoogleTitleCompetition = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
   }
}
