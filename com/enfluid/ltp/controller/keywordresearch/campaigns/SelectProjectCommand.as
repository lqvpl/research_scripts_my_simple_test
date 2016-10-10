package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   
   public final class SelectProjectCommand extends Command implements IPhotonCommand
   {
       
      
      private var project:ProjectVO;
      
      public function SelectProjectCommand(param1:ProjectVO)
      {
         super();
         this.project = param1;
      }
      
      public function execute() : void
      {
         var _loc2_:SeedKeywordVO = null;
         if(!this.project)
         {
            return;
         }
         if(model.selectedProject)
         {
            model.selectedProject.save();
         }
         model.selectedProject = this.project;
         model.preferences.selectedProjectID = this.project.id;
         model.selectedKeywordCollection = model.selectedProject.keywords;
         viewModel.selectedKeywordsTab = viewModel.allKeywordsTab;
         var _loc1_:Array = [];
         §§push(0);
         if(_loc6_)
         {
            §§push(--§§pop() - 1 + 60);
         }
         for each(_loc2_ in model.selectedProject.seedKeywords)
         {
            §§push(_loc2_.keywords.source.length);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(((§§pop() + 60) * 32 + 31) * 108 - 1));
            }
            if(§§pop() == §§pop())
            {
               _loc1_.push(_loc2_);
            }
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() - 47 + 69 + 54 + 113 - 1 - 1);
         }
         for each(_loc2_ in _loc1_)
         {
            this.project.pendingSeedKeywords.addItem(_loc2_);
            this.project.seedKeywords.removeItem(_loc2_);
         }
         new SavePreferencesCommand().execute();
         done();
      }
   }
}
