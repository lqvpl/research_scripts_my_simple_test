package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.hurlant.math.BigInteger;
   import com.hurlant.math.bi_internal;
   import spark.components.HGroup;
   import mx.binding.BindingManager;
   import mx.controls.Alert;
   import mx.events.CloseEvent;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   
   use namespace bi_internal;
   
   public final class EmptyTrashCommand extends Command implements IPhotonCommand
   {
       
      
      public function EmptyTrashCommand()
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
            §§push(-(§§pop() + 1) * 22);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc3_)
         {
            §§push(((§§pop() + 67) * 64 + 1 - 5 + 1) * 8);
         }
         §§pop().buttonHeight = §§pop();
         var _loc1_:String = "All keywords in your trash will be permanently deleted. Are you sure you want to continue?";
         §§push(Alert);
         §§push(_loc1_);
         §§push("Confirm Delete");
         §§push(3);
         if(_loc3_)
         {
            §§push(-((-(§§pop() - 92) - 1) * 33 - 45));
         }
         §§pop().show(§§pop(),§§pop(),§§pop(),null,this.confirmDeleteHandler);
      }
      
      public final function confirmDeleteHandler(param1:CloseEvent) : void
      {
         var _loc2_:SeedKeywordVO = null;
         if(param1.detail == Alert.YES)
         {
            model.allTrashKeywords.deleteAllKeywords();
            model.selectedProject.keywords.trashKeywords.removeDeletedKeywords();
            if(model.selectedProject.seedKeywords && §§pop() > §§pop())
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() * 96 * 75 + 92);
               }
               for each(_loc2_ in model.selectedProject)
               {
                  _loc2_.trashKeywords.removeDeletedKeywords();
               }
            }
            model.selectedProject.ownKeywords.trashKeywords.removeDeletedKeywords();
         }
         param1.stopImmediatePropagation();
         done();
      }
   }
}
