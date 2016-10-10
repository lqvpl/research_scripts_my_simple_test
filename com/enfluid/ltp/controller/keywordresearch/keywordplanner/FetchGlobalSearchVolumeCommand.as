package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class FetchGlobalSearchVolumeCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var model:DataModel;
      
      private var updateProgressBar:Boolean;
      
      public function FetchGlobalSearchVolumeCommand(param1:Boolean = true)
      {
         this.model = DataModel.instance;
         this.updateProgressBar = param1;
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:Array = null;
         §§push(0);
         if(_loc9_)
         {
            §§push((-(-§§pop() * 5 - 1) + 1 + 1) * 112);
         }
         var _loc2_:* = §§pop();
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:KeywordVO = null;
         Logger.log("FetchGlobalSearchVolumeCommand");
         §§push(this.model.selectedKeywordCollection.project.keywords.length);
         §§push(0);
         if(_loc8_)
         {
            §§push(-(§§pop() + 1) + 80);
         }
         if(§§pop() > §§pop())
         {
            _loc1_ = this.model.selectedProject.keywords.toArray();
            _loc2_ = int(_loc1_.length - 1);
            while(true)
            {
               §§push(_loc2_);
               §§push(0);
               if(_loc9_)
               {
                  §§push(§§pop() - 1 - 1 + 3);
               }
               if(§§pop() < §§pop())
               {
                  break;
               }
               _loc5_ = KeywordVO(_loc1_[_loc2_]);
               §§push(_loc5_.globalSearches);
               §§push(0);
               if(_loc8_)
               {
                  §§push((§§pop() + 1 - 36) * 103 + 1);
               }
               if(§§pop() >= §§pop())
               {
                  §§push(_loc1_);
                  §§push(_loc2_);
                  §§push(1);
                  if(_loc8_)
                  {
                     §§push(§§pop() + 95 + 1 + 1 + 40 + 48 + 54);
                  }
                  §§pop().splice(§§pop(),§§pop());
               }
               else
               {
                  _loc1_[_loc2_] = _loc5_.keyword;
               }
               _loc2_--;
            }
            _loc3_ = Util.divideKeywordsIntoGroups(_loc1_);
            §§push(0);
            if(_loc8_)
            {
               §§push(§§pop() - 1 - 12 + 1 - 1 + 50 + 1 - 1);
            }
            for each(_loc4_ in _loc3_)
            {
               addCommand(new SubmitAndScrapeKeywordPlannerCommand(null,_loc4_,true));
            }
         }
         if(this.updateProgressBar)
         {
            §§push(ProgressBarUtil);
            §§push("Fetching Global Search Volume");
            §§push(13);
            if(_loc8_)
            {
               §§push(-(§§pop() - 20 - 18 - 1 + 32 + 95 + 1));
            }
            §§pop().startProgressBarStep(§§pop(),§§pop() * commandList.length);
         }
         super.execute();
      }
   }
}
