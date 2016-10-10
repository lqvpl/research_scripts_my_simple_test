package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.photon.controller.PhotonCommandCompletionEvent;
   import com.enfluid.ltp.controller.keywordresearch.domainavailability.uniregistry.CheckDomainsOnUniregistryCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   
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
            new SetUserEvent("UserEvent.Keyword.AddedToFavorites",{"keyword":this.keyword.keyword}).execute();
         }
         else
         {
            model.allFavoriteKeywords.removeItem(this.keyword);
            new SetUserEvent("UserEvent.Keyword.RemovedFromFavorites",{"keyword":this.keyword.keyword}).execute();
         }
         this.keyword.save();
      }
   }
}
