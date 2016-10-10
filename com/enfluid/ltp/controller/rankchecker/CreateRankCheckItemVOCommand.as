package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.hurlant.math.BigInteger;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import spark.primitives.Rect;
   import com.enfluid.ltp.view.components.Link;
   
   public final class CreateRankCheckItemVOCommand extends Command implements IPhotonCommand
   {
       
      
      private var domain:String;
      
      private var searchTerm:String;
      
      public function CreateRankCheckItemVOCommand(param1:String, param2:String)
      {
         super();
         this.domain = param1;
         this.searchTerm = param2;
      }
      
      public function execute() : void
      {
         var _loc1_:RankCheckItemVO = new RankCheckItemVO();
         _loc1_.domain = this.domain;
         _loc1_.searchTerm = this.searchTerm;
         model.rankCheckItems.addItem(_loc1_);
         model.gridDataChanged = !model.gridDataChanged;
         done();
      }
   }
}
