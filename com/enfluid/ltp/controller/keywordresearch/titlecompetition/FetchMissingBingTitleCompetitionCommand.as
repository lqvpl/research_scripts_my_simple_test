package com.enfluid.ltp.controller.keywordresearch.titlecompetition
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.util.MajesticUtils;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   
   public final class FetchMissingBingTitleCompetitionCommand extends PhotonComplexCommand implements IPhotonCommand, FetchMissingCommand
   {
       
      
      private var model:DataModel;
      
      private var timeInit:uint;
      
      private var timeEnd:uint;
      
      public function FetchMissingBingTitleCompetitionCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:KeywordVO = null;
         this.timeInit = getTimer();
         this.model.fetchMissingBingTitleCompetitionCommand = this;
         this.model.isFetchingMissingBingTitleCompetition = true;
         new SetUserEvent("UserEvent.FetchAll.BingTitleCompetition").execute();
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() + 1) * 117 - 3) * 117);
         }
         for each(_loc1_ in this.model.selectedKeywordCollection)
         {
            §§push(_loc1_.bingTitleCompetition);
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() * 102 - 7));
            }
            if(§§pop() < §§pop())
            {
               addCommand(new FetchBingTitleCompetitionCommand(_loc1_));
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
            §§push((§§pop() - 1) * 62 - 54 + 1 - 1);
         }
         var _loc2_:uint = §§pop() / §§pop();
         new SetUserEvent("UserEvent.FetchAll.BingTitleCompetitionFinish",{"TimeSpend":_loc2_}).execute();
         this.model.isFetchingMissingBingTitleCompetition = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
      
      public final function cancelCommand() : void
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-((§§pop() + 1 + 1) * 82) + 1) - 1);
         }
         var _loc1_:uint = §§pop();
         if(!isCancelled)
         {
            this.timeEnd = getTimer();
            §§push(Math.round(this.timeEnd - this.timeInit));
            §§push(1000);
            if(_loc2_)
            {
               §§push(-(§§pop() - 61 - 1 - 118 - 1 - 1 + 32));
            }
            _loc1_ = §§pop() / §§pop();
            new SetUserEvent("UserEvent.FetchAll.BingTitleCompetitionCancel",{"TimeSpend":_loc1_}).execute();
            cancel();
            this.model.isFetchingMissingBingTitleCompetition = false;
            this.model.selectedKeywordCollection.refresh();
         }
      }
   }
}
