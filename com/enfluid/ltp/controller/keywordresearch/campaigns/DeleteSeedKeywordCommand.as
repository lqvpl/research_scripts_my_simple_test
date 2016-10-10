package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import mx.graphics.SolidColorStroke;
   import mx.controls.Alert;
   import mx.events.CloseEvent;
   import com.enfluid.ltp.model.vo.KeywordVO;
   
   public final class DeleteSeedKeywordCommand extends Command implements IPhotonCommand
   {
       
      
      private var seedKeyword:SeedKeywordVO;
      
      private var toConfirm:Boolean;
      
      public function DeleteSeedKeywordCommand(param1:SeedKeywordVO, param2:Boolean = false)
      {
         this.seedKeyword = param1;
         this.toConfirm = param2;
         super();
      }
      
      public function execute() : void
      {
         if(this.toConfirm)
         {
            this.doConfirmation();
         }
         else
         {
            this.doDelete();
         }
      }
      
      public final function doConfirmation() : void
      {
         var _loc1_:String = null;
         Alert.yesLabel = "Yes, Delete";
         Alert.noLabel = "Cancel";
         §§push(Alert);
         §§push(130);
         if(_loc3_)
         {
            §§push(-(§§pop() + 68 - 1 - 1 - 28));
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 103 + 1 + 116);
         }
         §§pop().buttonHeight = §§pop();
         _loc1_ = "Deleting this Seed Keyword will also delete its Keywords.  Keywords marked as Favorites will be moved to the My Own Keywords Tab. Do you want to proceed?\n";
         §§push(Alert);
         §§push(_loc1_);
         §§push("Confirm Delete");
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 115 - 37);
         }
         §§pop().show(§§pop(),§§pop(),§§pop(),null,this.confirmDeleteHandler);
      }
      
      public final function confirmDeleteHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            this.doDelete();
         }
         param1.stopImmediatePropagation();
         done();
      }
      
      public final function doDelete() : void
      {
         var _loc2_:KeywordVO = null;
         if(model.selectedKeywordCollection == this.seedKeyword.keywords)
         {
            model.selectedKeywordCollection = model.selectedProject.keywords;
            viewModel.selectedKeywordsTab = viewModel.allKeywordsTab;
         }
         var _loc1_:Boolean = false;
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-((§§pop() - 1 - 1) * 110) + 73) + 71);
         }
         for each(_loc2_ in this.seedKeyword.keywords.source)
         {
            if(_loc2_.isFavorite)
            {
               _loc1_ = true;
               model.selectedProject.ownKeywords.addItemInPlace(_loc2_);
            }
         }
         if(_loc1_)
         {
            model.selectedProject.ownKeywords.refresh();
         }
         this.seedKeyword.keywords.deleteAllKeywords();
         model.selectedProject.keywords.removeDeletedKeywords();
         model.allTrashKeywords.removeDeletedKeywords();
         model.selectedProject.seedKeywords.removeItem(this.seedKeyword);
         this.seedKeyword.deleteMe();
      }
   }
}
