package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import flash.events.Event;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.vo.DefaultConfigVO;
   
   public final class SetDefaultConfigurationCommand extends Command implements IPhotonCommand
   {
       
      
      private var project:ProjectVO;
      
      public function SetDefaultConfigurationCommand(param1:ProjectVO)
      {
         this.project = param1;
         super();
      }
      
      public function execute() : void
      {
         if(!model.defaultConfiguration)
         {
            model.defaultConfiguration = new DefaultConfigVO();
         }
         new CloneDefaultConfigCommand(this.project,model.defaultConfiguration,true).execute();
         model.defaultConfiguration.save();
         if(model.selectedProject)
         {
            model.selectedProject.save();
         }
         done();
      }
   }
}
