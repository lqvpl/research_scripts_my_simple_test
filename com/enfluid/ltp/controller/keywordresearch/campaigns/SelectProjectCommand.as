package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.controller.common.SavePreferencesCommand;
   import flash.events.MouseEvent;
   import system.data.ListIterator;
   import system.data.iterators.ArrayListIterator;
   
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
         var _loc2_:KeywordVO = null;
         var _loc3_:Array = null;
         var _loc4_:SeedKeywordVO = null;
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
         var _loc1_:Boolean = false;
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-(-§§pop() + 1) + 58));
         }
         for each(_loc2_ in model.selectedKeywordCollection)
         {
            if(_loc2_.isGoogleRestrictedSearches)
            {
               _loc1_ = true;
               break;
            }
         }
         viewModel.AdwordsRestricted = _loc1_;
         _loc3_ = [];
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-(§§pop() * 112) * 33 + 1) - 89);
         }
         for each(_loc4_ in model.selectedProject.seedKeywords)
         {
            §§push(_loc4_.keywords.source.length);
            §§push(0);
            if(_loc8_)
            {
               §§push((§§pop() - 1 + 53 + 87) * 36);
            }
            if(§§pop() == §§pop())
            {
               _loc3_.push(_loc4_);
            }
         }
         §§push(0);
         if(_loc7_)
         {
            §§push(-§§pop() - 1 - 28 - 88);
         }
         for each(_loc4_ in _loc3_)
         {
            this.project.pendingSeedKeywords.addItem(_loc4_);
            this.project.seedKeywords.removeItem(_loc4_);
         }
         new SavePreferencesCommand().execute();
         done();
      }
   }
}
