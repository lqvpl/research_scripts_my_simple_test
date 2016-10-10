package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.view.components.WarningInformationLabel;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Values;
   
   public final class DeleteRankEntryCommand extends Command implements IPhotonCommand
   {
       
      
      private var rcItem:RankCheckItemVO;
      
      public function DeleteRankEntryCommand(param1:RankCheckItemVO)
      {
         super();
         this.rcItem = param1;
      }
      
      public function execute() : void
      {
         var _loc2_:RankCheckItemVO = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() * 63) + 5);
         }
         var _loc1_:* = §§pop();
         while(_loc1_ < model.rankCheckItems.length)
         {
            _loc2_ = model.rankCheckItems.getItemAt(_loc1_) as RankCheckItemVO;
            if(this.rcItem.domain == _loc2_.domain && this.rcItem.searchTerm == _loc2_.searchTerm)
            {
               model.rankCheckItems.removeItemAt(_loc1_);
               _loc1_--;
            }
            _loc1_++;
         }
         model.gridDataChanged = !model.gridDataChanged;
         done();
      }
   }
}
