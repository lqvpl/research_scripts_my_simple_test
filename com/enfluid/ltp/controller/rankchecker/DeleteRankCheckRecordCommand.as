package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import flash.events.Event;
   import com.enfluid.ltp.util.CSVStringUtils;
   
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
