package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.components.BorderContainer;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   
   public final class ToggleIsInTrashCommand extends Command implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      public function ToggleIsInTrashCommand(param1:KeywordVO)
      {
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         if(!this.keyword.isInTrash && this.keyword.isFavorite)
         {
            new ToggleFavoriteCommand(this.keyword).execute();
         }
         this.keyword.isInTrash = !this.keyword.isInTrash;
         if(this.keyword.isInTrash)
         {
            model.allTrashKeywords.addItemInPlace(this.keyword);
            if(this.keyword.project)
            {
               ProjectVO(this.keyword.project).keywords.moveKeywordToTrash(this.keyword);
            }
            if(this.keyword.seedKeyword)
            {
               SeedKeywordVO(this.keyword.seedKeyword).keywords.moveKeywordToTrash(this.keyword);
            }
            else
            {
               model.selectedProject.ownKeywords.moveKeywordToTrash(this.keyword);
            }
         }
         else
         {
            model.allTrashKeywords.removeItem(this.keyword);
            if(this.keyword.project)
            {
               ProjectVO(this.keyword.project).keywords.moveKeywordOutOfTrash(this.keyword);
            }
            try
            {
               if(this.keyword.seedKeyword)
               {
                  SeedKeywordVO(this.keyword.seedKeyword).keywords.moveKeywordOutOfTrash(this.keyword);
               }
               else
               {
                  model.selectedProject.ownKeywords.moveKeywordOutOfTrash(this.keyword);
               }
            }
            catch(err:Error)
            {
            }
         }
         this.keyword.save();
      }
   }
}
