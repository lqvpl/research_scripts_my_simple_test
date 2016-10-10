package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.hurlant.util.Memory;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.model.DataModel;
   
   public final class SetupCheckBingRanksCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      public function SetupCheckBingRanksCommand()
      {
         var _loc1_:RankCheckItemVO = null;
         super();
         §§push(0);
         if(_loc4_)
         {
            §§push((--§§pop() + 89 - 1) * 11 - 24 + 1);
         }
         for each(_loc1_ in DataModel.instance.rankCheckItems)
         {
            addCommand(new CheckBingRankCommand(_loc1_));
         }
      }
   }
}
