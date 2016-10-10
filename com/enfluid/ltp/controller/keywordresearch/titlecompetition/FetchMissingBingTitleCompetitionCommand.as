package com.enfluid.ltp.controller.keywordresearch.titlecompetition
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import mx.core.IFlexModule;
   import mx.managers.PopUpManager;
   import com.enfluid.ltp.model.DataModel;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.SlimHScrollBarThumbSkin;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import flash.events.Event;
   
   public final class FetchMissingBingTitleCompetitionCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var model:DataModel;
      
      public function FetchMissingBingTitleCompetitionCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:KeywordVO = null;
         this.model.isFetchingMissingBingTitleCompetition = true;
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() * 30 * 6 + 36);
         }
         for each(_loc1_ in this.model.selectedKeywordCollection)
         {
            §§push(_loc1_.bingTitleCompetition);
            §§push(0);
            if(_loc4_)
            {
               §§push(-(-§§pop() + 38) - 1 - 74);
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
         this.model.isFetchingMissingBingTitleCompetition = false;
         this.model.selectedKeywordCollection.refresh();
         super.done();
      }
   }
}
