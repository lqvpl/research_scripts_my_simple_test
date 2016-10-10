package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import mx.graphics.SolidColor;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.KeywordVO;
   
   public final class AddRankCheckItemCommand extends PhotonComplexCommand
   {
       
      
      public function AddRankCheckItemCommand(param1:String, param2:String)
      {
         super();
         addCommand(new CreateRankCheckItemVOCommand(param1,param2));
         addCommand(new SaveRankItemsCommand());
         addCommand(new AddRankDomainCommand(param1));
      }
   }
}
