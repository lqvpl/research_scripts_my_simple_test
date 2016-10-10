package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.controls.Alert;
   import mx.controls.Spacer;
   import mx.events.CloseEvent;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.hurlant.crypto.hash.IHash;
   import flash.utils.ByteArray;
   
   public final class DeleteOwnKeywordsCommand extends Command implements IPhotonCommand
   {
       
      
      public function DeleteOwnKeywordsCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         Alert.yesLabel = "Yes, Delete";
         Alert.noLabel = "Cancel";
         §§push(Alert);
         §§push(130);
         if(_loc3_)
         {
            §§push((§§pop() + 28 + 62) * 108);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 + 86 - 1 + 1) - 37 - 1);
         }
         §§pop().buttonHeight = §§pop();
         var _loc1_:String = "Are you sure you want to delete your Own keywords?  Keywords marked as Favorites will not be deleted.  Do you want to proceed?\n";
         §§push(Alert);
         §§push(_loc1_);
         §§push("Confirm Delete");
         §§push(3);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1) * 3);
         }
         §§pop().show(§§pop(),§§pop(),§§pop(),null,this.confirmDeleteHandler);
      }
      
      public final function confirmDeleteHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            model.selectedProject.ownKeywords.deleteAllKeywords();
            model.selectedProject.ownKeywords.removeDeletedKeywords();
            model.selectedProject.keywords.removeDeletedKeywords();
            model.allTrashKeywords.removeDeletedKeywords();
         }
         param1.stopImmediatePropagation();
         done();
      }
   }
}
