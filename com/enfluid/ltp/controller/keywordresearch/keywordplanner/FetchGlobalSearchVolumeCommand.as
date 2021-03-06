package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.controller.keywordresearch.SaveGlobalSearchesToServerCommand;
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
         var _loc2_:Array = null;
         §§push(0);
         if(_loc10_)
         {
            §§push(-§§pop() * 104 - 29);
         }
         var _loc3_:* = §§pop();
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:KeywordVO = null;
         Logger.log("FetchGlobalSearchVolumeCommand");
         §§push(this.model.selectedKeywordCollection.project.keywords.length);
         §§push(0);
         if(_loc9_)
         {
            §§push((-(§§pop() - 1) + 111 - 73) * 87);
         }
         if(§§pop() > §§pop())
         {
            _loc1_ = this.model.selectedProject.keywords.toArray();
            _loc2_ = [];
            _loc3_ = int(_loc1_.length - 1);
            while(true)
            {
               §§push(_loc3_);
               §§push(0);
               if(_loc9_)
               {
                  §§push(-(§§pop() + 82 - 49 + 1) + 46);
               }
               if(§§pop() < §§pop())
               {
                  break;
               }
               _loc6_ = KeywordVO(_loc1_[_loc3_]);
               §§push(_loc6_.globalSearches);
               §§push(0);
               if(_loc10_)
               {
                  §§push(§§pop() - 29 + 1 - 1 - 1 + 1 - 61 - 75);
               }
               if(§§pop() >= §§pop())
               {
                  §§push(_loc1_);
                  §§push(_loc3_);
                  §§push(1);
                  if(_loc9_)
                  {
                     §§push((-(§§pop() + 89) + 1) * 75 - 84);
                  }
                  §§pop().splice(§§pop(),§§pop());
               }
               else
               {
                  _loc1_[_loc3_] = _loc6_.keyword;
                  _loc2_.push(_loc6_);
               }
               _loc3_--;
            }
            _loc4_ = Util.divideKeywordsIntoGroups(_loc1_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-(§§pop() - 1 + 1) + 1);
            }
            for each(_loc5_ in _loc4_)
            {
               addCommand(new SubmitAndScrapeKeywordPlannerCommand(null,_loc5_,true));
            }
            addCommand(new SaveGlobalSearchesToServerCommand(_loc2_));
         }
         if(this.updateProgressBar)
         {
            §§push(ProgressBarUtil);
            §§push("Fetching Global Search Volume");
            §§push(13);
            if(_loc9_)
            {
               §§push(§§pop() + 1 + 36 - 1 + 67);
            }
            §§pop().startProgressBarStep(§§pop(),§§pop() * commandList.length);
         }
         super.execute();
      }
   }
}
