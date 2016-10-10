package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.ProjectVO;
   
   public final class CopyDefaultProjectConfigurationCommand extends Command implements IPhotonCommand
   {
       
      
      private var config:ProjectVO;
      
      public function CopyDefaultProjectConfigurationCommand(param1:ProjectVO)
      {
         super();
         this.config = param1;
      }
      
      public function execute() : void
      {
         if(model.defaultConfiguration)
         {
            new CloneDefaultConfigCommand(model.defaultConfiguration,this.config).execute();
         }
         done();
      }
   }
}
