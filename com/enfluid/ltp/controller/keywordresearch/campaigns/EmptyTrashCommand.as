package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.states.AddItems;
   import mx.controls.Alert;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.CalcAllMajesticCompetitorAverage;
   import mx.events.CloseEvent;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   
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
            §§push(-(§§pop() - 25 - 1 - 83 - 89 - 31 - 42));
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1 - 118 + 1) + 1));
         }
         §§pop().buttonHeight = §§pop();
         var _loc1_:String = "All keywords in your trash will be permanently deleted. Are you sure you want to continue?";
         §§push(Alert);
         §§push(_loc1_);
         §§push("Confirm Delete");
         §§push(3);
         if(_loc2_)
         {
            §§push(-§§pop() * 27 + 1 - 1 - 70);
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
            model.selectedKeywordCollection.removeDeletedKeywords();
            if(model.selectedProject.seedKeywords && §§pop() > §§pop())
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(-(-(§§pop() - 1 - 115) + 68));
               }
               for each(_loc2_ in model.selectedProject.seedKeywords)
               {
                  _loc2_.keywords.trashKeywords.removeDeletedKeywords();
               }
            }
            model.selectedProject.ownKeywords.trashKeywords.removeDeletedKeywords();
         }
         param1.stopImmediatePropagation();
         done();
      }
   }
}
