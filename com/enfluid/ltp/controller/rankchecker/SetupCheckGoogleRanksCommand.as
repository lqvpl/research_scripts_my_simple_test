package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import system.serializers.eden.config;
   import spark.layouts.HorizontalLayout;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.model.DataModel;
   
   public final class SetupCheckGoogleRanksCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      public function SetupCheckGoogleRanksCommand()
      {
         var _loc1_:RankCheckItemVO = null;
         super();
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 28 + 1 - 1 - 113 + 25);
         }
         for each(_loc1_ in DataModel.instance.rankCheckItems)
         {
            addCommand(new CheckGoogleRankCommand(_loc1_));
         }
      }
   }
}
