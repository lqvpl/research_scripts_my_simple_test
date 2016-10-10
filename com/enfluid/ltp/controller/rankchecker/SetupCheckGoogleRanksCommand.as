package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import mx.graphics.SolidColor;
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
         if(_loc5_)
         {
            §§push((-(§§pop() - 30) * 9 - 1) * 32);
         }
         for each(_loc1_ in DataModel.instance.rankCheckItems)
         {
            addCommand(new CheckGoogleRankCommand(_loc1_));
         }
      }
   }
}
