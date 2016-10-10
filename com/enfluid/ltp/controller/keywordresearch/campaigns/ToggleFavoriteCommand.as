package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import system.data.lists.ArrayList;
   
   public final class ToggleFavoriteCommand extends Command implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      public function ToggleFavoriteCommand(param1:KeywordVO)
      {
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         if(!this.keyword.isFavorite && this.keyword.isInTrash)
         {
            new ToggleIsInTrashCommand(this.keyword).execute();
         }
         this.keyword.isFavorite = !this.keyword.isFavorite;
         if(this.keyword.isFavorite)
         {
            model.allFavoriteKeywords.addItemInPlace(this.keyword);
         }
         else
         {
            model.allFavoriteKeywords.removeItem(this.keyword);
         }
         this.keyword.save();
      }
   }
}
