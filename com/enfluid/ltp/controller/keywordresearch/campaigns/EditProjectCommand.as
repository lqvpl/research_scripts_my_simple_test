package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.graphics.LinearGradient;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.core.ClassFactory;
   import spark.skins.spark.DefaultItemRenderer;
   import mx.core.FlexGlobals;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   
   public final class EditProjectCommand extends Command implements IPhotonCommand
   {
       
      
      private var project:ProjectVO;
      
      public function EditProjectCommand(param1:ProjectVO = null)
      {
         super();
         if(param1)
         {
            this.project = param1;
         }
      }
      
      public function execute() : void
      {
         viewModel.isProjectEditMode = true;
         model.selectedProject = this.project;
         LongTailPro(FlexGlobals.topLevelApplication).callLater(this.openCallout);
      }
      
      private final function openCallout() : void
      {
         viewModel.showCreateProjectCallout = true;
      }
   }
}
