package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.model.DataModel;
   
   public final class SetupCheckYahooRanksCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      public function SetupCheckYahooRanksCommand()
      {
         var _loc1_:RankCheckItemVO = null;
         super();
         §§push(0);
         if(_loc5_)
         {
            §§push((-((§§pop() + 1) * 27 - 79) + 1) * 93);
         }
         for each(_loc1_ in DataModel.instance.rankCheckItems)
         {
            addCommand(new CheckYahooRankCommand(_loc1_));
         }
      }
   }
}
