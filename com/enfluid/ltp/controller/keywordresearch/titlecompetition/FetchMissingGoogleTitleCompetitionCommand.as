package com.enfluid.ltp.controller.keywordresearch.titlecompetition
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.Event;
   import mx.core.ClassFactory;
   import spark.skins.spark.DefaultItemRenderer;
   
   public final class FetchMissingGoogleTitleCompetitionCommand extends PhotonComplexCommand implements IPhotonCommand, FetchMissingCommand
   {
       
      
      private var model:DataModel;
      
      private var timeInit:uint;
      
      private var timeEnd:uint;
      
      public function FetchMissingGoogleTitleCompetitionCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:KeywordVO = null;
         this.timeInit = getTimer();
         this.model.fetchMissingGoogleTitleCompetitionCommand = this;
         this.model.isFetchingMissingGoogleTitleCompetition = true;
         new SetUserEvent("UserEvent.FetchAll.GoogleTitleCompetition").execute();
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 31 - 75) - 16);
         }
         for each(_loc1_ in this.model.selectedKeywordCollection)
         {
            §§push(_loc1_.googleTitleCompetition);
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() - 23 - 92 - 1 - 107 + 1);
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
         this.timeEnd = getTimer();
         §§push(Math.round(this.timeEnd - this.timeInit));
         §§push(1000);
         if(_loc3_)
         {
            §§push(-(-((§§pop() + 31 - 56) * 118) + 1 - 1));
         }
         var _loc2_:uint = §§pop() / §§pop();
         new SetUserEvent("UserEvent.FetchAll.GoogleTitleCompetitionFinish",{"TimeSpend":_loc2_}).execute();
         this.model.isFetchingMissingGoogleTitleCompetition = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
      
      public final function cancelCommand() : void
      {
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 37 + 1 + 79 + 1 + 117);
         }
         var _loc1_:uint = §§pop();
         if(!isCancelled)
         {
            this.timeEnd = getTimer();
            §§push(Math.round(this.timeEnd - this.timeInit));
            §§push(1000);
            if(_loc2_)
            {
               §§push(-(§§pop() + 1 - 1) + 1);
            }
            _loc1_ = §§pop() / §§pop();
            new SetUserEvent("UserEvent.FetchAll.GoogleTitleCompetitionCancel",{"TimeSpend":_loc1_}).execute();
            cancel();
            this.model.isFetchingMissingGoogleTitleCompetition = false;
            this.model.selectedKeywordCollection.refresh();
         }
      }
   }
}
