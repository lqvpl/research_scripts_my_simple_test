package com.enfluid.ltp.controller.keywordresearch.titlecompetition
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import mx.graphics.SolidColor;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class SetupFetchTitleCompetitionCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var fetchGoogle:Boolean;
      
      private var fetchBing:Boolean;
      
      private var model:DataModel;
      
      public function SetupFetchTitleCompetitionCommand(param1:Boolean = true, param2:Boolean = true)
      {
         this.model = DataModel.instance;
         this.fetchGoogle = param1;
         this.fetchBing = param2;
         super();
      }
      
      override public function execute() : void
      {
         var _loc2_:KeywordVO = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(--(§§pop() * 101));
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 1) * 20 * 93 - 54 - 113 + 103 + 1);
         }
         for each(_loc2_ in this.model.selectedKeywordCollection.project.keywords)
         {
            if(this.fetchGoogle && this.model.selectedKeywordCollection.project.googleTitleCompEnabled)
            {
               §§push(_loc2_.googleTitleCompetition);
               §§push(0);
               if(_loc5_)
               {
                  §§push(--(§§pop() + 15 + 38 + 1) * 40);
               }
               if(§§pop() == §§pop() || §§pop() == §§pop())
               {
                  addCommand(new FetchGoogleTitleCompetitionCommand(_loc2_));
               }
            }
            if(this.fetchBing && this.model.selectedKeywordCollection.project.bingTitleCompEnabled)
            {
               §§push(_loc2_.bingTitleCompetition);
               §§push(0);
               if(_loc5_)
               {
                  §§push((§§pop() - 67) * 27 + 1 + 1 + 82);
               }
               if(§§pop() == §§pop() || §§pop() == §§pop())
               {
                  addCommand(new FetchBingTitleCompetitionCommand(_loc2_));
               }
            }
         }
         ProgressBarUtil.startProgressBarStep("Fetching Title Competition",commandList.length);
         super.execute();
      }
   }
}
