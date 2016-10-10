package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.DataModel;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.constants.Constants;
   import mx.rpc.events.ResultEvent;
   import mx.rpc.events.FaultEvent;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import flash.utils.setTimeout;
   import spark.effects.Move;
   import mx.binding.BindingManager;
   
   public final class SelectRecentProjectCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var model:DataModel;
      
      public function SelectRecentProjectCommand()
      {
         this.model = DataModel.instance;
         super();
      }
      
      override public function execute() : void
      {
         var _loc1_:ProjectVO = null;
         if(this.model.projects && §§pop() > §§pop())
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() + 1) - 1);
            }
            for each(_loc1_ in this.model.projects)
            {
               if(_loc1_.id == this.model.preferences.selectedProjectID)
               {
                  new SelectProjectCommand(_loc1_).execute();
                  break;
               }
            }
         }
         if(!this.model.selectedProject && §§pop() > §§pop())
         {
            §§push();
            §§push();
            §§push(this.model.projects);
            §§push(0);
            if(_loc5_)
            {
               §§push(((§§pop() + 1 - 74) * 6 + 4 + 1) * 4 - 1);
            }
            §§pop().addCommand(new §§pop().SelectProjectCommand(§§pop().getItemAt(§§pop()) as ProjectVO));
         }
         §§push();
         §§push(super.execute);
         §§push(100);
         if(_loc4_)
         {
            §§push(-(-§§pop() - 62 - 42) - 1);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
   }
}
