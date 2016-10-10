package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   
   public final class DeleteRankCheckRecordCommand extends PhotonComplexCommand
   {
       
      
      public function DeleteRankCheckRecordCommand(param1:RankCheckItemVO)
      {
         super();
         addCommand(new DeleteRankEntryCommand(param1));
         addCommand(new SaveRankItemsCommand());
         addCommand(new ReadRanksXMLCommand());
      }
   }
}
